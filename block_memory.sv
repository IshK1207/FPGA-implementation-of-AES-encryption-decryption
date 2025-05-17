`timescale 1ns / 1ps

module block_memory(clk, addr, data);
input clk;
input [0:7] addr [3:0];
output reg [0:7] data[3:0];

reg [7:0] mem [0:255];

initial begin 
    $readmemb("memory.mem", mem);
end

always @(posedge clk) begin
    data[3] <= mem[addr[3]];
    data[2] <= mem[addr[2]];
    data[1] <= mem[addr[1]];
    data[0] <= mem[addr[0]];
    
end
endmodule