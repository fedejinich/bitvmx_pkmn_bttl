const std = @import("std");
const pkmn = @import("pkmn");

const INPUT_ADDRESS: usize = 0xAA00_0000;

// battle configs
const SEED: u32 = 7;
const BATTLE_OPTIONS = pkmn.battle.options(
    pkmn.protocol.NULL,
    pkmn.gen1.chance.NULL,
    pkmn.gen1.calc.NULL,
);
const CHOICE_1 = pkmn.Choice{ .type = .Move, .data = 1 };

pub export fn main() u32 {
    const pokemon: pkmn.gen1.helpers.Pokemon = pokemon_by(@ptrFromInt(INPUT_ADDRESS));

    var battle = pkmn.gen1.helpers.Battle.init(SEED, &.{pokemon}, &.{
        .{
            .species = .Charizard,
            .moves = &.{.FireBlast},
            .hp = 1,
            .stats = .{ .spe = 100 },
        },
    });

    var result = battle.update(CHOICE_1, CHOICE_1, &BATTLE_OPTIONS) catch @panic("battle error");
    while (result.type == .None) {
        result = battle.update(CHOICE_1, CHOICE_1, &BATTLE_OPTIONS) catch @panic("battle error");
    }

    return switch (result.type) {
        .Win => 0,
        else => @panic("battle did not result in a win"),
    };
}

fn pokemon_by(input_ptr: *volatile u32) pkmn.gen1.helpers.Pokemon {
    if (input_ptr.* == 0x0000_1234) {
        return .{
            .species = .Pikachu,
            .moves = &.{.Thunderbolt},
            .hp = 100,
            .stats = .{ .spe = 200 },
        };
    } else if (input_ptr.* == 0x0000_1235) {
        return .{
            .species = .Snorlax,
            .moves = &.{.Rest},
            .hp = 1,
            .stats = .{ .spe = 50 },
        };
    } else if (input_ptr.* == 0x0000_1236) {
        return .{
            .species = .Magmar,
            .moves = &.{.Smog},
            .hp = 1,
            .stats = .{ .spe = 50 },
        };
    }

    @panic("invalid input");
}
