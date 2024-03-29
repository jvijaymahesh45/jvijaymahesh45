// Code your testbench here
// or browse Examples
module test;
reg clk,rst;
wire[6:0]hr_m,hr_l,min_m,min_l,sec_m,sec_l;
RTDC dut(rst,clk,sec_m,sec_l,min_m,min_l,hr_m,hr_l);
initial begin
clk=0;
rst=1;
#10 rst=0;
#500 $finish();
end
always #10 clk=~clk;
 initial begin
   $dumpfile("rtdc.vcd");
   $dumpvars;
 end
endmodule