`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.03.2026 14:26:09
// Design Name: 
// Module Name: tb_add4_cra
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


module tb_add4_cra_v1
();
    logic [3:0] tb_a, tb_b;
    logic tb_cin;
    
    initial begin
        tb_a = 4'b0000;
        tb_b = 4'b0000;
        tb_cin = 1'b0;
        
        // region all output combination
        #5 {tb_cin, tb_a, tb_b} = 9'b0_0000_0001;
        #5 {tb_cin, tb_a, tb_b} = 9'b0_0000_0011;
        #5 {tb_cin, tb_a, tb_b} = 9'b0_0000_0111;
        #5 {tb_cin, tb_a, tb_b} = 9'b0_0000_1111;
        #5 {tb_cin, tb_a, tb_b} = 9'b0_0001_1111;
        #5 {tb_cin, tb_a, tb_b} = 9'b0_0011_1111;
        #5 {tb_cin, tb_a, tb_b} = 9'b0_0111_1111;
        #5 {tb_cin, tb_a, tb_b} = 9'b0_1111_1111;
        #5 {tb_cin, tb_a, tb_b} = 9'b1_1111_1111;
        
        #5 {tb_cin, tb_a, tb_b} = 9'b1_1111_1110;
        #5 {tb_cin, tb_a, tb_b} = 9'b1_1111_1100;
        #5 {tb_cin, tb_a, tb_b} = 9'b1_1111_1000;
        #5 {tb_cin, tb_a, tb_b} = 9'b1_1111_0000;
        #5 {tb_cin, tb_a, tb_b} = 9'b1_1110_0000;
        #5 {tb_cin, tb_a, tb_b} = 9'b1_1100_0000;
        #5 {tb_cin, tb_a, tb_b} = 9'b1_1000_0000;
        #5 {tb_cin, tb_a, tb_b} = 9'b1_0000_0000;
        #5 {tb_cin, tb_a, tb_b} = 9'b0_0000_0000;
            
        // endregion
        
     end
     
    add4_cra_v1
    tb1
    (
        .o_add4_sum(tb_sum),
        .o_add4_cout(tb_cout),
        .i_add4_a(tb_a),
        .i_add4_b(tb_b),
        .i_add4_cin(tb_cin)
    );
    
    
endmodule
