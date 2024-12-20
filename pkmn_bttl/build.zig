const std = @import("std");
const CrossTarget = @import("std").zig.CrossTarget;
const Target = @import("std").Target;
const Feature = Target.Cpu.Feature;

pub fn build(b: *std.Build) void {
    const optimize = b.standardOptimizeOption(.{});

    // define enabled features (only i and m)
    const features = Target.riscv.Feature;

    var enabled_features = Feature.Set.empty;
    enabled_features.addFeature(@intFromEnum(features.i));
    enabled_features.addFeature(@intFromEnum(features.m));

    // setup riscv32im target
    const riscv_target = CrossTarget{
        .cpu_arch = .riscv32,
        .cpu_model = .{ .explicit = &std.Target.riscv.cpu.generic_rv32 },
        .abi = .gnu,
        .os_tag = .freestanding, // this doesn't really run on any operating system zig is aware of
        .cpu_features_add = enabled_features,
    };
    const resolved_target = b.resolveTargetQuery(riscv_target);

    // build elf
    const exe = b.addExecutable(.{
        .name = "pkmn_bttl",
        .root_source_file = if (@hasField(std.Build.LazyPath, "path"))
            .{ .path = "pkmn_bttl.zig" }
        else
            b.path("pkmn_bttl.zig"),
        .optimize = optimize,
        .target = resolved_target,
    });

    // set entrypoint and use custom linker script
    exe.addAssemblyFile(b.path("entrypoint.s"));
    exe.setLinkerScriptPath(b.path("link.ld"));

    const pkmn = b.dependency("pkmn", .{});
    exe.root_module.addImport("pkmn", pkmn.module("pkmn"));
    b.installArtifact(exe);

    const test_mod = b.addTest(.{
        .root_source_file = if (@hasField(std.Build.LazyPath, "path"))
            .{ .path = "pkmn_bttl.zig" }
        else
            b.path("pkmn_bttl.zig"),
        .optimize = optimize,
        .target = resolved_target,
    });
    test_mod.root_module.addImport("pkmn", pkmn.module("pkmn"));
}
