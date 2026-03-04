// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Mon Dec  8 14:36:00 2025
// Host        : CEAT-ENDV350-07L running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_top_0_0_sim_netlist.v
// Design      : design_1_top_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MemControl
   (Done,
    MStrobe,
    MemWrite,
    Trigger,
    clk,
    reset,
    DRW,
    AXIstart);
  output Done;
  input MStrobe;
  input MemWrite;
  input Trigger;
  input clk;
  input reset;
  output DRW;
  output AXIstart;

  wire \<const0> ;
  wire AXIstart;
  wire DRW;
  wire \FSM_sequential_state[0]_i_1_n_0 ;
  wire \FSM_sequential_state[1]_i_1_n_0 ;
  wire \FSM_sequential_state[2]_i_1_n_0 ;
  wire MStrobe;
  wire MemWrite;
  wire Trigger;
  wire clk;
  wire [0:0]nextstate;
  wire reset;
  wire [2:0]state;

  assign Done = \<const0> ;
  LUT3 #(
    .INIT(8'h06)) 
    AXIstart_INST_0
       (.I0(state[2]),
        .I1(state[0]),
        .I2(state[1]),
        .O(AXIstart));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h15)) 
    DRW_INST_0
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[0]),
        .O(DRW));
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(nextstate),
        .I1(reset),
        .O(\FSM_sequential_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h101010105D585858)) 
    \FSM_sequential_state[0]_i_2 
       (.I0(state[1]),
        .I1(Trigger),
        .I2(state[2]),
        .I3(MemWrite),
        .I4(MStrobe),
        .I5(state[0]),
        .O(nextstate));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h00001A12)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(state[0]),
        .I1(state[2]),
        .I2(state[1]),
        .I3(Trigger),
        .I4(reset),
        .O(\FSM_sequential_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000AABA)) 
    \FSM_sequential_state[2]_i_1 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(MStrobe),
        .I3(MemWrite),
        .I4(state[1]),
        .I5(reset),
        .O(\FSM_sequential_state[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "Idle:000,ReadStart:100,WriteStart:001,ReadData:110,ReadMem:101,WriteData:011,WriteMem:010" *) 
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \FSM_sequential_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_state[0]_i_1_n_0 ),
        .Q(state[0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "Idle:000,ReadStart:100,WriteStart:001,ReadData:110,ReadMem:101,WriteData:011,WriteMem:010" *) 
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \FSM_sequential_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_state[1]_i_1_n_0 ),
        .Q(state[1]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "Idle:000,ReadStart:100,WriteStart:001,ReadData:110,ReadMem:101,WriteData:011,WriteMem:010" *) 
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \FSM_sequential_state_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_state[2]_i_1_n_0 ),
        .Q(state[2]),
        .R(1'b0));
  GND GND
       (.G(\<const0> ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_alu
   (O,
    sum_carry__0_i_8,
    sum_carry__1_i_8,
    sum_carry__2_i_8,
    sum_carry__3_i_8,
    sum_carry__4_i_8,
    sum_carry__5_i_8,
    sum_carry__6_i_7,
    ALUResult,
    \ALUResult[31]_INST_0_i_8 ,
    \rd[23]_INST_0 ,
    sel0,
    immext__64,
    ALUSrc,
    rd21,
    wd3,
    \readDataM[31] ,
    \rd[6]_INST_0 ,
    \rd[5]_INST_0 ,
    \ALUResult[0]_INST_0_i_3 ,
    \ALUResult[0]_INST_0_i_3_0 ,
    \ALUResult[0]_INST_0_i_3_1 ,
    \ALUResult[0]_INST_0_i_3_2 ,
    DI,
    S,
    \ALUResult[4]_INST_0_i_2 ,
    \ALUResult[4]_INST_0_i_2_0 ,
    \ALUResult[4]_INST_0_i_2_1 ,
    \ALUResult[4]_INST_0_i_2_2 ,
    \ALUResult[4]_INST_0_i_2_3 ,
    \ALUResult[8]_INST_0_i_2 ,
    \ALUResult[8]_INST_0_i_2_0 ,
    \ALUResult[8]_INST_0_i_2_1 ,
    \ALUResult[8]_INST_0_i_2_2 ,
    \ALUResult[8]_INST_0_i_2_3 ,
    \ALUResult[12]_INST_0_i_1 ,
    \ALUResult[12]_INST_0_i_1_0 ,
    \ALUResult[12]_INST_0_i_1_1 ,
    \ALUResult[12]_INST_0_i_1_2 ,
    \ALUResult[12]_INST_0_i_1_3 ,
    \ALUResult[16]_INST_0_i_1 ,
    \ALUResult[16]_INST_0_i_1_0 ,
    \ALUResult[16]_INST_0_i_1_1 ,
    \ALUResult[16]_INST_0_i_1_2 ,
    \ALUResult[16]_INST_0_i_1_3 ,
    \ALUResult[20]_INST_0_i_1 ,
    \ALUResult[20]_INST_0_i_1_0 ,
    \ALUResult[20]_INST_0_i_1_1 ,
    \ALUResult[20]_INST_0_i_1_2 ,
    \ALUResult[20]_INST_0_i_1_3 ,
    \ALUResult[24]_INST_0_i_1 ,
    \ALUResult[24]_INST_0_i_1_0 ,
    \ALUResult[24]_INST_0_i_1_1 ,
    \ALUResult[24]_INST_0_i_1_2 ,
    \ALUResult[24]_INST_0_i_1_3 ,
    \ALUResult[28]_INST_0_i_1 ,
    \ALUResult[28]_INST_0_i_1_0 ,
    \ALUResult[28]_INST_0_i_1_1 ,
    \ALUResult[28]_INST_0_i_1_2 ,
    sltuOut_carry__0_0,
    sltuOut_carry__0_1,
    sltuOut_carry__1_0,
    sltuOut_carry__1_1,
    sltuOut_carry__2_0,
    sltuOut_carry__2_1,
    \ALUResult[0]_INST_0_i_2_0 ,
    \ALUResult[0]_INST_0_i_2_1 ,
    ALUControl,
    \addressM[0] ,
    result0__33,
    ALUControl__0,
    \addressM[0]_0 ,
    SrcB,
    rf_reg_r1_0_31_30_31_i_1__0_0,
    \addressM[31] ,
    \addressM[31]_0 ,
    Instr,
    \ALUResult[11]_INST_0_i_4 ,
    s,
    ReadData,
    Jump,
    rf_reg_r2_0_31_30_31__0);
  output [3:0]O;
  output [3:0]sum_carry__0_i_8;
  output [3:0]sum_carry__1_i_8;
  output [3:0]sum_carry__2_i_8;
  output [3:0]sum_carry__3_i_8;
  output [3:0]sum_carry__4_i_8;
  output [3:0]sum_carry__5_i_8;
  output [3:0]sum_carry__6_i_7;
  output [0:0]ALUResult;
  output \ALUResult[31]_INST_0_i_8 ;
  output \rd[23]_INST_0 ;
  output [0:0]sel0;
  output [7:0]immext__64;
  output [0:0]ALUSrc;
  output rd21;
  output [0:0]wd3;
  output \readDataM[31] ;
  output \rd[6]_INST_0 ;
  output \rd[5]_INST_0 ;
  input \ALUResult[0]_INST_0_i_3 ;
  input \ALUResult[0]_INST_0_i_3_0 ;
  input \ALUResult[0]_INST_0_i_3_1 ;
  input \ALUResult[0]_INST_0_i_3_2 ;
  input [0:0]DI;
  input [3:0]S;
  input \ALUResult[4]_INST_0_i_2 ;
  input \ALUResult[4]_INST_0_i_2_0 ;
  input \ALUResult[4]_INST_0_i_2_1 ;
  input \ALUResult[4]_INST_0_i_2_2 ;
  input [3:0]\ALUResult[4]_INST_0_i_2_3 ;
  input \ALUResult[8]_INST_0_i_2 ;
  input \ALUResult[8]_INST_0_i_2_0 ;
  input \ALUResult[8]_INST_0_i_2_1 ;
  input \ALUResult[8]_INST_0_i_2_2 ;
  input [3:0]\ALUResult[8]_INST_0_i_2_3 ;
  input \ALUResult[12]_INST_0_i_1 ;
  input \ALUResult[12]_INST_0_i_1_0 ;
  input \ALUResult[12]_INST_0_i_1_1 ;
  input \ALUResult[12]_INST_0_i_1_2 ;
  input [3:0]\ALUResult[12]_INST_0_i_1_3 ;
  input \ALUResult[16]_INST_0_i_1 ;
  input \ALUResult[16]_INST_0_i_1_0 ;
  input \ALUResult[16]_INST_0_i_1_1 ;
  input \ALUResult[16]_INST_0_i_1_2 ;
  input [3:0]\ALUResult[16]_INST_0_i_1_3 ;
  input \ALUResult[20]_INST_0_i_1 ;
  input \ALUResult[20]_INST_0_i_1_0 ;
  input \ALUResult[20]_INST_0_i_1_1 ;
  input \ALUResult[20]_INST_0_i_1_2 ;
  input [3:0]\ALUResult[20]_INST_0_i_1_3 ;
  input \ALUResult[24]_INST_0_i_1 ;
  input \ALUResult[24]_INST_0_i_1_0 ;
  input \ALUResult[24]_INST_0_i_1_1 ;
  input \ALUResult[24]_INST_0_i_1_2 ;
  input [3:0]\ALUResult[24]_INST_0_i_1_3 ;
  input \ALUResult[28]_INST_0_i_1 ;
  input \ALUResult[28]_INST_0_i_1_0 ;
  input \ALUResult[28]_INST_0_i_1_1 ;
  input [3:0]\ALUResult[28]_INST_0_i_1_2 ;
  input [3:0]sltuOut_carry__0_0;
  input [3:0]sltuOut_carry__0_1;
  input [3:0]sltuOut_carry__1_0;
  input [3:0]sltuOut_carry__1_1;
  input [3:0]sltuOut_carry__2_0;
  input [3:0]sltuOut_carry__2_1;
  input [3:0]\ALUResult[0]_INST_0_i_2_0 ;
  input [3:0]\ALUResult[0]_INST_0_i_2_1 ;
  input [2:0]ALUControl;
  input \addressM[0] ;
  input [0:0]result0__33;
  input [0:0]ALUControl__0;
  input \addressM[0]_0 ;
  input [0:0]SrcB;
  input rf_reg_r1_0_31_30_31_i_1__0_0;
  input \addressM[31] ;
  input \addressM[31]_0 ;
  input [19:0]Instr;
  input [0:0]\ALUResult[11]_INST_0_i_4 ;
  input [0:0]s;
  input [1:0]ReadData;
  input Jump;
  input rf_reg_r2_0_31_30_31__0;

  wire [2:0]ALUControl;
  wire [0:0]ALUControl__0;
  wire [0:0]ALUResult;
  wire \ALUResult[0]_INST_0_i_1_n_0 ;
  wire [3:0]\ALUResult[0]_INST_0_i_2_0 ;
  wire [3:0]\ALUResult[0]_INST_0_i_2_1 ;
  wire \ALUResult[0]_INST_0_i_2_n_0 ;
  wire \ALUResult[0]_INST_0_i_3 ;
  wire \ALUResult[0]_INST_0_i_3_0 ;
  wire \ALUResult[0]_INST_0_i_3_1 ;
  wire \ALUResult[0]_INST_0_i_3_2 ;
  wire [0:0]\ALUResult[11]_INST_0_i_4 ;
  wire \ALUResult[12]_INST_0_i_1 ;
  wire \ALUResult[12]_INST_0_i_1_0 ;
  wire \ALUResult[12]_INST_0_i_1_1 ;
  wire \ALUResult[12]_INST_0_i_1_2 ;
  wire [3:0]\ALUResult[12]_INST_0_i_1_3 ;
  wire \ALUResult[16]_INST_0_i_1 ;
  wire \ALUResult[16]_INST_0_i_1_0 ;
  wire \ALUResult[16]_INST_0_i_1_1 ;
  wire \ALUResult[16]_INST_0_i_1_2 ;
  wire [3:0]\ALUResult[16]_INST_0_i_1_3 ;
  wire \ALUResult[20]_INST_0_i_1 ;
  wire \ALUResult[20]_INST_0_i_1_0 ;
  wire \ALUResult[20]_INST_0_i_1_1 ;
  wire \ALUResult[20]_INST_0_i_1_2 ;
  wire [3:0]\ALUResult[20]_INST_0_i_1_3 ;
  wire \ALUResult[24]_INST_0_i_1 ;
  wire \ALUResult[24]_INST_0_i_1_0 ;
  wire \ALUResult[24]_INST_0_i_1_1 ;
  wire \ALUResult[24]_INST_0_i_1_2 ;
  wire [3:0]\ALUResult[24]_INST_0_i_1_3 ;
  wire \ALUResult[28]_INST_0_i_1 ;
  wire \ALUResult[28]_INST_0_i_1_0 ;
  wire \ALUResult[28]_INST_0_i_1_1 ;
  wire [3:0]\ALUResult[28]_INST_0_i_1_2 ;
  wire \ALUResult[31]_INST_0_i_8 ;
  wire \ALUResult[4]_INST_0_i_2 ;
  wire \ALUResult[4]_INST_0_i_2_0 ;
  wire \ALUResult[4]_INST_0_i_2_1 ;
  wire \ALUResult[4]_INST_0_i_2_2 ;
  wire [3:0]\ALUResult[4]_INST_0_i_2_3 ;
  wire \ALUResult[8]_INST_0_i_2 ;
  wire \ALUResult[8]_INST_0_i_2_0 ;
  wire \ALUResult[8]_INST_0_i_2_1 ;
  wire \ALUResult[8]_INST_0_i_2_2 ;
  wire [3:0]\ALUResult[8]_INST_0_i_2_3 ;
  wire [0:0]ALUSrc;
  wire [0:0]DI;
  wire [19:0]Instr;
  wire Jump;
  wire [3:0]O;
  wire [1:0]ReadData;
  wire [3:0]S;
  wire [0:0]SrcB;
  wire \addressM[0] ;
  wire \addressM[0]_0 ;
  wire \addressM[31] ;
  wire \addressM[31]_0 ;
  wire data8;
  wire [7:0]immext__64;
  wire rd21;
  wire \rd[23]_INST_0 ;
  wire \rd[5]_INST_0 ;
  wire \rd[6]_INST_0 ;
  wire \readDataM[31] ;
  wire [0:0]result0__33;
  wire rf_reg_r1_0_31_0_5_i_10_n_0;
  wire rf_reg_r1_0_31_30_31_i_1__0_0;
  wire rf_reg_r1_0_31_30_31_i_2__0_n_0;
  wire rf_reg_r2_0_31_30_31__0;
  wire [0:0]s;
  wire [0:0]sel0;
  wire [3:0]sltuOut_carry__0_0;
  wire [3:0]sltuOut_carry__0_1;
  wire sltuOut_carry__0_n_0;
  wire sltuOut_carry__0_n_1;
  wire sltuOut_carry__0_n_2;
  wire sltuOut_carry__0_n_3;
  wire [3:0]sltuOut_carry__1_0;
  wire [3:0]sltuOut_carry__1_1;
  wire sltuOut_carry__1_n_0;
  wire sltuOut_carry__1_n_1;
  wire sltuOut_carry__1_n_2;
  wire sltuOut_carry__1_n_3;
  wire [3:0]sltuOut_carry__2_0;
  wire [3:0]sltuOut_carry__2_1;
  wire sltuOut_carry__2_n_1;
  wire sltuOut_carry__2_n_2;
  wire sltuOut_carry__2_n_3;
  wire sltuOut_carry_n_0;
  wire sltuOut_carry_n_1;
  wire sltuOut_carry_n_2;
  wire sltuOut_carry_n_3;
  wire [3:0]sum_carry__0_i_8;
  wire sum_carry__0_n_0;
  wire sum_carry__0_n_1;
  wire sum_carry__0_n_2;
  wire sum_carry__0_n_3;
  wire [3:0]sum_carry__1_i_8;
  wire sum_carry__1_n_0;
  wire sum_carry__1_n_1;
  wire sum_carry__1_n_2;
  wire sum_carry__1_n_3;
  wire [3:0]sum_carry__2_i_8;
  wire sum_carry__2_n_0;
  wire sum_carry__2_n_1;
  wire sum_carry__2_n_2;
  wire sum_carry__2_n_3;
  wire [3:0]sum_carry__3_i_8;
  wire sum_carry__3_n_0;
  wire sum_carry__3_n_1;
  wire sum_carry__3_n_2;
  wire sum_carry__3_n_3;
  wire [3:0]sum_carry__4_i_8;
  wire sum_carry__4_n_0;
  wire sum_carry__4_n_1;
  wire sum_carry__4_n_2;
  wire sum_carry__4_n_3;
  wire [3:0]sum_carry__5_i_8;
  wire sum_carry__5_n_0;
  wire sum_carry__5_n_1;
  wire sum_carry__5_n_2;
  wire sum_carry__5_n_3;
  wire [3:0]sum_carry__6_i_7;
  wire sum_carry__6_n_1;
  wire sum_carry__6_n_2;
  wire sum_carry__6_n_3;
  wire sum_carry_n_0;
  wire sum_carry_n_1;
  wire sum_carry_n_2;
  wire sum_carry_n_3;
  wire [0:0]wd3;
  wire [3:0]NLW_sltuOut_carry_O_UNCONNECTED;
  wire [3:0]NLW_sltuOut_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_sltuOut_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_sltuOut_carry__2_O_UNCONNECTED;
  wire [3:3]NLW_sum_carry__6_CO_UNCONNECTED;

  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \ALUResult[0]_INST_0 
       (.I0(\ALUResult[0]_INST_0_i_1_n_0 ),
        .I1(ALUControl[1]),
        .I2(\ALUResult[0]_INST_0_i_2_n_0 ),
        .I3(ALUControl[2]),
        .I4(\addressM[0] ),
        .O(ALUResult));
  LUT5 #(
    .INIT(32'hF088F0BB)) 
    \ALUResult[0]_INST_0_i_1 
       (.I0(SrcB),
        .I1(ALUControl[0]),
        .I2(O[0]),
        .I3(ALUControl__0),
        .I4(data8),
        .O(\ALUResult[0]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA03F3FAFA03030)) 
    \ALUResult[0]_INST_0_i_2 
       (.I0(O[0]),
        .I1(result0__33),
        .I2(ALUControl[0]),
        .I3(data8),
        .I4(ALUControl__0),
        .I5(\addressM[0]_0 ),
        .O(\ALUResult[0]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \ALUResult[11]_INST_0_i_8 
       (.I0(Instr[14]),
        .I1(sel0),
        .I2(Instr[5]),
        .I3(\ALUResult[11]_INST_0_i_4 ),
        .I4(Instr[19]),
        .O(\rd[23]_INST_0 ));
  LUT6 #(
    .INIT(64'hF1FDF9FDE0206020)) 
    \ALUResult[12]_INST_0_i_7 
       (.I0(Instr[0]),
        .I1(Instr[4]),
        .I2(Instr[6]),
        .I3(sel0),
        .I4(Instr[1]),
        .I5(Instr[19]),
        .O(immext__64[0]));
  LUT6 #(
    .INIT(64'hF1FDF9FDE0206020)) 
    \ALUResult[13]_INST_0_i_7 
       (.I0(Instr[0]),
        .I1(Instr[4]),
        .I2(Instr[7]),
        .I3(sel0),
        .I4(Instr[1]),
        .I5(Instr[19]),
        .O(immext__64[1]));
  LUT6 #(
    .INIT(64'hF1FDF9FDE0206020)) 
    \ALUResult[14]_INST_0_i_7 
       (.I0(Instr[0]),
        .I1(Instr[4]),
        .I2(Instr[8]),
        .I3(sel0),
        .I4(Instr[1]),
        .I5(Instr[19]),
        .O(immext__64[2]));
  LUT6 #(
    .INIT(64'hF1FDF9FDE0206020)) 
    \ALUResult[15]_INST_0_i_7 
       (.I0(Instr[0]),
        .I1(Instr[4]),
        .I2(Instr[9]),
        .I3(sel0),
        .I4(Instr[1]),
        .I5(Instr[19]),
        .O(immext__64[3]));
  LUT6 #(
    .INIT(64'hF1FDF9FDE0206020)) 
    \ALUResult[16]_INST_0_i_7 
       (.I0(Instr[0]),
        .I1(Instr[4]),
        .I2(Instr[10]),
        .I3(sel0),
        .I4(Instr[1]),
        .I5(Instr[19]),
        .O(immext__64[4]));
  LUT6 #(
    .INIT(64'hF1FDF9FDE0206020)) 
    \ALUResult[17]_INST_0_i_7 
       (.I0(Instr[0]),
        .I1(Instr[4]),
        .I2(Instr[11]),
        .I3(sel0),
        .I4(Instr[1]),
        .I5(Instr[19]),
        .O(immext__64[5]));
  LUT6 #(
    .INIT(64'hF1FDF9FDE0206020)) 
    \ALUResult[18]_INST_0_i_7 
       (.I0(Instr[0]),
        .I1(Instr[4]),
        .I2(Instr[12]),
        .I3(sel0),
        .I4(Instr[1]),
        .I5(Instr[19]),
        .O(immext__64[6]));
  LUT6 #(
    .INIT(64'hF1FDF9FDE0206020)) 
    \ALUResult[19]_INST_0_i_7 
       (.I0(Instr[0]),
        .I1(Instr[4]),
        .I2(Instr[13]),
        .I3(sel0),
        .I4(Instr[1]),
        .I5(Instr[19]),
        .O(immext__64[7]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ALUResult[30]_INST_0_i_7 
       (.I0(Instr[0]),
        .I1(Instr[4]),
        .O(\rd[6]_INST_0 ));
  LUT6 #(
    .INIT(64'h88888888FFFCCCFC)) 
    \ALUResult[31]_INST_0_i_3 
       (.I0(sum_carry__6_i_7[3]),
        .I1(ALUControl[0]),
        .I2(\addressM[31] ),
        .I3(SrcB),
        .I4(\addressM[31]_0 ),
        .I5(ALUControl__0),
        .O(\ALUResult[31]_INST_0_i_8 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hABAA)) 
    \ALUResult[31]_INST_0_i_30 
       (.I0(Instr[1]),
        .I1(Instr[2]),
        .I2(Instr[4]),
        .I3(Instr[3]),
        .O(sel0));
  MUXF7 rf_reg_r1_0_31_0_5_i_10
       (.I0(\ALUResult[0]_INST_0_i_2_n_0 ),
        .I1(\ALUResult[0]_INST_0_i_1_n_0 ),
        .O(rf_reg_r1_0_31_0_5_i_10_n_0),
        .S(ALUControl[1]));
  LUT6 #(
    .INIT(64'h00000000FFE200E2)) 
    rf_reg_r1_0_31_0_5_i_3
       (.I0(\addressM[0] ),
        .I1(ALUControl[2]),
        .I2(rf_reg_r1_0_31_0_5_i_10_n_0),
        .I3(s),
        .I4(ReadData[0]),
        .I5(Jump),
        .O(wd3));
  LUT6 #(
    .INIT(64'h00000000FFE200E2)) 
    rf_reg_r1_0_31_30_31_i_1__0
       (.I0(rf_reg_r2_0_31_30_31__0),
        .I1(ALUControl[2]),
        .I2(rf_reg_r1_0_31_30_31_i_2__0_n_0),
        .I3(s),
        .I4(ReadData[1]),
        .I5(Jump),
        .O(\readDataM[31] ));
  MUXF7 rf_reg_r1_0_31_30_31_i_2__0
       (.I0(\ALUResult[31]_INST_0_i_8 ),
        .I1(rf_reg_r1_0_31_30_31_i_1__0_0),
        .O(rf_reg_r1_0_31_30_31_i_2__0_n_0),
        .S(ALUControl[1]));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 sltuOut_carry
       (.CI(1'b0),
        .CO({sltuOut_carry_n_0,sltuOut_carry_n_1,sltuOut_carry_n_2,sltuOut_carry_n_3}),
        .CYINIT(1'b0),
        .DI(sltuOut_carry__0_0),
        .O(NLW_sltuOut_carry_O_UNCONNECTED[3:0]),
        .S(sltuOut_carry__0_1));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 sltuOut_carry__0
       (.CI(sltuOut_carry_n_0),
        .CO({sltuOut_carry__0_n_0,sltuOut_carry__0_n_1,sltuOut_carry__0_n_2,sltuOut_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(sltuOut_carry__1_0),
        .O(NLW_sltuOut_carry__0_O_UNCONNECTED[3:0]),
        .S(sltuOut_carry__1_1));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 sltuOut_carry__1
       (.CI(sltuOut_carry__0_n_0),
        .CO({sltuOut_carry__1_n_0,sltuOut_carry__1_n_1,sltuOut_carry__1_n_2,sltuOut_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(sltuOut_carry__2_0),
        .O(NLW_sltuOut_carry__1_O_UNCONNECTED[3:0]),
        .S(sltuOut_carry__2_1));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 sltuOut_carry__2
       (.CI(sltuOut_carry__1_n_0),
        .CO({data8,sltuOut_carry__2_n_1,sltuOut_carry__2_n_2,sltuOut_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(\ALUResult[0]_INST_0_i_2_0 ),
        .O(NLW_sltuOut_carry__2_O_UNCONNECTED[3:0]),
        .S(\ALUResult[0]_INST_0_i_2_1 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    sltuOut_carry_i_9
       (.I0(Instr[0]),
        .I1(Instr[3]),
        .O(\rd[5]_INST_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sum_carry
       (.CI(1'b0),
        .CO({sum_carry_n_0,sum_carry_n_1,sum_carry_n_2,sum_carry_n_3}),
        .CYINIT(\ALUResult[0]_INST_0_i_3 ),
        .DI({\ALUResult[0]_INST_0_i_3_0 ,\ALUResult[0]_INST_0_i_3_1 ,\ALUResult[0]_INST_0_i_3_2 ,DI}),
        .O(O),
        .S(S));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sum_carry__0
       (.CI(sum_carry_n_0),
        .CO({sum_carry__0_n_0,sum_carry__0_n_1,sum_carry__0_n_2,sum_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({\ALUResult[4]_INST_0_i_2 ,\ALUResult[4]_INST_0_i_2_0 ,\ALUResult[4]_INST_0_i_2_1 ,\ALUResult[4]_INST_0_i_2_2 }),
        .O(sum_carry__0_i_8),
        .S(\ALUResult[4]_INST_0_i_2_3 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sum_carry__1
       (.CI(sum_carry__0_n_0),
        .CO({sum_carry__1_n_0,sum_carry__1_n_1,sum_carry__1_n_2,sum_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({\ALUResult[8]_INST_0_i_2 ,\ALUResult[8]_INST_0_i_2_0 ,\ALUResult[8]_INST_0_i_2_1 ,\ALUResult[8]_INST_0_i_2_2 }),
        .O(sum_carry__1_i_8),
        .S(\ALUResult[8]_INST_0_i_2_3 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sum_carry__2
       (.CI(sum_carry__1_n_0),
        .CO({sum_carry__2_n_0,sum_carry__2_n_1,sum_carry__2_n_2,sum_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({\ALUResult[12]_INST_0_i_1 ,\ALUResult[12]_INST_0_i_1_0 ,\ALUResult[12]_INST_0_i_1_1 ,\ALUResult[12]_INST_0_i_1_2 }),
        .O(sum_carry__2_i_8),
        .S(\ALUResult[12]_INST_0_i_1_3 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sum_carry__3
       (.CI(sum_carry__2_n_0),
        .CO({sum_carry__3_n_0,sum_carry__3_n_1,sum_carry__3_n_2,sum_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({\ALUResult[16]_INST_0_i_1 ,\ALUResult[16]_INST_0_i_1_0 ,\ALUResult[16]_INST_0_i_1_1 ,\ALUResult[16]_INST_0_i_1_2 }),
        .O(sum_carry__3_i_8),
        .S(\ALUResult[16]_INST_0_i_1_3 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sum_carry__4
       (.CI(sum_carry__3_n_0),
        .CO({sum_carry__4_n_0,sum_carry__4_n_1,sum_carry__4_n_2,sum_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({\ALUResult[20]_INST_0_i_1 ,\ALUResult[20]_INST_0_i_1_0 ,\ALUResult[20]_INST_0_i_1_1 ,\ALUResult[20]_INST_0_i_1_2 }),
        .O(sum_carry__4_i_8),
        .S(\ALUResult[20]_INST_0_i_1_3 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sum_carry__5
       (.CI(sum_carry__4_n_0),
        .CO({sum_carry__5_n_0,sum_carry__5_n_1,sum_carry__5_n_2,sum_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({\ALUResult[24]_INST_0_i_1 ,\ALUResult[24]_INST_0_i_1_0 ,\ALUResult[24]_INST_0_i_1_1 ,\ALUResult[24]_INST_0_i_1_2 }),
        .O(sum_carry__5_i_8),
        .S(\ALUResult[24]_INST_0_i_1_3 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sum_carry__6
       (.CI(sum_carry__5_n_0),
        .CO({NLW_sum_carry__6_CO_UNCONNECTED[3],sum_carry__6_n_1,sum_carry__6_n_2,sum_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,\ALUResult[28]_INST_0_i_1 ,\ALUResult[28]_INST_0_i_1_0 ,\ALUResult[28]_INST_0_i_1_1 }),
        .O(sum_carry__6_i_7),
        .S(\ALUResult[28]_INST_0_i_1_2 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hAABF)) 
    sum_carry__6_i_8
       (.I0(Instr[0]),
        .I1(Instr[2]),
        .I2(Instr[3]),
        .I3(Instr[4]),
        .O(ALUSrc));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    sum_carry__6_i_9
       (.I0(Instr[16]),
        .I1(Instr[14]),
        .I2(Instr[15]),
        .I3(Instr[17]),
        .I4(Instr[18]),
        .O(rd21));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath
   (ALUResult,
    WriteData,
    clk,
    Instr,
    ReadData);
  output [31:0]ALUResult;
  output [31:0]WriteData;
  input clk;
  input [29:0]Instr;
  input [31:0]ReadData;

  wire [3:1]ALUControl;
  wire [0:0]ALUControl__0;
  wire [31:0]ALUResult;
  wire [0:0]ALUSrc;
  wire [29:0]Instr;
  wire Jump;
  wire Neg;
  wire [31:0]ReadData;
  wire [0:0]SrcB;
  wire [31:0]WriteData;
  wire alu_n_0;
  wire alu_n_1;
  wire alu_n_10;
  wire alu_n_11;
  wire alu_n_12;
  wire alu_n_13;
  wire alu_n_14;
  wire alu_n_15;
  wire alu_n_16;
  wire alu_n_17;
  wire alu_n_18;
  wire alu_n_19;
  wire alu_n_2;
  wire alu_n_20;
  wire alu_n_21;
  wire alu_n_22;
  wire alu_n_23;
  wire alu_n_24;
  wire alu_n_25;
  wire alu_n_26;
  wire alu_n_27;
  wire alu_n_29;
  wire alu_n_3;
  wire alu_n_30;
  wire alu_n_31;
  wire alu_n_33;
  wire alu_n_34;
  wire alu_n_4;
  wire alu_n_46;
  wire alu_n_47;
  wire alu_n_48;
  wire alu_n_49;
  wire alu_n_5;
  wire alu_n_6;
  wire alu_n_7;
  wire alu_n_8;
  wire alu_n_9;
  wire clk;
  wire [19:12]\ext/immext__64 ;
  wire rd21;
  wire [0:0]result0__33;
  wire rf_n_0;
  wire rf_n_126;
  wire rf_n_127;
  wire rf_n_128;
  wire rf_n_129;
  wire rf_n_130;
  wire rf_n_131;
  wire rf_n_132;
  wire rf_n_133;
  wire rf_n_134;
  wire rf_n_135;
  wire rf_n_136;
  wire rf_n_137;
  wire rf_n_138;
  wire rf_n_139;
  wire rf_n_140;
  wire rf_n_141;
  wire rf_n_142;
  wire rf_n_143;
  wire rf_n_144;
  wire rf_n_145;
  wire rf_n_146;
  wire rf_n_147;
  wire rf_n_148;
  wire rf_n_149;
  wire rf_n_150;
  wire rf_n_151;
  wire rf_n_152;
  wire rf_n_153;
  wire rf_n_154;
  wire rf_n_155;
  wire rf_n_156;
  wire rf_n_157;
  wire rf_n_158;
  wire rf_n_159;
  wire rf_n_160;
  wire rf_n_161;
  wire rf_n_162;
  wire rf_n_163;
  wire rf_n_164;
  wire rf_n_165;
  wire rf_n_166;
  wire rf_n_167;
  wire rf_n_168;
  wire rf_n_169;
  wire rf_n_170;
  wire rf_n_171;
  wire rf_n_172;
  wire rf_n_173;
  wire rf_n_36;
  wire rf_n_39;
  wire rf_n_40;
  wire rf_n_41;
  wire rf_n_42;
  wire rf_n_43;
  wire rf_n_44;
  wire rf_n_45;
  wire rf_n_46;
  wire rf_n_47;
  wire rf_n_48;
  wire rf_n_49;
  wire rf_n_50;
  wire rf_n_51;
  wire rf_n_52;
  wire rf_n_53;
  wire rf_n_54;
  wire rf_n_55;
  wire rf_n_56;
  wire rf_n_57;
  wire rf_n_58;
  wire rf_n_59;
  wire rf_n_60;
  wire rf_n_61;
  wire rf_n_62;
  wire rf_n_63;
  wire rf_n_64;
  wire rf_n_65;
  wire rf_n_66;
  wire rf_n_67;
  wire rf_n_68;
  wire rf_n_69;
  wire rf_n_72;
  wire rf_n_73;
  wire rf_n_74;
  wire rf_n_75;
  wire rf_n_76;
  wire rf_n_77;
  wire rf_n_78;
  wire rf_n_79;
  wire rf_n_80;
  wire rf_n_81;
  wire rf_n_82;
  wire rf_n_83;
  wire rf_n_84;
  wire rf_n_85;
  wire rf_n_86;
  wire rf_n_87;
  wire rf_n_88;
  wire rf_n_89;
  wire rf_n_90;
  wire rf_n_91;
  wire rf_n_92;
  wire [0:0]s;
  wire [1:0]sel0;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_alu alu
       (.ALUControl(ALUControl),
        .ALUControl__0(ALUControl__0),
        .ALUResult(ALUResult[0]),
        .\ALUResult[0]_INST_0_i_2_0 ({rf_n_89,rf_n_90,rf_n_91,rf_n_92}),
        .\ALUResult[0]_INST_0_i_2_1 ({rf_n_167,rf_n_168,rf_n_169,rf_n_170}),
        .\ALUResult[0]_INST_0_i_3 (rf_n_154),
        .\ALUResult[0]_INST_0_i_3_0 (rf_n_40),
        .\ALUResult[0]_INST_0_i_3_1 (rf_n_39),
        .\ALUResult[0]_INST_0_i_3_2 (rf_n_36),
        .\ALUResult[11]_INST_0_i_4 (sel0[1]),
        .\ALUResult[12]_INST_0_i_1 (rf_n_52),
        .\ALUResult[12]_INST_0_i_1_0 (rf_n_51),
        .\ALUResult[12]_INST_0_i_1_1 (rf_n_50),
        .\ALUResult[12]_INST_0_i_1_2 (rf_n_49),
        .\ALUResult[12]_INST_0_i_1_3 ({rf_n_138,rf_n_139,rf_n_140,rf_n_141}),
        .\ALUResult[16]_INST_0_i_1 (rf_n_56),
        .\ALUResult[16]_INST_0_i_1_0 (rf_n_55),
        .\ALUResult[16]_INST_0_i_1_1 (rf_n_54),
        .\ALUResult[16]_INST_0_i_1_2 (rf_n_53),
        .\ALUResult[16]_INST_0_i_1_3 ({rf_n_142,rf_n_143,rf_n_144,rf_n_145}),
        .\ALUResult[20]_INST_0_i_1 (rf_n_60),
        .\ALUResult[20]_INST_0_i_1_0 (rf_n_59),
        .\ALUResult[20]_INST_0_i_1_1 (rf_n_58),
        .\ALUResult[20]_INST_0_i_1_2 (rf_n_57),
        .\ALUResult[20]_INST_0_i_1_3 ({rf_n_146,rf_n_147,rf_n_148,rf_n_149}),
        .\ALUResult[24]_INST_0_i_1 (rf_n_64),
        .\ALUResult[24]_INST_0_i_1_0 (rf_n_63),
        .\ALUResult[24]_INST_0_i_1_1 (rf_n_62),
        .\ALUResult[24]_INST_0_i_1_2 (rf_n_61),
        .\ALUResult[24]_INST_0_i_1_3 ({rf_n_150,rf_n_151,rf_n_152,rf_n_153}),
        .\ALUResult[28]_INST_0_i_1 (rf_n_67),
        .\ALUResult[28]_INST_0_i_1_0 (rf_n_66),
        .\ALUResult[28]_INST_0_i_1_1 (rf_n_65),
        .\ALUResult[28]_INST_0_i_1_2 ({rf_n_73,rf_n_74,rf_n_75,rf_n_76}),
        .\ALUResult[31]_INST_0_i_8 (alu_n_33),
        .\ALUResult[4]_INST_0_i_2 (rf_n_44),
        .\ALUResult[4]_INST_0_i_2_0 (rf_n_43),
        .\ALUResult[4]_INST_0_i_2_1 (rf_n_42),
        .\ALUResult[4]_INST_0_i_2_2 (rf_n_41),
        .\ALUResult[4]_INST_0_i_2_3 ({rf_n_130,rf_n_131,rf_n_132,rf_n_133}),
        .\ALUResult[8]_INST_0_i_2 (rf_n_48),
        .\ALUResult[8]_INST_0_i_2_0 (rf_n_47),
        .\ALUResult[8]_INST_0_i_2_1 (rf_n_46),
        .\ALUResult[8]_INST_0_i_2_2 (rf_n_45),
        .\ALUResult[8]_INST_0_i_2_3 ({rf_n_134,rf_n_135,rf_n_136,rf_n_137}),
        .ALUSrc(ALUSrc),
        .DI(rf_n_172),
        .Instr({Instr[29],Instr[22:10],Instr[5:0]}),
        .Jump(Jump),
        .O({alu_n_0,alu_n_1,alu_n_2,alu_n_3}),
        .ReadData({ReadData[31],ReadData[0]}),
        .S({rf_n_126,rf_n_127,rf_n_128,rf_n_129}),
        .SrcB(SrcB),
        .\addressM[0] (rf_n_0),
        .\addressM[0]_0 (rf_n_171),
        .\addressM[31] (rf_n_173),
        .\addressM[31]_0 (rf_n_72),
        .immext__64(\ext/immext__64 ),
        .rd21(rd21),
        .\rd[23]_INST_0 (alu_n_34),
        .\rd[5]_INST_0 (alu_n_49),
        .\rd[6]_INST_0 (alu_n_48),
        .\readDataM[31] (alu_n_47),
        .result0__33(result0__33),
        .rf_reg_r1_0_31_30_31_i_1__0_0(rf_n_68),
        .rf_reg_r2_0_31_30_31__0(rf_n_69),
        .s(s),
        .sel0(sel0[0]),
        .sltuOut_carry__0_0({rf_n_77,rf_n_78,rf_n_79,rf_n_80}),
        .sltuOut_carry__0_1({rf_n_155,rf_n_156,rf_n_157,rf_n_158}),
        .sltuOut_carry__1_0({rf_n_81,rf_n_82,rf_n_83,rf_n_84}),
        .sltuOut_carry__1_1({rf_n_159,rf_n_160,rf_n_161,rf_n_162}),
        .sltuOut_carry__2_0({rf_n_85,rf_n_86,rf_n_87,rf_n_88}),
        .sltuOut_carry__2_1({rf_n_163,rf_n_164,rf_n_165,rf_n_166}),
        .sum_carry__0_i_8({alu_n_4,alu_n_5,alu_n_6,alu_n_7}),
        .sum_carry__1_i_8({alu_n_8,alu_n_9,alu_n_10,alu_n_11}),
        .sum_carry__2_i_8({alu_n_12,alu_n_13,alu_n_14,alu_n_15}),
        .sum_carry__3_i_8({alu_n_16,alu_n_17,alu_n_18,alu_n_19}),
        .sum_carry__4_i_8({alu_n_20,alu_n_21,alu_n_22,alu_n_23}),
        .sum_carry__5_i_8({alu_n_24,alu_n_25,alu_n_26,alu_n_27}),
        .sum_carry__6_i_7({Neg,alu_n_29,alu_n_30,alu_n_31}),
        .wd3(alu_n_46));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_regfile rf
       (.ALUControl(ALUControl),
        .ALUControl__0(ALUControl__0),
        .ALUResult(ALUResult[31:1]),
        .\ALUResult[17]_INST_0_i_13_0 (alu_n_49),
        .\ALUResult[31]_INST_0_i_13_0 (rf_n_0),
        .\ALUResult[31]_INST_0_i_13_1 (rf_n_154),
        .\ALUResult[31]_INST_0_i_13_2 (rf_n_171),
        .\ALUResult[31]_INST_0_i_23_0 (rf_n_173),
        .\ALUResult[31]_INST_0_i_28_0 (rf_n_72),
        .\ALUResult[31]_INST_0_i_6_0 (rf_n_69),
        .\ALUResult[31]_INST_0_i_8_0 (rf_n_68),
        .ALUSrc(ALUSrc),
        .DI(rf_n_172),
        .Instr(Instr),
        .Jump(Jump),
        .O({alu_n_0,alu_n_1,alu_n_2,alu_n_3}),
        .ReadData(ReadData[30:1]),
        .S({rf_n_126,rf_n_127,rf_n_128,rf_n_129}),
        .WriteData(WriteData),
        .\addressM[11] ({alu_n_8,alu_n_9,alu_n_10,alu_n_11}),
        .\addressM[15] ({alu_n_12,alu_n_13,alu_n_14,alu_n_15}),
        .\addressM[19] ({alu_n_16,alu_n_17,alu_n_18,alu_n_19}),
        .\addressM[23] ({alu_n_20,alu_n_21,alu_n_22,alu_n_23}),
        .\addressM[27] ({alu_n_24,alu_n_25,alu_n_26,alu_n_27}),
        .\addressM[31] ({Neg,alu_n_29,alu_n_30,alu_n_31}),
        .\addressM[31]_0 (alu_n_33),
        .\addressM[7] ({alu_n_4,alu_n_5,alu_n_6,alu_n_7}),
        .clk(clk),
        .clk_0(SrcB),
        .clk_1(rf_n_36),
        .clk_10(rf_n_47),
        .clk_11(rf_n_48),
        .clk_12(rf_n_49),
        .clk_13(rf_n_50),
        .clk_14(rf_n_51),
        .clk_15(rf_n_52),
        .clk_16(rf_n_53),
        .clk_17(rf_n_54),
        .clk_18(rf_n_55),
        .clk_19(rf_n_56),
        .clk_2(rf_n_39),
        .clk_20(rf_n_57),
        .clk_21(rf_n_58),
        .clk_22(rf_n_59),
        .clk_23(rf_n_60),
        .clk_24(rf_n_61),
        .clk_25(rf_n_62),
        .clk_26(rf_n_63),
        .clk_27(rf_n_64),
        .clk_28(rf_n_65),
        .clk_29(rf_n_66),
        .clk_3(rf_n_40),
        .clk_30(rf_n_67),
        .clk_31({rf_n_73,rf_n_74,rf_n_75,rf_n_76}),
        .clk_32({rf_n_77,rf_n_78,rf_n_79,rf_n_80}),
        .clk_33({rf_n_81,rf_n_82,rf_n_83,rf_n_84}),
        .clk_34({rf_n_85,rf_n_86,rf_n_87,rf_n_88}),
        .clk_35({rf_n_89,rf_n_90,rf_n_91,rf_n_92}),
        .clk_36({rf_n_130,rf_n_131,rf_n_132,rf_n_133}),
        .clk_37({rf_n_134,rf_n_135,rf_n_136,rf_n_137}),
        .clk_38({rf_n_138,rf_n_139,rf_n_140,rf_n_141}),
        .clk_39({rf_n_142,rf_n_143,rf_n_144,rf_n_145}),
        .clk_4(rf_n_41),
        .clk_40({rf_n_146,rf_n_147,rf_n_148,rf_n_149}),
        .clk_41({rf_n_150,rf_n_151,rf_n_152,rf_n_153}),
        .clk_42({rf_n_155,rf_n_156,rf_n_157,rf_n_158}),
        .clk_43({rf_n_159,rf_n_160,rf_n_161,rf_n_162}),
        .clk_44({rf_n_163,rf_n_164,rf_n_165,rf_n_166}),
        .clk_45({rf_n_167,rf_n_168,rf_n_169,rf_n_170}),
        .clk_5(rf_n_42),
        .clk_6(rf_n_43),
        .clk_7(rf_n_44),
        .clk_8(rf_n_45),
        .clk_9(rf_n_46),
        .immext__64(\ext/immext__64 ),
        .rd21(rd21),
        .\rd[6]_INST_0 (sel0[1]),
        .result0__33(result0__33),
        .s(s),
        .sel0(sel0[0]),
        .sum_carry__1_i_5_0(alu_n_34),
        .sum_carry__6_i_5_0(alu_n_48),
        .\writeDataM[1] (alu_n_46),
        .\writeDataM[31] (alu_n_47));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_top_0_0,top,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "top,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
    reset,
    doneM,
    readDataM,
    writeDataM,
    addressM,
    DRW,
    AXIStart);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset;
  input doneM;
  input [31:0]readDataM;
  output [31:0]writeDataM;
  output [31:0]addressM;
  output DRW;
  output AXIStart;

  wire AXIStart;
  wire DRW;
  wire [31:0]addressM;
  wire clk;
  wire doneM;
  wire [31:0]readDataM;
  wire reset;
  wire [31:0]writeDataM;

  (* KEEP_HIERARCHY = "soft" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_top inst
       (.AXIStart(AXIStart),
        .DRW(DRW),
        .addressM(addressM),
        .clk(clk),
        .doneM(doneM),
        .readDataM(readDataM),
        .reset(reset),
        .writeDataM(writeDataM));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_imem
   (a,
    rd);
  input [31:0]a;
  output [31:0]rd;

  wire \<const0> ;
  wire [31:0]a;
  wire [31:4]\^rd ;

  assign rd[31] = \^rd [31];
  assign rd[30] = \^rd [31];
  assign rd[29] = \^rd [31];
  assign rd[28] = \^rd [28];
  assign rd[27] = \^rd [31];
  assign rd[26] = \^rd [31];
  assign rd[25:24] = \^rd [25:24];
  assign rd[23] = \^rd [31];
  assign rd[22:19] = \^rd [22:19];
  assign rd[18] = \^rd [19];
  assign rd[17:13] = \^rd [17:13];
  assign rd[12] = \^rd [14];
  assign rd[11:4] = \^rd [11:4];
  assign rd[3] = \^rd [14];
  assign rd[2] = \^rd [14];
  assign rd[1] = \<const0> ;
  assign rd[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  LUT4 #(
    .INIT(16'h00CD)) 
    \rd[10]_INST_0 
       (.I0(a[5]),
        .I1(a[2]),
        .I2(a[4]),
        .I3(a[3]),
        .O(\^rd [10]));
  LUT4 #(
    .INIT(16'h004D)) 
    \rd[11]_INST_0 
       (.I0(a[5]),
        .I1(a[2]),
        .I2(a[4]),
        .I3(a[3]),
        .O(\^rd [11]));
  LUT3 #(
    .INIT(8'h28)) 
    \rd[13]_INST_0 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[4]),
        .O(\^rd [13]));
  LUT4 #(
    .INIT(16'h282A)) 
    \rd[15]_INST_0 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[4]),
        .I3(a[2]),
        .O(\^rd [15]));
  LUT4 #(
    .INIT(16'h3404)) 
    \rd[16]_INST_0 
       (.I0(a[2]),
        .I1(a[5]),
        .I2(a[4]),
        .I3(a[3]),
        .O(\^rd [16]));
  LUT4 #(
    .INIT(16'h6E6A)) 
    \rd[17]_INST_0 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[2]),
        .O(\^rd [17]));
  LUT4 #(
    .INIT(16'h22E8)) 
    \rd[18]_INST_0 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[2]),
        .I3(a[3]),
        .O(\^rd [19]));
  LUT4 #(
    .INIT(16'h3260)) 
    \rd[20]_INST_0 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[2]),
        .O(\^rd [20]));
  LUT4 #(
    .INIT(16'h0038)) 
    \rd[21]_INST_0 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[2]),
        .I3(a[3]),
        .O(\^rd [21]));
  LUT4 #(
    .INIT(16'h1A2D)) 
    \rd[22]_INST_0 
       (.I0(a[5]),
        .I1(a[2]),
        .I2(a[4]),
        .I3(a[3]),
        .O(\^rd [22]));
  LUT4 #(
    .INIT(16'h0220)) 
    \rd[23]_INST_0 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[2]),
        .I3(a[3]),
        .O(\^rd [31]));
  LUT4 #(
    .INIT(16'h0020)) 
    \rd[24]_INST_0 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[2]),
        .I3(a[3]),
        .O(\^rd [24]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h0230)) 
    \rd[25]_INST_0 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[2]),
        .I3(a[3]),
        .O(\^rd [25]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h0029)) 
    \rd[28]_INST_0 
       (.I0(a[5]),
        .I1(a[2]),
        .I2(a[3]),
        .I3(a[4]),
        .O(\^rd [28]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    \rd[2]_INST_0 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[2]),
        .I3(a[3]),
        .O(\^rd [14]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hCD77)) 
    \rd[4]_INST_0 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[2]),
        .I3(a[4]),
        .O(\^rd [4]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hAE48)) 
    \rd[5]_INST_0 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[2]),
        .I3(a[3]),
        .O(\^rd [5]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h8A40)) 
    \rd[6]_INST_0 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[2]),
        .I3(a[3]),
        .O(\^rd [6]));
  LUT4 #(
    .INIT(16'h00D5)) 
    \rd[7]_INST_0 
       (.I0(a[2]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[5]),
        .O(\^rd [7]));
  LUT4 #(
    .INIT(16'h1582)) 
    \rd[8]_INST_0 
       (.I0(a[5]),
        .I1(a[2]),
        .I2(a[4]),
        .I3(a[3]),
        .O(\^rd [8]));
  LUT4 #(
    .INIT(16'h4777)) 
    \rd[9]_INST_0 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[2]),
        .I3(a[4]),
        .O(\^rd [9]));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_regfile
   (\ALUResult[31]_INST_0_i_13_0 ,
    clk_0,
    ALUResult,
    ALUControl,
    clk_1,
    Jump,
    s,
    clk_2,
    clk_3,
    clk_4,
    clk_5,
    clk_6,
    clk_7,
    clk_8,
    clk_9,
    clk_10,
    clk_11,
    clk_12,
    clk_13,
    clk_14,
    clk_15,
    clk_16,
    clk_17,
    clk_18,
    clk_19,
    clk_20,
    clk_21,
    clk_22,
    clk_23,
    clk_24,
    clk_25,
    clk_26,
    clk_27,
    clk_28,
    clk_29,
    clk_30,
    \ALUResult[31]_INST_0_i_8_0 ,
    \ALUResult[31]_INST_0_i_6_0 ,
    result0__33,
    ALUControl__0,
    \ALUResult[31]_INST_0_i_28_0 ,
    clk_31,
    clk_32,
    clk_33,
    clk_34,
    clk_35,
    \rd[6]_INST_0 ,
    WriteData,
    S,
    clk_36,
    clk_37,
    clk_38,
    clk_39,
    clk_40,
    clk_41,
    \ALUResult[31]_INST_0_i_13_1 ,
    clk_42,
    clk_43,
    clk_44,
    clk_45,
    \ALUResult[31]_INST_0_i_13_2 ,
    DI,
    \ALUResult[31]_INST_0_i_23_0 ,
    clk,
    Instr,
    \writeDataM[31] ,
    O,
    ReadData,
    \addressM[7] ,
    \addressM[11] ,
    \addressM[15] ,
    \addressM[19] ,
    \addressM[23] ,
    \addressM[27] ,
    \addressM[31] ,
    \addressM[31]_0 ,
    \ALUResult[17]_INST_0_i_13_0 ,
    ALUSrc,
    rd21,
    sum_carry__6_i_5_0,
    sum_carry__1_i_5_0,
    immext__64,
    sel0,
    \writeDataM[1] );
  output \ALUResult[31]_INST_0_i_13_0 ;
  output [0:0]clk_0;
  output [30:0]ALUResult;
  output [2:0]ALUControl;
  output clk_1;
  output Jump;
  output [0:0]s;
  output clk_2;
  output clk_3;
  output clk_4;
  output clk_5;
  output clk_6;
  output clk_7;
  output clk_8;
  output clk_9;
  output clk_10;
  output clk_11;
  output clk_12;
  output clk_13;
  output clk_14;
  output clk_15;
  output clk_16;
  output clk_17;
  output clk_18;
  output clk_19;
  output clk_20;
  output clk_21;
  output clk_22;
  output clk_23;
  output clk_24;
  output clk_25;
  output clk_26;
  output clk_27;
  output clk_28;
  output clk_29;
  output clk_30;
  output \ALUResult[31]_INST_0_i_8_0 ;
  output \ALUResult[31]_INST_0_i_6_0 ;
  output [0:0]result0__33;
  output [0:0]ALUControl__0;
  output \ALUResult[31]_INST_0_i_28_0 ;
  output [3:0]clk_31;
  output [3:0]clk_32;
  output [3:0]clk_33;
  output [3:0]clk_34;
  output [3:0]clk_35;
  output [0:0]\rd[6]_INST_0 ;
  output [31:0]WriteData;
  output [3:0]S;
  output [3:0]clk_36;
  output [3:0]clk_37;
  output [3:0]clk_38;
  output [3:0]clk_39;
  output [3:0]clk_40;
  output [3:0]clk_41;
  output \ALUResult[31]_INST_0_i_13_1 ;
  output [3:0]clk_42;
  output [3:0]clk_43;
  output [3:0]clk_44;
  output [3:0]clk_45;
  output \ALUResult[31]_INST_0_i_13_2 ;
  output [0:0]DI;
  output \ALUResult[31]_INST_0_i_23_0 ;
  input clk;
  input [29:0]Instr;
  input \writeDataM[31] ;
  input [3:0]O;
  input [29:0]ReadData;
  input [3:0]\addressM[7] ;
  input [3:0]\addressM[11] ;
  input [3:0]\addressM[15] ;
  input [3:0]\addressM[19] ;
  input [3:0]\addressM[23] ;
  input [3:0]\addressM[27] ;
  input [3:0]\addressM[31] ;
  input \addressM[31]_0 ;
  input \ALUResult[17]_INST_0_i_13_0 ;
  input [0:0]ALUSrc;
  input rd21;
  input sum_carry__6_i_5_0;
  input sum_carry__1_i_5_0;
  input [7:0]immext__64;
  input [0:0]sel0;
  input [0:0]\writeDataM[1] ;

  wire [2:0]ALUControl;
  wire [0:0]ALUControl__0;
  wire [30:0]ALUResult;
  wire \ALUResult[0]_INST_0_i_10_n_0 ;
  wire \ALUResult[0]_INST_0_i_11_n_0 ;
  wire \ALUResult[0]_INST_0_i_12_n_0 ;
  wire \ALUResult[0]_INST_0_i_13_n_0 ;
  wire \ALUResult[0]_INST_0_i_14_n_0 ;
  wire \ALUResult[0]_INST_0_i_15_n_0 ;
  wire \ALUResult[0]_INST_0_i_6_n_0 ;
  wire \ALUResult[0]_INST_0_i_7_n_0 ;
  wire \ALUResult[0]_INST_0_i_8_n_0 ;
  wire \ALUResult[0]_INST_0_i_9_n_0 ;
  wire \ALUResult[10]_INST_0_i_10_n_0 ;
  wire \ALUResult[10]_INST_0_i_11_n_0 ;
  wire \ALUResult[10]_INST_0_i_12_n_0 ;
  wire \ALUResult[10]_INST_0_i_1_n_0 ;
  wire \ALUResult[10]_INST_0_i_2_n_0 ;
  wire \ALUResult[10]_INST_0_i_3_n_0 ;
  wire \ALUResult[10]_INST_0_i_6_n_0 ;
  wire \ALUResult[10]_INST_0_i_7_n_0 ;
  wire \ALUResult[10]_INST_0_i_8_n_0 ;
  wire \ALUResult[10]_INST_0_i_9_n_0 ;
  wire \ALUResult[11]_INST_0_i_10_n_0 ;
  wire \ALUResult[11]_INST_0_i_11_n_0 ;
  wire \ALUResult[11]_INST_0_i_12_n_0 ;
  wire \ALUResult[11]_INST_0_i_13_n_0 ;
  wire \ALUResult[11]_INST_0_i_1_n_0 ;
  wire \ALUResult[11]_INST_0_i_2_n_0 ;
  wire \ALUResult[11]_INST_0_i_3_n_0 ;
  wire \ALUResult[11]_INST_0_i_6_n_0 ;
  wire \ALUResult[11]_INST_0_i_7_n_0 ;
  wire \ALUResult[11]_INST_0_i_9_n_0 ;
  wire \ALUResult[12]_INST_0_i_10_n_0 ;
  wire \ALUResult[12]_INST_0_i_11_n_0 ;
  wire \ALUResult[12]_INST_0_i_12_n_0 ;
  wire \ALUResult[12]_INST_0_i_13_n_0 ;
  wire \ALUResult[12]_INST_0_i_14_n_0 ;
  wire \ALUResult[12]_INST_0_i_1_n_0 ;
  wire \ALUResult[12]_INST_0_i_2_n_0 ;
  wire \ALUResult[12]_INST_0_i_3_n_0 ;
  wire \ALUResult[12]_INST_0_i_5_n_0 ;
  wire \ALUResult[12]_INST_0_i_6_n_0 ;
  wire \ALUResult[12]_INST_0_i_8_n_0 ;
  wire \ALUResult[12]_INST_0_i_9_n_0 ;
  wire \ALUResult[13]_INST_0_i_10_n_0 ;
  wire \ALUResult[13]_INST_0_i_11_n_0 ;
  wire \ALUResult[13]_INST_0_i_12_n_0 ;
  wire \ALUResult[13]_INST_0_i_13_n_0 ;
  wire \ALUResult[13]_INST_0_i_14_n_0 ;
  wire \ALUResult[13]_INST_0_i_1_n_0 ;
  wire \ALUResult[13]_INST_0_i_2_n_0 ;
  wire \ALUResult[13]_INST_0_i_3_n_0 ;
  wire \ALUResult[13]_INST_0_i_5_n_0 ;
  wire \ALUResult[13]_INST_0_i_6_n_0 ;
  wire \ALUResult[13]_INST_0_i_8_n_0 ;
  wire \ALUResult[13]_INST_0_i_9_n_0 ;
  wire \ALUResult[14]_INST_0_i_10_n_0 ;
  wire \ALUResult[14]_INST_0_i_11_n_0 ;
  wire \ALUResult[14]_INST_0_i_12_n_0 ;
  wire \ALUResult[14]_INST_0_i_13_n_0 ;
  wire \ALUResult[14]_INST_0_i_14_n_0 ;
  wire \ALUResult[14]_INST_0_i_1_n_0 ;
  wire \ALUResult[14]_INST_0_i_2_n_0 ;
  wire \ALUResult[14]_INST_0_i_3_n_0 ;
  wire \ALUResult[14]_INST_0_i_5_n_0 ;
  wire \ALUResult[14]_INST_0_i_6_n_0 ;
  wire \ALUResult[14]_INST_0_i_8_n_0 ;
  wire \ALUResult[14]_INST_0_i_9_n_0 ;
  wire \ALUResult[15]_INST_0_i_10_n_0 ;
  wire \ALUResult[15]_INST_0_i_11_n_0 ;
  wire \ALUResult[15]_INST_0_i_12_n_0 ;
  wire \ALUResult[15]_INST_0_i_13_n_0 ;
  wire \ALUResult[15]_INST_0_i_14_n_0 ;
  wire \ALUResult[15]_INST_0_i_15_n_0 ;
  wire \ALUResult[15]_INST_0_i_1_n_0 ;
  wire \ALUResult[15]_INST_0_i_2_n_0 ;
  wire \ALUResult[15]_INST_0_i_3_n_0 ;
  wire \ALUResult[15]_INST_0_i_5_n_0 ;
  wire \ALUResult[15]_INST_0_i_6_n_0 ;
  wire \ALUResult[15]_INST_0_i_8_n_0 ;
  wire \ALUResult[15]_INST_0_i_9_n_0 ;
  wire \ALUResult[16]_INST_0_i_10_n_0 ;
  wire \ALUResult[16]_INST_0_i_11_n_0 ;
  wire \ALUResult[16]_INST_0_i_12_n_0 ;
  wire \ALUResult[16]_INST_0_i_13_n_0 ;
  wire \ALUResult[16]_INST_0_i_14_n_0 ;
  wire \ALUResult[16]_INST_0_i_15_n_0 ;
  wire \ALUResult[16]_INST_0_i_16_n_0 ;
  wire \ALUResult[16]_INST_0_i_1_n_0 ;
  wire \ALUResult[16]_INST_0_i_2_n_0 ;
  wire \ALUResult[16]_INST_0_i_3_n_0 ;
  wire \ALUResult[16]_INST_0_i_5_n_0 ;
  wire \ALUResult[16]_INST_0_i_6_n_0 ;
  wire \ALUResult[16]_INST_0_i_8_n_0 ;
  wire \ALUResult[16]_INST_0_i_9_n_0 ;
  wire \ALUResult[17]_INST_0_i_10_n_0 ;
  wire \ALUResult[17]_INST_0_i_11_n_0 ;
  wire \ALUResult[17]_INST_0_i_12_n_0 ;
  wire \ALUResult[17]_INST_0_i_13_0 ;
  wire \ALUResult[17]_INST_0_i_13_n_0 ;
  wire \ALUResult[17]_INST_0_i_14_n_0 ;
  wire \ALUResult[17]_INST_0_i_15_n_0 ;
  wire \ALUResult[17]_INST_0_i_16_n_0 ;
  wire \ALUResult[17]_INST_0_i_1_n_0 ;
  wire \ALUResult[17]_INST_0_i_2_n_0 ;
  wire \ALUResult[17]_INST_0_i_3_n_0 ;
  wire \ALUResult[17]_INST_0_i_5_n_0 ;
  wire \ALUResult[17]_INST_0_i_6_n_0 ;
  wire \ALUResult[17]_INST_0_i_8_n_0 ;
  wire \ALUResult[17]_INST_0_i_9_n_0 ;
  wire \ALUResult[18]_INST_0_i_10_n_0 ;
  wire \ALUResult[18]_INST_0_i_11_n_0 ;
  wire \ALUResult[18]_INST_0_i_12_n_0 ;
  wire \ALUResult[18]_INST_0_i_13_n_0 ;
  wire \ALUResult[18]_INST_0_i_14_n_0 ;
  wire \ALUResult[18]_INST_0_i_15_n_0 ;
  wire \ALUResult[18]_INST_0_i_16_n_0 ;
  wire \ALUResult[18]_INST_0_i_1_n_0 ;
  wire \ALUResult[18]_INST_0_i_2_n_0 ;
  wire \ALUResult[18]_INST_0_i_3_n_0 ;
  wire \ALUResult[18]_INST_0_i_5_n_0 ;
  wire \ALUResult[18]_INST_0_i_6_n_0 ;
  wire \ALUResult[18]_INST_0_i_8_n_0 ;
  wire \ALUResult[18]_INST_0_i_9_n_0 ;
  wire \ALUResult[19]_INST_0_i_10_n_0 ;
  wire \ALUResult[19]_INST_0_i_11_n_0 ;
  wire \ALUResult[19]_INST_0_i_12_n_0 ;
  wire \ALUResult[19]_INST_0_i_13_n_0 ;
  wire \ALUResult[19]_INST_0_i_14_n_0 ;
  wire \ALUResult[19]_INST_0_i_15_n_0 ;
  wire \ALUResult[19]_INST_0_i_16_n_0 ;
  wire \ALUResult[19]_INST_0_i_1_n_0 ;
  wire \ALUResult[19]_INST_0_i_2_n_0 ;
  wire \ALUResult[19]_INST_0_i_3_n_0 ;
  wire \ALUResult[19]_INST_0_i_5_n_0 ;
  wire \ALUResult[19]_INST_0_i_6_n_0 ;
  wire \ALUResult[19]_INST_0_i_8_n_0 ;
  wire \ALUResult[19]_INST_0_i_9_n_0 ;
  wire \ALUResult[1]_INST_0_i_10_n_0 ;
  wire \ALUResult[1]_INST_0_i_11_n_0 ;
  wire \ALUResult[1]_INST_0_i_12_n_0 ;
  wire \ALUResult[1]_INST_0_i_13_n_0 ;
  wire \ALUResult[1]_INST_0_i_1_n_0 ;
  wire \ALUResult[1]_INST_0_i_2_n_0 ;
  wire \ALUResult[1]_INST_0_i_3_n_0 ;
  wire \ALUResult[1]_INST_0_i_6_n_0 ;
  wire \ALUResult[1]_INST_0_i_7_n_0 ;
  wire \ALUResult[1]_INST_0_i_8_n_0 ;
  wire \ALUResult[1]_INST_0_i_9_n_0 ;
  wire \ALUResult[20]_INST_0_i_10_n_0 ;
  wire \ALUResult[20]_INST_0_i_11_n_0 ;
  wire \ALUResult[20]_INST_0_i_12_n_0 ;
  wire \ALUResult[20]_INST_0_i_13_n_0 ;
  wire \ALUResult[20]_INST_0_i_14_n_0 ;
  wire \ALUResult[20]_INST_0_i_1_n_0 ;
  wire \ALUResult[20]_INST_0_i_2_n_0 ;
  wire \ALUResult[20]_INST_0_i_3_n_0 ;
  wire \ALUResult[20]_INST_0_i_5_n_0 ;
  wire \ALUResult[20]_INST_0_i_6_n_0 ;
  wire \ALUResult[20]_INST_0_i_7_n_0 ;
  wire \ALUResult[20]_INST_0_i_8_n_0 ;
  wire \ALUResult[20]_INST_0_i_9_n_0 ;
  wire \ALUResult[21]_INST_0_i_10_n_0 ;
  wire \ALUResult[21]_INST_0_i_11_n_0 ;
  wire \ALUResult[21]_INST_0_i_12_n_0 ;
  wire \ALUResult[21]_INST_0_i_13_n_0 ;
  wire \ALUResult[21]_INST_0_i_14_n_0 ;
  wire \ALUResult[21]_INST_0_i_1_n_0 ;
  wire \ALUResult[21]_INST_0_i_2_n_0 ;
  wire \ALUResult[21]_INST_0_i_3_n_0 ;
  wire \ALUResult[21]_INST_0_i_5_n_0 ;
  wire \ALUResult[21]_INST_0_i_6_n_0 ;
  wire \ALUResult[21]_INST_0_i_7_n_0 ;
  wire \ALUResult[21]_INST_0_i_8_n_0 ;
  wire \ALUResult[21]_INST_0_i_9_n_0 ;
  wire \ALUResult[22]_INST_0_i_10_n_0 ;
  wire \ALUResult[22]_INST_0_i_11_n_0 ;
  wire \ALUResult[22]_INST_0_i_12_n_0 ;
  wire \ALUResult[22]_INST_0_i_13_n_0 ;
  wire \ALUResult[22]_INST_0_i_14_n_0 ;
  wire \ALUResult[22]_INST_0_i_1_n_0 ;
  wire \ALUResult[22]_INST_0_i_2_n_0 ;
  wire \ALUResult[22]_INST_0_i_3_n_0 ;
  wire \ALUResult[22]_INST_0_i_5_n_0 ;
  wire \ALUResult[22]_INST_0_i_6_n_0 ;
  wire \ALUResult[22]_INST_0_i_7_n_0 ;
  wire \ALUResult[22]_INST_0_i_8_n_0 ;
  wire \ALUResult[22]_INST_0_i_9_n_0 ;
  wire \ALUResult[23]_INST_0_i_10_n_0 ;
  wire \ALUResult[23]_INST_0_i_11_n_0 ;
  wire \ALUResult[23]_INST_0_i_12_n_0 ;
  wire \ALUResult[23]_INST_0_i_13_n_0 ;
  wire \ALUResult[23]_INST_0_i_1_n_0 ;
  wire \ALUResult[23]_INST_0_i_2_n_0 ;
  wire \ALUResult[23]_INST_0_i_3_n_0 ;
  wire \ALUResult[23]_INST_0_i_5_n_0 ;
  wire \ALUResult[23]_INST_0_i_6_n_0 ;
  wire \ALUResult[23]_INST_0_i_7_n_0 ;
  wire \ALUResult[23]_INST_0_i_8_n_0 ;
  wire \ALUResult[23]_INST_0_i_9_n_0 ;
  wire \ALUResult[24]_INST_0_i_10_n_0 ;
  wire \ALUResult[24]_INST_0_i_11_n_0 ;
  wire \ALUResult[24]_INST_0_i_12_n_0 ;
  wire \ALUResult[24]_INST_0_i_13_n_0 ;
  wire \ALUResult[24]_INST_0_i_1_n_0 ;
  wire \ALUResult[24]_INST_0_i_2_n_0 ;
  wire \ALUResult[24]_INST_0_i_3_n_0 ;
  wire \ALUResult[24]_INST_0_i_5_n_0 ;
  wire \ALUResult[24]_INST_0_i_6_n_0 ;
  wire \ALUResult[24]_INST_0_i_7_n_0 ;
  wire \ALUResult[24]_INST_0_i_8_n_0 ;
  wire \ALUResult[24]_INST_0_i_9_n_0 ;
  wire \ALUResult[25]_INST_0_i_10_n_0 ;
  wire \ALUResult[25]_INST_0_i_11_n_0 ;
  wire \ALUResult[25]_INST_0_i_12_n_0 ;
  wire \ALUResult[25]_INST_0_i_13_n_0 ;
  wire \ALUResult[25]_INST_0_i_14_n_0 ;
  wire \ALUResult[25]_INST_0_i_1_n_0 ;
  wire \ALUResult[25]_INST_0_i_2_n_0 ;
  wire \ALUResult[25]_INST_0_i_3_n_0 ;
  wire \ALUResult[25]_INST_0_i_5_n_0 ;
  wire \ALUResult[25]_INST_0_i_6_n_0 ;
  wire \ALUResult[25]_INST_0_i_7_n_0 ;
  wire \ALUResult[25]_INST_0_i_8_n_0 ;
  wire \ALUResult[25]_INST_0_i_9_n_0 ;
  wire \ALUResult[26]_INST_0_i_10_n_0 ;
  wire \ALUResult[26]_INST_0_i_11_n_0 ;
  wire \ALUResult[26]_INST_0_i_12_n_0 ;
  wire \ALUResult[26]_INST_0_i_13_n_0 ;
  wire \ALUResult[26]_INST_0_i_14_n_0 ;
  wire \ALUResult[26]_INST_0_i_1_n_0 ;
  wire \ALUResult[26]_INST_0_i_2_n_0 ;
  wire \ALUResult[26]_INST_0_i_3_n_0 ;
  wire \ALUResult[26]_INST_0_i_5_n_0 ;
  wire \ALUResult[26]_INST_0_i_6_n_0 ;
  wire \ALUResult[26]_INST_0_i_7_n_0 ;
  wire \ALUResult[26]_INST_0_i_8_n_0 ;
  wire \ALUResult[26]_INST_0_i_9_n_0 ;
  wire \ALUResult[27]_INST_0_i_10_n_0 ;
  wire \ALUResult[27]_INST_0_i_11_n_0 ;
  wire \ALUResult[27]_INST_0_i_12_n_0 ;
  wire \ALUResult[27]_INST_0_i_13_n_0 ;
  wire \ALUResult[27]_INST_0_i_14_n_0 ;
  wire \ALUResult[27]_INST_0_i_1_n_0 ;
  wire \ALUResult[27]_INST_0_i_2_n_0 ;
  wire \ALUResult[27]_INST_0_i_3_n_0 ;
  wire \ALUResult[27]_INST_0_i_5_n_0 ;
  wire \ALUResult[27]_INST_0_i_6_n_0 ;
  wire \ALUResult[27]_INST_0_i_7_n_0 ;
  wire \ALUResult[27]_INST_0_i_8_n_0 ;
  wire \ALUResult[27]_INST_0_i_9_n_0 ;
  wire \ALUResult[28]_INST_0_i_10_n_0 ;
  wire \ALUResult[28]_INST_0_i_11_n_0 ;
  wire \ALUResult[28]_INST_0_i_12_n_0 ;
  wire \ALUResult[28]_INST_0_i_13_n_0 ;
  wire \ALUResult[28]_INST_0_i_1_n_0 ;
  wire \ALUResult[28]_INST_0_i_2_n_0 ;
  wire \ALUResult[28]_INST_0_i_3_n_0 ;
  wire \ALUResult[28]_INST_0_i_5_n_0 ;
  wire \ALUResult[28]_INST_0_i_6_n_0 ;
  wire \ALUResult[28]_INST_0_i_7_n_0 ;
  wire \ALUResult[28]_INST_0_i_8_n_0 ;
  wire \ALUResult[28]_INST_0_i_9_n_0 ;
  wire \ALUResult[29]_INST_0_i_10_n_0 ;
  wire \ALUResult[29]_INST_0_i_11_n_0 ;
  wire \ALUResult[29]_INST_0_i_1_n_0 ;
  wire \ALUResult[29]_INST_0_i_2_n_0 ;
  wire \ALUResult[29]_INST_0_i_3_n_0 ;
  wire \ALUResult[29]_INST_0_i_5_n_0 ;
  wire \ALUResult[29]_INST_0_i_6_n_0 ;
  wire \ALUResult[29]_INST_0_i_7_n_0 ;
  wire \ALUResult[29]_INST_0_i_8_n_0 ;
  wire \ALUResult[29]_INST_0_i_9_n_0 ;
  wire \ALUResult[2]_INST_0_i_10_n_0 ;
  wire \ALUResult[2]_INST_0_i_11_n_0 ;
  wire \ALUResult[2]_INST_0_i_12_n_0 ;
  wire \ALUResult[2]_INST_0_i_13_n_0 ;
  wire \ALUResult[2]_INST_0_i_1_n_0 ;
  wire \ALUResult[2]_INST_0_i_2_n_0 ;
  wire \ALUResult[2]_INST_0_i_3_n_0 ;
  wire \ALUResult[2]_INST_0_i_6_n_0 ;
  wire \ALUResult[2]_INST_0_i_7_n_0 ;
  wire \ALUResult[2]_INST_0_i_8_n_0 ;
  wire \ALUResult[2]_INST_0_i_9_n_0 ;
  wire \ALUResult[30]_INST_0_i_10_n_0 ;
  wire \ALUResult[30]_INST_0_i_11_n_0 ;
  wire \ALUResult[30]_INST_0_i_12_n_0 ;
  wire \ALUResult[30]_INST_0_i_1_n_0 ;
  wire \ALUResult[30]_INST_0_i_2_n_0 ;
  wire \ALUResult[30]_INST_0_i_3_n_0 ;
  wire \ALUResult[30]_INST_0_i_5_n_0 ;
  wire \ALUResult[30]_INST_0_i_6_n_0 ;
  wire \ALUResult[30]_INST_0_i_8_n_0 ;
  wire \ALUResult[30]_INST_0_i_9_n_0 ;
  wire \ALUResult[31]_INST_0_i_13_0 ;
  wire \ALUResult[31]_INST_0_i_13_1 ;
  wire \ALUResult[31]_INST_0_i_13_2 ;
  wire \ALUResult[31]_INST_0_i_15_n_0 ;
  wire \ALUResult[31]_INST_0_i_16_n_0 ;
  wire \ALUResult[31]_INST_0_i_17_n_0 ;
  wire \ALUResult[31]_INST_0_i_18_n_0 ;
  wire \ALUResult[31]_INST_0_i_19_n_0 ;
  wire \ALUResult[31]_INST_0_i_20_n_0 ;
  wire \ALUResult[31]_INST_0_i_21_n_0 ;
  wire \ALUResult[31]_INST_0_i_22_n_0 ;
  wire \ALUResult[31]_INST_0_i_23_0 ;
  wire \ALUResult[31]_INST_0_i_23_n_0 ;
  wire \ALUResult[31]_INST_0_i_24_n_0 ;
  wire \ALUResult[31]_INST_0_i_25_n_0 ;
  wire \ALUResult[31]_INST_0_i_26_n_0 ;
  wire \ALUResult[31]_INST_0_i_27_n_0 ;
  wire \ALUResult[31]_INST_0_i_28_0 ;
  wire \ALUResult[31]_INST_0_i_28_n_0 ;
  wire \ALUResult[31]_INST_0_i_29_n_0 ;
  wire \ALUResult[31]_INST_0_i_6_0 ;
  wire \ALUResult[31]_INST_0_i_8_0 ;
  wire \ALUResult[3]_INST_0_i_10_n_0 ;
  wire \ALUResult[3]_INST_0_i_11_n_0 ;
  wire \ALUResult[3]_INST_0_i_12_n_0 ;
  wire \ALUResult[3]_INST_0_i_13_n_0 ;
  wire \ALUResult[3]_INST_0_i_1_n_0 ;
  wire \ALUResult[3]_INST_0_i_2_n_0 ;
  wire \ALUResult[3]_INST_0_i_3_n_0 ;
  wire \ALUResult[3]_INST_0_i_6_n_0 ;
  wire \ALUResult[3]_INST_0_i_7_n_0 ;
  wire \ALUResult[3]_INST_0_i_8_n_0 ;
  wire \ALUResult[3]_INST_0_i_9_n_0 ;
  wire \ALUResult[4]_INST_0_i_10_n_0 ;
  wire \ALUResult[4]_INST_0_i_11_n_0 ;
  wire \ALUResult[4]_INST_0_i_12_n_0 ;
  wire \ALUResult[4]_INST_0_i_13_n_0 ;
  wire \ALUResult[4]_INST_0_i_14_n_0 ;
  wire \ALUResult[4]_INST_0_i_1_n_0 ;
  wire \ALUResult[4]_INST_0_i_2_n_0 ;
  wire \ALUResult[4]_INST_0_i_3_n_0 ;
  wire \ALUResult[4]_INST_0_i_6_n_0 ;
  wire \ALUResult[4]_INST_0_i_7_n_0 ;
  wire \ALUResult[4]_INST_0_i_8_n_0 ;
  wire \ALUResult[5]_INST_0_i_10_n_0 ;
  wire \ALUResult[5]_INST_0_i_11_n_0 ;
  wire \ALUResult[5]_INST_0_i_1_n_0 ;
  wire \ALUResult[5]_INST_0_i_2_n_0 ;
  wire \ALUResult[5]_INST_0_i_3_n_0 ;
  wire \ALUResult[5]_INST_0_i_6_n_0 ;
  wire \ALUResult[5]_INST_0_i_7_n_0 ;
  wire \ALUResult[5]_INST_0_i_8_n_0 ;
  wire \ALUResult[5]_INST_0_i_9_n_0 ;
  wire \ALUResult[6]_INST_0_i_10_n_0 ;
  wire \ALUResult[6]_INST_0_i_11_n_0 ;
  wire \ALUResult[6]_INST_0_i_1_n_0 ;
  wire \ALUResult[6]_INST_0_i_2_n_0 ;
  wire \ALUResult[6]_INST_0_i_3_n_0 ;
  wire \ALUResult[6]_INST_0_i_6_n_0 ;
  wire \ALUResult[6]_INST_0_i_7_n_0 ;
  wire \ALUResult[6]_INST_0_i_8_n_0 ;
  wire \ALUResult[6]_INST_0_i_9_n_0 ;
  wire \ALUResult[7]_INST_0_i_10_n_0 ;
  wire \ALUResult[7]_INST_0_i_11_n_0 ;
  wire \ALUResult[7]_INST_0_i_1_n_0 ;
  wire \ALUResult[7]_INST_0_i_2_n_0 ;
  wire \ALUResult[7]_INST_0_i_3_n_0 ;
  wire \ALUResult[7]_INST_0_i_6_n_0 ;
  wire \ALUResult[7]_INST_0_i_7_n_0 ;
  wire \ALUResult[7]_INST_0_i_8_n_0 ;
  wire \ALUResult[7]_INST_0_i_9_n_0 ;
  wire \ALUResult[8]_INST_0_i_10_n_0 ;
  wire \ALUResult[8]_INST_0_i_11_n_0 ;
  wire \ALUResult[8]_INST_0_i_12_n_0 ;
  wire \ALUResult[8]_INST_0_i_1_n_0 ;
  wire \ALUResult[8]_INST_0_i_2_n_0 ;
  wire \ALUResult[8]_INST_0_i_3_n_0 ;
  wire \ALUResult[8]_INST_0_i_6_n_0 ;
  wire \ALUResult[8]_INST_0_i_7_n_0 ;
  wire \ALUResult[8]_INST_0_i_8_n_0 ;
  wire \ALUResult[8]_INST_0_i_9_n_0 ;
  wire \ALUResult[9]_INST_0_i_10_n_0 ;
  wire \ALUResult[9]_INST_0_i_11_n_0 ;
  wire \ALUResult[9]_INST_0_i_12_n_0 ;
  wire \ALUResult[9]_INST_0_i_1_n_0 ;
  wire \ALUResult[9]_INST_0_i_2_n_0 ;
  wire \ALUResult[9]_INST_0_i_3_n_0 ;
  wire \ALUResult[9]_INST_0_i_6_n_0 ;
  wire \ALUResult[9]_INST_0_i_7_n_0 ;
  wire \ALUResult[9]_INST_0_i_8_n_0 ;
  wire \ALUResult[9]_INST_0_i_9_n_0 ;
  wire [0:0]ALUSrc;
  wire [0:0]DI;
  wire [29:0]Instr;
  wire Jump;
  wire [3:0]O;
  wire [29:0]ReadData;
  wire [3:0]S;
  wire [31:1]SrcB;
  wire [31:0]WriteData;
  wire [3:0]\addressM[11] ;
  wire [3:0]\addressM[15] ;
  wire [3:0]\addressM[19] ;
  wire [3:0]\addressM[23] ;
  wire [3:0]\addressM[27] ;
  wire [3:0]\addressM[31] ;
  wire \addressM[31]_0 ;
  wire [3:0]\addressM[7] ;
  wire [1:0]\c/ALUOp ;
  wire \c/ad/RtypeSub__0 ;
  wire clk;
  wire [0:0]clk_0;
  wire clk_1;
  wire clk_10;
  wire clk_11;
  wire clk_12;
  wire clk_13;
  wire clk_14;
  wire clk_15;
  wire clk_16;
  wire clk_17;
  wire clk_18;
  wire clk_19;
  wire clk_2;
  wire clk_20;
  wire clk_21;
  wire clk_22;
  wire clk_23;
  wire clk_24;
  wire clk_25;
  wire clk_26;
  wire clk_27;
  wire clk_28;
  wire clk_29;
  wire clk_3;
  wire clk_30;
  wire [3:0]clk_31;
  wire [3:0]clk_32;
  wire [3:0]clk_33;
  wire [3:0]clk_34;
  wire [3:0]clk_35;
  wire [3:0]clk_36;
  wire [3:0]clk_37;
  wire [3:0]clk_38;
  wire [3:0]clk_39;
  wire clk_4;
  wire [3:0]clk_40;
  wire [3:0]clk_41;
  wire [3:0]clk_42;
  wire [3:0]clk_43;
  wire [3:0]clk_44;
  wire [3:0]clk_45;
  wire clk_5;
  wire clk_6;
  wire clk_7;
  wire clk_8;
  wire clk_9;
  wire [11:1]data7;
  wire [7:0]immext__64;
  wire [31:0]rd10;
  wire rd11;
  wire [31:0]rd20;
  wire rd21;
  wire [0:0]\rd[6]_INST_0 ;
  wire [0:0]result0__33;
  wire rf_reg_r1_0_31_0_5_i_2_n_0;
  wire rf_reg_r1_0_31_0_5_i_4_n_0;
  wire rf_reg_r1_0_31_0_5_i_6_n_0;
  wire rf_reg_r1_0_31_0_5_i_7_n_0;
  wire rf_reg_r1_0_31_12_17_i_10_n_0;
  wire rf_reg_r1_0_31_12_17_i_11_n_0;
  wire rf_reg_r1_0_31_12_17_i_12_n_0;
  wire rf_reg_r1_0_31_12_17_i_1_n_0;
  wire rf_reg_r1_0_31_12_17_i_2_n_0;
  wire rf_reg_r1_0_31_12_17_i_3_n_0;
  wire rf_reg_r1_0_31_12_17_i_4_n_0;
  wire rf_reg_r1_0_31_12_17_i_5_n_0;
  wire rf_reg_r1_0_31_12_17_i_6_n_0;
  wire rf_reg_r1_0_31_12_17_i_7_n_0;
  wire rf_reg_r1_0_31_12_17_i_8_n_0;
  wire rf_reg_r1_0_31_12_17_i_9_n_0;
  wire rf_reg_r1_0_31_18_23_i_10_n_0;
  wire rf_reg_r1_0_31_18_23_i_11_n_0;
  wire rf_reg_r1_0_31_18_23_i_12_n_0;
  wire rf_reg_r1_0_31_18_23_i_1_n_0;
  wire rf_reg_r1_0_31_18_23_i_2_n_0;
  wire rf_reg_r1_0_31_18_23_i_3_n_0;
  wire rf_reg_r1_0_31_18_23_i_4_n_0;
  wire rf_reg_r1_0_31_18_23_i_5_n_0;
  wire rf_reg_r1_0_31_18_23_i_6_n_0;
  wire rf_reg_r1_0_31_18_23_i_7_n_0;
  wire rf_reg_r1_0_31_18_23_i_8_n_0;
  wire rf_reg_r1_0_31_18_23_i_9_n_0;
  wire rf_reg_r1_0_31_24_29_i_10_n_0;
  wire rf_reg_r1_0_31_24_29_i_11_n_0;
  wire rf_reg_r1_0_31_24_29_i_12_n_0;
  wire rf_reg_r1_0_31_24_29_i_1_n_0;
  wire rf_reg_r1_0_31_24_29_i_2_n_0;
  wire rf_reg_r1_0_31_24_29_i_3_n_0;
  wire rf_reg_r1_0_31_24_29_i_4_n_0;
  wire rf_reg_r1_0_31_24_29_i_5_n_0;
  wire rf_reg_r1_0_31_24_29_i_6_n_0;
  wire rf_reg_r1_0_31_24_29_i_7_n_0;
  wire rf_reg_r1_0_31_24_29_i_8_n_0;
  wire rf_reg_r1_0_31_24_29_i_9_n_0;
  wire rf_reg_r1_0_31_30_31_i_1_n_0;
  wire rf_reg_r1_0_31_30_31_i_2_n_0;
  wire rf_reg_r1_0_31_6_11_i_1_n_0;
  wire rf_reg_r1_0_31_6_11_i_2_n_0;
  wire rf_reg_r1_0_31_6_11_i_3_n_0;
  wire rf_reg_r1_0_31_6_11_i_4_n_0;
  wire rf_reg_r1_0_31_6_11_i_5_n_0;
  wire rf_reg_r1_0_31_6_11_i_6_n_0;
  wire [0:0]s;
  wire [0:0]sel0;
  wire sum_carry__1_i_5_0;
  wire sum_carry__6_i_5_0;
  wire [2:2]wd3;
  wire we3;
  wire [0:0]\writeDataM[1] ;
  wire \writeDataM[31] ;
  wire [1:0]NLW_rf_reg_r1_0_31_0_5_DOD_UNCONNECTED;
  wire [1:0]NLW_rf_reg_r1_0_31_12_17_DOD_UNCONNECTED;
  wire [1:0]NLW_rf_reg_r1_0_31_18_23_DOD_UNCONNECTED;
  wire [1:0]NLW_rf_reg_r1_0_31_24_29_DOD_UNCONNECTED;
  wire NLW_rf_reg_r1_0_31_30_31_SPO_UNCONNECTED;
  wire NLW_rf_reg_r1_0_31_30_31__0_SPO_UNCONNECTED;
  wire [1:0]NLW_rf_reg_r1_0_31_6_11_DOD_UNCONNECTED;
  wire [1:0]NLW_rf_reg_r2_0_31_0_5_DOD_UNCONNECTED;
  wire [1:0]NLW_rf_reg_r2_0_31_12_17_DOD_UNCONNECTED;
  wire [1:0]NLW_rf_reg_r2_0_31_18_23_DOD_UNCONNECTED;
  wire [1:0]NLW_rf_reg_r2_0_31_24_29_DOD_UNCONNECTED;
  wire NLW_rf_reg_r2_0_31_30_31_SPO_UNCONNECTED;
  wire NLW_rf_reg_r2_0_31_30_31__0_SPO_UNCONNECTED;
  wire [1:0]NLW_rf_reg_r2_0_31_6_11_DOD_UNCONNECTED;

  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \ALUResult[0]_INST_0_i_10 
       (.I0(\ALUResult[6]_INST_0_i_11_n_0 ),
        .I1(SrcB[2]),
        .I2(\ALUResult[0]_INST_0_i_12_n_0 ),
        .I3(SrcB[3]),
        .I4(\ALUResult[0]_INST_0_i_13_n_0 ),
        .O(\ALUResult[0]_INST_0_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \ALUResult[0]_INST_0_i_11 
       (.I0(\ALUResult[4]_INST_0_i_14_n_0 ),
        .I1(SrcB[2]),
        .I2(\ALUResult[0]_INST_0_i_14_n_0 ),
        .I3(SrcB[3]),
        .I4(\ALUResult[0]_INST_0_i_15_n_0 ),
        .O(\ALUResult[0]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hB8000000B800B800)) 
    \ALUResult[0]_INST_0_i_12 
       (.I0(rd10[26]),
        .I1(SrcB[4]),
        .I2(rd10[10]),
        .I3(rd11),
        .I4(Instr[3]),
        .I5(Instr[0]),
        .O(\ALUResult[0]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hB8000000B800B800)) 
    \ALUResult[0]_INST_0_i_13 
       (.I0(rd10[18]),
        .I1(SrcB[4]),
        .I2(rd10[2]),
        .I3(rd11),
        .I4(Instr[3]),
        .I5(Instr[0]),
        .O(\ALUResult[0]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hB8000000B800B800)) 
    \ALUResult[0]_INST_0_i_14 
       (.I0(rd10[24]),
        .I1(SrcB[4]),
        .I2(rd10[8]),
        .I3(rd11),
        .I4(Instr[3]),
        .I5(Instr[0]),
        .O(\ALUResult[0]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hB8000000B800B800)) 
    \ALUResult[0]_INST_0_i_15 
       (.I0(rd10[16]),
        .I1(SrcB[4]),
        .I2(rd10[0]),
        .I3(rd11),
        .I4(Instr[3]),
        .I5(Instr[0]),
        .O(\ALUResult[0]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFCFAFC0AFC0A0C0)) 
    \ALUResult[0]_INST_0_i_3 
       (.I0(\ALUResult[0]_INST_0_i_6_n_0 ),
        .I1(O[0]),
        .I2(\ALUResult[31]_INST_0_i_16_n_0 ),
        .I3(\ALUResult[31]_INST_0_i_17_n_0 ),
        .I4(\ALUResult[0]_INST_0_i_7_n_0 ),
        .I5(clk_0),
        .O(\ALUResult[31]_INST_0_i_13_0 ));
  LUT6 #(
    .INIT(64'hFFBFFFBE00080028)) 
    \ALUResult[0]_INST_0_i_4 
       (.I0(\ALUResult[31]_INST_0_i_18_n_0 ),
        .I1(ALUControl__0),
        .I2(SrcB[31]),
        .I3(ALUControl[0]),
        .I4(ALUControl[1]),
        .I5(\addressM[31] [3]),
        .O(result0__33));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \ALUResult[0]_INST_0_i_5 
       (.I0(SrcB[1]),
        .I1(SrcB[3]),
        .I2(\ALUResult[0]_INST_0_i_7_n_0 ),
        .I3(SrcB[4]),
        .I4(SrcB[2]),
        .I5(clk_0),
        .O(\ALUResult[31]_INST_0_i_13_2 ));
  MUXF7 \ALUResult[0]_INST_0_i_6 
       (.I0(\ALUResult[0]_INST_0_i_8_n_0 ),
        .I1(\ALUResult[0]_INST_0_i_9_n_0 ),
        .O(\ALUResult[0]_INST_0_i_6_n_0 ),
        .S(ALUControl[0]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h8088)) 
    \ALUResult[0]_INST_0_i_7 
       (.I0(rd10[0]),
        .I1(rd11),
        .I2(Instr[3]),
        .I3(Instr[0]),
        .O(\ALUResult[0]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hB88BB8B8B8B8B8B8)) 
    \ALUResult[0]_INST_0_i_8 
       (.I0(result0__33),
        .I1(ALUControl__0),
        .I2(clk_0),
        .I3(\ALUResult[17]_INST_0_i_13_0 ),
        .I4(rd11),
        .I5(rd10[0]),
        .O(\ALUResult[0]_INST_0_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \ALUResult[0]_INST_0_i_9 
       (.I0(\ALUResult[1]_INST_0_i_12_n_0 ),
        .I1(clk_0),
        .I2(\ALUResult[0]_INST_0_i_10_n_0 ),
        .I3(SrcB[1]),
        .I4(\ALUResult[0]_INST_0_i_11_n_0 ),
        .O(\ALUResult[0]_INST_0_i_9_n_0 ));
  MUXF7 \ALUResult[10]_INST_0 
       (.I0(\ALUResult[10]_INST_0_i_1_n_0 ),
        .I1(\ALUResult[10]_INST_0_i_2_n_0 ),
        .O(ALUResult[9]),
        .S(ALUControl[2]));
  LUT6 #(
    .INIT(64'hAFCFAFC0AFC0A0C0)) 
    \ALUResult[10]_INST_0_i_1 
       (.I0(\ALUResult[10]_INST_0_i_3_n_0 ),
        .I1(\addressM[11] [2]),
        .I2(\ALUResult[31]_INST_0_i_16_n_0 ),
        .I3(\ALUResult[31]_INST_0_i_17_n_0 ),
        .I4(clk_10),
        .I5(SrcB[10]),
        .O(\ALUResult[10]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[10]_INST_0_i_10 
       (.I0(\ALUResult[16]_INST_0_i_16_n_0 ),
        .I1(\ALUResult[12]_INST_0_i_14_n_0 ),
        .I2(SrcB[1]),
        .I3(\ALUResult[14]_INST_0_i_14_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[10]_INST_0_i_12_n_0 ),
        .O(\ALUResult[10]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[10]_INST_0_i_11 
       (.I0(\ALUResult[31]_INST_0_i_18_n_0 ),
        .I1(clk_18),
        .I2(SrcB[3]),
        .I3(clk_26),
        .I4(SrcB[4]),
        .I5(clk_10),
        .O(\ALUResult[10]_INST_0_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \ALUResult[10]_INST_0_i_12 
       (.I0(clk_18),
        .I1(SrcB[3]),
        .I2(clk_26),
        .I3(SrcB[4]),
        .I4(clk_10),
        .O(\ALUResult[10]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hF0C0F0C0BBFFBBCC)) 
    \ALUResult[10]_INST_0_i_2 
       (.I0(SrcB[10]),
        .I1(ALUControl[1]),
        .I2(\addressM[11] [2]),
        .I3(ALUControl[0]),
        .I4(data7[10]),
        .I5(ALUControl__0),
        .O(\ALUResult[10]_INST_0_i_2_n_0 ));
  MUXF7 \ALUResult[10]_INST_0_i_3 
       (.I0(\ALUResult[10]_INST_0_i_6_n_0 ),
        .I1(\ALUResult[10]_INST_0_i_7_n_0 ),
        .O(\ALUResult[10]_INST_0_i_3_n_0 ),
        .S(ALUControl[0]));
  LUT6 #(
    .INIT(64'h8AFF8A008A008A00)) 
    \ALUResult[10]_INST_0_i_4 
       (.I0(Instr[28]),
        .I1(Instr[4]),
        .I2(Instr[0]),
        .I3(ALUSrc),
        .I4(rd21),
        .I5(rd20[10]),
        .O(SrcB[10]));
  LUT6 #(
    .INIT(64'hFF33CC00B8B8B8B8)) 
    \ALUResult[10]_INST_0_i_5 
       (.I0(\ALUResult[11]_INST_0_i_9_n_0 ),
        .I1(SrcB[1]),
        .I2(\ALUResult[13]_INST_0_i_8_n_0 ),
        .I3(\ALUResult[10]_INST_0_i_8_n_0 ),
        .I4(\ALUResult[12]_INST_0_i_8_n_0 ),
        .I5(clk_0),
        .O(data7[10]));
  LUT6 #(
    .INIT(64'h000000007F778088)) 
    \ALUResult[10]_INST_0_i_6 
       (.I0(rd10[10]),
        .I1(rd11),
        .I2(Instr[3]),
        .I3(Instr[0]),
        .I4(SrcB[10]),
        .I5(ALUControl__0),
        .O(\ALUResult[10]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[10]_INST_0_i_7 
       (.I0(\ALUResult[11]_INST_0_i_10_n_0 ),
        .I1(\ALUResult[10]_INST_0_i_9_n_0 ),
        .I2(ALUControl__0),
        .I3(\ALUResult[11]_INST_0_i_11_n_0 ),
        .I4(clk_0),
        .I5(\ALUResult[10]_INST_0_i_10_n_0 ),
        .O(\ALUResult[10]_INST_0_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \ALUResult[10]_INST_0_i_8 
       (.I0(clk_3),
        .I1(SrcB[2]),
        .I2(SrcB[4]),
        .I3(clk_7),
        .I4(SrcB[3]),
        .O(\ALUResult[10]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[10]_INST_0_i_9 
       (.I0(\ALUResult[16]_INST_0_i_14_n_0 ),
        .I1(\ALUResult[12]_INST_0_i_13_n_0 ),
        .I2(SrcB[1]),
        .I3(\ALUResult[14]_INST_0_i_13_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[10]_INST_0_i_11_n_0 ),
        .O(\ALUResult[10]_INST_0_i_9_n_0 ));
  MUXF7 \ALUResult[11]_INST_0 
       (.I0(\ALUResult[11]_INST_0_i_1_n_0 ),
        .I1(\ALUResult[11]_INST_0_i_2_n_0 ),
        .O(ALUResult[10]),
        .S(ALUControl[2]));
  LUT6 #(
    .INIT(64'hAFCFAFC0AFC0A0C0)) 
    \ALUResult[11]_INST_0_i_1 
       (.I0(\ALUResult[11]_INST_0_i_3_n_0 ),
        .I1(\addressM[11] [3]),
        .I2(\ALUResult[31]_INST_0_i_16_n_0 ),
        .I3(\ALUResult[31]_INST_0_i_17_n_0 ),
        .I4(clk_11),
        .I5(SrcB[11]),
        .O(\ALUResult[11]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[11]_INST_0_i_10 
       (.I0(\ALUResult[17]_INST_0_i_14_n_0 ),
        .I1(\ALUResult[13]_INST_0_i_13_n_0 ),
        .I2(SrcB[1]),
        .I3(\ALUResult[15]_INST_0_i_14_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[11]_INST_0_i_12_n_0 ),
        .O(\ALUResult[11]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[11]_INST_0_i_11 
       (.I0(\ALUResult[17]_INST_0_i_16_n_0 ),
        .I1(\ALUResult[13]_INST_0_i_14_n_0 ),
        .I2(SrcB[1]),
        .I3(\ALUResult[15]_INST_0_i_15_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[11]_INST_0_i_13_n_0 ),
        .O(\ALUResult[11]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[11]_INST_0_i_12 
       (.I0(\ALUResult[31]_INST_0_i_18_n_0 ),
        .I1(clk_19),
        .I2(SrcB[3]),
        .I3(clk_27),
        .I4(SrcB[4]),
        .I5(clk_11),
        .O(\ALUResult[11]_INST_0_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \ALUResult[11]_INST_0_i_13 
       (.I0(clk_19),
        .I1(SrcB[3]),
        .I2(clk_27),
        .I3(SrcB[4]),
        .I4(clk_11),
        .O(\ALUResult[11]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hF0C0F0C0BBFFBBCC)) 
    \ALUResult[11]_INST_0_i_2 
       (.I0(SrcB[11]),
        .I1(ALUControl[1]),
        .I2(\addressM[11] [3]),
        .I3(ALUControl[0]),
        .I4(data7[11]),
        .I5(ALUControl__0),
        .O(\ALUResult[11]_INST_0_i_2_n_0 ));
  MUXF7 \ALUResult[11]_INST_0_i_3 
       (.I0(\ALUResult[11]_INST_0_i_6_n_0 ),
        .I1(\ALUResult[11]_INST_0_i_7_n_0 ),
        .O(\ALUResult[11]_INST_0_i_3_n_0 ),
        .S(ALUControl[0]));
  LUT6 #(
    .INIT(64'h8AFF8A008A008A00)) 
    \ALUResult[11]_INST_0_i_4 
       (.I0(sum_carry__1_i_5_0),
        .I1(Instr[4]),
        .I2(Instr[0]),
        .I3(ALUSrc),
        .I4(rd21),
        .I5(rd20[11]),
        .O(SrcB[11]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \ALUResult[11]_INST_0_i_5 
       (.I0(\ALUResult[11]_INST_0_i_9_n_0 ),
        .I1(SrcB[1]),
        .I2(\ALUResult[13]_INST_0_i_8_n_0 ),
        .I3(clk_0),
        .I4(\ALUResult[12]_INST_0_i_5_n_0 ),
        .O(data7[11]));
  LUT6 #(
    .INIT(64'h000000007F778088)) 
    \ALUResult[11]_INST_0_i_6 
       (.I0(rd10[11]),
        .I1(rd11),
        .I2(Instr[3]),
        .I3(Instr[0]),
        .I4(SrcB[11]),
        .I5(ALUControl__0),
        .O(\ALUResult[11]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[11]_INST_0_i_7 
       (.I0(\ALUResult[12]_INST_0_i_11_n_0 ),
        .I1(\ALUResult[11]_INST_0_i_10_n_0 ),
        .I2(ALUControl__0),
        .I3(\ALUResult[12]_INST_0_i_12_n_0 ),
        .I4(clk_0),
        .I5(\ALUResult[11]_INST_0_i_11_n_0 ),
        .O(\ALUResult[11]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \ALUResult[11]_INST_0_i_9 
       (.I0(clk_4),
        .I1(SrcB[2]),
        .I2(\ALUResult[0]_INST_0_i_7_n_0 ),
        .I3(SrcB[3]),
        .I4(clk_8),
        .I5(SrcB[4]),
        .O(\ALUResult[11]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \ALUResult[12]_INST_0 
       (.I0(\ALUResult[12]_INST_0_i_1_n_0 ),
        .I1(ALUControl[1]),
        .I2(\ALUResult[12]_INST_0_i_2_n_0 ),
        .I3(ALUControl[2]),
        .I4(\ALUResult[12]_INST_0_i_3_n_0 ),
        .O(ALUResult[11]));
  LUT4 #(
    .INIT(16'hF0BB)) 
    \ALUResult[12]_INST_0_i_1 
       (.I0(SrcB[12]),
        .I1(ALUControl[0]),
        .I2(\addressM[15] [0]),
        .I3(ALUControl__0),
        .O(\ALUResult[12]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[12]_INST_0_i_10 
       (.I0(\ALUResult[13]_INST_0_i_11_n_0 ),
        .I1(\ALUResult[12]_INST_0_i_11_n_0 ),
        .I2(ALUControl__0),
        .I3(\ALUResult[13]_INST_0_i_12_n_0 ),
        .I4(clk_0),
        .I5(\ALUResult[12]_INST_0_i_12_n_0 ),
        .O(\ALUResult[12]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[12]_INST_0_i_11 
       (.I0(\ALUResult[18]_INST_0_i_14_n_0 ),
        .I1(\ALUResult[14]_INST_0_i_13_n_0 ),
        .I2(SrcB[1]),
        .I3(\ALUResult[16]_INST_0_i_14_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[12]_INST_0_i_13_n_0 ),
        .O(\ALUResult[12]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[12]_INST_0_i_12 
       (.I0(\ALUResult[18]_INST_0_i_16_n_0 ),
        .I1(\ALUResult[14]_INST_0_i_14_n_0 ),
        .I2(SrcB[1]),
        .I3(\ALUResult[16]_INST_0_i_16_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[12]_INST_0_i_14_n_0 ),
        .O(\ALUResult[12]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[12]_INST_0_i_13 
       (.I0(\ALUResult[31]_INST_0_i_18_n_0 ),
        .I1(clk_20),
        .I2(SrcB[3]),
        .I3(clk_28),
        .I4(SrcB[4]),
        .I5(clk_12),
        .O(\ALUResult[12]_INST_0_i_13_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \ALUResult[12]_INST_0_i_14 
       (.I0(clk_20),
        .I1(SrcB[3]),
        .I2(clk_28),
        .I3(SrcB[4]),
        .I4(clk_12),
        .O(\ALUResult[12]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h88888888FFFCCCFC)) 
    \ALUResult[12]_INST_0_i_2 
       (.I0(\addressM[15] [0]),
        .I1(ALUControl[0]),
        .I2(\ALUResult[13]_INST_0_i_5_n_0 ),
        .I3(clk_0),
        .I4(\ALUResult[12]_INST_0_i_5_n_0 ),
        .I5(ALUControl__0),
        .O(\ALUResult[12]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFCFAFC0AFC0A0C0)) 
    \ALUResult[12]_INST_0_i_3 
       (.I0(\ALUResult[12]_INST_0_i_6_n_0 ),
        .I1(\addressM[15] [0]),
        .I2(\ALUResult[31]_INST_0_i_16_n_0 ),
        .I3(\ALUResult[31]_INST_0_i_17_n_0 ),
        .I4(clk_12),
        .I5(SrcB[12]),
        .O(\ALUResult[12]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \ALUResult[12]_INST_0_i_4 
       (.I0(immext__64[0]),
        .I1(ALUSrc),
        .I2(rd21),
        .I3(rd20[12]),
        .O(SrcB[12]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult[12]_INST_0_i_5 
       (.I0(\ALUResult[12]_INST_0_i_8_n_0 ),
        .I1(SrcB[1]),
        .I2(\ALUResult[14]_INST_0_i_8_n_0 ),
        .O(\ALUResult[12]_INST_0_i_5_n_0 ));
  MUXF7 \ALUResult[12]_INST_0_i_6 
       (.I0(\ALUResult[12]_INST_0_i_9_n_0 ),
        .I1(\ALUResult[12]_INST_0_i_10_n_0 ),
        .O(\ALUResult[12]_INST_0_i_6_n_0 ),
        .S(ALUControl[0]));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \ALUResult[12]_INST_0_i_8 
       (.I0(clk_5),
        .I1(SrcB[2]),
        .I2(clk_1),
        .I3(SrcB[3]),
        .I4(clk_9),
        .I5(SrcB[4]),
        .O(\ALUResult[12]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h000000007F778088)) 
    \ALUResult[12]_INST_0_i_9 
       (.I0(rd10[12]),
        .I1(rd11),
        .I2(Instr[3]),
        .I3(Instr[0]),
        .I4(SrcB[12]),
        .I5(ALUControl__0),
        .O(\ALUResult[12]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \ALUResult[13]_INST_0 
       (.I0(\ALUResult[13]_INST_0_i_1_n_0 ),
        .I1(ALUControl[1]),
        .I2(\ALUResult[13]_INST_0_i_2_n_0 ),
        .I3(ALUControl[2]),
        .I4(\ALUResult[13]_INST_0_i_3_n_0 ),
        .O(ALUResult[12]));
  LUT4 #(
    .INIT(16'hF0BB)) 
    \ALUResult[13]_INST_0_i_1 
       (.I0(SrcB[13]),
        .I1(ALUControl[0]),
        .I2(\addressM[15] [1]),
        .I3(ALUControl__0),
        .O(\ALUResult[13]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[13]_INST_0_i_10 
       (.I0(\ALUResult[14]_INST_0_i_11_n_0 ),
        .I1(\ALUResult[13]_INST_0_i_11_n_0 ),
        .I2(ALUControl__0),
        .I3(\ALUResult[14]_INST_0_i_12_n_0 ),
        .I4(clk_0),
        .I5(\ALUResult[13]_INST_0_i_12_n_0 ),
        .O(\ALUResult[13]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[13]_INST_0_i_11 
       (.I0(\ALUResult[19]_INST_0_i_14_n_0 ),
        .I1(\ALUResult[15]_INST_0_i_14_n_0 ),
        .I2(SrcB[1]),
        .I3(\ALUResult[17]_INST_0_i_14_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[13]_INST_0_i_13_n_0 ),
        .O(\ALUResult[13]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[13]_INST_0_i_12 
       (.I0(\ALUResult[19]_INST_0_i_16_n_0 ),
        .I1(\ALUResult[15]_INST_0_i_15_n_0 ),
        .I2(SrcB[1]),
        .I3(\ALUResult[17]_INST_0_i_16_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[13]_INST_0_i_14_n_0 ),
        .O(\ALUResult[13]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[13]_INST_0_i_13 
       (.I0(\ALUResult[31]_INST_0_i_18_n_0 ),
        .I1(clk_21),
        .I2(SrcB[3]),
        .I3(clk_29),
        .I4(SrcB[4]),
        .I5(clk_13),
        .O(\ALUResult[13]_INST_0_i_13_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \ALUResult[13]_INST_0_i_14 
       (.I0(clk_21),
        .I1(SrcB[3]),
        .I2(clk_29),
        .I3(SrcB[4]),
        .I4(clk_13),
        .O(\ALUResult[13]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h88888888FFFCCCFC)) 
    \ALUResult[13]_INST_0_i_2 
       (.I0(\addressM[15] [1]),
        .I1(ALUControl[0]),
        .I2(\ALUResult[14]_INST_0_i_5_n_0 ),
        .I3(clk_0),
        .I4(\ALUResult[13]_INST_0_i_5_n_0 ),
        .I5(ALUControl__0),
        .O(\ALUResult[13]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFCFAFC0AFC0A0C0)) 
    \ALUResult[13]_INST_0_i_3 
       (.I0(\ALUResult[13]_INST_0_i_6_n_0 ),
        .I1(\addressM[15] [1]),
        .I2(\ALUResult[31]_INST_0_i_16_n_0 ),
        .I3(\ALUResult[31]_INST_0_i_17_n_0 ),
        .I4(clk_13),
        .I5(SrcB[13]),
        .O(\ALUResult[13]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \ALUResult[13]_INST_0_i_4 
       (.I0(immext__64[1]),
        .I1(ALUSrc),
        .I2(rd21),
        .I3(rd20[13]),
        .O(SrcB[13]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult[13]_INST_0_i_5 
       (.I0(\ALUResult[13]_INST_0_i_8_n_0 ),
        .I1(SrcB[1]),
        .I2(\ALUResult[15]_INST_0_i_8_n_0 ),
        .O(\ALUResult[13]_INST_0_i_5_n_0 ));
  MUXF7 \ALUResult[13]_INST_0_i_6 
       (.I0(\ALUResult[13]_INST_0_i_9_n_0 ),
        .I1(\ALUResult[13]_INST_0_i_10_n_0 ),
        .O(\ALUResult[13]_INST_0_i_6_n_0 ),
        .S(ALUControl[0]));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \ALUResult[13]_INST_0_i_8 
       (.I0(clk_6),
        .I1(SrcB[2]),
        .I2(clk_2),
        .I3(SrcB[3]),
        .I4(clk_10),
        .I5(SrcB[4]),
        .O(\ALUResult[13]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h000000007F778088)) 
    \ALUResult[13]_INST_0_i_9 
       (.I0(rd10[13]),
        .I1(rd11),
        .I2(Instr[3]),
        .I3(Instr[0]),
        .I4(SrcB[13]),
        .I5(ALUControl__0),
        .O(\ALUResult[13]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \ALUResult[14]_INST_0 
       (.I0(\ALUResult[14]_INST_0_i_1_n_0 ),
        .I1(ALUControl[1]),
        .I2(\ALUResult[14]_INST_0_i_2_n_0 ),
        .I3(ALUControl[2]),
        .I4(\ALUResult[14]_INST_0_i_3_n_0 ),
        .O(ALUResult[13]));
  LUT4 #(
    .INIT(16'hF0BB)) 
    \ALUResult[14]_INST_0_i_1 
       (.I0(SrcB[14]),
        .I1(ALUControl[0]),
        .I2(\addressM[15] [2]),
        .I3(ALUControl__0),
        .O(\ALUResult[14]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[14]_INST_0_i_10 
       (.I0(\ALUResult[15]_INST_0_i_12_n_0 ),
        .I1(\ALUResult[14]_INST_0_i_11_n_0 ),
        .I2(ALUControl__0),
        .I3(\ALUResult[15]_INST_0_i_13_n_0 ),
        .I4(clk_0),
        .I5(\ALUResult[14]_INST_0_i_12_n_0 ),
        .O(\ALUResult[14]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[14]_INST_0_i_11 
       (.I0(\ALUResult[20]_INST_0_i_13_n_0 ),
        .I1(\ALUResult[16]_INST_0_i_14_n_0 ),
        .I2(SrcB[1]),
        .I3(\ALUResult[18]_INST_0_i_14_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[14]_INST_0_i_13_n_0 ),
        .O(\ALUResult[14]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[14]_INST_0_i_12 
       (.I0(\ALUResult[16]_INST_0_i_15_n_0 ),
        .I1(\ALUResult[16]_INST_0_i_16_n_0 ),
        .I2(SrcB[1]),
        .I3(\ALUResult[18]_INST_0_i_16_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[14]_INST_0_i_14_n_0 ),
        .O(\ALUResult[14]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[14]_INST_0_i_13 
       (.I0(\ALUResult[31]_INST_0_i_18_n_0 ),
        .I1(clk_22),
        .I2(SrcB[3]),
        .I3(clk_30),
        .I4(SrcB[4]),
        .I5(clk_14),
        .O(\ALUResult[14]_INST_0_i_13_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \ALUResult[14]_INST_0_i_14 
       (.I0(clk_22),
        .I1(SrcB[3]),
        .I2(clk_30),
        .I3(SrcB[4]),
        .I4(clk_14),
        .O(\ALUResult[14]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h88888888FFFCCCFC)) 
    \ALUResult[14]_INST_0_i_2 
       (.I0(\addressM[15] [2]),
        .I1(ALUControl[0]),
        .I2(\ALUResult[15]_INST_0_i_5_n_0 ),
        .I3(clk_0),
        .I4(\ALUResult[14]_INST_0_i_5_n_0 ),
        .I5(ALUControl__0),
        .O(\ALUResult[14]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFCFAFC0AFC0A0C0)) 
    \ALUResult[14]_INST_0_i_3 
       (.I0(\ALUResult[14]_INST_0_i_6_n_0 ),
        .I1(\addressM[15] [2]),
        .I2(\ALUResult[31]_INST_0_i_16_n_0 ),
        .I3(\ALUResult[31]_INST_0_i_17_n_0 ),
        .I4(clk_14),
        .I5(SrcB[14]),
        .O(\ALUResult[14]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \ALUResult[14]_INST_0_i_4 
       (.I0(immext__64[2]),
        .I1(ALUSrc),
        .I2(rd21),
        .I3(rd20[14]),
        .O(SrcB[14]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult[14]_INST_0_i_5 
       (.I0(\ALUResult[14]_INST_0_i_8_n_0 ),
        .I1(SrcB[1]),
        .I2(\ALUResult[16]_INST_0_i_8_n_0 ),
        .O(\ALUResult[14]_INST_0_i_5_n_0 ));
  MUXF7 \ALUResult[14]_INST_0_i_6 
       (.I0(\ALUResult[14]_INST_0_i_9_n_0 ),
        .I1(\ALUResult[14]_INST_0_i_10_n_0 ),
        .O(\ALUResult[14]_INST_0_i_6_n_0 ),
        .S(ALUControl[0]));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \ALUResult[14]_INST_0_i_8 
       (.I0(clk_7),
        .I1(SrcB[2]),
        .I2(clk_3),
        .I3(SrcB[3]),
        .I4(clk_11),
        .I5(SrcB[4]),
        .O(\ALUResult[14]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h000000007F778088)) 
    \ALUResult[14]_INST_0_i_9 
       (.I0(rd10[14]),
        .I1(rd11),
        .I2(Instr[3]),
        .I3(Instr[0]),
        .I4(SrcB[14]),
        .I5(ALUControl__0),
        .O(\ALUResult[14]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \ALUResult[15]_INST_0 
       (.I0(\ALUResult[15]_INST_0_i_1_n_0 ),
        .I1(ALUControl[1]),
        .I2(\ALUResult[15]_INST_0_i_2_n_0 ),
        .I3(ALUControl[2]),
        .I4(\ALUResult[15]_INST_0_i_3_n_0 ),
        .O(ALUResult[14]));
  LUT4 #(
    .INIT(16'hF0BB)) 
    \ALUResult[15]_INST_0_i_1 
       (.I0(SrcB[15]),
        .I1(ALUControl[0]),
        .I2(\addressM[15] [3]),
        .I3(ALUControl__0),
        .O(\ALUResult[15]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[15]_INST_0_i_10 
       (.I0(\ALUResult[16]_INST_0_i_12_n_0 ),
        .I1(\ALUResult[15]_INST_0_i_12_n_0 ),
        .I2(ALUControl__0),
        .I3(\ALUResult[16]_INST_0_i_13_n_0 ),
        .I4(clk_0),
        .I5(\ALUResult[15]_INST_0_i_13_n_0 ),
        .O(\ALUResult[15]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h000000000B000800)) 
    \ALUResult[15]_INST_0_i_11 
       (.I0(rd10[4]),
        .I1(SrcB[3]),
        .I2(\ALUResult[17]_INST_0_i_13_0 ),
        .I3(rd11),
        .I4(rd10[12]),
        .I5(SrcB[4]),
        .O(\ALUResult[15]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[15]_INST_0_i_12 
       (.I0(\ALUResult[21]_INST_0_i_13_n_0 ),
        .I1(\ALUResult[17]_INST_0_i_14_n_0 ),
        .I2(SrcB[1]),
        .I3(\ALUResult[19]_INST_0_i_14_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[15]_INST_0_i_14_n_0 ),
        .O(\ALUResult[15]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[15]_INST_0_i_13 
       (.I0(\ALUResult[17]_INST_0_i_15_n_0 ),
        .I1(\ALUResult[17]_INST_0_i_16_n_0 ),
        .I2(SrcB[1]),
        .I3(\ALUResult[19]_INST_0_i_16_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[15]_INST_0_i_15_n_0 ),
        .O(\ALUResult[15]_INST_0_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \ALUResult[15]_INST_0_i_14 
       (.I0(clk_23),
        .I1(SrcB[3]),
        .I2(\ALUResult[31]_INST_0_i_18_n_0 ),
        .I3(SrcB[4]),
        .I4(clk_15),
        .O(\ALUResult[15]_INST_0_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \ALUResult[15]_INST_0_i_15 
       (.I0(clk_23),
        .I1(SrcB[3]),
        .I2(\ALUResult[31]_INST_0_i_18_n_0 ),
        .I3(SrcB[4]),
        .I4(clk_15),
        .O(\ALUResult[15]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h88888888FFFCCCFC)) 
    \ALUResult[15]_INST_0_i_2 
       (.I0(\addressM[15] [3]),
        .I1(ALUControl[0]),
        .I2(\ALUResult[16]_INST_0_i_5_n_0 ),
        .I3(clk_0),
        .I4(\ALUResult[15]_INST_0_i_5_n_0 ),
        .I5(ALUControl__0),
        .O(\ALUResult[15]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFCFAFC0AFC0A0C0)) 
    \ALUResult[15]_INST_0_i_3 
       (.I0(\ALUResult[15]_INST_0_i_6_n_0 ),
        .I1(\addressM[15] [3]),
        .I2(\ALUResult[31]_INST_0_i_16_n_0 ),
        .I3(\ALUResult[31]_INST_0_i_17_n_0 ),
        .I4(clk_15),
        .I5(SrcB[15]),
        .O(\ALUResult[15]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \ALUResult[15]_INST_0_i_4 
       (.I0(immext__64[3]),
        .I1(ALUSrc),
        .I2(rd21),
        .I3(rd20[15]),
        .O(SrcB[15]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult[15]_INST_0_i_5 
       (.I0(\ALUResult[15]_INST_0_i_8_n_0 ),
        .I1(SrcB[1]),
        .I2(\ALUResult[17]_INST_0_i_8_n_0 ),
        .O(\ALUResult[15]_INST_0_i_5_n_0 ));
  MUXF7 \ALUResult[15]_INST_0_i_6 
       (.I0(\ALUResult[15]_INST_0_i_9_n_0 ),
        .I1(\ALUResult[15]_INST_0_i_10_n_0 ),
        .O(\ALUResult[15]_INST_0_i_6_n_0 ),
        .S(ALUControl[0]));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \ALUResult[15]_INST_0_i_8 
       (.I0(\ALUResult[0]_INST_0_i_7_n_0 ),
        .I1(SrcB[3]),
        .I2(clk_8),
        .I3(SrcB[4]),
        .I4(SrcB[2]),
        .I5(\ALUResult[15]_INST_0_i_11_n_0 ),
        .O(\ALUResult[15]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h000000007F778088)) 
    \ALUResult[15]_INST_0_i_9 
       (.I0(rd10[15]),
        .I1(rd11),
        .I2(Instr[3]),
        .I3(Instr[0]),
        .I4(SrcB[15]),
        .I5(ALUControl__0),
        .O(\ALUResult[15]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \ALUResult[16]_INST_0 
       (.I0(\ALUResult[16]_INST_0_i_1_n_0 ),
        .I1(ALUControl[1]),
        .I2(\ALUResult[16]_INST_0_i_2_n_0 ),
        .I3(ALUControl[2]),
        .I4(\ALUResult[16]_INST_0_i_3_n_0 ),
        .O(ALUResult[15]));
  LUT4 #(
    .INIT(16'hF0BB)) 
    \ALUResult[16]_INST_0_i_1 
       (.I0(SrcB[16]),
        .I1(ALUControl[0]),
        .I2(\addressM[19] [0]),
        .I3(ALUControl__0),
        .O(\ALUResult[16]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[16]_INST_0_i_10 
       (.I0(\ALUResult[17]_INST_0_i_12_n_0 ),
        .I1(\ALUResult[16]_INST_0_i_12_n_0 ),
        .I2(ALUControl__0),
        .I3(\ALUResult[17]_INST_0_i_13_n_0 ),
        .I4(clk_0),
        .I5(\ALUResult[16]_INST_0_i_13_n_0 ),
        .O(\ALUResult[16]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h000000000B000800)) 
    \ALUResult[16]_INST_0_i_11 
       (.I0(rd10[5]),
        .I1(SrcB[3]),
        .I2(\ALUResult[17]_INST_0_i_13_0 ),
        .I3(rd11),
        .I4(rd10[13]),
        .I5(SrcB[4]),
        .O(\ALUResult[16]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[16]_INST_0_i_12 
       (.I0(\ALUResult[22]_INST_0_i_13_n_0 ),
        .I1(\ALUResult[18]_INST_0_i_14_n_0 ),
        .I2(SrcB[1]),
        .I3(\ALUResult[20]_INST_0_i_13_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[16]_INST_0_i_14_n_0 ),
        .O(\ALUResult[16]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[16]_INST_0_i_13 
       (.I0(\ALUResult[18]_INST_0_i_15_n_0 ),
        .I1(\ALUResult[18]_INST_0_i_16_n_0 ),
        .I2(SrcB[1]),
        .I3(\ALUResult[16]_INST_0_i_15_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[16]_INST_0_i_16_n_0 ),
        .O(\ALUResult[16]_INST_0_i_13_n_0 ));
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \ALUResult[16]_INST_0_i_14 
       (.I0(clk_24),
        .I1(SrcB[3]),
        .I2(\ALUResult[31]_INST_0_i_18_n_0 ),
        .I3(SrcB[4]),
        .I4(clk_16),
        .O(\ALUResult[16]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h000000000B000800)) 
    \ALUResult[16]_INST_0_i_15 
       (.I0(rd10[28]),
        .I1(SrcB[3]),
        .I2(\ALUResult[17]_INST_0_i_13_0 ),
        .I3(rd11),
        .I4(rd10[20]),
        .I5(SrcB[4]),
        .O(\ALUResult[16]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h000000000B000800)) 
    \ALUResult[16]_INST_0_i_16 
       (.I0(rd10[24]),
        .I1(SrcB[3]),
        .I2(\ALUResult[17]_INST_0_i_13_0 ),
        .I3(rd11),
        .I4(rd10[16]),
        .I5(SrcB[4]),
        .O(\ALUResult[16]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h88888888FFFCCCFC)) 
    \ALUResult[16]_INST_0_i_2 
       (.I0(\addressM[19] [0]),
        .I1(ALUControl[0]),
        .I2(\ALUResult[17]_INST_0_i_5_n_0 ),
        .I3(clk_0),
        .I4(\ALUResult[16]_INST_0_i_5_n_0 ),
        .I5(ALUControl__0),
        .O(\ALUResult[16]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFCFAFC0AFC0A0C0)) 
    \ALUResult[16]_INST_0_i_3 
       (.I0(\ALUResult[16]_INST_0_i_6_n_0 ),
        .I1(\addressM[19] [0]),
        .I2(\ALUResult[31]_INST_0_i_16_n_0 ),
        .I3(\ALUResult[31]_INST_0_i_17_n_0 ),
        .I4(clk_16),
        .I5(SrcB[16]),
        .O(\ALUResult[16]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \ALUResult[16]_INST_0_i_4 
       (.I0(immext__64[4]),
        .I1(ALUSrc),
        .I2(rd21),
        .I3(rd20[16]),
        .O(SrcB[16]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult[16]_INST_0_i_5 
       (.I0(\ALUResult[16]_INST_0_i_8_n_0 ),
        .I1(SrcB[1]),
        .I2(\ALUResult[18]_INST_0_i_8_n_0 ),
        .O(\ALUResult[16]_INST_0_i_5_n_0 ));
  MUXF7 \ALUResult[16]_INST_0_i_6 
       (.I0(\ALUResult[16]_INST_0_i_9_n_0 ),
        .I1(\ALUResult[16]_INST_0_i_10_n_0 ),
        .O(\ALUResult[16]_INST_0_i_6_n_0 ),
        .S(ALUControl[0]));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \ALUResult[16]_INST_0_i_8 
       (.I0(clk_1),
        .I1(SrcB[3]),
        .I2(clk_9),
        .I3(SrcB[4]),
        .I4(SrcB[2]),
        .I5(\ALUResult[16]_INST_0_i_11_n_0 ),
        .O(\ALUResult[16]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h000000007F778088)) 
    \ALUResult[16]_INST_0_i_9 
       (.I0(rd10[16]),
        .I1(rd11),
        .I2(Instr[3]),
        .I3(Instr[0]),
        .I4(SrcB[16]),
        .I5(ALUControl__0),
        .O(\ALUResult[16]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \ALUResult[17]_INST_0 
       (.I0(\ALUResult[17]_INST_0_i_1_n_0 ),
        .I1(ALUControl[1]),
        .I2(\ALUResult[17]_INST_0_i_2_n_0 ),
        .I3(ALUControl[2]),
        .I4(\ALUResult[17]_INST_0_i_3_n_0 ),
        .O(ALUResult[16]));
  LUT4 #(
    .INIT(16'hF0BB)) 
    \ALUResult[17]_INST_0_i_1 
       (.I0(SrcB[17]),
        .I1(ALUControl[0]),
        .I2(\addressM[19] [1]),
        .I3(ALUControl__0),
        .O(\ALUResult[17]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[17]_INST_0_i_10 
       (.I0(\ALUResult[18]_INST_0_i_12_n_0 ),
        .I1(\ALUResult[17]_INST_0_i_12_n_0 ),
        .I2(ALUControl__0),
        .I3(\ALUResult[18]_INST_0_i_13_n_0 ),
        .I4(clk_0),
        .I5(\ALUResult[17]_INST_0_i_13_n_0 ),
        .O(\ALUResult[17]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h000000000B000800)) 
    \ALUResult[17]_INST_0_i_11 
       (.I0(rd10[6]),
        .I1(SrcB[3]),
        .I2(\ALUResult[17]_INST_0_i_13_0 ),
        .I3(rd11),
        .I4(rd10[14]),
        .I5(SrcB[4]),
        .O(\ALUResult[17]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[17]_INST_0_i_12 
       (.I0(\ALUResult[19]_INST_0_i_13_n_0 ),
        .I1(\ALUResult[19]_INST_0_i_14_n_0 ),
        .I2(SrcB[1]),
        .I3(\ALUResult[21]_INST_0_i_13_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[17]_INST_0_i_14_n_0 ),
        .O(\ALUResult[17]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[17]_INST_0_i_13 
       (.I0(\ALUResult[19]_INST_0_i_15_n_0 ),
        .I1(\ALUResult[19]_INST_0_i_16_n_0 ),
        .I2(SrcB[1]),
        .I3(\ALUResult[17]_INST_0_i_15_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[17]_INST_0_i_16_n_0 ),
        .O(\ALUResult[17]_INST_0_i_13_n_0 ));
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \ALUResult[17]_INST_0_i_14 
       (.I0(clk_25),
        .I1(SrcB[3]),
        .I2(\ALUResult[31]_INST_0_i_18_n_0 ),
        .I3(SrcB[4]),
        .I4(clk_17),
        .O(\ALUResult[17]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h000000000B000800)) 
    \ALUResult[17]_INST_0_i_15 
       (.I0(rd10[29]),
        .I1(SrcB[3]),
        .I2(\ALUResult[17]_INST_0_i_13_0 ),
        .I3(rd11),
        .I4(rd10[21]),
        .I5(SrcB[4]),
        .O(\ALUResult[17]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h000000000B000800)) 
    \ALUResult[17]_INST_0_i_16 
       (.I0(rd10[25]),
        .I1(SrcB[3]),
        .I2(\ALUResult[17]_INST_0_i_13_0 ),
        .I3(rd11),
        .I4(rd10[17]),
        .I5(SrcB[4]),
        .O(\ALUResult[17]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h88888888FFFCCCFC)) 
    \ALUResult[17]_INST_0_i_2 
       (.I0(\addressM[19] [1]),
        .I1(ALUControl[0]),
        .I2(\ALUResult[18]_INST_0_i_5_n_0 ),
        .I3(clk_0),
        .I4(\ALUResult[17]_INST_0_i_5_n_0 ),
        .I5(ALUControl__0),
        .O(\ALUResult[17]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFCFAFC0AFC0A0C0)) 
    \ALUResult[17]_INST_0_i_3 
       (.I0(\ALUResult[17]_INST_0_i_6_n_0 ),
        .I1(\addressM[19] [1]),
        .I2(\ALUResult[31]_INST_0_i_16_n_0 ),
        .I3(\ALUResult[31]_INST_0_i_17_n_0 ),
        .I4(clk_17),
        .I5(SrcB[17]),
        .O(\ALUResult[17]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \ALUResult[17]_INST_0_i_4 
       (.I0(immext__64[5]),
        .I1(ALUSrc),
        .I2(rd21),
        .I3(rd20[17]),
        .O(SrcB[17]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult[17]_INST_0_i_5 
       (.I0(\ALUResult[17]_INST_0_i_8_n_0 ),
        .I1(SrcB[1]),
        .I2(\ALUResult[19]_INST_0_i_8_n_0 ),
        .O(\ALUResult[17]_INST_0_i_5_n_0 ));
  MUXF7 \ALUResult[17]_INST_0_i_6 
       (.I0(\ALUResult[17]_INST_0_i_9_n_0 ),
        .I1(\ALUResult[17]_INST_0_i_10_n_0 ),
        .O(\ALUResult[17]_INST_0_i_6_n_0 ),
        .S(ALUControl[0]));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \ALUResult[17]_INST_0_i_8 
       (.I0(clk_2),
        .I1(SrcB[3]),
        .I2(clk_10),
        .I3(SrcB[4]),
        .I4(SrcB[2]),
        .I5(\ALUResult[17]_INST_0_i_11_n_0 ),
        .O(\ALUResult[17]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h000000007F778088)) 
    \ALUResult[17]_INST_0_i_9 
       (.I0(rd10[17]),
        .I1(rd11),
        .I2(Instr[3]),
        .I3(Instr[0]),
        .I4(SrcB[17]),
        .I5(ALUControl__0),
        .O(\ALUResult[17]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \ALUResult[18]_INST_0 
       (.I0(\ALUResult[18]_INST_0_i_1_n_0 ),
        .I1(ALUControl[1]),
        .I2(\ALUResult[18]_INST_0_i_2_n_0 ),
        .I3(ALUControl[2]),
        .I4(\ALUResult[18]_INST_0_i_3_n_0 ),
        .O(ALUResult[17]));
  LUT4 #(
    .INIT(16'hF0BB)) 
    \ALUResult[18]_INST_0_i_1 
       (.I0(SrcB[18]),
        .I1(ALUControl[0]),
        .I2(\addressM[19] [2]),
        .I3(ALUControl__0),
        .O(\ALUResult[18]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[18]_INST_0_i_10 
       (.I0(\ALUResult[19]_INST_0_i_11_n_0 ),
        .I1(\ALUResult[18]_INST_0_i_12_n_0 ),
        .I2(ALUControl__0),
        .I3(\ALUResult[19]_INST_0_i_12_n_0 ),
        .I4(clk_0),
        .I5(\ALUResult[18]_INST_0_i_13_n_0 ),
        .O(\ALUResult[18]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h000000000B000800)) 
    \ALUResult[18]_INST_0_i_11 
       (.I0(rd10[7]),
        .I1(SrcB[3]),
        .I2(\ALUResult[17]_INST_0_i_13_0 ),
        .I3(rd11),
        .I4(rd10[15]),
        .I5(SrcB[4]),
        .O(\ALUResult[18]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[18]_INST_0_i_12 
       (.I0(\ALUResult[20]_INST_0_i_12_n_0 ),
        .I1(\ALUResult[20]_INST_0_i_13_n_0 ),
        .I2(SrcB[1]),
        .I3(\ALUResult[22]_INST_0_i_13_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[18]_INST_0_i_14_n_0 ),
        .O(\ALUResult[18]_INST_0_i_12_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \ALUResult[18]_INST_0_i_13 
       (.I0(\ALUResult[20]_INST_0_i_14_n_0 ),
        .I1(SrcB[1]),
        .I2(\ALUResult[18]_INST_0_i_15_n_0 ),
        .I3(SrcB[2]),
        .I4(\ALUResult[18]_INST_0_i_16_n_0 ),
        .O(\ALUResult[18]_INST_0_i_13_n_0 ));
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \ALUResult[18]_INST_0_i_14 
       (.I0(clk_26),
        .I1(SrcB[3]),
        .I2(\ALUResult[31]_INST_0_i_18_n_0 ),
        .I3(SrcB[4]),
        .I4(clk_18),
        .O(\ALUResult[18]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h000000000B000800)) 
    \ALUResult[18]_INST_0_i_15 
       (.I0(rd10[30]),
        .I1(SrcB[3]),
        .I2(\ALUResult[17]_INST_0_i_13_0 ),
        .I3(rd11),
        .I4(rd10[22]),
        .I5(SrcB[4]),
        .O(\ALUResult[18]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h000000000B000800)) 
    \ALUResult[18]_INST_0_i_16 
       (.I0(rd10[26]),
        .I1(SrcB[3]),
        .I2(\ALUResult[17]_INST_0_i_13_0 ),
        .I3(rd11),
        .I4(rd10[18]),
        .I5(SrcB[4]),
        .O(\ALUResult[18]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h88888888FFFCCCFC)) 
    \ALUResult[18]_INST_0_i_2 
       (.I0(\addressM[19] [2]),
        .I1(ALUControl[0]),
        .I2(\ALUResult[19]_INST_0_i_5_n_0 ),
        .I3(clk_0),
        .I4(\ALUResult[18]_INST_0_i_5_n_0 ),
        .I5(ALUControl__0),
        .O(\ALUResult[18]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFCFAFC0AFC0A0C0)) 
    \ALUResult[18]_INST_0_i_3 
       (.I0(\ALUResult[18]_INST_0_i_6_n_0 ),
        .I1(\addressM[19] [2]),
        .I2(\ALUResult[31]_INST_0_i_16_n_0 ),
        .I3(\ALUResult[31]_INST_0_i_17_n_0 ),
        .I4(clk_18),
        .I5(SrcB[18]),
        .O(\ALUResult[18]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \ALUResult[18]_INST_0_i_4 
       (.I0(immext__64[6]),
        .I1(ALUSrc),
        .I2(rd21),
        .I3(rd20[18]),
        .O(SrcB[18]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult[18]_INST_0_i_5 
       (.I0(\ALUResult[18]_INST_0_i_8_n_0 ),
        .I1(SrcB[1]),
        .I2(\ALUResult[20]_INST_0_i_7_n_0 ),
        .O(\ALUResult[18]_INST_0_i_5_n_0 ));
  MUXF7 \ALUResult[18]_INST_0_i_6 
       (.I0(\ALUResult[18]_INST_0_i_9_n_0 ),
        .I1(\ALUResult[18]_INST_0_i_10_n_0 ),
        .O(\ALUResult[18]_INST_0_i_6_n_0 ),
        .S(ALUControl[0]));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \ALUResult[18]_INST_0_i_8 
       (.I0(clk_3),
        .I1(SrcB[3]),
        .I2(clk_11),
        .I3(SrcB[4]),
        .I4(SrcB[2]),
        .I5(\ALUResult[18]_INST_0_i_11_n_0 ),
        .O(\ALUResult[18]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h000000007F778088)) 
    \ALUResult[18]_INST_0_i_9 
       (.I0(rd10[18]),
        .I1(rd11),
        .I2(Instr[3]),
        .I3(Instr[0]),
        .I4(SrcB[18]),
        .I5(ALUControl__0),
        .O(\ALUResult[18]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \ALUResult[19]_INST_0 
       (.I0(\ALUResult[19]_INST_0_i_1_n_0 ),
        .I1(ALUControl[1]),
        .I2(\ALUResult[19]_INST_0_i_2_n_0 ),
        .I3(ALUControl[2]),
        .I4(\ALUResult[19]_INST_0_i_3_n_0 ),
        .O(ALUResult[18]));
  LUT4 #(
    .INIT(16'hF0BB)) 
    \ALUResult[19]_INST_0_i_1 
       (.I0(SrcB[19]),
        .I1(ALUControl[0]),
        .I2(\addressM[19] [3]),
        .I3(ALUControl__0),
        .O(\ALUResult[19]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[19]_INST_0_i_10 
       (.I0(\ALUResult[20]_INST_0_i_10_n_0 ),
        .I1(\ALUResult[19]_INST_0_i_11_n_0 ),
        .I2(ALUControl__0),
        .I3(\ALUResult[20]_INST_0_i_11_n_0 ),
        .I4(clk_0),
        .I5(\ALUResult[19]_INST_0_i_12_n_0 ),
        .O(\ALUResult[19]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[19]_INST_0_i_11 
       (.I0(\ALUResult[21]_INST_0_i_12_n_0 ),
        .I1(\ALUResult[21]_INST_0_i_13_n_0 ),
        .I2(SrcB[1]),
        .I3(\ALUResult[19]_INST_0_i_13_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[19]_INST_0_i_14_n_0 ),
        .O(\ALUResult[19]_INST_0_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \ALUResult[19]_INST_0_i_12 
       (.I0(\ALUResult[21]_INST_0_i_14_n_0 ),
        .I1(SrcB[1]),
        .I2(\ALUResult[19]_INST_0_i_15_n_0 ),
        .I3(SrcB[2]),
        .I4(\ALUResult[19]_INST_0_i_16_n_0 ),
        .O(\ALUResult[19]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h00000000CDC80000)) 
    \ALUResult[19]_INST_0_i_13 
       (.I0(SrcB[3]),
        .I1(rd10[31]),
        .I2(SrcB[4]),
        .I3(rd10[23]),
        .I4(rd11),
        .I5(\ALUResult[17]_INST_0_i_13_0 ),
        .O(\ALUResult[19]_INST_0_i_13_n_0 ));
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \ALUResult[19]_INST_0_i_14 
       (.I0(clk_27),
        .I1(SrcB[3]),
        .I2(\ALUResult[31]_INST_0_i_18_n_0 ),
        .I3(SrcB[4]),
        .I4(clk_19),
        .O(\ALUResult[19]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h000000000B000800)) 
    \ALUResult[19]_INST_0_i_15 
       (.I0(rd10[31]),
        .I1(SrcB[3]),
        .I2(\ALUResult[17]_INST_0_i_13_0 ),
        .I3(rd11),
        .I4(rd10[23]),
        .I5(SrcB[4]),
        .O(\ALUResult[19]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h000000000B000800)) 
    \ALUResult[19]_INST_0_i_16 
       (.I0(rd10[27]),
        .I1(SrcB[3]),
        .I2(\ALUResult[17]_INST_0_i_13_0 ),
        .I3(rd11),
        .I4(rd10[19]),
        .I5(SrcB[4]),
        .O(\ALUResult[19]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h88888888FFFCCCFC)) 
    \ALUResult[19]_INST_0_i_2 
       (.I0(\addressM[19] [3]),
        .I1(ALUControl[0]),
        .I2(\ALUResult[20]_INST_0_i_5_n_0 ),
        .I3(clk_0),
        .I4(\ALUResult[19]_INST_0_i_5_n_0 ),
        .I5(ALUControl__0),
        .O(\ALUResult[19]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFCFAFC0AFC0A0C0)) 
    \ALUResult[19]_INST_0_i_3 
       (.I0(\ALUResult[19]_INST_0_i_6_n_0 ),
        .I1(\addressM[19] [3]),
        .I2(\ALUResult[31]_INST_0_i_16_n_0 ),
        .I3(\ALUResult[31]_INST_0_i_17_n_0 ),
        .I4(clk_19),
        .I5(SrcB[19]),
        .O(\ALUResult[19]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \ALUResult[19]_INST_0_i_4 
       (.I0(immext__64[7]),
        .I1(ALUSrc),
        .I2(rd21),
        .I3(rd20[19]),
        .O(SrcB[19]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult[19]_INST_0_i_5 
       (.I0(\ALUResult[19]_INST_0_i_8_n_0 ),
        .I1(SrcB[1]),
        .I2(\ALUResult[21]_INST_0_i_7_n_0 ),
        .O(\ALUResult[19]_INST_0_i_5_n_0 ));
  MUXF7 \ALUResult[19]_INST_0_i_6 
       (.I0(\ALUResult[19]_INST_0_i_9_n_0 ),
        .I1(\ALUResult[19]_INST_0_i_10_n_0 ),
        .O(\ALUResult[19]_INST_0_i_6_n_0 ),
        .S(ALUControl[0]));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \ALUResult[19]_INST_0_i_8 
       (.I0(clk_4),
        .I1(SrcB[3]),
        .I2(clk_12),
        .I3(SrcB[4]),
        .I4(SrcB[2]),
        .I5(\ALUResult[23]_INST_0_i_7_n_0 ),
        .O(\ALUResult[19]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h000000007F778088)) 
    \ALUResult[19]_INST_0_i_9 
       (.I0(rd10[19]),
        .I1(rd11),
        .I2(Instr[3]),
        .I3(Instr[0]),
        .I4(SrcB[19]),
        .I5(ALUControl__0),
        .O(\ALUResult[19]_INST_0_i_9_n_0 ));
  MUXF7 \ALUResult[1]_INST_0 
       (.I0(\ALUResult[1]_INST_0_i_1_n_0 ),
        .I1(\ALUResult[1]_INST_0_i_2_n_0 ),
        .O(ALUResult[0]),
        .S(ALUControl[2]));
  LUT6 #(
    .INIT(64'hAFCFAFC0AFC0A0C0)) 
    \ALUResult[1]_INST_0_i_1 
       (.I0(\ALUResult[1]_INST_0_i_3_n_0 ),
        .I1(O[1]),
        .I2(\ALUResult[31]_INST_0_i_16_n_0 ),
        .I3(\ALUResult[31]_INST_0_i_17_n_0 ),
        .I4(clk_1),
        .I5(SrcB[1]),
        .O(\ALUResult[1]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000040004040)) 
    \ALUResult[1]_INST_0_i_10 
       (.I0(SrcB[4]),
        .I1(rd10[0]),
        .I2(rd11),
        .I3(Instr[3]),
        .I4(Instr[0]),
        .I5(SrcB[3]),
        .O(\ALUResult[1]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0000000040004040)) 
    \ALUResult[1]_INST_0_i_11 
       (.I0(SrcB[4]),
        .I1(rd10[1]),
        .I2(rd11),
        .I3(Instr[3]),
        .I4(Instr[0]),
        .I5(SrcB[3]),
        .O(\ALUResult[1]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[1]_INST_0_i_12 
       (.I0(\ALUResult[7]_INST_0_i_11_n_0 ),
        .I1(\ALUResult[3]_INST_0_i_13_n_0 ),
        .I2(SrcB[1]),
        .I3(\ALUResult[5]_INST_0_i_11_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[1]_INST_0_i_13_n_0 ),
        .O(\ALUResult[1]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[1]_INST_0_i_13 
       (.I0(clk_25),
        .I1(clk_9),
        .I2(SrcB[3]),
        .I3(clk_17),
        .I4(SrcB[4]),
        .I5(clk_1),
        .O(\ALUResult[1]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hF0C0F0C0BBFFBBCC)) 
    \ALUResult[1]_INST_0_i_2 
       (.I0(SrcB[1]),
        .I1(ALUControl[1]),
        .I2(O[1]),
        .I3(ALUControl[0]),
        .I4(data7[1]),
        .I5(ALUControl__0),
        .O(\ALUResult[1]_INST_0_i_2_n_0 ));
  MUXF7 \ALUResult[1]_INST_0_i_3 
       (.I0(\ALUResult[1]_INST_0_i_6_n_0 ),
        .I1(\ALUResult[1]_INST_0_i_7_n_0 ),
        .O(\ALUResult[1]_INST_0_i_3_n_0 ),
        .S(ALUControl[0]));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \ALUResult[1]_INST_0_i_4 
       (.I0(\ALUResult[1]_INST_0_i_8_n_0 ),
        .I1(\rd[6]_INST_0 ),
        .I2(\ALUResult[1]_INST_0_i_9_n_0 ),
        .I3(sum_carry__6_i_5_0),
        .I4(ALUSrc),
        .I5(WriteData[1]),
        .O(SrcB[1]));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \ALUResult[1]_INST_0_i_5 
       (.I0(\ALUResult[1]_INST_0_i_10_n_0 ),
        .I1(clk_0),
        .I2(SrcB[2]),
        .I3(\ALUResult[1]_INST_0_i_11_n_0 ),
        .I4(SrcB[1]),
        .O(data7[1]));
  LUT6 #(
    .INIT(64'h000000007F778088)) 
    \ALUResult[1]_INST_0_i_6 
       (.I0(rd10[1]),
        .I1(rd11),
        .I2(Instr[3]),
        .I3(Instr[0]),
        .I4(SrcB[1]),
        .I5(ALUControl__0),
        .O(\ALUResult[1]_INST_0_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \ALUResult[1]_INST_0_i_7 
       (.I0(\ALUResult[2]_INST_0_i_11_n_0 ),
        .I1(ALUControl__0),
        .I2(\ALUResult[2]_INST_0_i_12_n_0 ),
        .I3(clk_0),
        .I4(\ALUResult[1]_INST_0_i_12_n_0 ),
        .O(\ALUResult[1]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hBBBABBBB888A8888)) 
    \ALUResult[1]_INST_0_i_8 
       (.I0(Instr[6]),
        .I1(Instr[1]),
        .I2(Instr[2]),
        .I3(Instr[4]),
        .I4(Instr[3]),
        .I5(Instr[19]),
        .O(\ALUResult[1]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hBBBABBBB888A8888)) 
    \ALUResult[1]_INST_0_i_9 
       (.I0(Instr[19]),
        .I1(Instr[1]),
        .I2(Instr[2]),
        .I3(Instr[4]),
        .I4(Instr[3]),
        .I5(Instr[6]),
        .O(\ALUResult[1]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \ALUResult[20]_INST_0 
       (.I0(\ALUResult[20]_INST_0_i_1_n_0 ),
        .I1(ALUControl[1]),
        .I2(\ALUResult[20]_INST_0_i_2_n_0 ),
        .I3(ALUControl[2]),
        .I4(\ALUResult[20]_INST_0_i_3_n_0 ),
        .O(ALUResult[19]));
  LUT4 #(
    .INIT(16'hF0BB)) 
    \ALUResult[20]_INST_0_i_1 
       (.I0(SrcB[20]),
        .I1(ALUControl[0]),
        .I2(\addressM[23] [0]),
        .I3(ALUControl__0),
        .O(\ALUResult[20]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[20]_INST_0_i_10 
       (.I0(\ALUResult[22]_INST_0_i_12_n_0 ),
        .I1(\ALUResult[22]_INST_0_i_13_n_0 ),
        .I2(SrcB[1]),
        .I3(\ALUResult[20]_INST_0_i_12_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[20]_INST_0_i_13_n_0 ),
        .O(\ALUResult[20]_INST_0_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult[20]_INST_0_i_11 
       (.I0(\ALUResult[22]_INST_0_i_14_n_0 ),
        .I1(SrcB[1]),
        .I2(\ALUResult[20]_INST_0_i_14_n_0 ),
        .O(\ALUResult[20]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h00000000CDC80000)) 
    \ALUResult[20]_INST_0_i_12 
       (.I0(SrcB[3]),
        .I1(rd10[31]),
        .I2(SrcB[4]),
        .I3(rd10[24]),
        .I4(rd11),
        .I5(\ALUResult[17]_INST_0_i_13_0 ),
        .O(\ALUResult[20]_INST_0_i_12_n_0 ));
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \ALUResult[20]_INST_0_i_13 
       (.I0(clk_28),
        .I1(SrcB[3]),
        .I2(\ALUResult[31]_INST_0_i_18_n_0 ),
        .I3(SrcB[4]),
        .I4(clk_20),
        .O(\ALUResult[20]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \ALUResult[20]_INST_0_i_14 
       (.I0(clk_24),
        .I1(SrcB[2]),
        .I2(clk_28),
        .I3(SrcB[3]),
        .I4(clk_20),
        .I5(SrcB[4]),
        .O(\ALUResult[20]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h88888888FFFCCCFC)) 
    \ALUResult[20]_INST_0_i_2 
       (.I0(\addressM[23] [0]),
        .I1(ALUControl[0]),
        .I2(\ALUResult[21]_INST_0_i_5_n_0 ),
        .I3(clk_0),
        .I4(\ALUResult[20]_INST_0_i_5_n_0 ),
        .I5(ALUControl__0),
        .O(\ALUResult[20]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFCFAFC0AFC0A0C0)) 
    \ALUResult[20]_INST_0_i_3 
       (.I0(\ALUResult[20]_INST_0_i_6_n_0 ),
        .I1(\addressM[23] [0]),
        .I2(\ALUResult[31]_INST_0_i_16_n_0 ),
        .I3(\ALUResult[31]_INST_0_i_17_n_0 ),
        .I4(clk_20),
        .I5(SrcB[20]),
        .O(\ALUResult[20]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFB800B800B800)) 
    \ALUResult[20]_INST_0_i_4 
       (.I0(Instr[18]),
        .I1(sum_carry__6_i_5_0),
        .I2(Instr[29]),
        .I3(ALUSrc),
        .I4(rd21),
        .I5(rd20[20]),
        .O(SrcB[20]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult[20]_INST_0_i_5 
       (.I0(\ALUResult[20]_INST_0_i_7_n_0 ),
        .I1(SrcB[1]),
        .I2(\ALUResult[22]_INST_0_i_7_n_0 ),
        .O(\ALUResult[20]_INST_0_i_5_n_0 ));
  MUXF7 \ALUResult[20]_INST_0_i_6 
       (.I0(\ALUResult[20]_INST_0_i_8_n_0 ),
        .I1(\ALUResult[20]_INST_0_i_9_n_0 ),
        .O(\ALUResult[20]_INST_0_i_6_n_0 ),
        .S(ALUControl[0]));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \ALUResult[20]_INST_0_i_7 
       (.I0(clk_5),
        .I1(SrcB[3]),
        .I2(clk_13),
        .I3(SrcB[4]),
        .I4(SrcB[2]),
        .I5(\ALUResult[24]_INST_0_i_7_n_0 ),
        .O(\ALUResult[20]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h000000007F778088)) 
    \ALUResult[20]_INST_0_i_8 
       (.I0(rd10[20]),
        .I1(rd11),
        .I2(Instr[3]),
        .I3(Instr[0]),
        .I4(SrcB[20]),
        .I5(ALUControl__0),
        .O(\ALUResult[20]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[20]_INST_0_i_9 
       (.I0(\ALUResult[21]_INST_0_i_10_n_0 ),
        .I1(\ALUResult[20]_INST_0_i_10_n_0 ),
        .I2(ALUControl__0),
        .I3(\ALUResult[21]_INST_0_i_11_n_0 ),
        .I4(clk_0),
        .I5(\ALUResult[20]_INST_0_i_11_n_0 ),
        .O(\ALUResult[20]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \ALUResult[21]_INST_0 
       (.I0(\ALUResult[21]_INST_0_i_1_n_0 ),
        .I1(ALUControl[1]),
        .I2(\ALUResult[21]_INST_0_i_2_n_0 ),
        .I3(ALUControl[2]),
        .I4(\ALUResult[21]_INST_0_i_3_n_0 ),
        .O(ALUResult[20]));
  LUT4 #(
    .INIT(16'hF0BB)) 
    \ALUResult[21]_INST_0_i_1 
       (.I0(SrcB[21]),
        .I1(ALUControl[0]),
        .I2(\addressM[23] [1]),
        .I3(ALUControl__0),
        .O(\ALUResult[21]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \ALUResult[21]_INST_0_i_10 
       (.I0(\ALUResult[23]_INST_0_i_12_n_0 ),
        .I1(SrcB[1]),
        .I2(\ALUResult[21]_INST_0_i_12_n_0 ),
        .I3(SrcB[2]),
        .I4(\ALUResult[21]_INST_0_i_13_n_0 ),
        .O(\ALUResult[21]_INST_0_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult[21]_INST_0_i_11 
       (.I0(\ALUResult[23]_INST_0_i_13_n_0 ),
        .I1(SrcB[1]),
        .I2(\ALUResult[21]_INST_0_i_14_n_0 ),
        .O(\ALUResult[21]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h00000000CDC80000)) 
    \ALUResult[21]_INST_0_i_12 
       (.I0(SrcB[3]),
        .I1(rd10[31]),
        .I2(SrcB[4]),
        .I3(rd10[25]),
        .I4(rd11),
        .I5(\ALUResult[17]_INST_0_i_13_0 ),
        .O(\ALUResult[21]_INST_0_i_12_n_0 ));
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \ALUResult[21]_INST_0_i_13 
       (.I0(clk_29),
        .I1(SrcB[3]),
        .I2(\ALUResult[31]_INST_0_i_18_n_0 ),
        .I3(SrcB[4]),
        .I4(clk_21),
        .O(\ALUResult[21]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \ALUResult[21]_INST_0_i_14 
       (.I0(clk_25),
        .I1(SrcB[2]),
        .I2(clk_29),
        .I3(SrcB[3]),
        .I4(clk_21),
        .I5(SrcB[4]),
        .O(\ALUResult[21]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h88888888FFFCCCFC)) 
    \ALUResult[21]_INST_0_i_2 
       (.I0(\addressM[23] [1]),
        .I1(ALUControl[0]),
        .I2(\ALUResult[22]_INST_0_i_5_n_0 ),
        .I3(clk_0),
        .I4(\ALUResult[21]_INST_0_i_5_n_0 ),
        .I5(ALUControl__0),
        .O(\ALUResult[21]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFCFAFC0AFC0A0C0)) 
    \ALUResult[21]_INST_0_i_3 
       (.I0(\ALUResult[21]_INST_0_i_6_n_0 ),
        .I1(\addressM[23] [1]),
        .I2(\ALUResult[31]_INST_0_i_16_n_0 ),
        .I3(\ALUResult[31]_INST_0_i_17_n_0 ),
        .I4(clk_21),
        .I5(SrcB[21]),
        .O(\ALUResult[21]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFB800B800B800)) 
    \ALUResult[21]_INST_0_i_4 
       (.I0(Instr[19]),
        .I1(sum_carry__6_i_5_0),
        .I2(Instr[29]),
        .I3(ALUSrc),
        .I4(rd21),
        .I5(rd20[21]),
        .O(SrcB[21]));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \ALUResult[21]_INST_0_i_5 
       (.I0(\ALUResult[23]_INST_0_i_7_n_0 ),
        .I1(SrcB[2]),
        .I2(\ALUResult[27]_INST_0_i_7_n_0 ),
        .I3(\ALUResult[21]_INST_0_i_7_n_0 ),
        .I4(SrcB[1]),
        .O(\ALUResult[21]_INST_0_i_5_n_0 ));
  MUXF7 \ALUResult[21]_INST_0_i_6 
       (.I0(\ALUResult[21]_INST_0_i_8_n_0 ),
        .I1(\ALUResult[21]_INST_0_i_9_n_0 ),
        .O(\ALUResult[21]_INST_0_i_6_n_0 ),
        .S(ALUControl[0]));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \ALUResult[21]_INST_0_i_7 
       (.I0(clk_6),
        .I1(SrcB[3]),
        .I2(clk_14),
        .I3(SrcB[4]),
        .I4(SrcB[2]),
        .I5(\ALUResult[25]_INST_0_i_7_n_0 ),
        .O(\ALUResult[21]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h000000007F778088)) 
    \ALUResult[21]_INST_0_i_8 
       (.I0(rd10[21]),
        .I1(rd11),
        .I2(Instr[3]),
        .I3(Instr[0]),
        .I4(SrcB[21]),
        .I5(ALUControl__0),
        .O(\ALUResult[21]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[21]_INST_0_i_9 
       (.I0(\ALUResult[22]_INST_0_i_10_n_0 ),
        .I1(\ALUResult[21]_INST_0_i_10_n_0 ),
        .I2(ALUControl__0),
        .I3(\ALUResult[22]_INST_0_i_11_n_0 ),
        .I4(clk_0),
        .I5(\ALUResult[21]_INST_0_i_11_n_0 ),
        .O(\ALUResult[21]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \ALUResult[22]_INST_0 
       (.I0(\ALUResult[22]_INST_0_i_1_n_0 ),
        .I1(ALUControl[1]),
        .I2(\ALUResult[22]_INST_0_i_2_n_0 ),
        .I3(ALUControl[2]),
        .I4(\ALUResult[22]_INST_0_i_3_n_0 ),
        .O(ALUResult[21]));
  LUT4 #(
    .INIT(16'hF0BB)) 
    \ALUResult[22]_INST_0_i_1 
       (.I0(SrcB[22]),
        .I1(ALUControl[0]),
        .I2(\addressM[23] [2]),
        .I3(ALUControl__0),
        .O(\ALUResult[22]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \ALUResult[22]_INST_0_i_10 
       (.I0(\ALUResult[24]_INST_0_i_12_n_0 ),
        .I1(SrcB[1]),
        .I2(\ALUResult[22]_INST_0_i_12_n_0 ),
        .I3(SrcB[2]),
        .I4(\ALUResult[22]_INST_0_i_13_n_0 ),
        .O(\ALUResult[22]_INST_0_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult[22]_INST_0_i_11 
       (.I0(\ALUResult[24]_INST_0_i_13_n_0 ),
        .I1(SrcB[1]),
        .I2(\ALUResult[22]_INST_0_i_14_n_0 ),
        .O(\ALUResult[22]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h00000000CDC80000)) 
    \ALUResult[22]_INST_0_i_12 
       (.I0(SrcB[3]),
        .I1(rd10[31]),
        .I2(SrcB[4]),
        .I3(rd10[26]),
        .I4(rd11),
        .I5(\ALUResult[17]_INST_0_i_13_0 ),
        .O(\ALUResult[22]_INST_0_i_12_n_0 ));
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \ALUResult[22]_INST_0_i_13 
       (.I0(clk_30),
        .I1(SrcB[3]),
        .I2(\ALUResult[31]_INST_0_i_18_n_0 ),
        .I3(SrcB[4]),
        .I4(clk_22),
        .O(\ALUResult[22]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \ALUResult[22]_INST_0_i_14 
       (.I0(clk_26),
        .I1(SrcB[2]),
        .I2(clk_30),
        .I3(SrcB[3]),
        .I4(clk_22),
        .I5(SrcB[4]),
        .O(\ALUResult[22]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h88888888FFFCCCFC)) 
    \ALUResult[22]_INST_0_i_2 
       (.I0(\addressM[23] [2]),
        .I1(ALUControl[0]),
        .I2(\ALUResult[23]_INST_0_i_5_n_0 ),
        .I3(clk_0),
        .I4(\ALUResult[22]_INST_0_i_5_n_0 ),
        .I5(ALUControl__0),
        .O(\ALUResult[22]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFCFAFC0AFC0A0C0)) 
    \ALUResult[22]_INST_0_i_3 
       (.I0(\ALUResult[22]_INST_0_i_6_n_0 ),
        .I1(\addressM[23] [2]),
        .I2(\ALUResult[31]_INST_0_i_16_n_0 ),
        .I3(\ALUResult[31]_INST_0_i_17_n_0 ),
        .I4(clk_22),
        .I5(SrcB[22]),
        .O(\ALUResult[22]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFB800B800B800)) 
    \ALUResult[22]_INST_0_i_4 
       (.I0(Instr[20]),
        .I1(sum_carry__6_i_5_0),
        .I2(Instr[29]),
        .I3(ALUSrc),
        .I4(rd21),
        .I5(rd20[22]),
        .O(SrcB[22]));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \ALUResult[22]_INST_0_i_5 
       (.I0(\ALUResult[24]_INST_0_i_7_n_0 ),
        .I1(SrcB[2]),
        .I2(\ALUResult[28]_INST_0_i_7_n_0 ),
        .I3(\ALUResult[22]_INST_0_i_7_n_0 ),
        .I4(SrcB[1]),
        .O(\ALUResult[22]_INST_0_i_5_n_0 ));
  MUXF7 \ALUResult[22]_INST_0_i_6 
       (.I0(\ALUResult[22]_INST_0_i_8_n_0 ),
        .I1(\ALUResult[22]_INST_0_i_9_n_0 ),
        .O(\ALUResult[22]_INST_0_i_6_n_0 ),
        .S(ALUControl[0]));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \ALUResult[22]_INST_0_i_7 
       (.I0(clk_7),
        .I1(SrcB[3]),
        .I2(clk_15),
        .I3(SrcB[4]),
        .I4(SrcB[2]),
        .I5(\ALUResult[26]_INST_0_i_7_n_0 ),
        .O(\ALUResult[22]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h000000007F778088)) 
    \ALUResult[22]_INST_0_i_8 
       (.I0(rd10[22]),
        .I1(rd11),
        .I2(Instr[3]),
        .I3(Instr[0]),
        .I4(SrcB[22]),
        .I5(ALUControl__0),
        .O(\ALUResult[22]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[22]_INST_0_i_9 
       (.I0(\ALUResult[23]_INST_0_i_10_n_0 ),
        .I1(\ALUResult[22]_INST_0_i_10_n_0 ),
        .I2(ALUControl__0),
        .I3(\ALUResult[23]_INST_0_i_11_n_0 ),
        .I4(clk_0),
        .I5(\ALUResult[22]_INST_0_i_11_n_0 ),
        .O(\ALUResult[22]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \ALUResult[23]_INST_0 
       (.I0(\ALUResult[23]_INST_0_i_1_n_0 ),
        .I1(ALUControl[1]),
        .I2(\ALUResult[23]_INST_0_i_2_n_0 ),
        .I3(ALUControl[2]),
        .I4(\ALUResult[23]_INST_0_i_3_n_0 ),
        .O(ALUResult[22]));
  LUT4 #(
    .INIT(16'hF0BB)) 
    \ALUResult[23]_INST_0_i_1 
       (.I0(SrcB[23]),
        .I1(ALUControl[0]),
        .I2(\addressM[23] [3]),
        .I3(ALUControl__0),
        .O(\ALUResult[23]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult[23]_INST_0_i_10 
       (.I0(\ALUResult[25]_INST_0_i_13_n_0 ),
        .I1(SrcB[1]),
        .I2(\ALUResult[23]_INST_0_i_12_n_0 ),
        .O(\ALUResult[23]_INST_0_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult[23]_INST_0_i_11 
       (.I0(\ALUResult[25]_INST_0_i_14_n_0 ),
        .I1(SrcB[1]),
        .I2(\ALUResult[23]_INST_0_i_13_n_0 ),
        .O(\ALUResult[23]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FB0BFF00F808)) 
    \ALUResult[23]_INST_0_i_12 
       (.I0(clk_27),
        .I1(SrcB[2]),
        .I2(SrcB[3]),
        .I3(\ALUResult[31]_INST_0_i_18_n_0 ),
        .I4(SrcB[4]),
        .I5(clk_23),
        .O(\ALUResult[23]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \ALUResult[23]_INST_0_i_13 
       (.I0(clk_27),
        .I1(SrcB[2]),
        .I2(\ALUResult[31]_INST_0_i_18_n_0 ),
        .I3(SrcB[3]),
        .I4(clk_23),
        .I5(SrcB[4]),
        .O(\ALUResult[23]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h88888888FFFCCCFC)) 
    \ALUResult[23]_INST_0_i_2 
       (.I0(\addressM[23] [3]),
        .I1(ALUControl[0]),
        .I2(\ALUResult[24]_INST_0_i_5_n_0 ),
        .I3(clk_0),
        .I4(\ALUResult[23]_INST_0_i_5_n_0 ),
        .I5(ALUControl__0),
        .O(\ALUResult[23]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFCFAFC0AFC0A0C0)) 
    \ALUResult[23]_INST_0_i_3 
       (.I0(\ALUResult[23]_INST_0_i_6_n_0 ),
        .I1(\addressM[23] [3]),
        .I2(\ALUResult[31]_INST_0_i_16_n_0 ),
        .I3(\ALUResult[31]_INST_0_i_17_n_0 ),
        .I4(clk_23),
        .I5(SrcB[23]),
        .O(\ALUResult[23]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFB800B800B800)) 
    \ALUResult[23]_INST_0_i_4 
       (.I0(Instr[21]),
        .I1(sum_carry__6_i_5_0),
        .I2(Instr[29]),
        .I3(ALUSrc),
        .I4(rd21),
        .I5(rd20[23]),
        .O(SrcB[23]));
  LUT6 #(
    .INIT(64'hFF33CC00B8B8B8B8)) 
    \ALUResult[23]_INST_0_i_5 
       (.I0(\ALUResult[25]_INST_0_i_7_n_0 ),
        .I1(SrcB[2]),
        .I2(\ALUResult[29]_INST_0_i_7_n_0 ),
        .I3(\ALUResult[23]_INST_0_i_7_n_0 ),
        .I4(\ALUResult[27]_INST_0_i_7_n_0 ),
        .I5(SrcB[1]),
        .O(\ALUResult[23]_INST_0_i_5_n_0 ));
  MUXF7 \ALUResult[23]_INST_0_i_6 
       (.I0(\ALUResult[23]_INST_0_i_8_n_0 ),
        .I1(\ALUResult[23]_INST_0_i_9_n_0 ),
        .O(\ALUResult[23]_INST_0_i_6_n_0 ),
        .S(ALUControl[0]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \ALUResult[23]_INST_0_i_7 
       (.I0(clk_8),
        .I1(SrcB[3]),
        .I2(\ALUResult[0]_INST_0_i_7_n_0 ),
        .I3(SrcB[4]),
        .I4(clk_16),
        .O(\ALUResult[23]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h000000007F778088)) 
    \ALUResult[23]_INST_0_i_8 
       (.I0(rd10[23]),
        .I1(rd11),
        .I2(Instr[3]),
        .I3(Instr[0]),
        .I4(SrcB[23]),
        .I5(ALUControl__0),
        .O(\ALUResult[23]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[23]_INST_0_i_9 
       (.I0(\ALUResult[24]_INST_0_i_10_n_0 ),
        .I1(\ALUResult[23]_INST_0_i_10_n_0 ),
        .I2(ALUControl__0),
        .I3(\ALUResult[24]_INST_0_i_11_n_0 ),
        .I4(clk_0),
        .I5(\ALUResult[23]_INST_0_i_11_n_0 ),
        .O(\ALUResult[23]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \ALUResult[24]_INST_0 
       (.I0(\ALUResult[24]_INST_0_i_1_n_0 ),
        .I1(ALUControl[1]),
        .I2(\ALUResult[24]_INST_0_i_2_n_0 ),
        .I3(ALUControl[2]),
        .I4(\ALUResult[24]_INST_0_i_3_n_0 ),
        .O(ALUResult[23]));
  LUT4 #(
    .INIT(16'hF0BB)) 
    \ALUResult[24]_INST_0_i_1 
       (.I0(SrcB[24]),
        .I1(ALUControl[0]),
        .I2(\addressM[27] [0]),
        .I3(ALUControl__0),
        .O(\ALUResult[24]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult[24]_INST_0_i_10 
       (.I0(\ALUResult[26]_INST_0_i_13_n_0 ),
        .I1(SrcB[1]),
        .I2(\ALUResult[24]_INST_0_i_12_n_0 ),
        .O(\ALUResult[24]_INST_0_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult[24]_INST_0_i_11 
       (.I0(\ALUResult[26]_INST_0_i_14_n_0 ),
        .I1(SrcB[1]),
        .I2(\ALUResult[24]_INST_0_i_13_n_0 ),
        .O(\ALUResult[24]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FB0BFF00F808)) 
    \ALUResult[24]_INST_0_i_12 
       (.I0(clk_28),
        .I1(SrcB[2]),
        .I2(SrcB[3]),
        .I3(\ALUResult[31]_INST_0_i_18_n_0 ),
        .I4(SrcB[4]),
        .I5(clk_24),
        .O(\ALUResult[24]_INST_0_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \ALUResult[24]_INST_0_i_13 
       (.I0(clk_28),
        .I1(SrcB[2]),
        .I2(SrcB[4]),
        .I3(clk_24),
        .I4(SrcB[3]),
        .O(\ALUResult[24]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h88888888FFFCCCFC)) 
    \ALUResult[24]_INST_0_i_2 
       (.I0(\addressM[27] [0]),
        .I1(ALUControl[0]),
        .I2(\ALUResult[25]_INST_0_i_5_n_0 ),
        .I3(clk_0),
        .I4(\ALUResult[24]_INST_0_i_5_n_0 ),
        .I5(ALUControl__0),
        .O(\ALUResult[24]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFCFAFC0AFC0A0C0)) 
    \ALUResult[24]_INST_0_i_3 
       (.I0(\ALUResult[24]_INST_0_i_6_n_0 ),
        .I1(\addressM[27] [0]),
        .I2(\ALUResult[31]_INST_0_i_16_n_0 ),
        .I3(\ALUResult[31]_INST_0_i_17_n_0 ),
        .I4(clk_24),
        .I5(SrcB[24]),
        .O(\ALUResult[24]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFB800B800B800)) 
    \ALUResult[24]_INST_0_i_4 
       (.I0(Instr[22]),
        .I1(sum_carry__6_i_5_0),
        .I2(Instr[29]),
        .I3(ALUSrc),
        .I4(rd21),
        .I5(rd20[24]),
        .O(SrcB[24]));
  LUT6 #(
    .INIT(64'hFF33CC00B8B8B8B8)) 
    \ALUResult[24]_INST_0_i_5 
       (.I0(\ALUResult[26]_INST_0_i_7_n_0 ),
        .I1(SrcB[2]),
        .I2(\ALUResult[30]_INST_0_i_8_n_0 ),
        .I3(\ALUResult[24]_INST_0_i_7_n_0 ),
        .I4(\ALUResult[28]_INST_0_i_7_n_0 ),
        .I5(SrcB[1]),
        .O(\ALUResult[24]_INST_0_i_5_n_0 ));
  MUXF7 \ALUResult[24]_INST_0_i_6 
       (.I0(\ALUResult[24]_INST_0_i_8_n_0 ),
        .I1(\ALUResult[24]_INST_0_i_9_n_0 ),
        .O(\ALUResult[24]_INST_0_i_6_n_0 ),
        .S(ALUControl[0]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \ALUResult[24]_INST_0_i_7 
       (.I0(clk_9),
        .I1(SrcB[3]),
        .I2(clk_1),
        .I3(SrcB[4]),
        .I4(clk_17),
        .O(\ALUResult[24]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h000000007F778088)) 
    \ALUResult[24]_INST_0_i_8 
       (.I0(rd10[24]),
        .I1(rd11),
        .I2(Instr[3]),
        .I3(Instr[0]),
        .I4(SrcB[24]),
        .I5(ALUControl__0),
        .O(\ALUResult[24]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[24]_INST_0_i_9 
       (.I0(\ALUResult[25]_INST_0_i_10_n_0 ),
        .I1(\ALUResult[24]_INST_0_i_10_n_0 ),
        .I2(ALUControl__0),
        .I3(\ALUResult[25]_INST_0_i_11_n_0 ),
        .I4(clk_0),
        .I5(\ALUResult[24]_INST_0_i_11_n_0 ),
        .O(\ALUResult[24]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \ALUResult[25]_INST_0 
       (.I0(\ALUResult[25]_INST_0_i_1_n_0 ),
        .I1(ALUControl[1]),
        .I2(\ALUResult[25]_INST_0_i_2_n_0 ),
        .I3(ALUControl[2]),
        .I4(\ALUResult[25]_INST_0_i_3_n_0 ),
        .O(ALUResult[24]));
  LUT4 #(
    .INIT(16'hF0BB)) 
    \ALUResult[25]_INST_0_i_1 
       (.I0(SrcB[25]),
        .I1(ALUControl[0]),
        .I2(\addressM[27] [1]),
        .I3(ALUControl__0),
        .O(\ALUResult[25]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult[25]_INST_0_i_10 
       (.I0(\ALUResult[25]_INST_0_i_12_n_0 ),
        .I1(SrcB[1]),
        .I2(\ALUResult[25]_INST_0_i_13_n_0 ),
        .O(\ALUResult[25]_INST_0_i_10_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult[25]_INST_0_i_11 
       (.I0(\ALUResult[27]_INST_0_i_14_n_0 ),
        .I1(SrcB[1]),
        .I2(\ALUResult[25]_INST_0_i_14_n_0 ),
        .O(\ALUResult[25]_INST_0_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hF0F1F0E0)) 
    \ALUResult[25]_INST_0_i_12 
       (.I0(SrcB[2]),
        .I1(SrcB[3]),
        .I2(\ALUResult[31]_INST_0_i_18_n_0 ),
        .I3(SrcB[4]),
        .I4(clk_27),
        .O(\ALUResult[25]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FB0BFF00F808)) 
    \ALUResult[25]_INST_0_i_13 
       (.I0(clk_29),
        .I1(SrcB[2]),
        .I2(SrcB[3]),
        .I3(\ALUResult[31]_INST_0_i_18_n_0 ),
        .I4(SrcB[4]),
        .I5(clk_25),
        .O(\ALUResult[25]_INST_0_i_13_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \ALUResult[25]_INST_0_i_14 
       (.I0(clk_29),
        .I1(SrcB[2]),
        .I2(SrcB[4]),
        .I3(clk_25),
        .I4(SrcB[3]),
        .O(\ALUResult[25]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h88888888FFFCCCFC)) 
    \ALUResult[25]_INST_0_i_2 
       (.I0(\addressM[27] [1]),
        .I1(ALUControl[0]),
        .I2(\ALUResult[26]_INST_0_i_5_n_0 ),
        .I3(clk_0),
        .I4(\ALUResult[25]_INST_0_i_5_n_0 ),
        .I5(ALUControl__0),
        .O(\ALUResult[25]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFCFAFC0AFC0A0C0)) 
    \ALUResult[25]_INST_0_i_3 
       (.I0(\ALUResult[25]_INST_0_i_6_n_0 ),
        .I1(\addressM[27] [1]),
        .I2(\ALUResult[31]_INST_0_i_16_n_0 ),
        .I3(\ALUResult[31]_INST_0_i_17_n_0 ),
        .I4(clk_25),
        .I5(SrcB[25]),
        .O(\ALUResult[25]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFB800B800B800)) 
    \ALUResult[25]_INST_0_i_4 
       (.I0(Instr[23]),
        .I1(sum_carry__6_i_5_0),
        .I2(Instr[29]),
        .I3(ALUSrc),
        .I4(rd21),
        .I5(rd20[25]),
        .O(SrcB[25]));
  LUT6 #(
    .INIT(64'hFF33CC00B8B8B8B8)) 
    \ALUResult[25]_INST_0_i_5 
       (.I0(\ALUResult[27]_INST_0_i_7_n_0 ),
        .I1(SrcB[2]),
        .I2(\ALUResult[31]_INST_0_i_25_n_0 ),
        .I3(\ALUResult[25]_INST_0_i_7_n_0 ),
        .I4(\ALUResult[29]_INST_0_i_7_n_0 ),
        .I5(SrcB[1]),
        .O(\ALUResult[25]_INST_0_i_5_n_0 ));
  MUXF7 \ALUResult[25]_INST_0_i_6 
       (.I0(\ALUResult[25]_INST_0_i_8_n_0 ),
        .I1(\ALUResult[25]_INST_0_i_9_n_0 ),
        .O(\ALUResult[25]_INST_0_i_6_n_0 ),
        .S(ALUControl[0]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \ALUResult[25]_INST_0_i_7 
       (.I0(clk_10),
        .I1(SrcB[3]),
        .I2(clk_2),
        .I3(SrcB[4]),
        .I4(clk_18),
        .O(\ALUResult[25]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h000000007F778088)) 
    \ALUResult[25]_INST_0_i_8 
       (.I0(rd10[25]),
        .I1(rd11),
        .I2(Instr[3]),
        .I3(Instr[0]),
        .I4(SrcB[25]),
        .I5(ALUControl__0),
        .O(\ALUResult[25]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[25]_INST_0_i_9 
       (.I0(\ALUResult[26]_INST_0_i_10_n_0 ),
        .I1(\ALUResult[25]_INST_0_i_10_n_0 ),
        .I2(ALUControl__0),
        .I3(\ALUResult[26]_INST_0_i_11_n_0 ),
        .I4(clk_0),
        .I5(\ALUResult[25]_INST_0_i_11_n_0 ),
        .O(\ALUResult[25]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \ALUResult[26]_INST_0 
       (.I0(\ALUResult[26]_INST_0_i_1_n_0 ),
        .I1(ALUControl[1]),
        .I2(\ALUResult[26]_INST_0_i_2_n_0 ),
        .I3(ALUControl[2]),
        .I4(\ALUResult[26]_INST_0_i_3_n_0 ),
        .O(ALUResult[25]));
  LUT4 #(
    .INIT(16'hF0BB)) 
    \ALUResult[26]_INST_0_i_1 
       (.I0(SrcB[26]),
        .I1(ALUControl[0]),
        .I2(\addressM[27] [2]),
        .I3(ALUControl__0),
        .O(\ALUResult[26]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult[26]_INST_0_i_10 
       (.I0(\ALUResult[26]_INST_0_i_12_n_0 ),
        .I1(SrcB[1]),
        .I2(\ALUResult[26]_INST_0_i_13_n_0 ),
        .O(\ALUResult[26]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0004FFFF00040000)) 
    \ALUResult[26]_INST_0_i_11 
       (.I0(SrcB[3]),
        .I1(clk_28),
        .I2(SrcB[4]),
        .I3(SrcB[2]),
        .I4(SrcB[1]),
        .I5(\ALUResult[26]_INST_0_i_14_n_0 ),
        .O(\ALUResult[26]_INST_0_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hF0F1F0E0)) 
    \ALUResult[26]_INST_0_i_12 
       (.I0(SrcB[2]),
        .I1(SrcB[3]),
        .I2(\ALUResult[31]_INST_0_i_18_n_0 ),
        .I3(SrcB[4]),
        .I4(clk_28),
        .O(\ALUResult[26]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FB0BFF00F808)) 
    \ALUResult[26]_INST_0_i_13 
       (.I0(clk_30),
        .I1(SrcB[2]),
        .I2(SrcB[3]),
        .I3(\ALUResult[31]_INST_0_i_18_n_0 ),
        .I4(SrcB[4]),
        .I5(clk_26),
        .O(\ALUResult[26]_INST_0_i_13_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \ALUResult[26]_INST_0_i_14 
       (.I0(clk_30),
        .I1(SrcB[2]),
        .I2(SrcB[4]),
        .I3(clk_26),
        .I4(SrcB[3]),
        .O(\ALUResult[26]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h88888888FFFCCCFC)) 
    \ALUResult[26]_INST_0_i_2 
       (.I0(\addressM[27] [2]),
        .I1(ALUControl[0]),
        .I2(\ALUResult[27]_INST_0_i_5_n_0 ),
        .I3(clk_0),
        .I4(\ALUResult[26]_INST_0_i_5_n_0 ),
        .I5(ALUControl__0),
        .O(\ALUResult[26]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFCFAFC0AFC0A0C0)) 
    \ALUResult[26]_INST_0_i_3 
       (.I0(\ALUResult[26]_INST_0_i_6_n_0 ),
        .I1(\addressM[27] [2]),
        .I2(\ALUResult[31]_INST_0_i_16_n_0 ),
        .I3(\ALUResult[31]_INST_0_i_17_n_0 ),
        .I4(clk_26),
        .I5(SrcB[26]),
        .O(\ALUResult[26]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFB800B800B800)) 
    \ALUResult[26]_INST_0_i_4 
       (.I0(Instr[24]),
        .I1(sum_carry__6_i_5_0),
        .I2(Instr[29]),
        .I3(ALUSrc),
        .I4(rd21),
        .I5(rd20[26]),
        .O(SrcB[26]));
  LUT6 #(
    .INIT(64'hFF33CC00B8B8B8B8)) 
    \ALUResult[26]_INST_0_i_5 
       (.I0(\ALUResult[28]_INST_0_i_7_n_0 ),
        .I1(SrcB[2]),
        .I2(\ALUResult[31]_INST_0_i_20_n_0 ),
        .I3(\ALUResult[26]_INST_0_i_7_n_0 ),
        .I4(\ALUResult[30]_INST_0_i_8_n_0 ),
        .I5(SrcB[1]),
        .O(\ALUResult[26]_INST_0_i_5_n_0 ));
  MUXF7 \ALUResult[26]_INST_0_i_6 
       (.I0(\ALUResult[26]_INST_0_i_8_n_0 ),
        .I1(\ALUResult[26]_INST_0_i_9_n_0 ),
        .O(\ALUResult[26]_INST_0_i_6_n_0 ),
        .S(ALUControl[0]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \ALUResult[26]_INST_0_i_7 
       (.I0(clk_11),
        .I1(SrcB[3]),
        .I2(clk_3),
        .I3(SrcB[4]),
        .I4(clk_19),
        .O(\ALUResult[26]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h000000007F778088)) 
    \ALUResult[26]_INST_0_i_8 
       (.I0(rd10[26]),
        .I1(rd11),
        .I2(Instr[3]),
        .I3(Instr[0]),
        .I4(SrcB[26]),
        .I5(ALUControl__0),
        .O(\ALUResult[26]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[26]_INST_0_i_9 
       (.I0(\ALUResult[27]_INST_0_i_10_n_0 ),
        .I1(\ALUResult[26]_INST_0_i_10_n_0 ),
        .I2(ALUControl__0),
        .I3(\ALUResult[27]_INST_0_i_11_n_0 ),
        .I4(clk_0),
        .I5(\ALUResult[26]_INST_0_i_11_n_0 ),
        .O(\ALUResult[26]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \ALUResult[27]_INST_0 
       (.I0(\ALUResult[27]_INST_0_i_1_n_0 ),
        .I1(ALUControl[1]),
        .I2(\ALUResult[27]_INST_0_i_2_n_0 ),
        .I3(ALUControl[2]),
        .I4(\ALUResult[27]_INST_0_i_3_n_0 ),
        .O(ALUResult[26]));
  LUT4 #(
    .INIT(16'hF0BB)) 
    \ALUResult[27]_INST_0_i_1 
       (.I0(SrcB[27]),
        .I1(ALUControl[0]),
        .I2(\addressM[27] [3]),
        .I3(ALUControl__0),
        .O(\ALUResult[27]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FB0BFF00F808)) 
    \ALUResult[27]_INST_0_i_10 
       (.I0(\ALUResult[27]_INST_0_i_12_n_0 ),
        .I1(SrcB[1]),
        .I2(SrcB[2]),
        .I3(\ALUResult[31]_INST_0_i_18_n_0 ),
        .I4(SrcB[3]),
        .I5(\ALUResult[27]_INST_0_i_13_n_0 ),
        .O(\ALUResult[27]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0004FFFF00040000)) 
    \ALUResult[27]_INST_0_i_11 
       (.I0(SrcB[3]),
        .I1(clk_29),
        .I2(SrcB[4]),
        .I3(SrcB[2]),
        .I4(SrcB[1]),
        .I5(\ALUResult[27]_INST_0_i_14_n_0 ),
        .O(\ALUResult[27]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hB8000000B800B800)) 
    \ALUResult[27]_INST_0_i_12 
       (.I0(rd10[31]),
        .I1(SrcB[4]),
        .I2(rd10[29]),
        .I3(rd11),
        .I4(Instr[3]),
        .I5(Instr[0]),
        .O(\ALUResult[27]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hB8000000B800B800)) 
    \ALUResult[27]_INST_0_i_13 
       (.I0(rd10[31]),
        .I1(SrcB[4]),
        .I2(rd10[27]),
        .I3(rd11),
        .I4(Instr[3]),
        .I5(Instr[0]),
        .O(\ALUResult[27]_INST_0_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00000B08)) 
    \ALUResult[27]_INST_0_i_14 
       (.I0(\ALUResult[31]_INST_0_i_18_n_0 ),
        .I1(SrcB[2]),
        .I2(SrcB[4]),
        .I3(clk_27),
        .I4(SrcB[3]),
        .O(\ALUResult[27]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h88888888FFFCCCFC)) 
    \ALUResult[27]_INST_0_i_2 
       (.I0(\addressM[27] [3]),
        .I1(ALUControl[0]),
        .I2(\ALUResult[28]_INST_0_i_5_n_0 ),
        .I3(clk_0),
        .I4(\ALUResult[27]_INST_0_i_5_n_0 ),
        .I5(ALUControl__0),
        .O(\ALUResult[27]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFCFAFC0AFC0A0C0)) 
    \ALUResult[27]_INST_0_i_3 
       (.I0(\ALUResult[27]_INST_0_i_6_n_0 ),
        .I1(\addressM[27] [3]),
        .I2(\ALUResult[31]_INST_0_i_16_n_0 ),
        .I3(\ALUResult[31]_INST_0_i_17_n_0 ),
        .I4(clk_27),
        .I5(SrcB[27]),
        .O(\ALUResult[27]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFB800B800B800)) 
    \ALUResult[27]_INST_0_i_4 
       (.I0(Instr[25]),
        .I1(sum_carry__6_i_5_0),
        .I2(Instr[29]),
        .I3(ALUSrc),
        .I4(rd21),
        .I5(rd20[27]),
        .O(SrcB[27]));
  LUT6 #(
    .INIT(64'hFF33CC00B8B8B8B8)) 
    \ALUResult[27]_INST_0_i_5 
       (.I0(\ALUResult[29]_INST_0_i_7_n_0 ),
        .I1(SrcB[2]),
        .I2(\ALUResult[31]_INST_0_i_27_n_0 ),
        .I3(\ALUResult[27]_INST_0_i_7_n_0 ),
        .I4(\ALUResult[31]_INST_0_i_25_n_0 ),
        .I5(SrcB[1]),
        .O(\ALUResult[27]_INST_0_i_5_n_0 ));
  MUXF7 \ALUResult[27]_INST_0_i_6 
       (.I0(\ALUResult[27]_INST_0_i_8_n_0 ),
        .I1(\ALUResult[27]_INST_0_i_9_n_0 ),
        .O(\ALUResult[27]_INST_0_i_6_n_0 ),
        .S(ALUControl[0]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \ALUResult[27]_INST_0_i_7 
       (.I0(clk_12),
        .I1(SrcB[3]),
        .I2(clk_4),
        .I3(SrcB[4]),
        .I4(clk_20),
        .O(\ALUResult[27]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h000000007F778088)) 
    \ALUResult[27]_INST_0_i_8 
       (.I0(rd10[27]),
        .I1(rd11),
        .I2(Instr[3]),
        .I3(Instr[0]),
        .I4(SrcB[27]),
        .I5(ALUControl__0),
        .O(\ALUResult[27]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[27]_INST_0_i_9 
       (.I0(\ALUResult[28]_INST_0_i_10_n_0 ),
        .I1(\ALUResult[27]_INST_0_i_10_n_0 ),
        .I2(ALUControl__0),
        .I3(\ALUResult[28]_INST_0_i_11_n_0 ),
        .I4(clk_0),
        .I5(\ALUResult[27]_INST_0_i_11_n_0 ),
        .O(\ALUResult[27]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \ALUResult[28]_INST_0 
       (.I0(\ALUResult[28]_INST_0_i_1_n_0 ),
        .I1(ALUControl[1]),
        .I2(\ALUResult[28]_INST_0_i_2_n_0 ),
        .I3(ALUControl[2]),
        .I4(\ALUResult[28]_INST_0_i_3_n_0 ),
        .O(ALUResult[27]));
  LUT4 #(
    .INIT(16'hF0BB)) 
    \ALUResult[28]_INST_0_i_1 
       (.I0(SrcB[28]),
        .I1(ALUControl[0]),
        .I2(\addressM[31] [0]),
        .I3(ALUControl__0),
        .O(\ALUResult[28]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FB0BFF00F808)) 
    \ALUResult[28]_INST_0_i_10 
       (.I0(\ALUResult[28]_INST_0_i_12_n_0 ),
        .I1(SrcB[1]),
        .I2(SrcB[2]),
        .I3(\ALUResult[31]_INST_0_i_18_n_0 ),
        .I4(SrcB[3]),
        .I5(\ALUResult[28]_INST_0_i_13_n_0 ),
        .O(\ALUResult[28]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000B08)) 
    \ALUResult[28]_INST_0_i_11 
       (.I0(clk_30),
        .I1(SrcB[1]),
        .I2(SrcB[3]),
        .I3(clk_28),
        .I4(SrcB[4]),
        .I5(SrcB[2]),
        .O(\ALUResult[28]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hB8000000B800B800)) 
    \ALUResult[28]_INST_0_i_12 
       (.I0(rd10[31]),
        .I1(SrcB[4]),
        .I2(rd10[30]),
        .I3(rd11),
        .I4(Instr[3]),
        .I5(Instr[0]),
        .O(\ALUResult[28]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hB8000000B800B800)) 
    \ALUResult[28]_INST_0_i_13 
       (.I0(rd10[31]),
        .I1(SrcB[4]),
        .I2(rd10[28]),
        .I3(rd11),
        .I4(Instr[3]),
        .I5(Instr[0]),
        .O(\ALUResult[28]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h88888888FFFCCCFC)) 
    \ALUResult[28]_INST_0_i_2 
       (.I0(\addressM[31] [0]),
        .I1(ALUControl[0]),
        .I2(\ALUResult[29]_INST_0_i_5_n_0 ),
        .I3(clk_0),
        .I4(\ALUResult[28]_INST_0_i_5_n_0 ),
        .I5(ALUControl__0),
        .O(\ALUResult[28]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFCFAFC0AFC0A0C0)) 
    \ALUResult[28]_INST_0_i_3 
       (.I0(\ALUResult[28]_INST_0_i_6_n_0 ),
        .I1(\addressM[31] [0]),
        .I2(\ALUResult[31]_INST_0_i_16_n_0 ),
        .I3(\ALUResult[31]_INST_0_i_17_n_0 ),
        .I4(clk_28),
        .I5(SrcB[28]),
        .O(\ALUResult[28]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFB800B800B800)) 
    \ALUResult[28]_INST_0_i_4 
       (.I0(Instr[26]),
        .I1(sum_carry__6_i_5_0),
        .I2(Instr[29]),
        .I3(ALUSrc),
        .I4(rd21),
        .I5(rd20[28]),
        .O(SrcB[28]));
  LUT6 #(
    .INIT(64'hFF33CC00B8B8B8B8)) 
    \ALUResult[28]_INST_0_i_5 
       (.I0(\ALUResult[30]_INST_0_i_8_n_0 ),
        .I1(SrcB[2]),
        .I2(\ALUResult[31]_INST_0_i_22_n_0 ),
        .I3(\ALUResult[28]_INST_0_i_7_n_0 ),
        .I4(\ALUResult[31]_INST_0_i_20_n_0 ),
        .I5(SrcB[1]),
        .O(\ALUResult[28]_INST_0_i_5_n_0 ));
  MUXF7 \ALUResult[28]_INST_0_i_6 
       (.I0(\ALUResult[28]_INST_0_i_8_n_0 ),
        .I1(\ALUResult[28]_INST_0_i_9_n_0 ),
        .O(\ALUResult[28]_INST_0_i_6_n_0 ),
        .S(ALUControl[0]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \ALUResult[28]_INST_0_i_7 
       (.I0(clk_13),
        .I1(SrcB[3]),
        .I2(clk_5),
        .I3(SrcB[4]),
        .I4(clk_21),
        .O(\ALUResult[28]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h000000007F778088)) 
    \ALUResult[28]_INST_0_i_8 
       (.I0(rd10[28]),
        .I1(rd11),
        .I2(Instr[3]),
        .I3(Instr[0]),
        .I4(SrcB[28]),
        .I5(ALUControl__0),
        .O(\ALUResult[28]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[28]_INST_0_i_9 
       (.I0(\ALUResult[29]_INST_0_i_10_n_0 ),
        .I1(\ALUResult[28]_INST_0_i_10_n_0 ),
        .I2(ALUControl__0),
        .I3(\ALUResult[29]_INST_0_i_11_n_0 ),
        .I4(clk_0),
        .I5(\ALUResult[28]_INST_0_i_11_n_0 ),
        .O(\ALUResult[28]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \ALUResult[29]_INST_0 
       (.I0(\ALUResult[29]_INST_0_i_1_n_0 ),
        .I1(ALUControl[1]),
        .I2(\ALUResult[29]_INST_0_i_2_n_0 ),
        .I3(ALUControl[2]),
        .I4(\ALUResult[29]_INST_0_i_3_n_0 ),
        .O(ALUResult[28]));
  LUT4 #(
    .INIT(16'hF0BB)) 
    \ALUResult[29]_INST_0_i_1 
       (.I0(SrcB[29]),
        .I1(ALUControl[0]),
        .I2(\addressM[31] [1]),
        .I3(ALUControl__0),
        .O(\ALUResult[29]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FF01FF00FE00)) 
    \ALUResult[29]_INST_0_i_10 
       (.I0(SrcB[1]),
        .I1(SrcB[2]),
        .I2(SrcB[3]),
        .I3(\ALUResult[31]_INST_0_i_18_n_0 ),
        .I4(SrcB[4]),
        .I5(clk_29),
        .O(\ALUResult[29]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000B08)) 
    \ALUResult[29]_INST_0_i_11 
       (.I0(\ALUResult[31]_INST_0_i_18_n_0 ),
        .I1(SrcB[1]),
        .I2(SrcB[3]),
        .I3(clk_29),
        .I4(SrcB[4]),
        .I5(SrcB[2]),
        .O(\ALUResult[29]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h88888888FFFCCCFC)) 
    \ALUResult[29]_INST_0_i_2 
       (.I0(\addressM[31] [1]),
        .I1(ALUControl[0]),
        .I2(\ALUResult[30]_INST_0_i_5_n_0 ),
        .I3(clk_0),
        .I4(\ALUResult[29]_INST_0_i_5_n_0 ),
        .I5(ALUControl__0),
        .O(\ALUResult[29]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFCFAFC0AFC0A0C0)) 
    \ALUResult[29]_INST_0_i_3 
       (.I0(\ALUResult[29]_INST_0_i_6_n_0 ),
        .I1(\addressM[31] [1]),
        .I2(\ALUResult[31]_INST_0_i_16_n_0 ),
        .I3(\ALUResult[31]_INST_0_i_17_n_0 ),
        .I4(clk_29),
        .I5(SrcB[29]),
        .O(\ALUResult[29]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFB800B800B800)) 
    \ALUResult[29]_INST_0_i_4 
       (.I0(Instr[27]),
        .I1(sum_carry__6_i_5_0),
        .I2(Instr[29]),
        .I3(ALUSrc),
        .I4(rd21),
        .I5(rd20[29]),
        .O(SrcB[29]));
  LUT6 #(
    .INIT(64'hFF33CC00B8B8B8B8)) 
    \ALUResult[29]_INST_0_i_5 
       (.I0(\ALUResult[31]_INST_0_i_25_n_0 ),
        .I1(SrcB[2]),
        .I2(\ALUResult[31]_INST_0_i_26_n_0 ),
        .I3(\ALUResult[29]_INST_0_i_7_n_0 ),
        .I4(\ALUResult[31]_INST_0_i_27_n_0 ),
        .I5(SrcB[1]),
        .O(\ALUResult[29]_INST_0_i_5_n_0 ));
  MUXF7 \ALUResult[29]_INST_0_i_6 
       (.I0(\ALUResult[29]_INST_0_i_8_n_0 ),
        .I1(\ALUResult[29]_INST_0_i_9_n_0 ),
        .O(\ALUResult[29]_INST_0_i_6_n_0 ),
        .S(ALUControl[0]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \ALUResult[29]_INST_0_i_7 
       (.I0(clk_14),
        .I1(SrcB[3]),
        .I2(clk_6),
        .I3(SrcB[4]),
        .I4(clk_22),
        .O(\ALUResult[29]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h000000007F778088)) 
    \ALUResult[29]_INST_0_i_8 
       (.I0(rd10[29]),
        .I1(rd11),
        .I2(Instr[3]),
        .I3(Instr[0]),
        .I4(SrcB[29]),
        .I5(ALUControl__0),
        .O(\ALUResult[29]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[29]_INST_0_i_9 
       (.I0(\ALUResult[30]_INST_0_i_11_n_0 ),
        .I1(\ALUResult[29]_INST_0_i_10_n_0 ),
        .I2(ALUControl__0),
        .I3(\ALUResult[30]_INST_0_i_12_n_0 ),
        .I4(clk_0),
        .I5(\ALUResult[29]_INST_0_i_11_n_0 ),
        .O(\ALUResult[29]_INST_0_i_9_n_0 ));
  MUXF7 \ALUResult[2]_INST_0 
       (.I0(\ALUResult[2]_INST_0_i_1_n_0 ),
        .I1(\ALUResult[2]_INST_0_i_2_n_0 ),
        .O(ALUResult[1]),
        .S(ALUControl[2]));
  LUT6 #(
    .INIT(64'hAFCFAFC0AFC0A0C0)) 
    \ALUResult[2]_INST_0_i_1 
       (.I0(\ALUResult[2]_INST_0_i_3_n_0 ),
        .I1(O[2]),
        .I2(\ALUResult[31]_INST_0_i_16_n_0 ),
        .I3(\ALUResult[31]_INST_0_i_17_n_0 ),
        .I4(clk_2),
        .I5(SrcB[2]),
        .O(\ALUResult[2]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    \ALUResult[2]_INST_0_i_10 
       (.I0(SrcB[3]),
        .I1(\ALUResult[17]_INST_0_i_13_0 ),
        .I2(rd11),
        .I3(rd10[1]),
        .I4(SrcB[4]),
        .I5(SrcB[2]),
        .O(\ALUResult[2]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[2]_INST_0_i_11 
       (.I0(\ALUResult[8]_INST_0_i_11_n_0 ),
        .I1(\ALUResult[4]_INST_0_i_14_n_0 ),
        .I2(SrcB[1]),
        .I3(\ALUResult[6]_INST_0_i_11_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[2]_INST_0_i_13_n_0 ),
        .O(\ALUResult[2]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[2]_INST_0_i_12 
       (.I0(\ALUResult[8]_INST_0_i_12_n_0 ),
        .I1(\ALUResult[4]_INST_0_i_14_n_0 ),
        .I2(SrcB[1]),
        .I3(\ALUResult[6]_INST_0_i_11_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[2]_INST_0_i_13_n_0 ),
        .O(\ALUResult[2]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[2]_INST_0_i_13 
       (.I0(clk_26),
        .I1(clk_10),
        .I2(SrcB[3]),
        .I3(clk_18),
        .I4(SrcB[4]),
        .I5(clk_2),
        .O(\ALUResult[2]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hF0C0F0C0BBFFBBCC)) 
    \ALUResult[2]_INST_0_i_2 
       (.I0(SrcB[2]),
        .I1(ALUControl[1]),
        .I2(O[2]),
        .I3(ALUControl[0]),
        .I4(data7[2]),
        .I5(ALUControl__0),
        .O(\ALUResult[2]_INST_0_i_2_n_0 ));
  MUXF7 \ALUResult[2]_INST_0_i_3 
       (.I0(\ALUResult[2]_INST_0_i_6_n_0 ),
        .I1(\ALUResult[2]_INST_0_i_7_n_0 ),
        .O(\ALUResult[2]_INST_0_i_3_n_0 ),
        .S(ALUControl[0]));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \ALUResult[2]_INST_0_i_4 
       (.I0(\ALUResult[2]_INST_0_i_8_n_0 ),
        .I1(\rd[6]_INST_0 ),
        .I2(\ALUResult[2]_INST_0_i_9_n_0 ),
        .I3(sum_carry__6_i_5_0),
        .I4(ALUSrc),
        .I5(WriteData[2]),
        .O(SrcB[2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \ALUResult[2]_INST_0_i_5 
       (.I0(\ALUResult[2]_INST_0_i_10_n_0 ),
        .I1(SrcB[1]),
        .I2(clk_0),
        .I3(\ALUResult[3]_INST_0_i_10_n_0 ),
        .O(data7[2]));
  LUT6 #(
    .INIT(64'h000000007F778088)) 
    \ALUResult[2]_INST_0_i_6 
       (.I0(rd10[2]),
        .I1(rd11),
        .I2(Instr[3]),
        .I3(Instr[0]),
        .I4(SrcB[2]),
        .I5(ALUControl__0),
        .O(\ALUResult[2]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[2]_INST_0_i_7 
       (.I0(\ALUResult[3]_INST_0_i_11_n_0 ),
        .I1(\ALUResult[2]_INST_0_i_11_n_0 ),
        .I2(ALUControl__0),
        .I3(\ALUResult[3]_INST_0_i_12_n_0 ),
        .I4(clk_0),
        .I5(\ALUResult[2]_INST_0_i_12_n_0 ),
        .O(\ALUResult[2]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hBBBABBBB888A8888)) 
    \ALUResult[2]_INST_0_i_8 
       (.I0(Instr[7]),
        .I1(Instr[1]),
        .I2(Instr[2]),
        .I3(Instr[4]),
        .I4(Instr[3]),
        .I5(Instr[20]),
        .O(\ALUResult[2]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hBBBABBBB888A8888)) 
    \ALUResult[2]_INST_0_i_9 
       (.I0(Instr[20]),
        .I1(Instr[1]),
        .I2(Instr[2]),
        .I3(Instr[4]),
        .I4(Instr[3]),
        .I5(Instr[7]),
        .O(\ALUResult[2]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \ALUResult[30]_INST_0 
       (.I0(\ALUResult[30]_INST_0_i_1_n_0 ),
        .I1(ALUControl[1]),
        .I2(\ALUResult[30]_INST_0_i_2_n_0 ),
        .I3(ALUControl[2]),
        .I4(\ALUResult[30]_INST_0_i_3_n_0 ),
        .O(ALUResult[29]));
  LUT4 #(
    .INIT(16'hF0BB)) 
    \ALUResult[30]_INST_0_i_1 
       (.I0(SrcB[30]),
        .I1(ALUControl[0]),
        .I2(\addressM[31] [2]),
        .I3(ALUControl__0),
        .O(\ALUResult[30]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[30]_INST_0_i_10 
       (.I0(\ALUResult[31]_INST_0_i_18_n_0 ),
        .I1(\ALUResult[30]_INST_0_i_11_n_0 ),
        .I2(ALUControl__0),
        .I3(\ALUResult[31]_INST_0_i_29_n_0 ),
        .I4(clk_0),
        .I5(\ALUResult[30]_INST_0_i_12_n_0 ),
        .O(\ALUResult[30]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FF01FF00FE00)) 
    \ALUResult[30]_INST_0_i_11 
       (.I0(SrcB[1]),
        .I1(SrcB[2]),
        .I2(SrcB[3]),
        .I3(\ALUResult[31]_INST_0_i_18_n_0 ),
        .I4(SrcB[4]),
        .I5(clk_30),
        .O(\ALUResult[30]_INST_0_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \ALUResult[30]_INST_0_i_12 
       (.I0(SrcB[2]),
        .I1(SrcB[4]),
        .I2(clk_30),
        .I3(SrcB[3]),
        .I4(SrcB[1]),
        .O(\ALUResult[30]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h88888888FFFCCCFC)) 
    \ALUResult[30]_INST_0_i_2 
       (.I0(\addressM[31] [2]),
        .I1(ALUControl[0]),
        .I2(\ALUResult[31]_INST_0_i_28_0 ),
        .I3(clk_0),
        .I4(\ALUResult[30]_INST_0_i_5_n_0 ),
        .I5(ALUControl__0),
        .O(\ALUResult[30]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFCFAFC0AFC0A0C0)) 
    \ALUResult[30]_INST_0_i_3 
       (.I0(\ALUResult[30]_INST_0_i_6_n_0 ),
        .I1(\addressM[31] [2]),
        .I2(\ALUResult[31]_INST_0_i_16_n_0 ),
        .I3(\ALUResult[31]_INST_0_i_17_n_0 ),
        .I4(clk_30),
        .I5(SrcB[30]),
        .O(\ALUResult[30]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFB800B800B800)) 
    \ALUResult[30]_INST_0_i_4 
       (.I0(Instr[28]),
        .I1(sum_carry__6_i_5_0),
        .I2(Instr[29]),
        .I3(ALUSrc),
        .I4(rd21),
        .I5(rd20[30]),
        .O(SrcB[30]));
  LUT6 #(
    .INIT(64'hFF33CC00B8B8B8B8)) 
    \ALUResult[30]_INST_0_i_5 
       (.I0(\ALUResult[31]_INST_0_i_20_n_0 ),
        .I1(SrcB[2]),
        .I2(\ALUResult[31]_INST_0_i_21_n_0 ),
        .I3(\ALUResult[30]_INST_0_i_8_n_0 ),
        .I4(\ALUResult[31]_INST_0_i_22_n_0 ),
        .I5(SrcB[1]),
        .O(\ALUResult[30]_INST_0_i_5_n_0 ));
  MUXF7 \ALUResult[30]_INST_0_i_6 
       (.I0(\ALUResult[30]_INST_0_i_9_n_0 ),
        .I1(\ALUResult[30]_INST_0_i_10_n_0 ),
        .O(\ALUResult[30]_INST_0_i_6_n_0 ),
        .S(ALUControl[0]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \ALUResult[30]_INST_0_i_8 
       (.I0(clk_15),
        .I1(SrcB[3]),
        .I2(clk_7),
        .I3(SrcB[4]),
        .I4(clk_23),
        .O(\ALUResult[30]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h000000007F778088)) 
    \ALUResult[30]_INST_0_i_9 
       (.I0(rd10[30]),
        .I1(rd11),
        .I2(Instr[3]),
        .I3(Instr[0]),
        .I4(SrcB[30]),
        .I5(ALUControl__0),
        .O(\ALUResult[30]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \ALUResult[31]_INST_0 
       (.I0(\ALUResult[31]_INST_0_i_8_0 ),
        .I1(ALUControl[1]),
        .I2(\addressM[31]_0 ),
        .I3(ALUControl[2]),
        .I4(\ALUResult[31]_INST_0_i_6_0 ),
        .O(ALUResult[30]));
  LUT4 #(
    .INIT(16'hF0BB)) 
    \ALUResult[31]_INST_0_i_1 
       (.I0(SrcB[31]),
        .I1(ALUControl[0]),
        .I2(\addressM[31] [3]),
        .I3(ALUControl__0),
        .O(\ALUResult[31]_INST_0_i_8_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \ALUResult[31]_INST_0_i_10 
       (.I0(Instr[28]),
        .I1(Instr[3]),
        .O(\c/ad/RtypeSub__0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h38)) 
    \ALUResult[31]_INST_0_i_11 
       (.I0(Instr[3]),
        .I1(Instr[0]),
        .I2(Instr[4]),
        .O(\c/ALUOp [0]));
  LUT6 #(
    .INIT(64'hB8FFB833B8CCB800)) 
    \ALUResult[31]_INST_0_i_12 
       (.I0(\ALUResult[31]_INST_0_i_20_n_0 ),
        .I1(SrcB[2]),
        .I2(\ALUResult[31]_INST_0_i_21_n_0 ),
        .I3(SrcB[1]),
        .I4(\ALUResult[31]_INST_0_i_22_n_0 ),
        .I5(\ALUResult[31]_INST_0_i_23_n_0 ),
        .O(\ALUResult[31]_INST_0_i_23_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \ALUResult[31]_INST_0_i_13 
       (.I0(\ALUResult[31]_INST_0_i_24_n_0 ),
        .I1(ALUSrc),
        .I2(rd21),
        .I3(rd20[0]),
        .O(clk_0));
  LUT6 #(
    .INIT(64'hB8FFB833B8CCB800)) 
    \ALUResult[31]_INST_0_i_14 
       (.I0(\ALUResult[31]_INST_0_i_25_n_0 ),
        .I1(SrcB[2]),
        .I2(\ALUResult[31]_INST_0_i_26_n_0 ),
        .I3(SrcB[1]),
        .I4(\ALUResult[31]_INST_0_i_27_n_0 ),
        .I5(\ALUResult[31]_INST_0_i_28_n_0 ),
        .O(\ALUResult[31]_INST_0_i_28_0 ));
  LUT6 #(
    .INIT(64'hF000F000202F2F20)) 
    \ALUResult[31]_INST_0_i_15 
       (.I0(\ALUResult[31]_INST_0_i_29_n_0 ),
        .I1(clk_0),
        .I2(ALUControl[0]),
        .I3(\ALUResult[31]_INST_0_i_18_n_0 ),
        .I4(SrcB[31]),
        .I5(ALUControl__0),
        .O(\ALUResult[31]_INST_0_i_15_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \ALUResult[31]_INST_0_i_16 
       (.I0(ALUControl[1]),
        .I1(ALUControl[0]),
        .O(\ALUResult[31]_INST_0_i_16_n_0 ));
  LUT3 #(
    .INIT(8'hEA)) 
    \ALUResult[31]_INST_0_i_17 
       (.I0(ALUControl[1]),
        .I1(ALUControl[0]),
        .I2(ALUControl__0),
        .O(\ALUResult[31]_INST_0_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h8088)) 
    \ALUResult[31]_INST_0_i_18 
       (.I0(rd10[31]),
        .I1(rd11),
        .I2(Instr[3]),
        .I3(Instr[0]),
        .O(\ALUResult[31]_INST_0_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h26449CCC)) 
    \ALUResult[31]_INST_0_i_19 
       (.I0(Instr[12]),
        .I1(Instr[11]),
        .I2(Instr[3]),
        .I3(Instr[28]),
        .I4(Instr[10]),
        .O(\ALUResult[31]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFAA00AA8200)) 
    \ALUResult[31]_INST_0_i_2 
       (.I0(\c/ALUOp [1]),
        .I1(Instr[10]),
        .I2(\c/ad/RtypeSub__0 ),
        .I3(Instr[11]),
        .I4(Instr[12]),
        .I5(\c/ALUOp [0]),
        .O(ALUControl[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[31]_INST_0_i_20 
       (.I0(clk_1),
        .I1(clk_17),
        .I2(SrcB[3]),
        .I3(clk_9),
        .I4(SrcB[4]),
        .I5(clk_25),
        .O(\ALUResult[31]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[31]_INST_0_i_21 
       (.I0(clk_5),
        .I1(clk_21),
        .I2(SrcB[3]),
        .I3(clk_13),
        .I4(SrcB[4]),
        .I5(clk_29),
        .O(\ALUResult[31]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[31]_INST_0_i_22 
       (.I0(clk_3),
        .I1(clk_19),
        .I2(SrcB[3]),
        .I3(clk_11),
        .I4(SrcB[4]),
        .I5(clk_27),
        .O(\ALUResult[31]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[31]_INST_0_i_23 
       (.I0(clk_7),
        .I1(clk_23),
        .I2(SrcB[3]),
        .I3(clk_15),
        .I4(SrcB[4]),
        .I5(\ALUResult[31]_INST_0_i_18_n_0 ),
        .O(\ALUResult[31]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h454000000000CFC0)) 
    \ALUResult[31]_INST_0_i_24 
       (.I0(Instr[1]),
        .I1(Instr[5]),
        .I2(sel0),
        .I3(Instr[18]),
        .I4(Instr[4]),
        .I5(Instr[0]),
        .O(\ALUResult[31]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[31]_INST_0_i_25 
       (.I0(\ALUResult[0]_INST_0_i_7_n_0 ),
        .I1(clk_16),
        .I2(SrcB[3]),
        .I3(clk_8),
        .I4(SrcB[4]),
        .I5(clk_24),
        .O(\ALUResult[31]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[31]_INST_0_i_26 
       (.I0(clk_4),
        .I1(clk_20),
        .I2(SrcB[3]),
        .I3(clk_12),
        .I4(SrcB[4]),
        .I5(clk_28),
        .O(\ALUResult[31]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[31]_INST_0_i_27 
       (.I0(clk_2),
        .I1(clk_18),
        .I2(SrcB[3]),
        .I3(clk_10),
        .I4(SrcB[4]),
        .I5(clk_26),
        .O(\ALUResult[31]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[31]_INST_0_i_28 
       (.I0(clk_6),
        .I1(clk_22),
        .I2(SrcB[3]),
        .I3(clk_14),
        .I4(SrcB[4]),
        .I5(clk_30),
        .O(\ALUResult[31]_INST_0_i_28_n_0 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \ALUResult[31]_INST_0_i_29 
       (.I0(SrcB[2]),
        .I1(SrcB[4]),
        .I2(\ALUResult[31]_INST_0_i_18_n_0 ),
        .I3(SrcB[3]),
        .I4(SrcB[1]),
        .O(\ALUResult[31]_INST_0_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAFEEEAAAAAAAA)) 
    \ALUResult[31]_INST_0_i_4 
       (.I0(\c/ALUOp [0]),
        .I1(Instr[10]),
        .I2(Instr[11]),
        .I3(\c/ad/RtypeSub__0 ),
        .I4(Instr[12]),
        .I5(\c/ALUOp [1]),
        .O(ALUControl[2]));
  LUT6 #(
    .INIT(64'hAFCFAFC0AFC0A0C0)) 
    \ALUResult[31]_INST_0_i_5 
       (.I0(\ALUResult[31]_INST_0_i_15_n_0 ),
        .I1(\addressM[31] [3]),
        .I2(\ALUResult[31]_INST_0_i_16_n_0 ),
        .I3(\ALUResult[31]_INST_0_i_17_n_0 ),
        .I4(\ALUResult[31]_INST_0_i_18_n_0 ),
        .I5(SrcB[31]),
        .O(\ALUResult[31]_INST_0_i_6_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \ALUResult[31]_INST_0_i_6 
       (.I0(Instr[29]),
        .I1(ALUSrc),
        .I2(rd21),
        .I3(rd20[31]),
        .O(SrcB[31]));
  LUT6 #(
    .INIT(64'hFFFCCECCCC00CCCC)) 
    \ALUResult[31]_INST_0_i_7 
       (.I0(\c/ad/RtypeSub__0 ),
        .I1(\c/ALUOp [0]),
        .I2(Instr[10]),
        .I3(Instr[11]),
        .I4(Instr[12]),
        .I5(\c/ALUOp [1]),
        .O(ALUControl[0]));
  LUT5 #(
    .INIT(32'h83380038)) 
    \ALUResult[31]_INST_0_i_8 
       (.I0(Instr[3]),
        .I1(Instr[0]),
        .I2(Instr[4]),
        .I3(Instr[2]),
        .I4(\ALUResult[31]_INST_0_i_19_n_0 ),
        .O(ALUControl__0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hA2)) 
    \ALUResult[31]_INST_0_i_9 
       (.I0(Instr[2]),
        .I1(Instr[0]),
        .I2(Instr[3]),
        .O(\c/ALUOp [1]));
  MUXF7 \ALUResult[3]_INST_0 
       (.I0(\ALUResult[3]_INST_0_i_1_n_0 ),
        .I1(\ALUResult[3]_INST_0_i_2_n_0 ),
        .O(ALUResult[2]),
        .S(ALUControl[2]));
  LUT6 #(
    .INIT(64'hAFCFAFC0AFC0A0C0)) 
    \ALUResult[3]_INST_0_i_1 
       (.I0(\ALUResult[3]_INST_0_i_3_n_0 ),
        .I1(O[3]),
        .I2(\ALUResult[31]_INST_0_i_16_n_0 ),
        .I3(\ALUResult[31]_INST_0_i_17_n_0 ),
        .I4(clk_3),
        .I5(SrcB[3]),
        .O(\ALUResult[3]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000B08)) 
    \ALUResult[3]_INST_0_i_10 
       (.I0(\ALUResult[0]_INST_0_i_7_n_0 ),
        .I1(SrcB[1]),
        .I2(SrcB[3]),
        .I3(clk_2),
        .I4(SrcB[4]),
        .I5(SrcB[2]),
        .O(\ALUResult[3]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[3]_INST_0_i_11 
       (.I0(\ALUResult[9]_INST_0_i_11_n_0 ),
        .I1(\ALUResult[5]_INST_0_i_11_n_0 ),
        .I2(SrcB[1]),
        .I3(\ALUResult[7]_INST_0_i_11_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[3]_INST_0_i_13_n_0 ),
        .O(\ALUResult[3]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[3]_INST_0_i_12 
       (.I0(\ALUResult[9]_INST_0_i_12_n_0 ),
        .I1(\ALUResult[5]_INST_0_i_11_n_0 ),
        .I2(SrcB[1]),
        .I3(\ALUResult[7]_INST_0_i_11_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[3]_INST_0_i_13_n_0 ),
        .O(\ALUResult[3]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[3]_INST_0_i_13 
       (.I0(clk_27),
        .I1(clk_11),
        .I2(SrcB[3]),
        .I3(clk_19),
        .I4(SrcB[4]),
        .I5(clk_3),
        .O(\ALUResult[3]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hF0C0F0C0BBFFBBCC)) 
    \ALUResult[3]_INST_0_i_2 
       (.I0(SrcB[3]),
        .I1(ALUControl[1]),
        .I2(O[3]),
        .I3(ALUControl[0]),
        .I4(data7[3]),
        .I5(ALUControl__0),
        .O(\ALUResult[3]_INST_0_i_2_n_0 ));
  MUXF7 \ALUResult[3]_INST_0_i_3 
       (.I0(\ALUResult[3]_INST_0_i_6_n_0 ),
        .I1(\ALUResult[3]_INST_0_i_7_n_0 ),
        .O(\ALUResult[3]_INST_0_i_3_n_0 ),
        .S(ALUControl[0]));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \ALUResult[3]_INST_0_i_4 
       (.I0(\ALUResult[3]_INST_0_i_8_n_0 ),
        .I1(\rd[6]_INST_0 ),
        .I2(\ALUResult[3]_INST_0_i_9_n_0 ),
        .I3(sum_carry__6_i_5_0),
        .I4(ALUSrc),
        .I5(WriteData[3]),
        .O(SrcB[3]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult[3]_INST_0_i_5 
       (.I0(\ALUResult[3]_INST_0_i_10_n_0 ),
        .I1(clk_0),
        .I2(\ALUResult[4]_INST_0_i_11_n_0 ),
        .O(data7[3]));
  LUT6 #(
    .INIT(64'h000000007F778088)) 
    \ALUResult[3]_INST_0_i_6 
       (.I0(rd10[3]),
        .I1(rd11),
        .I2(Instr[3]),
        .I3(Instr[0]),
        .I4(SrcB[3]),
        .I5(ALUControl__0),
        .O(\ALUResult[3]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[3]_INST_0_i_7 
       (.I0(\ALUResult[4]_INST_0_i_12_n_0 ),
        .I1(\ALUResult[3]_INST_0_i_11_n_0 ),
        .I2(ALUControl__0),
        .I3(\ALUResult[4]_INST_0_i_13_n_0 ),
        .I4(clk_0),
        .I5(\ALUResult[3]_INST_0_i_12_n_0 ),
        .O(\ALUResult[3]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hBBBABBBB888A8888)) 
    \ALUResult[3]_INST_0_i_8 
       (.I0(Instr[8]),
        .I1(Instr[1]),
        .I2(Instr[2]),
        .I3(Instr[4]),
        .I4(Instr[3]),
        .I5(Instr[21]),
        .O(\ALUResult[3]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hBBBABBBB888A8888)) 
    \ALUResult[3]_INST_0_i_9 
       (.I0(Instr[21]),
        .I1(Instr[1]),
        .I2(Instr[2]),
        .I3(Instr[4]),
        .I4(Instr[3]),
        .I5(Instr[8]),
        .O(\ALUResult[3]_INST_0_i_9_n_0 ));
  MUXF7 \ALUResult[4]_INST_0 
       (.I0(\ALUResult[4]_INST_0_i_1_n_0 ),
        .I1(\ALUResult[4]_INST_0_i_2_n_0 ),
        .O(ALUResult[3]),
        .S(ALUControl[2]));
  LUT6 #(
    .INIT(64'hAFCFAFC0AFC0A0C0)) 
    \ALUResult[4]_INST_0_i_1 
       (.I0(\ALUResult[4]_INST_0_i_3_n_0 ),
        .I1(\addressM[7] [0]),
        .I2(\ALUResult[31]_INST_0_i_16_n_0 ),
        .I3(\ALUResult[31]_INST_0_i_17_n_0 ),
        .I4(clk_4),
        .I5(SrcB[4]),
        .O(\ALUResult[4]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBBBABBBB888A8888)) 
    \ALUResult[4]_INST_0_i_10 
       (.I0(Instr[22]),
        .I1(Instr[1]),
        .I2(Instr[2]),
        .I3(Instr[4]),
        .I4(Instr[3]),
        .I5(Instr[9]),
        .O(\ALUResult[4]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000B08)) 
    \ALUResult[4]_INST_0_i_11 
       (.I0(clk_1),
        .I1(SrcB[1]),
        .I2(SrcB[3]),
        .I3(clk_3),
        .I4(SrcB[4]),
        .I5(SrcB[2]),
        .O(\ALUResult[4]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[4]_INST_0_i_12 
       (.I0(\ALUResult[10]_INST_0_i_11_n_0 ),
        .I1(\ALUResult[6]_INST_0_i_11_n_0 ),
        .I2(SrcB[1]),
        .I3(\ALUResult[8]_INST_0_i_11_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[4]_INST_0_i_14_n_0 ),
        .O(\ALUResult[4]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[4]_INST_0_i_13 
       (.I0(\ALUResult[10]_INST_0_i_12_n_0 ),
        .I1(\ALUResult[6]_INST_0_i_11_n_0 ),
        .I2(SrcB[1]),
        .I3(\ALUResult[8]_INST_0_i_12_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[4]_INST_0_i_14_n_0 ),
        .O(\ALUResult[4]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[4]_INST_0_i_14 
       (.I0(clk_28),
        .I1(clk_12),
        .I2(SrcB[3]),
        .I3(clk_20),
        .I4(SrcB[4]),
        .I5(clk_4),
        .O(\ALUResult[4]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hF0C0F0C0BBFFBBCC)) 
    \ALUResult[4]_INST_0_i_2 
       (.I0(SrcB[4]),
        .I1(ALUControl[1]),
        .I2(\addressM[7] [0]),
        .I3(ALUControl[0]),
        .I4(data7[4]),
        .I5(ALUControl__0),
        .O(\ALUResult[4]_INST_0_i_2_n_0 ));
  MUXF7 \ALUResult[4]_INST_0_i_3 
       (.I0(\ALUResult[4]_INST_0_i_6_n_0 ),
        .I1(\ALUResult[4]_INST_0_i_7_n_0 ),
        .O(\ALUResult[4]_INST_0_i_3_n_0 ),
        .S(ALUControl[0]));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \ALUResult[4]_INST_0_i_4 
       (.I0(\ALUResult[4]_INST_0_i_8_n_0 ),
        .I1(\rd[6]_INST_0 ),
        .I2(\ALUResult[4]_INST_0_i_10_n_0 ),
        .I3(sum_carry__6_i_5_0),
        .I4(ALUSrc),
        .I5(WriteData[4]),
        .O(SrcB[4]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult[4]_INST_0_i_5 
       (.I0(\ALUResult[4]_INST_0_i_11_n_0 ),
        .I1(clk_0),
        .I2(\ALUResult[5]_INST_0_i_8_n_0 ),
        .O(data7[4]));
  LUT6 #(
    .INIT(64'h000000007F778088)) 
    \ALUResult[4]_INST_0_i_6 
       (.I0(rd10[4]),
        .I1(rd11),
        .I2(Instr[3]),
        .I3(Instr[0]),
        .I4(SrcB[4]),
        .I5(ALUControl__0),
        .O(\ALUResult[4]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[4]_INST_0_i_7 
       (.I0(\ALUResult[5]_INST_0_i_9_n_0 ),
        .I1(\ALUResult[4]_INST_0_i_12_n_0 ),
        .I2(ALUControl__0),
        .I3(\ALUResult[5]_INST_0_i_10_n_0 ),
        .I4(clk_0),
        .I5(\ALUResult[4]_INST_0_i_13_n_0 ),
        .O(\ALUResult[4]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hBBBABBBB888A8888)) 
    \ALUResult[4]_INST_0_i_8 
       (.I0(Instr[9]),
        .I1(Instr[1]),
        .I2(Instr[2]),
        .I3(Instr[4]),
        .I4(Instr[3]),
        .I5(Instr[22]),
        .O(\ALUResult[4]_INST_0_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult[4]_INST_0_i_9 
       (.I0(Instr[1]),
        .I1(Instr[0]),
        .I2(Instr[4]),
        .O(\rd[6]_INST_0 ));
  MUXF7 \ALUResult[5]_INST_0 
       (.I0(\ALUResult[5]_INST_0_i_1_n_0 ),
        .I1(\ALUResult[5]_INST_0_i_2_n_0 ),
        .O(ALUResult[4]),
        .S(ALUControl[2]));
  LUT6 #(
    .INIT(64'hAFCFAFC0AFC0A0C0)) 
    \ALUResult[5]_INST_0_i_1 
       (.I0(\ALUResult[5]_INST_0_i_3_n_0 ),
        .I1(\addressM[7] [1]),
        .I2(\ALUResult[31]_INST_0_i_16_n_0 ),
        .I3(\ALUResult[31]_INST_0_i_17_n_0 ),
        .I4(clk_5),
        .I5(SrcB[5]),
        .O(\ALUResult[5]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[5]_INST_0_i_10 
       (.I0(\ALUResult[11]_INST_0_i_13_n_0 ),
        .I1(\ALUResult[7]_INST_0_i_11_n_0 ),
        .I2(SrcB[1]),
        .I3(\ALUResult[9]_INST_0_i_12_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[5]_INST_0_i_11_n_0 ),
        .O(\ALUResult[5]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[5]_INST_0_i_11 
       (.I0(clk_29),
        .I1(clk_13),
        .I2(SrcB[3]),
        .I3(clk_21),
        .I4(SrcB[4]),
        .I5(clk_5),
        .O(\ALUResult[5]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hF0C0F0C0BBFFBBCC)) 
    \ALUResult[5]_INST_0_i_2 
       (.I0(SrcB[5]),
        .I1(ALUControl[1]),
        .I2(\addressM[7] [1]),
        .I3(ALUControl[0]),
        .I4(data7[5]),
        .I5(ALUControl__0),
        .O(\ALUResult[5]_INST_0_i_2_n_0 ));
  MUXF7 \ALUResult[5]_INST_0_i_3 
       (.I0(\ALUResult[5]_INST_0_i_6_n_0 ),
        .I1(\ALUResult[5]_INST_0_i_7_n_0 ),
        .O(\ALUResult[5]_INST_0_i_3_n_0 ),
        .S(ALUControl[0]));
  LUT6 #(
    .INIT(64'h8AFF8A008A008A00)) 
    \ALUResult[5]_INST_0_i_4 
       (.I0(Instr[23]),
        .I1(Instr[4]),
        .I2(Instr[0]),
        .I3(ALUSrc),
        .I4(rd21),
        .I5(rd20[5]),
        .O(SrcB[5]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult[5]_INST_0_i_5 
       (.I0(\ALUResult[5]_INST_0_i_8_n_0 ),
        .I1(clk_0),
        .I2(\ALUResult[6]_INST_0_i_8_n_0 ),
        .O(data7[5]));
  LUT6 #(
    .INIT(64'h000000007F778088)) 
    \ALUResult[5]_INST_0_i_6 
       (.I0(rd10[5]),
        .I1(rd11),
        .I2(Instr[3]),
        .I3(Instr[0]),
        .I4(SrcB[5]),
        .I5(ALUControl__0),
        .O(\ALUResult[5]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[5]_INST_0_i_7 
       (.I0(\ALUResult[6]_INST_0_i_9_n_0 ),
        .I1(\ALUResult[5]_INST_0_i_9_n_0 ),
        .I2(ALUControl__0),
        .I3(\ALUResult[6]_INST_0_i_10_n_0 ),
        .I4(clk_0),
        .I5(\ALUResult[5]_INST_0_i_10_n_0 ),
        .O(\ALUResult[5]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0004FFFF00040000)) 
    \ALUResult[5]_INST_0_i_8 
       (.I0(SrcB[3]),
        .I1(clk_2),
        .I2(SrcB[4]),
        .I3(SrcB[2]),
        .I4(SrcB[1]),
        .I5(\ALUResult[7]_INST_0_i_8_n_0 ),
        .O(\ALUResult[5]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[5]_INST_0_i_9 
       (.I0(\ALUResult[11]_INST_0_i_12_n_0 ),
        .I1(\ALUResult[7]_INST_0_i_11_n_0 ),
        .I2(SrcB[1]),
        .I3(\ALUResult[9]_INST_0_i_11_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[5]_INST_0_i_11_n_0 ),
        .O(\ALUResult[5]_INST_0_i_9_n_0 ));
  MUXF7 \ALUResult[6]_INST_0 
       (.I0(\ALUResult[6]_INST_0_i_1_n_0 ),
        .I1(\ALUResult[6]_INST_0_i_2_n_0 ),
        .O(ALUResult[5]),
        .S(ALUControl[2]));
  LUT6 #(
    .INIT(64'hAFCFAFC0AFC0A0C0)) 
    \ALUResult[6]_INST_0_i_1 
       (.I0(\ALUResult[6]_INST_0_i_3_n_0 ),
        .I1(\addressM[7] [2]),
        .I2(\ALUResult[31]_INST_0_i_16_n_0 ),
        .I3(\ALUResult[31]_INST_0_i_17_n_0 ),
        .I4(clk_6),
        .I5(SrcB[6]),
        .O(\ALUResult[6]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[6]_INST_0_i_10 
       (.I0(\ALUResult[12]_INST_0_i_14_n_0 ),
        .I1(\ALUResult[8]_INST_0_i_12_n_0 ),
        .I2(SrcB[1]),
        .I3(\ALUResult[10]_INST_0_i_12_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[6]_INST_0_i_11_n_0 ),
        .O(\ALUResult[6]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[6]_INST_0_i_11 
       (.I0(clk_30),
        .I1(clk_14),
        .I2(SrcB[3]),
        .I3(clk_22),
        .I4(SrcB[4]),
        .I5(clk_6),
        .O(\ALUResult[6]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hF0C0F0C0BBFFBBCC)) 
    \ALUResult[6]_INST_0_i_2 
       (.I0(SrcB[6]),
        .I1(ALUControl[1]),
        .I2(\addressM[7] [2]),
        .I3(ALUControl[0]),
        .I4(data7[6]),
        .I5(ALUControl__0),
        .O(\ALUResult[6]_INST_0_i_2_n_0 ));
  MUXF7 \ALUResult[6]_INST_0_i_3 
       (.I0(\ALUResult[6]_INST_0_i_6_n_0 ),
        .I1(\ALUResult[6]_INST_0_i_7_n_0 ),
        .O(\ALUResult[6]_INST_0_i_3_n_0 ),
        .S(ALUControl[0]));
  LUT6 #(
    .INIT(64'h8AFF8A008A008A00)) 
    \ALUResult[6]_INST_0_i_4 
       (.I0(Instr[24]),
        .I1(Instr[4]),
        .I2(Instr[0]),
        .I3(ALUSrc),
        .I4(rd21),
        .I5(rd20[6]),
        .O(SrcB[6]));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \ALUResult[6]_INST_0_i_5 
       (.I0(\ALUResult[7]_INST_0_i_8_n_0 ),
        .I1(SrcB[1]),
        .I2(\ALUResult[9]_INST_0_i_8_n_0 ),
        .I3(\ALUResult[6]_INST_0_i_8_n_0 ),
        .I4(clk_0),
        .O(data7[6]));
  LUT6 #(
    .INIT(64'h000000007F778088)) 
    \ALUResult[6]_INST_0_i_6 
       (.I0(rd10[6]),
        .I1(rd11),
        .I2(Instr[3]),
        .I3(Instr[0]),
        .I4(SrcB[6]),
        .I5(ALUControl__0),
        .O(\ALUResult[6]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[6]_INST_0_i_7 
       (.I0(\ALUResult[7]_INST_0_i_9_n_0 ),
        .I1(\ALUResult[6]_INST_0_i_9_n_0 ),
        .I2(ALUControl__0),
        .I3(\ALUResult[7]_INST_0_i_10_n_0 ),
        .I4(clk_0),
        .I5(\ALUResult[6]_INST_0_i_10_n_0 ),
        .O(\ALUResult[6]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0004FFFF00040000)) 
    \ALUResult[6]_INST_0_i_8 
       (.I0(SrcB[3]),
        .I1(clk_3),
        .I2(SrcB[4]),
        .I3(SrcB[2]),
        .I4(SrcB[1]),
        .I5(\ALUResult[8]_INST_0_i_8_n_0 ),
        .O(\ALUResult[6]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[6]_INST_0_i_9 
       (.I0(\ALUResult[12]_INST_0_i_13_n_0 ),
        .I1(\ALUResult[8]_INST_0_i_11_n_0 ),
        .I2(SrcB[1]),
        .I3(\ALUResult[10]_INST_0_i_11_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[6]_INST_0_i_11_n_0 ),
        .O(\ALUResult[6]_INST_0_i_9_n_0 ));
  MUXF7 \ALUResult[7]_INST_0 
       (.I0(\ALUResult[7]_INST_0_i_1_n_0 ),
        .I1(\ALUResult[7]_INST_0_i_2_n_0 ),
        .O(ALUResult[6]),
        .S(ALUControl[2]));
  LUT6 #(
    .INIT(64'hAFCFAFC0AFC0A0C0)) 
    \ALUResult[7]_INST_0_i_1 
       (.I0(\ALUResult[7]_INST_0_i_3_n_0 ),
        .I1(\addressM[7] [3]),
        .I2(\ALUResult[31]_INST_0_i_16_n_0 ),
        .I3(\ALUResult[31]_INST_0_i_17_n_0 ),
        .I4(clk_7),
        .I5(SrcB[7]),
        .O(\ALUResult[7]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[7]_INST_0_i_10 
       (.I0(\ALUResult[13]_INST_0_i_14_n_0 ),
        .I1(\ALUResult[9]_INST_0_i_12_n_0 ),
        .I2(SrcB[1]),
        .I3(\ALUResult[11]_INST_0_i_13_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[7]_INST_0_i_11_n_0 ),
        .O(\ALUResult[7]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[7]_INST_0_i_11 
       (.I0(\ALUResult[31]_INST_0_i_18_n_0 ),
        .I1(clk_15),
        .I2(SrcB[3]),
        .I3(clk_23),
        .I4(SrcB[4]),
        .I5(clk_7),
        .O(\ALUResult[7]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hF0C0F0C0BBFFBBCC)) 
    \ALUResult[7]_INST_0_i_2 
       (.I0(SrcB[7]),
        .I1(ALUControl[1]),
        .I2(\addressM[7] [3]),
        .I3(ALUControl[0]),
        .I4(data7[7]),
        .I5(ALUControl__0),
        .O(\ALUResult[7]_INST_0_i_2_n_0 ));
  MUXF7 \ALUResult[7]_INST_0_i_3 
       (.I0(\ALUResult[7]_INST_0_i_6_n_0 ),
        .I1(\ALUResult[7]_INST_0_i_7_n_0 ),
        .O(\ALUResult[7]_INST_0_i_3_n_0 ),
        .S(ALUControl[0]));
  LUT6 #(
    .INIT(64'h8AFF8A008A008A00)) 
    \ALUResult[7]_INST_0_i_4 
       (.I0(Instr[25]),
        .I1(Instr[4]),
        .I2(Instr[0]),
        .I3(ALUSrc),
        .I4(rd21),
        .I5(rd20[7]),
        .O(SrcB[7]));
  LUT6 #(
    .INIT(64'hFF33CC00B8B8B8B8)) 
    \ALUResult[7]_INST_0_i_5 
       (.I0(\ALUResult[8]_INST_0_i_8_n_0 ),
        .I1(SrcB[1]),
        .I2(\ALUResult[10]_INST_0_i_8_n_0 ),
        .I3(\ALUResult[7]_INST_0_i_8_n_0 ),
        .I4(\ALUResult[9]_INST_0_i_8_n_0 ),
        .I5(clk_0),
        .O(data7[7]));
  LUT6 #(
    .INIT(64'h000000007F778088)) 
    \ALUResult[7]_INST_0_i_6 
       (.I0(rd10[7]),
        .I1(rd11),
        .I2(Instr[3]),
        .I3(Instr[0]),
        .I4(SrcB[7]),
        .I5(ALUControl__0),
        .O(\ALUResult[7]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[7]_INST_0_i_7 
       (.I0(\ALUResult[8]_INST_0_i_9_n_0 ),
        .I1(\ALUResult[7]_INST_0_i_9_n_0 ),
        .I2(ALUControl__0),
        .I3(\ALUResult[8]_INST_0_i_10_n_0 ),
        .I4(clk_0),
        .I5(\ALUResult[7]_INST_0_i_10_n_0 ),
        .O(\ALUResult[7]_INST_0_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \ALUResult[7]_INST_0_i_8 
       (.I0(\ALUResult[0]_INST_0_i_7_n_0 ),
        .I1(SrcB[2]),
        .I2(SrcB[4]),
        .I3(clk_4),
        .I4(SrcB[3]),
        .O(\ALUResult[7]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[7]_INST_0_i_9 
       (.I0(\ALUResult[13]_INST_0_i_13_n_0 ),
        .I1(\ALUResult[9]_INST_0_i_11_n_0 ),
        .I2(SrcB[1]),
        .I3(\ALUResult[11]_INST_0_i_12_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[7]_INST_0_i_11_n_0 ),
        .O(\ALUResult[7]_INST_0_i_9_n_0 ));
  MUXF7 \ALUResult[8]_INST_0 
       (.I0(\ALUResult[8]_INST_0_i_1_n_0 ),
        .I1(\ALUResult[8]_INST_0_i_2_n_0 ),
        .O(ALUResult[7]),
        .S(ALUControl[2]));
  LUT6 #(
    .INIT(64'hAFCFAFC0AFC0A0C0)) 
    \ALUResult[8]_INST_0_i_1 
       (.I0(\ALUResult[8]_INST_0_i_3_n_0 ),
        .I1(\addressM[11] [0]),
        .I2(\ALUResult[31]_INST_0_i_16_n_0 ),
        .I3(\ALUResult[31]_INST_0_i_17_n_0 ),
        .I4(clk_8),
        .I5(SrcB[8]),
        .O(\ALUResult[8]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[8]_INST_0_i_10 
       (.I0(\ALUResult[14]_INST_0_i_14_n_0 ),
        .I1(\ALUResult[10]_INST_0_i_12_n_0 ),
        .I2(SrcB[1]),
        .I3(\ALUResult[12]_INST_0_i_14_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[8]_INST_0_i_12_n_0 ),
        .O(\ALUResult[8]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[8]_INST_0_i_11 
       (.I0(\ALUResult[31]_INST_0_i_18_n_0 ),
        .I1(clk_16),
        .I2(SrcB[3]),
        .I3(clk_24),
        .I4(SrcB[4]),
        .I5(clk_8),
        .O(\ALUResult[8]_INST_0_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \ALUResult[8]_INST_0_i_12 
       (.I0(clk_16),
        .I1(SrcB[3]),
        .I2(clk_24),
        .I3(SrcB[4]),
        .I4(clk_8),
        .O(\ALUResult[8]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hF0C0F0C0BBFFBBCC)) 
    \ALUResult[8]_INST_0_i_2 
       (.I0(SrcB[8]),
        .I1(ALUControl[1]),
        .I2(\addressM[11] [0]),
        .I3(ALUControl[0]),
        .I4(data7[8]),
        .I5(ALUControl__0),
        .O(\ALUResult[8]_INST_0_i_2_n_0 ));
  MUXF7 \ALUResult[8]_INST_0_i_3 
       (.I0(\ALUResult[8]_INST_0_i_6_n_0 ),
        .I1(\ALUResult[8]_INST_0_i_7_n_0 ),
        .O(\ALUResult[8]_INST_0_i_3_n_0 ),
        .S(ALUControl[0]));
  LUT6 #(
    .INIT(64'h8AFF8A008A008A00)) 
    \ALUResult[8]_INST_0_i_4 
       (.I0(Instr[26]),
        .I1(Instr[4]),
        .I2(Instr[0]),
        .I3(ALUSrc),
        .I4(rd21),
        .I5(rd20[8]),
        .O(SrcB[8]));
  LUT6 #(
    .INIT(64'hFF33CC00B8B8B8B8)) 
    \ALUResult[8]_INST_0_i_5 
       (.I0(\ALUResult[9]_INST_0_i_8_n_0 ),
        .I1(SrcB[1]),
        .I2(\ALUResult[11]_INST_0_i_9_n_0 ),
        .I3(\ALUResult[8]_INST_0_i_8_n_0 ),
        .I4(\ALUResult[10]_INST_0_i_8_n_0 ),
        .I5(clk_0),
        .O(data7[8]));
  LUT6 #(
    .INIT(64'h000000007F778088)) 
    \ALUResult[8]_INST_0_i_6 
       (.I0(rd10[8]),
        .I1(rd11),
        .I2(Instr[3]),
        .I3(Instr[0]),
        .I4(SrcB[8]),
        .I5(ALUControl__0),
        .O(\ALUResult[8]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[8]_INST_0_i_7 
       (.I0(\ALUResult[9]_INST_0_i_9_n_0 ),
        .I1(\ALUResult[8]_INST_0_i_9_n_0 ),
        .I2(ALUControl__0),
        .I3(\ALUResult[9]_INST_0_i_10_n_0 ),
        .I4(clk_0),
        .I5(\ALUResult[8]_INST_0_i_10_n_0 ),
        .O(\ALUResult[8]_INST_0_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \ALUResult[8]_INST_0_i_8 
       (.I0(clk_1),
        .I1(SrcB[2]),
        .I2(SrcB[4]),
        .I3(clk_5),
        .I4(SrcB[3]),
        .O(\ALUResult[8]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[8]_INST_0_i_9 
       (.I0(\ALUResult[14]_INST_0_i_13_n_0 ),
        .I1(\ALUResult[10]_INST_0_i_11_n_0 ),
        .I2(SrcB[1]),
        .I3(\ALUResult[12]_INST_0_i_13_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[8]_INST_0_i_11_n_0 ),
        .O(\ALUResult[8]_INST_0_i_9_n_0 ));
  MUXF7 \ALUResult[9]_INST_0 
       (.I0(\ALUResult[9]_INST_0_i_1_n_0 ),
        .I1(\ALUResult[9]_INST_0_i_2_n_0 ),
        .O(ALUResult[8]),
        .S(ALUControl[2]));
  LUT6 #(
    .INIT(64'hAFCFAFC0AFC0A0C0)) 
    \ALUResult[9]_INST_0_i_1 
       (.I0(\ALUResult[9]_INST_0_i_3_n_0 ),
        .I1(\addressM[11] [1]),
        .I2(\ALUResult[31]_INST_0_i_16_n_0 ),
        .I3(\ALUResult[31]_INST_0_i_17_n_0 ),
        .I4(clk_9),
        .I5(SrcB[9]),
        .O(\ALUResult[9]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[9]_INST_0_i_10 
       (.I0(\ALUResult[15]_INST_0_i_15_n_0 ),
        .I1(\ALUResult[11]_INST_0_i_13_n_0 ),
        .I2(SrcB[1]),
        .I3(\ALUResult[13]_INST_0_i_14_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[9]_INST_0_i_12_n_0 ),
        .O(\ALUResult[9]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[9]_INST_0_i_11 
       (.I0(\ALUResult[31]_INST_0_i_18_n_0 ),
        .I1(clk_17),
        .I2(SrcB[3]),
        .I3(clk_25),
        .I4(SrcB[4]),
        .I5(clk_9),
        .O(\ALUResult[9]_INST_0_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \ALUResult[9]_INST_0_i_12 
       (.I0(clk_17),
        .I1(SrcB[3]),
        .I2(clk_25),
        .I3(SrcB[4]),
        .I4(clk_9),
        .O(\ALUResult[9]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hF0C0F0C0BBFFBBCC)) 
    \ALUResult[9]_INST_0_i_2 
       (.I0(SrcB[9]),
        .I1(ALUControl[1]),
        .I2(\addressM[11] [1]),
        .I3(ALUControl[0]),
        .I4(data7[9]),
        .I5(ALUControl__0),
        .O(\ALUResult[9]_INST_0_i_2_n_0 ));
  MUXF7 \ALUResult[9]_INST_0_i_3 
       (.I0(\ALUResult[9]_INST_0_i_6_n_0 ),
        .I1(\ALUResult[9]_INST_0_i_7_n_0 ),
        .O(\ALUResult[9]_INST_0_i_3_n_0 ),
        .S(ALUControl[0]));
  LUT6 #(
    .INIT(64'h8AFF8A008A008A00)) 
    \ALUResult[9]_INST_0_i_4 
       (.I0(Instr[27]),
        .I1(Instr[4]),
        .I2(Instr[0]),
        .I3(ALUSrc),
        .I4(rd21),
        .I5(rd20[9]),
        .O(SrcB[9]));
  LUT6 #(
    .INIT(64'hFF33CC00B8B8B8B8)) 
    \ALUResult[9]_INST_0_i_5 
       (.I0(\ALUResult[10]_INST_0_i_8_n_0 ),
        .I1(SrcB[1]),
        .I2(\ALUResult[12]_INST_0_i_8_n_0 ),
        .I3(\ALUResult[9]_INST_0_i_8_n_0 ),
        .I4(\ALUResult[11]_INST_0_i_9_n_0 ),
        .I5(clk_0),
        .O(data7[9]));
  LUT6 #(
    .INIT(64'h000000007F778088)) 
    \ALUResult[9]_INST_0_i_6 
       (.I0(rd10[9]),
        .I1(rd11),
        .I2(Instr[3]),
        .I3(Instr[0]),
        .I4(SrcB[9]),
        .I5(ALUControl__0),
        .O(\ALUResult[9]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[9]_INST_0_i_7 
       (.I0(\ALUResult[10]_INST_0_i_9_n_0 ),
        .I1(\ALUResult[9]_INST_0_i_9_n_0 ),
        .I2(ALUControl__0),
        .I3(\ALUResult[10]_INST_0_i_10_n_0 ),
        .I4(clk_0),
        .I5(\ALUResult[9]_INST_0_i_10_n_0 ),
        .O(\ALUResult[9]_INST_0_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \ALUResult[9]_INST_0_i_8 
       (.I0(clk_2),
        .I1(SrcB[2]),
        .I2(SrcB[4]),
        .I3(clk_6),
        .I4(SrcB[3]),
        .O(\ALUResult[9]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[9]_INST_0_i_9 
       (.I0(\ALUResult[15]_INST_0_i_14_n_0 ),
        .I1(\ALUResult[11]_INST_0_i_12_n_0 ),
        .I2(SrcB[1]),
        .I3(\ALUResult[13]_INST_0_i_13_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[9]_INST_0_i_11_n_0 ),
        .O(\ALUResult[9]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \WriteData[0]_INST_0 
       (.I0(Instr[22]),
        .I1(Instr[21]),
        .I2(Instr[19]),
        .I3(Instr[18]),
        .I4(Instr[20]),
        .I5(rd20[0]),
        .O(WriteData[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \WriteData[10]_INST_0 
       (.I0(Instr[22]),
        .I1(Instr[21]),
        .I2(Instr[19]),
        .I3(Instr[18]),
        .I4(Instr[20]),
        .I5(rd20[10]),
        .O(WriteData[10]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \WriteData[11]_INST_0 
       (.I0(Instr[22]),
        .I1(Instr[21]),
        .I2(Instr[19]),
        .I3(Instr[18]),
        .I4(Instr[20]),
        .I5(rd20[11]),
        .O(WriteData[11]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \WriteData[12]_INST_0 
       (.I0(Instr[22]),
        .I1(Instr[21]),
        .I2(Instr[19]),
        .I3(Instr[18]),
        .I4(Instr[20]),
        .I5(rd20[12]),
        .O(WriteData[12]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \WriteData[13]_INST_0 
       (.I0(Instr[22]),
        .I1(Instr[21]),
        .I2(Instr[19]),
        .I3(Instr[18]),
        .I4(Instr[20]),
        .I5(rd20[13]),
        .O(WriteData[13]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \WriteData[14]_INST_0 
       (.I0(Instr[22]),
        .I1(Instr[21]),
        .I2(Instr[19]),
        .I3(Instr[18]),
        .I4(Instr[20]),
        .I5(rd20[14]),
        .O(WriteData[14]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \WriteData[15]_INST_0 
       (.I0(Instr[22]),
        .I1(Instr[21]),
        .I2(Instr[19]),
        .I3(Instr[18]),
        .I4(Instr[20]),
        .I5(rd20[15]),
        .O(WriteData[15]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \WriteData[16]_INST_0 
       (.I0(Instr[22]),
        .I1(Instr[21]),
        .I2(Instr[19]),
        .I3(Instr[18]),
        .I4(Instr[20]),
        .I5(rd20[16]),
        .O(WriteData[16]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \WriteData[17]_INST_0 
       (.I0(Instr[22]),
        .I1(Instr[21]),
        .I2(Instr[19]),
        .I3(Instr[18]),
        .I4(Instr[20]),
        .I5(rd20[17]),
        .O(WriteData[17]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \WriteData[18]_INST_0 
       (.I0(Instr[22]),
        .I1(Instr[21]),
        .I2(Instr[19]),
        .I3(Instr[18]),
        .I4(Instr[20]),
        .I5(rd20[18]),
        .O(WriteData[18]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \WriteData[19]_INST_0 
       (.I0(Instr[22]),
        .I1(Instr[21]),
        .I2(Instr[19]),
        .I3(Instr[18]),
        .I4(Instr[20]),
        .I5(rd20[19]),
        .O(WriteData[19]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \WriteData[1]_INST_0 
       (.I0(Instr[22]),
        .I1(Instr[21]),
        .I2(Instr[19]),
        .I3(Instr[18]),
        .I4(Instr[20]),
        .I5(rd20[1]),
        .O(WriteData[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \WriteData[20]_INST_0 
       (.I0(Instr[22]),
        .I1(Instr[21]),
        .I2(Instr[19]),
        .I3(Instr[18]),
        .I4(Instr[20]),
        .I5(rd20[20]),
        .O(WriteData[20]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \WriteData[21]_INST_0 
       (.I0(Instr[22]),
        .I1(Instr[21]),
        .I2(Instr[19]),
        .I3(Instr[18]),
        .I4(Instr[20]),
        .I5(rd20[21]),
        .O(WriteData[21]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \WriteData[22]_INST_0 
       (.I0(Instr[22]),
        .I1(Instr[21]),
        .I2(Instr[19]),
        .I3(Instr[18]),
        .I4(Instr[20]),
        .I5(rd20[22]),
        .O(WriteData[22]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \WriteData[23]_INST_0 
       (.I0(Instr[22]),
        .I1(Instr[21]),
        .I2(Instr[19]),
        .I3(Instr[18]),
        .I4(Instr[20]),
        .I5(rd20[23]),
        .O(WriteData[23]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \WriteData[24]_INST_0 
       (.I0(Instr[22]),
        .I1(Instr[21]),
        .I2(Instr[19]),
        .I3(Instr[18]),
        .I4(Instr[20]),
        .I5(rd20[24]),
        .O(WriteData[24]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \WriteData[25]_INST_0 
       (.I0(Instr[22]),
        .I1(Instr[21]),
        .I2(Instr[19]),
        .I3(Instr[18]),
        .I4(Instr[20]),
        .I5(rd20[25]),
        .O(WriteData[25]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \WriteData[26]_INST_0 
       (.I0(Instr[22]),
        .I1(Instr[21]),
        .I2(Instr[19]),
        .I3(Instr[18]),
        .I4(Instr[20]),
        .I5(rd20[26]),
        .O(WriteData[26]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \WriteData[27]_INST_0 
       (.I0(Instr[22]),
        .I1(Instr[21]),
        .I2(Instr[19]),
        .I3(Instr[18]),
        .I4(Instr[20]),
        .I5(rd20[27]),
        .O(WriteData[27]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \WriteData[28]_INST_0 
       (.I0(Instr[22]),
        .I1(Instr[21]),
        .I2(Instr[19]),
        .I3(Instr[18]),
        .I4(Instr[20]),
        .I5(rd20[28]),
        .O(WriteData[28]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \WriteData[29]_INST_0 
       (.I0(Instr[22]),
        .I1(Instr[21]),
        .I2(Instr[19]),
        .I3(Instr[18]),
        .I4(Instr[20]),
        .I5(rd20[29]),
        .O(WriteData[29]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \WriteData[2]_INST_0 
       (.I0(Instr[22]),
        .I1(Instr[21]),
        .I2(Instr[19]),
        .I3(Instr[18]),
        .I4(Instr[20]),
        .I5(rd20[2]),
        .O(WriteData[2]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \WriteData[30]_INST_0 
       (.I0(Instr[22]),
        .I1(Instr[21]),
        .I2(Instr[19]),
        .I3(Instr[18]),
        .I4(Instr[20]),
        .I5(rd20[30]),
        .O(WriteData[30]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \WriteData[31]_INST_0 
       (.I0(Instr[22]),
        .I1(Instr[21]),
        .I2(Instr[19]),
        .I3(Instr[18]),
        .I4(Instr[20]),
        .I5(rd20[31]),
        .O(WriteData[31]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \WriteData[3]_INST_0 
       (.I0(Instr[22]),
        .I1(Instr[21]),
        .I2(Instr[19]),
        .I3(Instr[18]),
        .I4(Instr[20]),
        .I5(rd20[3]),
        .O(WriteData[3]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \WriteData[4]_INST_0 
       (.I0(Instr[22]),
        .I1(Instr[21]),
        .I2(Instr[19]),
        .I3(Instr[18]),
        .I4(Instr[20]),
        .I5(rd20[4]),
        .O(WriteData[4]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \WriteData[5]_INST_0 
       (.I0(Instr[22]),
        .I1(Instr[21]),
        .I2(Instr[19]),
        .I3(Instr[18]),
        .I4(Instr[20]),
        .I5(rd20[5]),
        .O(WriteData[5]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \WriteData[6]_INST_0 
       (.I0(Instr[22]),
        .I1(Instr[21]),
        .I2(Instr[19]),
        .I3(Instr[18]),
        .I4(Instr[20]),
        .I5(rd20[6]),
        .O(WriteData[6]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \WriteData[7]_INST_0 
       (.I0(Instr[22]),
        .I1(Instr[21]),
        .I2(Instr[19]),
        .I3(Instr[18]),
        .I4(Instr[20]),
        .I5(rd20[7]),
        .O(WriteData[7]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \WriteData[8]_INST_0 
       (.I0(Instr[22]),
        .I1(Instr[21]),
        .I2(Instr[19]),
        .I3(Instr[18]),
        .I4(Instr[20]),
        .I5(rd20[8]),
        .O(WriteData[8]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \WriteData[9]_INST_0 
       (.I0(Instr[22]),
        .I1(Instr[21]),
        .I2(Instr[19]),
        .I3(Instr[18]),
        .I4(Instr[20]),
        .I5(rd20[9]),
        .O(WriteData[9]));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "dp/rf/rf_reg_r1_0_31_0_5" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "5" *) 
  RAM32M rf_reg_r1_0_31_0_5
       (.ADDRA(Instr[17:13]),
        .ADDRB(Instr[17:13]),
        .ADDRC(Instr[17:13]),
        .ADDRD(Instr[9:5]),
        .DIA({rf_reg_r1_0_31_0_5_i_2_n_0,\writeDataM[1] }),
        .DIB({rf_reg_r1_0_31_0_5_i_4_n_0,wd3}),
        .DIC({rf_reg_r1_0_31_0_5_i_6_n_0,rf_reg_r1_0_31_0_5_i_7_n_0}),
        .DID({1'b0,1'b0}),
        .DOA(rd10[1:0]),
        .DOB(rd10[3:2]),
        .DOC(rd10[5:4]),
        .DOD(NLW_rf_reg_r1_0_31_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(we3));
  LUT3 #(
    .INIT(8'hFD)) 
    rf_reg_r1_0_31_0_5_i_1
       (.I0(Instr[3]),
        .I1(Instr[0]),
        .I2(Instr[2]),
        .O(we3));
  LUT6 #(
    .INIT(64'h00000000FFE200E2)) 
    rf_reg_r1_0_31_0_5_i_2
       (.I0(\ALUResult[1]_INST_0_i_1_n_0 ),
        .I1(ALUControl[2]),
        .I2(\ALUResult[1]_INST_0_i_2_n_0 ),
        .I3(s),
        .I4(ReadData[0]),
        .I5(Jump),
        .O(rf_reg_r1_0_31_0_5_i_2_n_0));
  LUT6 #(
    .INIT(64'h00000000FFE200E2)) 
    rf_reg_r1_0_31_0_5_i_4
       (.I0(\ALUResult[3]_INST_0_i_1_n_0 ),
        .I1(ALUControl[2]),
        .I2(\ALUResult[3]_INST_0_i_2_n_0 ),
        .I3(s),
        .I4(ReadData[2]),
        .I5(Jump),
        .O(rf_reg_r1_0_31_0_5_i_4_n_0));
  LUT6 #(
    .INIT(64'hFFFFFEAEAAAAFEAE)) 
    rf_reg_r1_0_31_0_5_i_5
       (.I0(Jump),
        .I1(\ALUResult[2]_INST_0_i_1_n_0 ),
        .I2(ALUControl[2]),
        .I3(\ALUResult[2]_INST_0_i_2_n_0 ),
        .I4(s),
        .I5(ReadData[1]),
        .O(wd3));
  LUT6 #(
    .INIT(64'h00000000FFE200E2)) 
    rf_reg_r1_0_31_0_5_i_6
       (.I0(\ALUResult[5]_INST_0_i_1_n_0 ),
        .I1(ALUControl[2]),
        .I2(\ALUResult[5]_INST_0_i_2_n_0 ),
        .I3(s),
        .I4(ReadData[4]),
        .I5(Jump),
        .O(rf_reg_r1_0_31_0_5_i_6_n_0));
  LUT6 #(
    .INIT(64'h00000000FFE200E2)) 
    rf_reg_r1_0_31_0_5_i_7
       (.I0(\ALUResult[4]_INST_0_i_1_n_0 ),
        .I1(ALUControl[2]),
        .I2(\ALUResult[4]_INST_0_i_2_n_0 ),
        .I3(s),
        .I4(ReadData[3]),
        .I5(Jump),
        .O(rf_reg_r1_0_31_0_5_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    rf_reg_r1_0_31_0_5_i_8
       (.I0(Instr[2]),
        .I1(Instr[3]),
        .O(s));
  LUT2 #(
    .INIT(4'h8)) 
    rf_reg_r1_0_31_0_5_i_9
       (.I0(Instr[0]),
        .I1(Instr[4]),
        .O(Jump));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "dp/rf/rf_reg_r1_0_31_12_17" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "17" *) 
  RAM32M rf_reg_r1_0_31_12_17
       (.ADDRA(Instr[17:13]),
        .ADDRB(Instr[17:13]),
        .ADDRC(Instr[17:13]),
        .ADDRD(Instr[9:5]),
        .DIA({rf_reg_r1_0_31_12_17_i_1_n_0,rf_reg_r1_0_31_12_17_i_2_n_0}),
        .DIB({rf_reg_r1_0_31_12_17_i_3_n_0,rf_reg_r1_0_31_12_17_i_4_n_0}),
        .DIC({rf_reg_r1_0_31_12_17_i_5_n_0,rf_reg_r1_0_31_12_17_i_6_n_0}),
        .DID({1'b0,1'b0}),
        .DOA(rd10[13:12]),
        .DOB(rd10[15:14]),
        .DOC(rd10[17:16]),
        .DOD(NLW_rf_reg_r1_0_31_12_17_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(we3));
  LUT6 #(
    .INIT(64'h00000000FFE200E2)) 
    rf_reg_r1_0_31_12_17_i_1
       (.I0(\ALUResult[13]_INST_0_i_3_n_0 ),
        .I1(ALUControl[2]),
        .I2(rf_reg_r1_0_31_12_17_i_7_n_0),
        .I3(s),
        .I4(ReadData[12]),
        .I5(Jump),
        .O(rf_reg_r1_0_31_12_17_i_1_n_0));
  MUXF7 rf_reg_r1_0_31_12_17_i_10
       (.I0(\ALUResult[14]_INST_0_i_2_n_0 ),
        .I1(\ALUResult[14]_INST_0_i_1_n_0 ),
        .O(rf_reg_r1_0_31_12_17_i_10_n_0),
        .S(ALUControl[1]));
  MUXF7 rf_reg_r1_0_31_12_17_i_11
       (.I0(\ALUResult[17]_INST_0_i_2_n_0 ),
        .I1(\ALUResult[17]_INST_0_i_1_n_0 ),
        .O(rf_reg_r1_0_31_12_17_i_11_n_0),
        .S(ALUControl[1]));
  MUXF7 rf_reg_r1_0_31_12_17_i_12
       (.I0(\ALUResult[16]_INST_0_i_2_n_0 ),
        .I1(\ALUResult[16]_INST_0_i_1_n_0 ),
        .O(rf_reg_r1_0_31_12_17_i_12_n_0),
        .S(ALUControl[1]));
  LUT6 #(
    .INIT(64'h00000000FFE200E2)) 
    rf_reg_r1_0_31_12_17_i_2
       (.I0(\ALUResult[12]_INST_0_i_3_n_0 ),
        .I1(ALUControl[2]),
        .I2(rf_reg_r1_0_31_12_17_i_8_n_0),
        .I3(s),
        .I4(ReadData[11]),
        .I5(Jump),
        .O(rf_reg_r1_0_31_12_17_i_2_n_0));
  LUT6 #(
    .INIT(64'h00000000FFE200E2)) 
    rf_reg_r1_0_31_12_17_i_3
       (.I0(\ALUResult[15]_INST_0_i_3_n_0 ),
        .I1(ALUControl[2]),
        .I2(rf_reg_r1_0_31_12_17_i_9_n_0),
        .I3(s),
        .I4(ReadData[14]),
        .I5(Jump),
        .O(rf_reg_r1_0_31_12_17_i_3_n_0));
  LUT6 #(
    .INIT(64'h00000000FFE200E2)) 
    rf_reg_r1_0_31_12_17_i_4
       (.I0(\ALUResult[14]_INST_0_i_3_n_0 ),
        .I1(ALUControl[2]),
        .I2(rf_reg_r1_0_31_12_17_i_10_n_0),
        .I3(s),
        .I4(ReadData[13]),
        .I5(Jump),
        .O(rf_reg_r1_0_31_12_17_i_4_n_0));
  LUT6 #(
    .INIT(64'h00000000FFE200E2)) 
    rf_reg_r1_0_31_12_17_i_5
       (.I0(\ALUResult[17]_INST_0_i_3_n_0 ),
        .I1(ALUControl[2]),
        .I2(rf_reg_r1_0_31_12_17_i_11_n_0),
        .I3(s),
        .I4(ReadData[16]),
        .I5(Jump),
        .O(rf_reg_r1_0_31_12_17_i_5_n_0));
  LUT6 #(
    .INIT(64'h00000000FFE200E2)) 
    rf_reg_r1_0_31_12_17_i_6
       (.I0(\ALUResult[16]_INST_0_i_3_n_0 ),
        .I1(ALUControl[2]),
        .I2(rf_reg_r1_0_31_12_17_i_12_n_0),
        .I3(s),
        .I4(ReadData[15]),
        .I5(Jump),
        .O(rf_reg_r1_0_31_12_17_i_6_n_0));
  MUXF7 rf_reg_r1_0_31_12_17_i_7
       (.I0(\ALUResult[13]_INST_0_i_2_n_0 ),
        .I1(\ALUResult[13]_INST_0_i_1_n_0 ),
        .O(rf_reg_r1_0_31_12_17_i_7_n_0),
        .S(ALUControl[1]));
  MUXF7 rf_reg_r1_0_31_12_17_i_8
       (.I0(\ALUResult[12]_INST_0_i_2_n_0 ),
        .I1(\ALUResult[12]_INST_0_i_1_n_0 ),
        .O(rf_reg_r1_0_31_12_17_i_8_n_0),
        .S(ALUControl[1]));
  MUXF7 rf_reg_r1_0_31_12_17_i_9
       (.I0(\ALUResult[15]_INST_0_i_2_n_0 ),
        .I1(\ALUResult[15]_INST_0_i_1_n_0 ),
        .O(rf_reg_r1_0_31_12_17_i_9_n_0),
        .S(ALUControl[1]));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "dp/rf/rf_reg_r1_0_31_18_23" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "18" *) 
  (* ram_slice_end = "23" *) 
  RAM32M rf_reg_r1_0_31_18_23
       (.ADDRA(Instr[17:13]),
        .ADDRB(Instr[17:13]),
        .ADDRC(Instr[17:13]),
        .ADDRD(Instr[9:5]),
        .DIA({rf_reg_r1_0_31_18_23_i_1_n_0,rf_reg_r1_0_31_18_23_i_2_n_0}),
        .DIB({rf_reg_r1_0_31_18_23_i_3_n_0,rf_reg_r1_0_31_18_23_i_4_n_0}),
        .DIC({rf_reg_r1_0_31_18_23_i_5_n_0,rf_reg_r1_0_31_18_23_i_6_n_0}),
        .DID({1'b0,1'b0}),
        .DOA(rd10[19:18]),
        .DOB(rd10[21:20]),
        .DOC(rd10[23:22]),
        .DOD(NLW_rf_reg_r1_0_31_18_23_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(we3));
  LUT6 #(
    .INIT(64'h00000000FFE200E2)) 
    rf_reg_r1_0_31_18_23_i_1
       (.I0(\ALUResult[19]_INST_0_i_3_n_0 ),
        .I1(ALUControl[2]),
        .I2(rf_reg_r1_0_31_18_23_i_7_n_0),
        .I3(s),
        .I4(ReadData[18]),
        .I5(Jump),
        .O(rf_reg_r1_0_31_18_23_i_1_n_0));
  MUXF7 rf_reg_r1_0_31_18_23_i_10
       (.I0(\ALUResult[20]_INST_0_i_2_n_0 ),
        .I1(\ALUResult[20]_INST_0_i_1_n_0 ),
        .O(rf_reg_r1_0_31_18_23_i_10_n_0),
        .S(ALUControl[1]));
  MUXF7 rf_reg_r1_0_31_18_23_i_11
       (.I0(\ALUResult[23]_INST_0_i_2_n_0 ),
        .I1(\ALUResult[23]_INST_0_i_1_n_0 ),
        .O(rf_reg_r1_0_31_18_23_i_11_n_0),
        .S(ALUControl[1]));
  MUXF7 rf_reg_r1_0_31_18_23_i_12
       (.I0(\ALUResult[22]_INST_0_i_2_n_0 ),
        .I1(\ALUResult[22]_INST_0_i_1_n_0 ),
        .O(rf_reg_r1_0_31_18_23_i_12_n_0),
        .S(ALUControl[1]));
  LUT6 #(
    .INIT(64'h00000000FFE200E2)) 
    rf_reg_r1_0_31_18_23_i_2
       (.I0(\ALUResult[18]_INST_0_i_3_n_0 ),
        .I1(ALUControl[2]),
        .I2(rf_reg_r1_0_31_18_23_i_8_n_0),
        .I3(s),
        .I4(ReadData[17]),
        .I5(Jump),
        .O(rf_reg_r1_0_31_18_23_i_2_n_0));
  LUT6 #(
    .INIT(64'h00000000FFE200E2)) 
    rf_reg_r1_0_31_18_23_i_3
       (.I0(\ALUResult[21]_INST_0_i_3_n_0 ),
        .I1(ALUControl[2]),
        .I2(rf_reg_r1_0_31_18_23_i_9_n_0),
        .I3(s),
        .I4(ReadData[20]),
        .I5(Jump),
        .O(rf_reg_r1_0_31_18_23_i_3_n_0));
  LUT6 #(
    .INIT(64'h00000000FFE200E2)) 
    rf_reg_r1_0_31_18_23_i_4
       (.I0(\ALUResult[20]_INST_0_i_3_n_0 ),
        .I1(ALUControl[2]),
        .I2(rf_reg_r1_0_31_18_23_i_10_n_0),
        .I3(s),
        .I4(ReadData[19]),
        .I5(Jump),
        .O(rf_reg_r1_0_31_18_23_i_4_n_0));
  LUT6 #(
    .INIT(64'h00000000FFE200E2)) 
    rf_reg_r1_0_31_18_23_i_5
       (.I0(\ALUResult[23]_INST_0_i_3_n_0 ),
        .I1(ALUControl[2]),
        .I2(rf_reg_r1_0_31_18_23_i_11_n_0),
        .I3(s),
        .I4(ReadData[22]),
        .I5(Jump),
        .O(rf_reg_r1_0_31_18_23_i_5_n_0));
  LUT6 #(
    .INIT(64'h00000000FFE200E2)) 
    rf_reg_r1_0_31_18_23_i_6
       (.I0(\ALUResult[22]_INST_0_i_3_n_0 ),
        .I1(ALUControl[2]),
        .I2(rf_reg_r1_0_31_18_23_i_12_n_0),
        .I3(s),
        .I4(ReadData[21]),
        .I5(Jump),
        .O(rf_reg_r1_0_31_18_23_i_6_n_0));
  MUXF7 rf_reg_r1_0_31_18_23_i_7
       (.I0(\ALUResult[19]_INST_0_i_2_n_0 ),
        .I1(\ALUResult[19]_INST_0_i_1_n_0 ),
        .O(rf_reg_r1_0_31_18_23_i_7_n_0),
        .S(ALUControl[1]));
  MUXF7 rf_reg_r1_0_31_18_23_i_8
       (.I0(\ALUResult[18]_INST_0_i_2_n_0 ),
        .I1(\ALUResult[18]_INST_0_i_1_n_0 ),
        .O(rf_reg_r1_0_31_18_23_i_8_n_0),
        .S(ALUControl[1]));
  MUXF7 rf_reg_r1_0_31_18_23_i_9
       (.I0(\ALUResult[21]_INST_0_i_2_n_0 ),
        .I1(\ALUResult[21]_INST_0_i_1_n_0 ),
        .O(rf_reg_r1_0_31_18_23_i_9_n_0),
        .S(ALUControl[1]));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "dp/rf/rf_reg_r1_0_31_24_29" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "24" *) 
  (* ram_slice_end = "29" *) 
  RAM32M rf_reg_r1_0_31_24_29
       (.ADDRA(Instr[17:13]),
        .ADDRB(Instr[17:13]),
        .ADDRC(Instr[17:13]),
        .ADDRD(Instr[9:5]),
        .DIA({rf_reg_r1_0_31_24_29_i_1_n_0,rf_reg_r1_0_31_24_29_i_2_n_0}),
        .DIB({rf_reg_r1_0_31_24_29_i_3_n_0,rf_reg_r1_0_31_24_29_i_4_n_0}),
        .DIC({rf_reg_r1_0_31_24_29_i_5_n_0,rf_reg_r1_0_31_24_29_i_6_n_0}),
        .DID({1'b0,1'b0}),
        .DOA(rd10[25:24]),
        .DOB(rd10[27:26]),
        .DOC(rd10[29:28]),
        .DOD(NLW_rf_reg_r1_0_31_24_29_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(we3));
  LUT6 #(
    .INIT(64'h00000000FFE200E2)) 
    rf_reg_r1_0_31_24_29_i_1
       (.I0(\ALUResult[25]_INST_0_i_3_n_0 ),
        .I1(ALUControl[2]),
        .I2(rf_reg_r1_0_31_24_29_i_7_n_0),
        .I3(s),
        .I4(ReadData[24]),
        .I5(Jump),
        .O(rf_reg_r1_0_31_24_29_i_1_n_0));
  MUXF7 rf_reg_r1_0_31_24_29_i_10
       (.I0(\ALUResult[26]_INST_0_i_2_n_0 ),
        .I1(\ALUResult[26]_INST_0_i_1_n_0 ),
        .O(rf_reg_r1_0_31_24_29_i_10_n_0),
        .S(ALUControl[1]));
  MUXF7 rf_reg_r1_0_31_24_29_i_11
       (.I0(\ALUResult[29]_INST_0_i_2_n_0 ),
        .I1(\ALUResult[29]_INST_0_i_1_n_0 ),
        .O(rf_reg_r1_0_31_24_29_i_11_n_0),
        .S(ALUControl[1]));
  MUXF7 rf_reg_r1_0_31_24_29_i_12
       (.I0(\ALUResult[28]_INST_0_i_2_n_0 ),
        .I1(\ALUResult[28]_INST_0_i_1_n_0 ),
        .O(rf_reg_r1_0_31_24_29_i_12_n_0),
        .S(ALUControl[1]));
  LUT6 #(
    .INIT(64'h00000000FFE200E2)) 
    rf_reg_r1_0_31_24_29_i_2
       (.I0(\ALUResult[24]_INST_0_i_3_n_0 ),
        .I1(ALUControl[2]),
        .I2(rf_reg_r1_0_31_24_29_i_8_n_0),
        .I3(s),
        .I4(ReadData[23]),
        .I5(Jump),
        .O(rf_reg_r1_0_31_24_29_i_2_n_0));
  LUT6 #(
    .INIT(64'h00000000FFE200E2)) 
    rf_reg_r1_0_31_24_29_i_3
       (.I0(\ALUResult[27]_INST_0_i_3_n_0 ),
        .I1(ALUControl[2]),
        .I2(rf_reg_r1_0_31_24_29_i_9_n_0),
        .I3(s),
        .I4(ReadData[26]),
        .I5(Jump),
        .O(rf_reg_r1_0_31_24_29_i_3_n_0));
  LUT6 #(
    .INIT(64'h00000000FFE200E2)) 
    rf_reg_r1_0_31_24_29_i_4
       (.I0(\ALUResult[26]_INST_0_i_3_n_0 ),
        .I1(ALUControl[2]),
        .I2(rf_reg_r1_0_31_24_29_i_10_n_0),
        .I3(s),
        .I4(ReadData[25]),
        .I5(Jump),
        .O(rf_reg_r1_0_31_24_29_i_4_n_0));
  LUT6 #(
    .INIT(64'h00000000FFE200E2)) 
    rf_reg_r1_0_31_24_29_i_5
       (.I0(\ALUResult[29]_INST_0_i_3_n_0 ),
        .I1(ALUControl[2]),
        .I2(rf_reg_r1_0_31_24_29_i_11_n_0),
        .I3(s),
        .I4(ReadData[28]),
        .I5(Jump),
        .O(rf_reg_r1_0_31_24_29_i_5_n_0));
  LUT6 #(
    .INIT(64'h00000000FFE200E2)) 
    rf_reg_r1_0_31_24_29_i_6
       (.I0(\ALUResult[28]_INST_0_i_3_n_0 ),
        .I1(ALUControl[2]),
        .I2(rf_reg_r1_0_31_24_29_i_12_n_0),
        .I3(s),
        .I4(ReadData[27]),
        .I5(Jump),
        .O(rf_reg_r1_0_31_24_29_i_6_n_0));
  MUXF7 rf_reg_r1_0_31_24_29_i_7
       (.I0(\ALUResult[25]_INST_0_i_2_n_0 ),
        .I1(\ALUResult[25]_INST_0_i_1_n_0 ),
        .O(rf_reg_r1_0_31_24_29_i_7_n_0),
        .S(ALUControl[1]));
  MUXF7 rf_reg_r1_0_31_24_29_i_8
       (.I0(\ALUResult[24]_INST_0_i_2_n_0 ),
        .I1(\ALUResult[24]_INST_0_i_1_n_0 ),
        .O(rf_reg_r1_0_31_24_29_i_8_n_0),
        .S(ALUControl[1]));
  MUXF7 rf_reg_r1_0_31_24_29_i_9
       (.I0(\ALUResult[27]_INST_0_i_2_n_0 ),
        .I1(\ALUResult[27]_INST_0_i_1_n_0 ),
        .O(rf_reg_r1_0_31_24_29_i_9_n_0),
        .S(ALUControl[1]));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "dp/rf/rf_reg_r1_0_31_30_31" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "31" *) 
  RAM32X1D rf_reg_r1_0_31_30_31
       (.A0(Instr[5]),
        .A1(Instr[6]),
        .A2(Instr[7]),
        .A3(Instr[8]),
        .A4(Instr[9]),
        .D(rf_reg_r1_0_31_30_31_i_1_n_0),
        .DPO(rd10[30]),
        .DPRA0(Instr[13]),
        .DPRA1(Instr[14]),
        .DPRA2(Instr[15]),
        .DPRA3(Instr[16]),
        .DPRA4(Instr[17]),
        .SPO(NLW_rf_reg_r1_0_31_30_31_SPO_UNCONNECTED),
        .WCLK(clk),
        .WE(we3));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "dp/rf/rf_reg_r1_0_31_30_31" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "31" *) 
  RAM32X1D rf_reg_r1_0_31_30_31__0
       (.A0(Instr[5]),
        .A1(Instr[6]),
        .A2(Instr[7]),
        .A3(Instr[8]),
        .A4(Instr[9]),
        .D(\writeDataM[31] ),
        .DPO(rd10[31]),
        .DPRA0(Instr[13]),
        .DPRA1(Instr[14]),
        .DPRA2(Instr[15]),
        .DPRA3(Instr[16]),
        .DPRA4(Instr[17]),
        .SPO(NLW_rf_reg_r1_0_31_30_31__0_SPO_UNCONNECTED),
        .WCLK(clk),
        .WE(we3));
  LUT6 #(
    .INIT(64'h00000000FFE200E2)) 
    rf_reg_r1_0_31_30_31_i_1
       (.I0(\ALUResult[30]_INST_0_i_3_n_0 ),
        .I1(ALUControl[2]),
        .I2(rf_reg_r1_0_31_30_31_i_2_n_0),
        .I3(s),
        .I4(ReadData[29]),
        .I5(Jump),
        .O(rf_reg_r1_0_31_30_31_i_1_n_0));
  MUXF7 rf_reg_r1_0_31_30_31_i_2
       (.I0(\ALUResult[30]_INST_0_i_2_n_0 ),
        .I1(\ALUResult[30]_INST_0_i_1_n_0 ),
        .O(rf_reg_r1_0_31_30_31_i_2_n_0),
        .S(ALUControl[1]));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "dp/rf/rf_reg_r1_0_31_6_11" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "11" *) 
  RAM32M rf_reg_r1_0_31_6_11
       (.ADDRA(Instr[17:13]),
        .ADDRB(Instr[17:13]),
        .ADDRC(Instr[17:13]),
        .ADDRD(Instr[9:5]),
        .DIA({rf_reg_r1_0_31_6_11_i_1_n_0,rf_reg_r1_0_31_6_11_i_2_n_0}),
        .DIB({rf_reg_r1_0_31_6_11_i_3_n_0,rf_reg_r1_0_31_6_11_i_4_n_0}),
        .DIC({rf_reg_r1_0_31_6_11_i_5_n_0,rf_reg_r1_0_31_6_11_i_6_n_0}),
        .DID({1'b0,1'b0}),
        .DOA(rd10[7:6]),
        .DOB(rd10[9:8]),
        .DOC(rd10[11:10]),
        .DOD(NLW_rf_reg_r1_0_31_6_11_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(we3));
  LUT6 #(
    .INIT(64'h00000000FFE200E2)) 
    rf_reg_r1_0_31_6_11_i_1
       (.I0(\ALUResult[7]_INST_0_i_1_n_0 ),
        .I1(ALUControl[2]),
        .I2(\ALUResult[7]_INST_0_i_2_n_0 ),
        .I3(s),
        .I4(ReadData[6]),
        .I5(Jump),
        .O(rf_reg_r1_0_31_6_11_i_1_n_0));
  LUT6 #(
    .INIT(64'h00000000FFE200E2)) 
    rf_reg_r1_0_31_6_11_i_2
       (.I0(\ALUResult[6]_INST_0_i_1_n_0 ),
        .I1(ALUControl[2]),
        .I2(\ALUResult[6]_INST_0_i_2_n_0 ),
        .I3(s),
        .I4(ReadData[5]),
        .I5(Jump),
        .O(rf_reg_r1_0_31_6_11_i_2_n_0));
  LUT6 #(
    .INIT(64'h00000000FFE200E2)) 
    rf_reg_r1_0_31_6_11_i_3
       (.I0(\ALUResult[9]_INST_0_i_1_n_0 ),
        .I1(ALUControl[2]),
        .I2(\ALUResult[9]_INST_0_i_2_n_0 ),
        .I3(s),
        .I4(ReadData[8]),
        .I5(Jump),
        .O(rf_reg_r1_0_31_6_11_i_3_n_0));
  LUT6 #(
    .INIT(64'h00000000FFE200E2)) 
    rf_reg_r1_0_31_6_11_i_4
       (.I0(\ALUResult[8]_INST_0_i_1_n_0 ),
        .I1(ALUControl[2]),
        .I2(\ALUResult[8]_INST_0_i_2_n_0 ),
        .I3(s),
        .I4(ReadData[7]),
        .I5(Jump),
        .O(rf_reg_r1_0_31_6_11_i_4_n_0));
  LUT6 #(
    .INIT(64'h00000000FFE200E2)) 
    rf_reg_r1_0_31_6_11_i_5
       (.I0(\ALUResult[11]_INST_0_i_1_n_0 ),
        .I1(ALUControl[2]),
        .I2(\ALUResult[11]_INST_0_i_2_n_0 ),
        .I3(s),
        .I4(ReadData[10]),
        .I5(Jump),
        .O(rf_reg_r1_0_31_6_11_i_5_n_0));
  LUT6 #(
    .INIT(64'h00000000FFE200E2)) 
    rf_reg_r1_0_31_6_11_i_6
       (.I0(\ALUResult[10]_INST_0_i_1_n_0 ),
        .I1(ALUControl[2]),
        .I2(\ALUResult[10]_INST_0_i_2_n_0 ),
        .I3(s),
        .I4(ReadData[9]),
        .I5(Jump),
        .O(rf_reg_r1_0_31_6_11_i_6_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "dp/rf/rf_reg_r2_0_31_0_5" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "5" *) 
  RAM32M rf_reg_r2_0_31_0_5
       (.ADDRA(Instr[22:18]),
        .ADDRB(Instr[22:18]),
        .ADDRC(Instr[22:18]),
        .ADDRD(Instr[9:5]),
        .DIA({rf_reg_r1_0_31_0_5_i_2_n_0,\writeDataM[1] }),
        .DIB({rf_reg_r1_0_31_0_5_i_4_n_0,wd3}),
        .DIC({rf_reg_r1_0_31_0_5_i_6_n_0,rf_reg_r1_0_31_0_5_i_7_n_0}),
        .DID({1'b0,1'b0}),
        .DOA(rd20[1:0]),
        .DOB(rd20[3:2]),
        .DOC(rd20[5:4]),
        .DOD(NLW_rf_reg_r2_0_31_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(we3));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "dp/rf/rf_reg_r2_0_31_12_17" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "17" *) 
  RAM32M rf_reg_r2_0_31_12_17
       (.ADDRA(Instr[22:18]),
        .ADDRB(Instr[22:18]),
        .ADDRC(Instr[22:18]),
        .ADDRD(Instr[9:5]),
        .DIA({rf_reg_r1_0_31_12_17_i_1_n_0,rf_reg_r1_0_31_12_17_i_2_n_0}),
        .DIB({rf_reg_r1_0_31_12_17_i_3_n_0,rf_reg_r1_0_31_12_17_i_4_n_0}),
        .DIC({rf_reg_r1_0_31_12_17_i_5_n_0,rf_reg_r1_0_31_12_17_i_6_n_0}),
        .DID({1'b0,1'b0}),
        .DOA(rd20[13:12]),
        .DOB(rd20[15:14]),
        .DOC(rd20[17:16]),
        .DOD(NLW_rf_reg_r2_0_31_12_17_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(we3));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "dp/rf/rf_reg_r2_0_31_18_23" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "18" *) 
  (* ram_slice_end = "23" *) 
  RAM32M rf_reg_r2_0_31_18_23
       (.ADDRA(Instr[22:18]),
        .ADDRB(Instr[22:18]),
        .ADDRC(Instr[22:18]),
        .ADDRD(Instr[9:5]),
        .DIA({rf_reg_r1_0_31_18_23_i_1_n_0,rf_reg_r1_0_31_18_23_i_2_n_0}),
        .DIB({rf_reg_r1_0_31_18_23_i_3_n_0,rf_reg_r1_0_31_18_23_i_4_n_0}),
        .DIC({rf_reg_r1_0_31_18_23_i_5_n_0,rf_reg_r1_0_31_18_23_i_6_n_0}),
        .DID({1'b0,1'b0}),
        .DOA(rd20[19:18]),
        .DOB(rd20[21:20]),
        .DOC(rd20[23:22]),
        .DOD(NLW_rf_reg_r2_0_31_18_23_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(we3));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "dp/rf/rf_reg_r2_0_31_24_29" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "24" *) 
  (* ram_slice_end = "29" *) 
  RAM32M rf_reg_r2_0_31_24_29
       (.ADDRA(Instr[22:18]),
        .ADDRB(Instr[22:18]),
        .ADDRC(Instr[22:18]),
        .ADDRD(Instr[9:5]),
        .DIA({rf_reg_r1_0_31_24_29_i_1_n_0,rf_reg_r1_0_31_24_29_i_2_n_0}),
        .DIB({rf_reg_r1_0_31_24_29_i_3_n_0,rf_reg_r1_0_31_24_29_i_4_n_0}),
        .DIC({rf_reg_r1_0_31_24_29_i_5_n_0,rf_reg_r1_0_31_24_29_i_6_n_0}),
        .DID({1'b0,1'b0}),
        .DOA(rd20[25:24]),
        .DOB(rd20[27:26]),
        .DOC(rd20[29:28]),
        .DOD(NLW_rf_reg_r2_0_31_24_29_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(we3));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "dp/rf/rf_reg_r2_0_31_30_31" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "31" *) 
  RAM32X1D rf_reg_r2_0_31_30_31
       (.A0(Instr[5]),
        .A1(Instr[6]),
        .A2(Instr[7]),
        .A3(Instr[8]),
        .A4(Instr[9]),
        .D(rf_reg_r1_0_31_30_31_i_1_n_0),
        .DPO(rd20[30]),
        .DPRA0(Instr[18]),
        .DPRA1(Instr[19]),
        .DPRA2(Instr[20]),
        .DPRA3(Instr[21]),
        .DPRA4(Instr[22]),
        .SPO(NLW_rf_reg_r2_0_31_30_31_SPO_UNCONNECTED),
        .WCLK(clk),
        .WE(we3));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "dp/rf/rf_reg_r2_0_31_30_31" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "31" *) 
  RAM32X1D rf_reg_r2_0_31_30_31__0
       (.A0(Instr[5]),
        .A1(Instr[6]),
        .A2(Instr[7]),
        .A3(Instr[8]),
        .A4(Instr[9]),
        .D(\writeDataM[31] ),
        .DPO(rd20[31]),
        .DPRA0(Instr[18]),
        .DPRA1(Instr[19]),
        .DPRA2(Instr[20]),
        .DPRA3(Instr[21]),
        .DPRA4(Instr[22]),
        .SPO(NLW_rf_reg_r2_0_31_30_31__0_SPO_UNCONNECTED),
        .WCLK(clk),
        .WE(we3));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "dp/rf/rf_reg_r2_0_31_6_11" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "11" *) 
  RAM32M rf_reg_r2_0_31_6_11
       (.ADDRA(Instr[22:18]),
        .ADDRB(Instr[22:18]),
        .ADDRC(Instr[22:18]),
        .ADDRD(Instr[9:5]),
        .DIA({rf_reg_r1_0_31_6_11_i_1_n_0,rf_reg_r1_0_31_6_11_i_2_n_0}),
        .DIB({rf_reg_r1_0_31_6_11_i_3_n_0,rf_reg_r1_0_31_6_11_i_4_n_0}),
        .DIC({rf_reg_r1_0_31_6_11_i_5_n_0,rf_reg_r1_0_31_6_11_i_6_n_0}),
        .DID({1'b0,1'b0}),
        .DOA(rd20[7:6]),
        .DOB(rd20[9:8]),
        .DOC(rd20[11:10]),
        .DOD(NLW_rf_reg_r2_0_31_6_11_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(we3));
  LUT6 #(
    .INIT(64'hFFFF2FFFAAAA02AA)) 
    sltuOut_carry__0_i_1
       (.I0(SrcB[14]),
        .I1(rd10[14]),
        .I2(rd10[15]),
        .I3(rd11),
        .I4(\ALUResult[17]_INST_0_i_13_0 ),
        .I5(SrcB[15]),
        .O(clk_33[3]));
  LUT6 #(
    .INIT(64'hFFFF2FFFAAAA02AA)) 
    sltuOut_carry__0_i_2
       (.I0(SrcB[12]),
        .I1(rd10[12]),
        .I2(rd10[13]),
        .I3(rd11),
        .I4(\ALUResult[17]_INST_0_i_13_0 ),
        .I5(SrcB[13]),
        .O(clk_33[2]));
  LUT6 #(
    .INIT(64'hFFFF2FFFAAAA02AA)) 
    sltuOut_carry__0_i_3
       (.I0(SrcB[10]),
        .I1(rd10[10]),
        .I2(rd10[11]),
        .I3(rd11),
        .I4(\ALUResult[17]_INST_0_i_13_0 ),
        .I5(SrcB[11]),
        .O(clk_33[1]));
  LUT6 #(
    .INIT(64'hFFFF2FFFAAAA02AA)) 
    sltuOut_carry__0_i_4
       (.I0(SrcB[8]),
        .I1(rd10[8]),
        .I2(rd10[9]),
        .I3(rd11),
        .I4(\ALUResult[17]_INST_0_i_13_0 ),
        .I5(SrcB[9]),
        .O(clk_33[0]));
  LUT6 #(
    .INIT(64'h0000900033330933)) 
    sltuOut_carry__0_i_5
       (.I0(rd10[14]),
        .I1(SrcB[14]),
        .I2(rd10[15]),
        .I3(rd11),
        .I4(\ALUResult[17]_INST_0_i_13_0 ),
        .I5(SrcB[15]),
        .O(clk_43[3]));
  LUT6 #(
    .INIT(64'h0000900033330933)) 
    sltuOut_carry__0_i_6
       (.I0(rd10[12]),
        .I1(SrcB[12]),
        .I2(rd10[13]),
        .I3(rd11),
        .I4(\ALUResult[17]_INST_0_i_13_0 ),
        .I5(SrcB[13]),
        .O(clk_43[2]));
  LUT6 #(
    .INIT(64'h0000900033330933)) 
    sltuOut_carry__0_i_7
       (.I0(rd10[10]),
        .I1(SrcB[10]),
        .I2(rd10[11]),
        .I3(rd11),
        .I4(\ALUResult[17]_INST_0_i_13_0 ),
        .I5(SrcB[11]),
        .O(clk_43[1]));
  LUT6 #(
    .INIT(64'h0000900033330933)) 
    sltuOut_carry__0_i_8
       (.I0(rd10[8]),
        .I1(SrcB[8]),
        .I2(rd10[9]),
        .I3(rd11),
        .I4(\ALUResult[17]_INST_0_i_13_0 ),
        .I5(SrcB[9]),
        .O(clk_43[0]));
  LUT6 #(
    .INIT(64'hFFFF2FFFAAAA02AA)) 
    sltuOut_carry__1_i_1
       (.I0(SrcB[22]),
        .I1(rd10[22]),
        .I2(rd10[23]),
        .I3(rd11),
        .I4(\ALUResult[17]_INST_0_i_13_0 ),
        .I5(SrcB[23]),
        .O(clk_34[3]));
  LUT6 #(
    .INIT(64'hFFFF2FFFAAAA02AA)) 
    sltuOut_carry__1_i_2
       (.I0(SrcB[20]),
        .I1(rd10[20]),
        .I2(rd10[21]),
        .I3(rd11),
        .I4(\ALUResult[17]_INST_0_i_13_0 ),
        .I5(SrcB[21]),
        .O(clk_34[2]));
  LUT6 #(
    .INIT(64'hFFFF2FFFAAAA02AA)) 
    sltuOut_carry__1_i_3
       (.I0(SrcB[18]),
        .I1(rd10[18]),
        .I2(rd10[19]),
        .I3(rd11),
        .I4(\ALUResult[17]_INST_0_i_13_0 ),
        .I5(SrcB[19]),
        .O(clk_34[1]));
  LUT6 #(
    .INIT(64'hFFFF2FFFAAAA02AA)) 
    sltuOut_carry__1_i_4
       (.I0(SrcB[16]),
        .I1(rd10[16]),
        .I2(rd10[17]),
        .I3(rd11),
        .I4(\ALUResult[17]_INST_0_i_13_0 ),
        .I5(SrcB[17]),
        .O(clk_34[0]));
  LUT6 #(
    .INIT(64'h0000900033330933)) 
    sltuOut_carry__1_i_5
       (.I0(rd10[22]),
        .I1(SrcB[22]),
        .I2(rd10[23]),
        .I3(rd11),
        .I4(\ALUResult[17]_INST_0_i_13_0 ),
        .I5(SrcB[23]),
        .O(clk_44[3]));
  LUT6 #(
    .INIT(64'h0000900033330933)) 
    sltuOut_carry__1_i_6
       (.I0(rd10[20]),
        .I1(SrcB[20]),
        .I2(rd10[21]),
        .I3(rd11),
        .I4(\ALUResult[17]_INST_0_i_13_0 ),
        .I5(SrcB[21]),
        .O(clk_44[2]));
  LUT6 #(
    .INIT(64'h0000900033330933)) 
    sltuOut_carry__1_i_7
       (.I0(rd10[18]),
        .I1(SrcB[18]),
        .I2(rd10[19]),
        .I3(rd11),
        .I4(\ALUResult[17]_INST_0_i_13_0 ),
        .I5(SrcB[19]),
        .O(clk_44[1]));
  LUT6 #(
    .INIT(64'h0000900033330933)) 
    sltuOut_carry__1_i_8
       (.I0(rd10[16]),
        .I1(SrcB[16]),
        .I2(rd10[17]),
        .I3(rd11),
        .I4(\ALUResult[17]_INST_0_i_13_0 ),
        .I5(SrcB[17]),
        .O(clk_44[0]));
  LUT6 #(
    .INIT(64'hFFFF2FFFAAAA02AA)) 
    sltuOut_carry__2_i_1
       (.I0(SrcB[30]),
        .I1(rd10[30]),
        .I2(rd10[31]),
        .I3(rd11),
        .I4(\ALUResult[17]_INST_0_i_13_0 ),
        .I5(SrcB[31]),
        .O(clk_35[3]));
  LUT6 #(
    .INIT(64'hFFFF2FFFAAAA02AA)) 
    sltuOut_carry__2_i_2
       (.I0(SrcB[28]),
        .I1(rd10[28]),
        .I2(rd10[29]),
        .I3(rd11),
        .I4(\ALUResult[17]_INST_0_i_13_0 ),
        .I5(SrcB[29]),
        .O(clk_35[2]));
  LUT6 #(
    .INIT(64'hFFFF2FFFAAAA02AA)) 
    sltuOut_carry__2_i_3
       (.I0(SrcB[26]),
        .I1(rd10[26]),
        .I2(rd10[27]),
        .I3(rd11),
        .I4(\ALUResult[17]_INST_0_i_13_0 ),
        .I5(SrcB[27]),
        .O(clk_35[1]));
  LUT6 #(
    .INIT(64'hFFFF2FFFAAAA02AA)) 
    sltuOut_carry__2_i_4
       (.I0(SrcB[24]),
        .I1(rd10[24]),
        .I2(rd10[25]),
        .I3(rd11),
        .I4(\ALUResult[17]_INST_0_i_13_0 ),
        .I5(SrcB[25]),
        .O(clk_35[0]));
  LUT6 #(
    .INIT(64'h0000900033330933)) 
    sltuOut_carry__2_i_5
       (.I0(rd10[30]),
        .I1(SrcB[30]),
        .I2(rd10[31]),
        .I3(rd11),
        .I4(\ALUResult[17]_INST_0_i_13_0 ),
        .I5(SrcB[31]),
        .O(clk_45[3]));
  LUT6 #(
    .INIT(64'h0000900033330933)) 
    sltuOut_carry__2_i_6
       (.I0(rd10[28]),
        .I1(SrcB[28]),
        .I2(rd10[29]),
        .I3(rd11),
        .I4(\ALUResult[17]_INST_0_i_13_0 ),
        .I5(SrcB[29]),
        .O(clk_45[2]));
  LUT6 #(
    .INIT(64'h0000900033330933)) 
    sltuOut_carry__2_i_7
       (.I0(rd10[26]),
        .I1(SrcB[26]),
        .I2(rd10[27]),
        .I3(rd11),
        .I4(\ALUResult[17]_INST_0_i_13_0 ),
        .I5(SrcB[27]),
        .O(clk_45[1]));
  LUT6 #(
    .INIT(64'h0000900033330933)) 
    sltuOut_carry__2_i_8
       (.I0(rd10[24]),
        .I1(SrcB[24]),
        .I2(rd10[25]),
        .I3(rd11),
        .I4(\ALUResult[17]_INST_0_i_13_0 ),
        .I5(SrcB[25]),
        .O(clk_45[0]));
  LUT6 #(
    .INIT(64'hFFFF2FFFAAAA02AA)) 
    sltuOut_carry_i_1
       (.I0(SrcB[6]),
        .I1(rd10[6]),
        .I2(rd10[7]),
        .I3(rd11),
        .I4(\ALUResult[17]_INST_0_i_13_0 ),
        .I5(SrcB[7]),
        .O(clk_32[3]));
  LUT6 #(
    .INIT(64'hFFFF2FFFAAAA02AA)) 
    sltuOut_carry_i_2
       (.I0(SrcB[4]),
        .I1(rd10[4]),
        .I2(rd10[5]),
        .I3(rd11),
        .I4(\ALUResult[17]_INST_0_i_13_0 ),
        .I5(SrcB[5]),
        .O(clk_32[2]));
  LUT6 #(
    .INIT(64'hFFFF2FFFAAAA02AA)) 
    sltuOut_carry_i_3
       (.I0(SrcB[2]),
        .I1(rd10[2]),
        .I2(rd10[3]),
        .I3(rd11),
        .I4(\ALUResult[17]_INST_0_i_13_0 ),
        .I5(SrcB[3]),
        .O(clk_32[1]));
  LUT6 #(
    .INIT(64'hFFFF2FFFAAAA02AA)) 
    sltuOut_carry_i_4
       (.I0(clk_0),
        .I1(rd10[0]),
        .I2(rd10[1]),
        .I3(rd11),
        .I4(\ALUResult[17]_INST_0_i_13_0 ),
        .I5(SrcB[1]),
        .O(clk_32[0]));
  LUT6 #(
    .INIT(64'h0000900033330933)) 
    sltuOut_carry_i_5
       (.I0(rd10[6]),
        .I1(SrcB[6]),
        .I2(rd10[7]),
        .I3(rd11),
        .I4(\ALUResult[17]_INST_0_i_13_0 ),
        .I5(SrcB[7]),
        .O(clk_42[3]));
  LUT6 #(
    .INIT(64'h0000900033330933)) 
    sltuOut_carry_i_6
       (.I0(rd10[4]),
        .I1(SrcB[4]),
        .I2(rd10[5]),
        .I3(rd11),
        .I4(\ALUResult[17]_INST_0_i_13_0 ),
        .I5(SrcB[5]),
        .O(clk_42[2]));
  LUT6 #(
    .INIT(64'h0000900033330933)) 
    sltuOut_carry_i_7
       (.I0(rd10[2]),
        .I1(SrcB[2]),
        .I2(rd10[3]),
        .I3(rd11),
        .I4(\ALUResult[17]_INST_0_i_13_0 ),
        .I5(SrcB[3]),
        .O(clk_42[1]));
  LUT6 #(
    .INIT(64'h0000900033330933)) 
    sltuOut_carry_i_8
       (.I0(rd10[0]),
        .I1(clk_0),
        .I2(rd10[1]),
        .I3(rd11),
        .I4(\ALUResult[17]_INST_0_i_13_0 ),
        .I5(SrcB[1]),
        .O(clk_42[0]));
  LUT4 #(
    .INIT(16'h8088)) 
    sum_carry__0_i_1
       (.I0(rd10[7]),
        .I1(rd11),
        .I2(Instr[3]),
        .I3(Instr[0]),
        .O(clk_7));
  LUT4 #(
    .INIT(16'h8088)) 
    sum_carry__0_i_2
       (.I0(rd10[6]),
        .I1(rd11),
        .I2(Instr[3]),
        .I3(Instr[0]),
        .O(clk_6));
  LUT4 #(
    .INIT(16'h8088)) 
    sum_carry__0_i_3
       (.I0(rd10[5]),
        .I1(rd11),
        .I2(Instr[3]),
        .I3(Instr[0]),
        .O(clk_5));
  LUT4 #(
    .INIT(16'h8088)) 
    sum_carry__0_i_4
       (.I0(rd10[4]),
        .I1(rd11),
        .I2(Instr[3]),
        .I3(Instr[0]),
        .O(clk_4));
  LUT6 #(
    .INIT(64'hD0002FFF2FFFD000)) 
    sum_carry__0_i_5
       (.I0(Instr[0]),
        .I1(Instr[3]),
        .I2(rd11),
        .I3(rd10[7]),
        .I4(SrcB[7]),
        .I5(ALUControl__0),
        .O(clk_36[3]));
  LUT6 #(
    .INIT(64'hD0002FFF2FFFD000)) 
    sum_carry__0_i_6
       (.I0(Instr[0]),
        .I1(Instr[3]),
        .I2(rd11),
        .I3(rd10[6]),
        .I4(SrcB[6]),
        .I5(ALUControl__0),
        .O(clk_36[2]));
  LUT6 #(
    .INIT(64'hD0002FFF2FFFD000)) 
    sum_carry__0_i_7
       (.I0(Instr[0]),
        .I1(Instr[3]),
        .I2(rd11),
        .I3(rd10[5]),
        .I4(SrcB[5]),
        .I5(ALUControl__0),
        .O(clk_36[1]));
  LUT6 #(
    .INIT(64'hD0002FFF2FFFD000)) 
    sum_carry__0_i_8
       (.I0(Instr[0]),
        .I1(Instr[3]),
        .I2(rd11),
        .I3(rd10[4]),
        .I4(SrcB[4]),
        .I5(ALUControl__0),
        .O(clk_36[0]));
  LUT4 #(
    .INIT(16'h8088)) 
    sum_carry__1_i_1
       (.I0(rd10[11]),
        .I1(rd11),
        .I2(Instr[3]),
        .I3(Instr[0]),
        .O(clk_11));
  LUT4 #(
    .INIT(16'h8088)) 
    sum_carry__1_i_2
       (.I0(rd10[10]),
        .I1(rd11),
        .I2(Instr[3]),
        .I3(Instr[0]),
        .O(clk_10));
  LUT4 #(
    .INIT(16'h8088)) 
    sum_carry__1_i_3
       (.I0(rd10[9]),
        .I1(rd11),
        .I2(Instr[3]),
        .I3(Instr[0]),
        .O(clk_9));
  LUT4 #(
    .INIT(16'h8088)) 
    sum_carry__1_i_4
       (.I0(rd10[8]),
        .I1(rd11),
        .I2(Instr[3]),
        .I3(Instr[0]),
        .O(clk_8));
  LUT6 #(
    .INIT(64'hD0002FFF2FFFD000)) 
    sum_carry__1_i_5
       (.I0(Instr[0]),
        .I1(Instr[3]),
        .I2(rd11),
        .I3(rd10[11]),
        .I4(SrcB[11]),
        .I5(ALUControl__0),
        .O(clk_37[3]));
  LUT6 #(
    .INIT(64'hD0002FFF2FFFD000)) 
    sum_carry__1_i_6
       (.I0(Instr[0]),
        .I1(Instr[3]),
        .I2(rd11),
        .I3(rd10[10]),
        .I4(SrcB[10]),
        .I5(ALUControl__0),
        .O(clk_37[2]));
  LUT6 #(
    .INIT(64'hD0002FFF2FFFD000)) 
    sum_carry__1_i_7
       (.I0(Instr[0]),
        .I1(Instr[3]),
        .I2(rd11),
        .I3(rd10[9]),
        .I4(SrcB[9]),
        .I5(ALUControl__0),
        .O(clk_37[1]));
  LUT6 #(
    .INIT(64'hD0002FFF2FFFD000)) 
    sum_carry__1_i_8
       (.I0(Instr[0]),
        .I1(Instr[3]),
        .I2(rd11),
        .I3(rd10[8]),
        .I4(SrcB[8]),
        .I5(ALUControl__0),
        .O(clk_37[0]));
  LUT4 #(
    .INIT(16'h8088)) 
    sum_carry__2_i_1
       (.I0(rd10[15]),
        .I1(rd11),
        .I2(Instr[3]),
        .I3(Instr[0]),
        .O(clk_15));
  LUT4 #(
    .INIT(16'h8088)) 
    sum_carry__2_i_2
       (.I0(rd10[14]),
        .I1(rd11),
        .I2(Instr[3]),
        .I3(Instr[0]),
        .O(clk_14));
  LUT4 #(
    .INIT(16'h8088)) 
    sum_carry__2_i_3
       (.I0(rd10[13]),
        .I1(rd11),
        .I2(Instr[3]),
        .I3(Instr[0]),
        .O(clk_13));
  LUT4 #(
    .INIT(16'h8088)) 
    sum_carry__2_i_4
       (.I0(rd10[12]),
        .I1(rd11),
        .I2(Instr[3]),
        .I3(Instr[0]),
        .O(clk_12));
  LUT6 #(
    .INIT(64'hD0002FFF2FFFD000)) 
    sum_carry__2_i_5
       (.I0(Instr[0]),
        .I1(Instr[3]),
        .I2(rd11),
        .I3(rd10[15]),
        .I4(SrcB[15]),
        .I5(ALUControl__0),
        .O(clk_38[3]));
  LUT6 #(
    .INIT(64'hD0002FFF2FFFD000)) 
    sum_carry__2_i_6
       (.I0(Instr[0]),
        .I1(Instr[3]),
        .I2(rd11),
        .I3(rd10[14]),
        .I4(SrcB[14]),
        .I5(ALUControl__0),
        .O(clk_38[2]));
  LUT6 #(
    .INIT(64'hD0002FFF2FFFD000)) 
    sum_carry__2_i_7
       (.I0(Instr[0]),
        .I1(Instr[3]),
        .I2(rd11),
        .I3(rd10[13]),
        .I4(SrcB[13]),
        .I5(ALUControl__0),
        .O(clk_38[1]));
  LUT6 #(
    .INIT(64'hD0002FFF2FFFD000)) 
    sum_carry__2_i_8
       (.I0(Instr[0]),
        .I1(Instr[3]),
        .I2(rd11),
        .I3(rd10[12]),
        .I4(SrcB[12]),
        .I5(ALUControl__0),
        .O(clk_38[0]));
  LUT4 #(
    .INIT(16'h8088)) 
    sum_carry__3_i_1
       (.I0(rd10[19]),
        .I1(rd11),
        .I2(Instr[3]),
        .I3(Instr[0]),
        .O(clk_19));
  LUT4 #(
    .INIT(16'h8088)) 
    sum_carry__3_i_2
       (.I0(rd10[18]),
        .I1(rd11),
        .I2(Instr[3]),
        .I3(Instr[0]),
        .O(clk_18));
  LUT4 #(
    .INIT(16'h8088)) 
    sum_carry__3_i_3
       (.I0(rd10[17]),
        .I1(rd11),
        .I2(Instr[3]),
        .I3(Instr[0]),
        .O(clk_17));
  LUT4 #(
    .INIT(16'h8088)) 
    sum_carry__3_i_4
       (.I0(rd10[16]),
        .I1(rd11),
        .I2(Instr[3]),
        .I3(Instr[0]),
        .O(clk_16));
  LUT6 #(
    .INIT(64'hD0002FFF2FFFD000)) 
    sum_carry__3_i_5
       (.I0(Instr[0]),
        .I1(Instr[3]),
        .I2(rd11),
        .I3(rd10[19]),
        .I4(SrcB[19]),
        .I5(ALUControl__0),
        .O(clk_39[3]));
  LUT6 #(
    .INIT(64'hD0002FFF2FFFD000)) 
    sum_carry__3_i_6
       (.I0(Instr[0]),
        .I1(Instr[3]),
        .I2(rd11),
        .I3(rd10[18]),
        .I4(SrcB[18]),
        .I5(ALUControl__0),
        .O(clk_39[2]));
  LUT6 #(
    .INIT(64'hD0002FFF2FFFD000)) 
    sum_carry__3_i_7
       (.I0(Instr[0]),
        .I1(Instr[3]),
        .I2(rd11),
        .I3(rd10[17]),
        .I4(SrcB[17]),
        .I5(ALUControl__0),
        .O(clk_39[1]));
  LUT6 #(
    .INIT(64'hD0002FFF2FFFD000)) 
    sum_carry__3_i_8
       (.I0(Instr[0]),
        .I1(Instr[3]),
        .I2(rd11),
        .I3(rd10[16]),
        .I4(SrcB[16]),
        .I5(ALUControl__0),
        .O(clk_39[0]));
  LUT4 #(
    .INIT(16'h8088)) 
    sum_carry__4_i_1
       (.I0(rd10[23]),
        .I1(rd11),
        .I2(Instr[3]),
        .I3(Instr[0]),
        .O(clk_23));
  LUT4 #(
    .INIT(16'h8088)) 
    sum_carry__4_i_2
       (.I0(rd10[22]),
        .I1(rd11),
        .I2(Instr[3]),
        .I3(Instr[0]),
        .O(clk_22));
  LUT4 #(
    .INIT(16'h8088)) 
    sum_carry__4_i_3
       (.I0(rd10[21]),
        .I1(rd11),
        .I2(Instr[3]),
        .I3(Instr[0]),
        .O(clk_21));
  LUT4 #(
    .INIT(16'h8088)) 
    sum_carry__4_i_4
       (.I0(rd10[20]),
        .I1(rd11),
        .I2(Instr[3]),
        .I3(Instr[0]),
        .O(clk_20));
  LUT6 #(
    .INIT(64'hD0002FFF2FFFD000)) 
    sum_carry__4_i_5
       (.I0(Instr[0]),
        .I1(Instr[3]),
        .I2(rd11),
        .I3(rd10[23]),
        .I4(SrcB[23]),
        .I5(ALUControl__0),
        .O(clk_40[3]));
  LUT6 #(
    .INIT(64'hD0002FFF2FFFD000)) 
    sum_carry__4_i_6
       (.I0(Instr[0]),
        .I1(Instr[3]),
        .I2(rd11),
        .I3(rd10[22]),
        .I4(SrcB[22]),
        .I5(ALUControl__0),
        .O(clk_40[2]));
  LUT6 #(
    .INIT(64'hD0002FFF2FFFD000)) 
    sum_carry__4_i_7
       (.I0(Instr[0]),
        .I1(Instr[3]),
        .I2(rd11),
        .I3(rd10[21]),
        .I4(SrcB[21]),
        .I5(ALUControl__0),
        .O(clk_40[1]));
  LUT6 #(
    .INIT(64'hD0002FFF2FFFD000)) 
    sum_carry__4_i_8
       (.I0(Instr[0]),
        .I1(Instr[3]),
        .I2(rd11),
        .I3(rd10[20]),
        .I4(SrcB[20]),
        .I5(ALUControl__0),
        .O(clk_40[0]));
  LUT4 #(
    .INIT(16'h8088)) 
    sum_carry__5_i_1
       (.I0(rd10[27]),
        .I1(rd11),
        .I2(Instr[3]),
        .I3(Instr[0]),
        .O(clk_27));
  LUT4 #(
    .INIT(16'h8088)) 
    sum_carry__5_i_2
       (.I0(rd10[26]),
        .I1(rd11),
        .I2(Instr[3]),
        .I3(Instr[0]),
        .O(clk_26));
  LUT4 #(
    .INIT(16'h8088)) 
    sum_carry__5_i_3
       (.I0(rd10[25]),
        .I1(rd11),
        .I2(Instr[3]),
        .I3(Instr[0]),
        .O(clk_25));
  LUT4 #(
    .INIT(16'h8088)) 
    sum_carry__5_i_4
       (.I0(rd10[24]),
        .I1(rd11),
        .I2(Instr[3]),
        .I3(Instr[0]),
        .O(clk_24));
  LUT6 #(
    .INIT(64'hD0002FFF2FFFD000)) 
    sum_carry__5_i_5
       (.I0(Instr[0]),
        .I1(Instr[3]),
        .I2(rd11),
        .I3(rd10[27]),
        .I4(SrcB[27]),
        .I5(ALUControl__0),
        .O(clk_41[3]));
  LUT6 #(
    .INIT(64'hD0002FFF2FFFD000)) 
    sum_carry__5_i_6
       (.I0(Instr[0]),
        .I1(Instr[3]),
        .I2(rd11),
        .I3(rd10[26]),
        .I4(SrcB[26]),
        .I5(ALUControl__0),
        .O(clk_41[2]));
  LUT6 #(
    .INIT(64'hD0002FFF2FFFD000)) 
    sum_carry__5_i_7
       (.I0(Instr[0]),
        .I1(Instr[3]),
        .I2(rd11),
        .I3(rd10[25]),
        .I4(SrcB[25]),
        .I5(ALUControl__0),
        .O(clk_41[1]));
  LUT6 #(
    .INIT(64'hD0002FFF2FFFD000)) 
    sum_carry__5_i_8
       (.I0(Instr[0]),
        .I1(Instr[3]),
        .I2(rd11),
        .I3(rd10[24]),
        .I4(SrcB[24]),
        .I5(ALUControl__0),
        .O(clk_41[0]));
  LUT4 #(
    .INIT(16'h8088)) 
    sum_carry__6_i_1
       (.I0(rd10[30]),
        .I1(rd11),
        .I2(Instr[3]),
        .I3(Instr[0]),
        .O(clk_30));
  LUT4 #(
    .INIT(16'h8088)) 
    sum_carry__6_i_2
       (.I0(rd10[29]),
        .I1(rd11),
        .I2(Instr[3]),
        .I3(Instr[0]),
        .O(clk_29));
  LUT4 #(
    .INIT(16'h8088)) 
    sum_carry__6_i_3
       (.I0(rd10[28]),
        .I1(rd11),
        .I2(Instr[3]),
        .I3(Instr[0]),
        .O(clk_28));
  LUT6 #(
    .INIT(64'h9A959595656A6A6A)) 
    sum_carry__6_i_4
       (.I0(\ALUResult[31]_INST_0_i_18_n_0 ),
        .I1(Instr[29]),
        .I2(ALUSrc),
        .I3(rd21),
        .I4(rd20[31]),
        .I5(ALUControl__0),
        .O(clk_31[3]));
  LUT6 #(
    .INIT(64'hD0002FFF2FFFD000)) 
    sum_carry__6_i_5
       (.I0(Instr[0]),
        .I1(Instr[3]),
        .I2(rd11),
        .I3(rd10[30]),
        .I4(SrcB[30]),
        .I5(ALUControl__0),
        .O(clk_31[2]));
  LUT6 #(
    .INIT(64'hD0002FFF2FFFD000)) 
    sum_carry__6_i_6
       (.I0(Instr[0]),
        .I1(Instr[3]),
        .I2(rd11),
        .I3(rd10[29]),
        .I4(SrcB[29]),
        .I5(ALUControl__0),
        .O(clk_31[1]));
  LUT6 #(
    .INIT(64'hD0002FFF2FFFD000)) 
    sum_carry__6_i_7
       (.I0(Instr[0]),
        .I1(Instr[3]),
        .I2(rd11),
        .I3(rd10[28]),
        .I4(SrcB[28]),
        .I5(ALUControl__0),
        .O(clk_31[0]));
  LUT2 #(
    .INIT(4'h6)) 
    sum_carry_i_1
       (.I0(ALUControl__0),
        .I1(clk_0),
        .O(\ALUResult[31]_INST_0_i_13_1 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    sum_carry_i_10
       (.I0(Instr[15]),
        .I1(Instr[13]),
        .I2(Instr[14]),
        .I3(Instr[16]),
        .I4(Instr[17]),
        .O(rd11));
  LUT4 #(
    .INIT(16'h8088)) 
    sum_carry_i_2
       (.I0(rd10[3]),
        .I1(rd11),
        .I2(Instr[3]),
        .I3(Instr[0]),
        .O(clk_3));
  LUT4 #(
    .INIT(16'h8088)) 
    sum_carry_i_3
       (.I0(rd10[2]),
        .I1(rd11),
        .I2(Instr[3]),
        .I3(Instr[0]),
        .O(clk_2));
  LUT4 #(
    .INIT(16'h8088)) 
    sum_carry_i_4
       (.I0(rd10[1]),
        .I1(rd11),
        .I2(Instr[3]),
        .I3(Instr[0]),
        .O(clk_1));
  LUT4 #(
    .INIT(16'h8088)) 
    sum_carry_i_5
       (.I0(rd10[0]),
        .I1(rd11),
        .I2(Instr[3]),
        .I3(Instr[0]),
        .O(DI));
  LUT6 #(
    .INIT(64'hD0002FFF2FFFD000)) 
    sum_carry_i_6
       (.I0(Instr[0]),
        .I1(Instr[3]),
        .I2(rd11),
        .I3(rd10[3]),
        .I4(SrcB[3]),
        .I5(ALUControl__0),
        .O(S[3]));
  LUT6 #(
    .INIT(64'hD0002FFF2FFFD000)) 
    sum_carry_i_7
       (.I0(Instr[0]),
        .I1(Instr[3]),
        .I2(rd11),
        .I3(rd10[2]),
        .I4(SrcB[2]),
        .I5(ALUControl__0),
        .O(S[2]));
  LUT6 #(
    .INIT(64'hD0002FFF2FFFD000)) 
    sum_carry_i_8
       (.I0(Instr[0]),
        .I1(Instr[3]),
        .I2(rd11),
        .I3(rd10[1]),
        .I4(SrcB[1]),
        .I5(ALUControl__0),
        .O(S[1]));
  LUT5 #(
    .INIT(32'h2FFFD000)) 
    sum_carry_i_9
       (.I0(Instr[0]),
        .I1(Instr[3]),
        .I2(rd11),
        .I3(rd10[0]),
        .I4(ALUControl__0),
        .O(S[0]));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_riscvsingle
   (clk,
    reset,
    PC,
    Instr,
    MemWrite,
    ALUResult,
    WriteData,
    ReadData,
    MemStrobe,
    PCReady);
  input clk;
  input reset;
  output [31:0]PC;
  input [31:0]Instr;
  output MemWrite;
  output [31:0]ALUResult;
  output [31:0]WriteData;
  input [31:0]ReadData;
  output MemStrobe;
  input PCReady;

  wire \<const0> ;
  wire [31:0]ALUResult;
  wire [31:0]Instr;
  wire MemStrobe;
  wire MemWrite;
  wire [31:0]ReadData;
  wire [31:0]WriteData;
  wire clk;

  assign PC[31] = \<const0> ;
  assign PC[30] = \<const0> ;
  assign PC[29] = \<const0> ;
  assign PC[28] = \<const0> ;
  assign PC[27] = \<const0> ;
  assign PC[26] = \<const0> ;
  assign PC[25] = \<const0> ;
  assign PC[24] = \<const0> ;
  assign PC[23] = \<const0> ;
  assign PC[22] = \<const0> ;
  assign PC[21] = \<const0> ;
  assign PC[20] = \<const0> ;
  assign PC[19] = \<const0> ;
  assign PC[18] = \<const0> ;
  assign PC[17] = \<const0> ;
  assign PC[16] = \<const0> ;
  assign PC[15] = \<const0> ;
  assign PC[14] = \<const0> ;
  assign PC[13] = \<const0> ;
  assign PC[12] = \<const0> ;
  assign PC[11] = \<const0> ;
  assign PC[10] = \<const0> ;
  assign PC[9] = \<const0> ;
  assign PC[8] = \<const0> ;
  assign PC[7] = \<const0> ;
  assign PC[6] = \<const0> ;
  assign PC[5] = \<const0> ;
  assign PC[4] = \<const0> ;
  assign PC[3] = \<const0> ;
  assign PC[2] = \<const0> ;
  assign PC[1] = \<const0> ;
  assign PC[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h1)) 
    MemStrobe_INST_0
       (.I0(Instr[4]),
        .I1(Instr[6]),
        .O(MemStrobe));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h02)) 
    MemWrite_INST_0
       (.I0(Instr[5]),
        .I1(Instr[6]),
        .I2(Instr[4]),
        .O(MemWrite));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath dp
       (.ALUResult(ALUResult),
        .Instr(Instr[31:2]),
        .ReadData(ReadData),
        .WriteData(WriteData),
        .clk(clk));
endmodule

(* keep_hierarchy = "soft" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_top
   (clk,
    reset,
    doneM,
    readDataM,
    writeDataM,
    addressM,
    DRW,
    AXIStart);
  input clk;
  (* mark_debug = "true" *) input reset;
  input doneM;
  (* mark_debug = "true" *) input [31:0]readDataM;
  (* mark_debug = "true" *) output [31:0]writeDataM;
  (* mark_debug = "true" *) output [31:0]addressM;
  output DRW;
  output AXIStart;

  wire AXIStart;
  wire DRW;
  (* MARK_DEBUG *) wire [31:0]Instr;
  wire MStrobe;
  wire MemWrite;
  (* MARK_DEBUG *) wire [31:0]PC;
  (* MARK_DEBUG *) wire [31:0]addressM;
  wire clk;
  wire doneM;
  (* MARK_DEBUG *) wire [31:0]readDataM;
  (* MARK_DEBUG *) wire reset;
  (* MARK_DEBUG *) wire [31:0]writeDataM;
  wire [1:0]NLW_imem_rd_UNCONNECTED;
  wire NLW_memcontrol_Done_UNCONNECTED;
  wire [31:0]NLW_riscvsingle_PC_UNCONNECTED;

  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b1),
        .O(Instr[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b1),
        .O(Instr[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_10
       (.I0(1'b0),
        .O(PC[23]));
  LUT1 #(
    .INIT(2'h2)) 
    i_11
       (.I0(1'b0),
        .O(PC[22]));
  LUT1 #(
    .INIT(2'h2)) 
    i_12
       (.I0(1'b0),
        .O(PC[21]));
  LUT1 #(
    .INIT(2'h2)) 
    i_13
       (.I0(1'b0),
        .O(PC[20]));
  LUT1 #(
    .INIT(2'h2)) 
    i_14
       (.I0(1'b0),
        .O(PC[19]));
  LUT1 #(
    .INIT(2'h2)) 
    i_15
       (.I0(1'b0),
        .O(PC[18]));
  LUT1 #(
    .INIT(2'h2)) 
    i_16
       (.I0(1'b0),
        .O(PC[17]));
  LUT1 #(
    .INIT(2'h2)) 
    i_17
       (.I0(1'b0),
        .O(PC[16]));
  LUT1 #(
    .INIT(2'h2)) 
    i_18
       (.I0(1'b0),
        .O(PC[15]));
  LUT1 #(
    .INIT(2'h2)) 
    i_19
       (.I0(1'b0),
        .O(PC[14]));
  LUT1 #(
    .INIT(2'h2)) 
    i_2
       (.I0(1'b0),
        .O(PC[31]));
  LUT1 #(
    .INIT(2'h2)) 
    i_20
       (.I0(1'b0),
        .O(PC[13]));
  LUT1 #(
    .INIT(2'h2)) 
    i_21
       (.I0(1'b0),
        .O(PC[12]));
  LUT1 #(
    .INIT(2'h2)) 
    i_22
       (.I0(1'b0),
        .O(PC[11]));
  LUT1 #(
    .INIT(2'h2)) 
    i_23
       (.I0(1'b0),
        .O(PC[10]));
  LUT1 #(
    .INIT(2'h2)) 
    i_24
       (.I0(1'b0),
        .O(PC[9]));
  LUT1 #(
    .INIT(2'h2)) 
    i_25
       (.I0(1'b0),
        .O(PC[8]));
  LUT1 #(
    .INIT(2'h2)) 
    i_26
       (.I0(1'b0),
        .O(PC[7]));
  LUT1 #(
    .INIT(2'h2)) 
    i_27
       (.I0(1'b0),
        .O(PC[6]));
  LUT1 #(
    .INIT(2'h2)) 
    i_28
       (.I0(1'b0),
        .O(PC[5]));
  LUT1 #(
    .INIT(2'h2)) 
    i_29
       (.I0(1'b0),
        .O(PC[4]));
  LUT1 #(
    .INIT(2'h2)) 
    i_3
       (.I0(1'b0),
        .O(PC[30]));
  LUT1 #(
    .INIT(2'h2)) 
    i_30
       (.I0(1'b0),
        .O(PC[3]));
  LUT1 #(
    .INIT(2'h2)) 
    i_31
       (.I0(1'b0),
        .O(PC[2]));
  LUT1 #(
    .INIT(2'h2)) 
    i_32
       (.I0(1'b0),
        .O(PC[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_33
       (.I0(1'b0),
        .O(PC[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_4
       (.I0(1'b0),
        .O(PC[29]));
  LUT1 #(
    .INIT(2'h2)) 
    i_5
       (.I0(1'b0),
        .O(PC[28]));
  LUT1 #(
    .INIT(2'h2)) 
    i_6
       (.I0(1'b0),
        .O(PC[27]));
  LUT1 #(
    .INIT(2'h2)) 
    i_7
       (.I0(1'b0),
        .O(PC[26]));
  LUT1 #(
    .INIT(2'h2)) 
    i_8
       (.I0(1'b0),
        .O(PC[25]));
  LUT1 #(
    .INIT(2'h2)) 
    i_9
       (.I0(1'b0),
        .O(PC[24]));
  (* KEEP_HIERARCHY = "soft" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_imem imem
       (.a({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,PC[5:2],1'b0,1'b0}),
        .rd({Instr[31:2],NLW_imem_rd_UNCONNECTED[1:0]}));
  (* KEEP_HIERARCHY = "soft" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MemControl memcontrol
       (.AXIstart(AXIStart),
        .DRW(DRW),
        .Done(NLW_memcontrol_Done_UNCONNECTED),
        .MStrobe(MStrobe),
        .MemWrite(MemWrite),
        .Trigger(doneM),
        .clk(clk),
        .reset(reset));
  (* KEEP_HIERARCHY = "soft" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_riscvsingle riscvsingle
       (.ALUResult(addressM),
        .Instr({Instr[31:2],1'b0,1'b0}),
        .MemStrobe(MStrobe),
        .MemWrite(MemWrite),
        .PC(NLW_riscvsingle_PC_UNCONNECTED[31:0]),
        .PCReady(1'b0),
        .ReadData(readDataM),
        .WriteData(writeDataM),
        .clk(clk),
        .reset(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
