`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: SJSU
// Engineer: Mario Arcos
// 
// Create Date: 02/16/2022 02:35:58 PM
// Design Name: 
// Module Name: fulladder
// Project Name: Lab 2 
// Target Devices: Blackboard
// Tool Versions: 
// Description: Implementing a full adder using two half adders and 
//              confirming truth table on blackboard
//  
//////////////////////////////////////////////////////////////////////////////////
module fulladder(A, B, C, S, CO);
    input A, B, C; //defining inputs in1,in2, and in3
    output S, CO; //defining outputs s and CO

    //ha = half adder
    wire sum_ha0, carry_ha0, sum_ha1, carry_ha1; //defining wires of halfadders
    
    //first instantiation of half adder
    half_adder firsthalfadder (.a(A), .b(B), .sum(sum_ha0), .carry(carry_ha0)); //connecting ports from half adder to full adder
    //second instantiation of half adder
    half_adder secondhalfadder (.a(sum_ha0), .b(C), .sum(sum_ha1), .carry(carry_ha1));
    
    //defining outputs of full adder
    assign CO = carry_ha0 | carry_ha1; //OR A and B
    assign S = A ^ B ^ C; //XOR of a,b, and C
endmodule