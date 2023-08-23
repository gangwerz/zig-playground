const std = @import("std");

pub fn main() !void {
    var out = std.io.getStdOut().writer();
    var buff = std.io.bufferedWriter(out);
    var bw = buff.writer();
    _ = bw;

    try buff.flush();
}
