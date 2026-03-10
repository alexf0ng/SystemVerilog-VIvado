`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.03.2026 13:50:44
// Design Name: 
// Module Name: add4_cra_v1
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


module add4_cra_v1
(
    output logic o_add4_sum[3:0], o_add4_cout,
    input logic i_add4_a[3:0], i_add4_b[3:0], i_add4_cin 
);

    wire cin2, cin3, cin4;
    
    add_full
    FA0
    (
        .i_a(i_add4_a[0]),
        .i_b(i_add4_b[0]),
        .i_cin(i_add4_cin),
        .o_sum(o_add4_sum[0]),
        .o_cout(cin2)
    );
    
    add_full
    FA1
    (
        .i_a(i_add4_a[1]),
        .i_b(i_add4_b[1]),
        .i_cin(cin2),
        .o_sum(o_add4_sum[1]),
        .o_cout(cin3)
    );
    
    add_full
    FA2
    (
        .i_a(i_add4_a[2]),
        .i_b(i_add4_b[2]),
        .i_cin(cin3),
        .o_sum(o_add4_sum[2]),
        .o_cout(cin4)
    );
    
    add_full
    FA3
    (
        .i_a(i_add4_a[3]),
        .i_b(i_add4_b[3]),
        .i_cin(cin4),
        .o_sum(o_add4_sum[3]),
        .o_cout(o_add4_cout)
    );
    
endmodule
