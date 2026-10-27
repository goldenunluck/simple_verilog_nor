`default_nettype none
`timescale 1ps/1ps
module tb_module;
	reg tb_in1, tb_in2;
	wire tb_out;
	top_module tb(
		.in1(tb_in1),
		.in2(tb_in2),
		.out(tb_out)
	);
	initial begin
	$dumpfile("sim_output.vcd");
	$dumpvars(0, tb_module);
	tb_in1 = 1'b0; tb_in2 = 1'b0;
	#50;
	$finish;
	end
	always begin
	#5 tb_in1 = ~ tb_in1;
	end
	always begin
	#10 tb_in2 = ~ tb_in2;
	end
endmodule
