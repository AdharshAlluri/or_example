module ifc_test(CLK,
	       RST_N,
	       
	       a_data,
	       a_en,
	       a_rdy,
	       
	       b_data,
	       b_en,
	       b_rdy,
	       
	       y_en,
	       y_data,
	       y_rdy);
	       
input RST_N;
output reg CLK;
	       
//action a	       
input a_data,a_en;
output a_rdy;

//action b
input b_data,b_en;
output b_rdy;

//y
input y_en;
output y_data,y_rdy;

ifc_or dut(CLK,
	       RST_N,
	       a_data,
	       a_en,
	       a_rdy,
	       b_data,
	       b_en,
	       b_rdy,
	       y_en,
	       y_data,
	       y_rdy);
	       
	       initial begin
	       		$dumpfile("ifc.vcd");
	       		$dumpvars;
	       		CLK=0;
	       		
	       		forever begin 
					#5 CLK=~CLK;
					 end

	       end

endmodule
