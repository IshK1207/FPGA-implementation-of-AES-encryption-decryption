`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
module bmem_tb( );
reg clk;
reg [0:7] addr [3:0];
wire [7:0] data [3:0];

block_memory bmem (.addr(addr),.clk(clk),.data(data));

initial begin
    clk = 1;
    addr[3] = 2; addr[2] = 1; addr[1] = 4; addr[0] = 3;
    #2
    addr[3] = 1; addr[2] = 7; addr[1] = 2; addr[0] = 8;
    #2
    addr[3] = 5; addr[2] = 3; addr[1] = 2; addr[0] = 1;
    #2
    addr[3] = 6; addr[2] = 6; addr[1] = 7; addr[0] = 0;
end

always begin 
    #1
    clk = ~clk;
end
endmodule
