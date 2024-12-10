const std = @import("std");
const pkmn = @import("pkmn");

const INPUT_ADDRESS: usize = 0xAA00_0000;

// BitVMX is not intended to support randomness so we use a fixed seed
var SEED: u32 = 5;

const ExecutionResult = enum(u32) { WIN = 0, LOSE = 1, TIE = 2, BATTLE_ERROR = 3, INPUT_ERROR = 4, UNEXPECTED_ERROR = 5 };

pub export fn main() u32 {
    const result = run();
    if (result) |value| {
        return value;
    } else |_| {
        return @intFromEnum(ExecutionResult.UNEXPECTED_ERROR);
    }
}

pub fn run() !u32 {
    // parse input from INPUT_ADDRESS
    const input_ptr: *volatile u32 = @ptrFromInt(INPUT_ADDRESS);

    // 'winning_pokemon' guarantees a victory for PlayerB (Ash's team)
    // while other Pokemon could also lead to a PlayerB victory, we simplify the game logic
    // by using the same Pokemon as in the Pokemon series (iconic battle Charizard's first major victory).
    var winning_pokemon: pkmn.gen1.helpers.Pokemon = undefined;
    if (input_ptr.* == 0x0000_1234) {
        // winning_pokemon = .{ .species = .Charizard, .moves = &.{ .Flamethrower, .SeismicToss, .DragonRage, .SteelWing } };
        winning_pokemon = .{ .species = .Charizard, .moves = &.{ .Flamethrower, .SeismicToss, .DragonRage } };
    } else if (input_ptr.* == 0x0000_1235) {
        winning_pokemon = .{ .species = .Snorlax, .moves = &.{ .BodySlam, .HyperBeam, .Rest, .IcePunch } };
        SEED = 6; // seed 6 always produces victory for PlayerA
    } else if (input_ptr.* == 0x0000_1236) {
        winning_pokemon = .{ .species = .Kingler, .moves = &.{ .Crabhammer, .Stomp, .HyperBeam, .Surf } };
        SEED = 6; // seed 6 always produces victory for PlayerA
    } else {
        return @intFromEnum(ExecutionResult.INPUT_ERROR);
    }

    // use random to pick choices and initialize battle_seed
    var prng = (if (@hasDecl(std, "Random")) std.Random else std.rand).DefaultPrng.init(SEED);
    var random = prng.random();

    // preallocate a small buffer for choices
    var choices: [pkmn.CHOICES_SIZE]pkmn.Choice = undefined;

    // initialize battle
    var battle = pkmn.gen1.helpers.Battle.init(
        random.int(u64),
        &.{
            .{ .species = .Ninetales, .moves = &.{ .Flamethrower, .QuickAttack, .ConfuseRay, .FireSpin } },
            .{ .species = .Rhydon, .moves = &.{ .HornDrill, .Stomp, .RockThrow, .Earthquake } },
            .{ .species = .Magmar, .moves = &.{ .FireBlast, .Smokescreen, .Psychic, .Smog } },
        },
        &.{
            .{ .species = .Pikachu, .moves = &.{ .Thunderbolt, .Agility, .QuickAttack, .ThunderWave } },
            .{ .species = .Squirtle, .moves = &.{ .HydroPump, .WaterGun, .Tackle, .Withdraw } },
            winning_pokemon,
        },
    );

    var options = pkmn.battle.options(
        pkmn.protocol.NULL,
        pkmn.gen1.chance.NULL,
        pkmn.gen1.calc.NULL,
    );

    var c1 = pkmn.Choice{};
    var c2 = pkmn.Choice{};

    // pokemon battle
    // var result = try battle.update(c1, c2, &options);
    var result = try battle.update(c1, c2, &options);
    while (result.type == .None) : (result = try battle.update(c1, c2, &options)) {
        // `battle.choices` determines possible choices by using the system PRNG to pick one at random
        const n1 = random.uintLessThan(u8, battle.choices(.P1, result.p1, &choices));
        c1 = choices[n1];
        const n2 = random.uintLessThan(u8, battle.choices(.P2, result.p2, &choices));
        c2 = choices[n2];
    }

    return switch (result.type) {
        .Lose => @intFromEnum(ExecutionResult.WIN), // won by playerB
        .Win => @intFromEnum(ExecutionResult.LOSE), // won by playerA
        .Tie => @intFromEnum(ExecutionResult.TIE),
        .Error => @intFromEnum(ExecutionResult.BATTLE_ERROR),
        else => unreachable,
    };
}
