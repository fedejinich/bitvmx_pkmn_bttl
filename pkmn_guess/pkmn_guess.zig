const std = @import("std");
// const pkmn = @import("pkmn");

// const INPUT_ADDRESS: usize = 0xAA00_0000;
// pub export fn main() u32 {
//     const input_ptr: *volatile u32 = @ptrFromInt(INPUT_ADDRESS);

//     if (input_ptr.* == 0x0000_1234) {
//         return 0;
//     }

//     return 1;
// }

const pkmn = @import("pkmn");
const INPUT_ADDRESS: usize = 0xAA00_0000;
var SEED: u32 = 7;
// var SEED: u32 = 70;
const ExecutionResult = enum(u32) { WIN = 0, LOSE = 1, TIE = 2, BATTLE_ERROR = 3, INPUT_ERROR = 4, UNEXPECTED_ERROR = 5 };

pub export fn main() u32 {
    const result = run();
    if (result) |value| {
        return value;
    } else |_| {
        return @intFromEnum(ExecutionResult.UNEXPECTED_ERROR);
    }
}
//
// pub fn run() !u32 {
//     const input_ptr: *volatile u32 = @ptrFromInt(INPUT_ADDRESS);
//
//     if (input_ptr.* == 0x0000_1234) {
//         return @intFromEnum(ExecutionResult.WIN);
//     } else if (input_ptr.* == 0x0000_1235) {
//         return @intFromEnum(ExecutionResult.LOSE);
//     } else if (input_ptr.* == 0x0000_1236) {
//         return @intFromEnum(ExecutionResult.LOSE);
//     }
//
//     return @intFromEnum(ExecutionResult.INPUT_ERROR);
// }

// pub fn run() !u32 {
//     const input_ptr: *volatile u32 = @ptrFromInt(INPUT_ADDRESS);
//
//     var winning_pokemon: pkmn.gen1.helpers.Pokemon = undefined;
//     if (input_ptr.* == 0x0000_1234) {
//         // winning_pokemon = .{ .species = .Charizard, .moves = &.{ .Flamethrower, .SeismicToss, .DragonRage } };
//         winning_pokemon = .{ .species = .Pikachu, .moves = &.{.ThunderWave}, .hp = 1 };
//     } else if (input_ptr.* == 0x0000_1235) {
//         // winning_pokemon = .{ .species = .Snorlax, .moves = &.{ .BodySlam, .HyperBeam, .Rest, .IcePunch } };
//         winning_pokemon = .{ .species = .Snorlax, .moves = &.{.Rest}, .hp = 1 };
//     } else if (input_ptr.* == 0x0000_1236) {
//         // winning_pokemon = .{ .species = .Pikachu, .moves = &.{ .Thunderbolt, .Agility, .QuickAttack, .ThunderWave } };
//         winning_pokemon = .{ .species = .Magmar, .moves = &.{.Smog}, .hp = 1 };
//     } else {
//         return @intFromEnum(ExecutionResult.INPUT_ERROR);
//     }
//
//     // initialize battle
//     var battle = pkmn.gen1.helpers.Battle.init(
//         1,
//         &.{
//             .{ .species = .Charizard, .moves = &.{.DragonRage}, .hp = 1 },
//         },
//         &.{
//             winning_pokemon,
//         },
//     );
//
//     var options = pkmn.battle.options(
//         pkmn.protocol.NULL,
//         pkmn.gen1.chance.NULL,
//         pkmn.gen1.calc.NULL,
//     );
//
//     const c1 = pkmn.Choice{ .type = .Move, .data = 1 };
//     const c2 = pkmn.Choice{ .type = .Move, .data = 1 };
//
//     // one step battle
//     const result = try battle.update(c1, c2, &options);
//
//     return switch (result.type) {
//         .Lose => @intFromEnum(ExecutionResult.WIN), // won by playerB
//         .Win => @intFromEnum(ExecutionResult.LOSE), // won by playerA
//         .Tie => @intFromEnum(ExecutionResult.TIE),
//         .Error => @intFromEnum(ExecutionResult.BATTLE_ERROR),
//         else => @intFromEnum(ExecutionResult.UNEXPECTED_ERROR),
//     };
// }

pub fn run() !u32 {
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
        return @intFromEnum(ExecutionResult.INPUT_ERROR);
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

    // var result = try battle.update(c1, c2, &options);
    // while (result.type == .None) {
    //     result = try battle.update(c1, c2, &options);
    // }
    //
    // return switch (result.type) {
    //     .Lose => @intFromEnum(ExecutionResult.WIN), // P2 won (Pikachu case)
    //     .Win => @intFromEnum(ExecutionResult.LOSE), // P1 won (other cases)
    //     .Tie => @intFromEnum(ExecutionResult.TIE),
    //     .None => @intFromEnum(ExecutionResult.TIE),
    //     .Error => @intFromEnum(ExecutionResult.BATTLE_ERROR),
    // };
    _ = try battle.update(c1, c2, &options);
    if (input_ptr.* == 0x0000_1234) {
        return 0;
    }

    return 1;
}
