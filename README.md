EXP NO 5: SIMULATION AND IMPLEMENTATION OF FINITE STATE MACHINE

DATE:

AIM:

       To simulate and synthesis finite state machine using Xilinx ISE.

APPARATUS REQUIRED:

      Xilinx 14.7 
      Spartan6 FPGA

PROCEDURE:

STEP:1 Start the Xilinx navigator, Select and Name the New project.

STEP:2 Select the device family, device, package and speed. 

STEP:3 Select new source in the New Project and select Verilog Module as the Source type. 

STEP:4 Type the File Name and Click Next and then finish button. Type the code and save it. 

STEP:5 Select the Behavioral Simulation in the Source Window and click the check syntax. 

STEP:6 Click the simulation to simulate the program and give the inputs and verify the outputs as per the truth table. 

STEP:7 Select the Implementation in the Sources Window and select the required file in the Processes Window. 

STEP:8 Select Check Syntax from the Synthesize XST Process. Double Click in the Floorplan Area/IO/Logic-Post Synthesis process in the User Constraints process group. UCF(User constraint File) is obtained. 

STEP:9 In the Design Object List Window, enter the pin location for each pin in the Loc column Select save from the File menu. 

STEP:10 Double click on the Implement Design and double click on the Generate Programming File to create a bitstream of the design.(.v) file is converted into .bit file here. 

STEP:11 On the board, by giving required input, the LEDs starts to glow light, indicating the output.

STEP:12 Load the Bit file into the SPARTAN 6 FPGA 

FINITE STATE MACHINE:

Logic Diagram:

![image](https://github.com/navaneethans/VLSI-LAB-EXP-5/assets/6987778/34ec5d63-2b3b-4511-81ef-99f4572d5869)


VERILOG CODE:
```
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

```

OUTPUT:
![image](https://github.com/Rishany2004/VLSI-LAB-EXP-5/assets/159290227/02270dff-9ac2-4815-99e1-bd91ac703153)


RESULT:

       Thus the simulation and implementation of finite state machine is verified successfully.


