const std = @import("std");

pub fn main() !void {
    var out = std.io.getStdOut().writer();
    var buff = std.io.bufferedWriter(out);
    var bw = buff.writer();

    for (std.os.argv[1..]) |e| {
        try bw.print("{s} ", .{e});
    }

    try buff.flush();
}
