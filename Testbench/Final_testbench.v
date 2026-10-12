`timescale 1ns / 1ps

module Sim_MUX();
reg clk, async_rst, sync_rst, s1, s0, d3, d2, d1, d0, OE;
wire [3:0] R, Q, Q_bar;
MUX_4Bit u1(clk, async_rst, sync_rst, s1, s0, d3, d2, d1, d0, OE, Q, R, Q_bar);

initial
begin
    clk=0; #10;
    async_rst=0; sync_rst=0; OE=1; s1=0; s0=0; d3=0; d2=1; d1=1; d0=0; #12;
    async_rst=0; sync_rst=0; OE=0; s1=0; s0=0; d3=0; d2=1; d1=1; d0=0; #19;
    async_rst=1; sync_rst=0; OE=0; s1=0; s0=0; d3=0; d2=1; d1=1; d0=0; #12;
    async_rst=0; sync_rst=0; OE=0; s1=0; s0=0; d3=0; d2=1; d1=1; d0=0; #17;
    
    async_rst=0; sync_rst=0; OE=0; s1=1; s0=0; d3=0; d2=1; d1=1; d0=0; #120;
    async_rst=0; sync_rst=0; OE=1; s1=1; s0=0; d3=0; d2=1; d1=1; d0=0; #30;
    async_rst=0; sync_rst=0; OE=0; s1=0; s0=1; d3=0; d2=1; d1=1; d0=0; #20;
    async_rst=0; sync_rst=0; OE=0; s1=1; s0=1; d3=0; d2=1; d1=1; d0=0; #30;
   
    async_rst=0; sync_rst=1; OE=0; s1=1; s0=1; d3=0; d2=1; d1=1; d0=0; #20; 
    $finish;
end 

always
begin
    clk=~clk; #10;
end
endmodule
