`timescale 1ns / 1ps

module MUX_4Bit(input clk, async_rst, sync_rst, s1, s0, d3, d2, d1, d0, OE,
output reg [3:0] Q, R, Q_bar);

reg [3:0] new_R;

reg slow_clk = 0;
reg [25:0] count = 0;

always @(posedge clk)
begin
    if(count == 50000000-1)
    begin
        slow_clk <= ~slow_clk;
        count <= 0;
    end
    else
        count <= count + 1;
end 


always @(posedge OE or posedge async_rst or posedge slow_clk)
begin 
    if (async_rst==1) 
    begin
        R<=0;
        Q<=0;
        Q_bar<=15;
    end
        
    else if (sync_rst==1) 
    begin 
        R<=0;
        Q<=0;
        Q_bar<=15;
    end
    
    else if (OE==1)
    begin
        Q<=0;
        Q_bar<=15;
    end
    
    else 
    begin
        R<=new_R;
        Q<=R;
        Q_bar<=~R;
    end 
end 



always @(*)
begin
    if (s1==0 && s0==0)
    begin
        new_R[0]=d0;
        new_R[1]=d1; 
        new_R[2]=d2;
        new_R[3]=d3;
    end
    
    else if (s1==0 && s0==1)
        new_R=R;
            
    else if (s1==1 && s0==0)
    begin
        if (R<9)
            new_R=R+1;
        else
            new_R=0;
    end
        
    else if (s1==1 && s0==1)
        new_R=0;
end
endmodule
