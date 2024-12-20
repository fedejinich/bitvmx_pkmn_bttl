const std = @import("std");
const pkmn = @import("pkmn");

const INPUT_ADDRESS: usize = 0xAA00_0000;
var SEED: u32 = 7;

const ExecutionResult = enum(u32) { WIN = 0, LOSE = 1, TIE = 2, BATTLE_ERROR = 3, INPUT_ERROR = 4, UNEXPECTED_ERROR = 5 };

pub export fn main() u32 {
    const result = run();
    if (result == ExecutionResult.WIN) {
        return @intFromEnum(result);
    } else if (result == ExecutionResult.LOSE) {
        @panic("Battle lost");
    } else {
        @panic("Unexpected error");
    }
}

pub fn run() ExecutionResult {
    const input_ptr: *volatile u32 = @ptrFromInt(INPUT_ADDRESS);

    var opponent_pokemon: pkmn.gen1.helpers.Pokemon = undefined;
    if (input_ptr.* == 0x0000_1234) {
        opponent_pokemon = .{
            .species = .Pikachu,
            .moves = &.{.Thunderbolt},
            .hp = 100,
            .stats = .{ .spe = 200 },
        };
    } else if (input_ptr.* == 0x0000_1235) {
        opponent_pokemon = .{
            .species = .Snorlax,
            .moves = &.{.Rest},
            .hp = 1,
            .stats = .{ .spe = 50 },
        };
    } else if (input_ptr.* == 0x0000_1236) {
        opponent_pokemon = .{
            .species = .Magmar,
            .moves = &.{.Smog},
            .hp = 1,
            .stats = .{ .spe = 50 },
        };
    } else {
        return ExecutionResult.INPUT_ERROR;
    }

    var battle = pkmn.gen1.helpers.Battle.init(
        SEED,
        &.{
            .{
                .species = .Charizard,
                .moves = &.{.FireBlast},
                .hp = 1,
                .stats = .{ .spe = 100 },
            },
        },
        &.{opponent_pokemon},
    );

    var options = pkmn.battle.options(
        pkmn.protocol.NULL,
        pkmn.gen1.chance.NULL,
        pkmn.gen1.calc.NULL,
    );

    const c1 = pkmn.Choice{ .type = .Move, .data = 1 };
    const c2 = pkmn.Choice{ .type = .Move, .data = 1 };

    var result = battle.update(c1, c2, &options) catch return ExecutionResult.BATTLE_ERROR;
    while (result.type == .None) {
        result = battle.update(c1, c2, &options) catch return ExecutionResult.BATTLE_ERROR;
    }

    return switch (result.type) {
        .Lose => ExecutionResult.WIN, // P2 won (Pikachu case)
        .Win => ExecutionResult.LOSE, // P1 won (other cases)
        .Tie => ExecutionResult.TIE,
        .None => ExecutionResult.TIE,
        .Error => ExecutionResult.BATTLE_ERROR,
    };
}
