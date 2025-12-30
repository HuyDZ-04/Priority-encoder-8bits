`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/30/2025 07:37:35 PM
// Design Name: 
// Module Name: Prio_Encod_8b
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


module Prio_Encod_8b(
    input [7:0] in,
    output reg [2:0] out,
    output reg valid
    );
    always @* begin 
        valid = (in != 8'b00000000); //ktra input co valid khong
        casex (in)
        8'b1xxx_xxxx: out = 3'd7;
        8'b01xx_xxxx: out = 3'd6;
        8'b001x_xxxx: out = 3'd5;
        8'b0001_xxxx: out = 3'd4;
        8'b0000_1xxx: out = 3'd3;
        8'b0000_01xx: out = 3'd2;
        8'b0000_001x: out = 3'd1;
        8'b0000_0001: out = 3'd0;   
        default: out = 3'd0; 
     endcase
    end    
endmodule
