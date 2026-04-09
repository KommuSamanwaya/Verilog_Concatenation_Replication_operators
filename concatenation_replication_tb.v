`timescale 1ns/1ps

module concatenation_replication_tb;

reg [2:0] a,b,c;
wire [7:0] x;
wire [5:0] y;

concatenation_replication dut(
.a(a),
.b(b),
.c(c),
.x(x),
.y(y)
);

initial begin

a = 3'b101;
b = 3'b010;
c = 3'b111;

#10;

$display("a=%b b=%b c=%b",a,b,c);
$display("Concatenation Result x=%b",x);
$display("Replication Result y=%b",y);

#10 $finish;

end

endmodule