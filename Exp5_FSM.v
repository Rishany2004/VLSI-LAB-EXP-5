module FSM(clk,rst,din,dout);
input clk,rst,din;
output dout;
reg dout;
 parameter s0=2'b00,
           s1=2'b01,
           s2=2'b10,
           s3=2'b11;
 reg[1:0] state;
 always@(posedge clk)
 begin 
      if(rst)
       begin
          dout <=1'b0;
          state <=s0;
       end 
      else 
       begin
       case(state)
        s0:
         begin
          dout<=1'b0;
          if(din)
          state <=s1;
          else
          state <=s0;
         end
        s1:
         begin
          dout<=1'b0;
          if(~din)
          state <=s2;
          else
          state <=s1;
         end
        s2:
         begin
          dout<=1'b0;
          if(din)
          state <=s3;
          else
          state <=s0;
         end
        s3:
         begin
          dout<=1'b1;
          if(din)
          state <=s1;
          else
          state <=s0;
         end
       endcase
     end
     end
 endmodule 
