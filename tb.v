`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/30/2025 07:43:11 PM
// Design Name: 
// Module Name: tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module tb();
    reg [7:0] in;
    wire [2:0] out;
    wire valid;
    
    Prio_Encod_8b uut (
        .in(in),
        .out(out),
        .valid(valid)
    );
    
    initial begin
        $monitor ("time %0t | in = %0d | out = %0d | valid = %0d", $time, in, out, valid);
        
        #1 in = 8'b1000_0000;
        #1 in = 8'b0100_0000;
        #1 in = 8'b0010_0000;
        #1 in = 8'b0001_0000;
        #1 in = 8'b1001_0000;
        #1 in = 8'b0000_0000;
        #1 in = 8'b1000_0000; 
        
        #100;
        $finish;   
    end

endmodule
