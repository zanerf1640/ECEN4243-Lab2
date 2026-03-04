// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Mon Dec  8 15:24:59 2025
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

  wire AXIstart;
  wire DRW;
  wire Done;
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

  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'h06)) 
    AXIstart_INST_0
       (.I0(state[2]),
        .I1(state[0]),
        .I2(state[1]),
        .O(AXIstart));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'h15)) 
    DRW_INST_0
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[0]),
        .O(DRW));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'h01)) 
    Done_INST_0
       (.I0(state[0]),
        .I1(state[2]),
        .I2(state[1]),
        .O(Done));
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
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
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
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder
   (O,
    wd3,
    DI,
    rf_reg_r1_0_31_0_5_i_6_0,
    S,
    rf_reg_r1_0_31_6_11_i_3_0,
    rf_reg_r1_0_31_12_17_i_1_0,
    rf_reg_r1_0_31_12_17_i_5_0,
    rf_reg_r1_0_31_18_23_i_3_0,
    rf_reg_r1_0_31_24_29_i_1_0,
    rf_reg_r1_0_31_24_29_i_5,
    rf_reg_r1_0_31_24_29_i_5_0,
    Jump,
    ReadData,
    Instr,
    ALUResult);
  output [2:0]O;
  output [27:0]wd3;
  input [2:0]DI;
  input [3:0]rf_reg_r1_0_31_0_5_i_6_0;
  input [0:0]S;
  input [3:0]rf_reg_r1_0_31_6_11_i_3_0;
  input [3:0]rf_reg_r1_0_31_12_17_i_1_0;
  input [3:0]rf_reg_r1_0_31_12_17_i_5_0;
  input [3:0]rf_reg_r1_0_31_18_23_i_3_0;
  input [3:0]rf_reg_r1_0_31_24_29_i_1_0;
  input [2:0]rf_reg_r1_0_31_24_29_i_5;
  input [0:0]rf_reg_r1_0_31_24_29_i_5_0;
  input Jump;
  input [27:0]ReadData;
  input [1:0]Instr;
  input [27:0]ALUResult;

  wire [27:0]ALUResult;
  wire [2:0]DI;
  wire [1:0]Instr;
  wire Jump;
  wire [2:0]O;
  wire [27:0]ReadData;
  wire [0:0]S;
  wire [3:0]rf_reg_r1_0_31_0_5_i_6_0;
  wire [3:0]rf_reg_r1_0_31_12_17_i_1_0;
  wire [3:0]rf_reg_r1_0_31_12_17_i_5_0;
  wire [3:0]rf_reg_r1_0_31_18_23_i_3_0;
  wire [3:0]rf_reg_r1_0_31_24_29_i_1_0;
  wire [2:0]rf_reg_r1_0_31_24_29_i_5;
  wire [0:0]rf_reg_r1_0_31_24_29_i_5_0;
  wire [3:0]rf_reg_r1_0_31_6_11_i_3_0;
  wire [27:0]wd3;
  wire y_carry__0_n_0;
  wire y_carry__0_n_1;
  wire y_carry__0_n_2;
  wire y_carry__0_n_3;
  wire y_carry__0_n_4;
  wire y_carry__0_n_5;
  wire y_carry__0_n_6;
  wire y_carry__0_n_7;
  wire y_carry__1_n_0;
  wire y_carry__1_n_1;
  wire y_carry__1_n_2;
  wire y_carry__1_n_3;
  wire y_carry__1_n_4;
  wire y_carry__1_n_5;
  wire y_carry__1_n_6;
  wire y_carry__1_n_7;
  wire y_carry__2_n_0;
  wire y_carry__2_n_1;
  wire y_carry__2_n_2;
  wire y_carry__2_n_3;
  wire y_carry__2_n_4;
  wire y_carry__2_n_5;
  wire y_carry__2_n_6;
  wire y_carry__2_n_7;
  wire y_carry__3_n_0;
  wire y_carry__3_n_1;
  wire y_carry__3_n_2;
  wire y_carry__3_n_3;
  wire y_carry__3_n_4;
  wire y_carry__3_n_5;
  wire y_carry__3_n_6;
  wire y_carry__3_n_7;
  wire y_carry__4_n_0;
  wire y_carry__4_n_1;
  wire y_carry__4_n_2;
  wire y_carry__4_n_3;
  wire y_carry__4_n_4;
  wire y_carry__4_n_5;
  wire y_carry__4_n_6;
  wire y_carry__4_n_7;
  wire y_carry__5_n_0;
  wire y_carry__5_n_1;
  wire y_carry__5_n_2;
  wire y_carry__5_n_3;
  wire y_carry__5_n_4;
  wire y_carry__5_n_5;
  wire y_carry__5_n_6;
  wire y_carry__5_n_7;
  wire y_carry__6_n_2;
  wire y_carry__6_n_3;
  wire y_carry_n_0;
  wire y_carry_n_1;
  wire y_carry_n_2;
  wire y_carry_n_3;
  wire y_carry_n_4;
  wire y_carry_n_5;
  wire y_carry_n_6;
  wire y_carry_n_7;
  wire [3:2]NLW_y_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_y_carry__6_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'hBBBBBBB8888888B8)) 
    rf_reg_r1_0_31_0_5_i_2
       (.I0(y_carry_n_7),
        .I1(Jump),
        .I2(ReadData[0]),
        .I3(Instr[0]),
        .I4(Instr[1]),
        .I5(ALUResult[0]),
        .O(wd3[0]));
  LUT6 #(
    .INIT(64'hBBBBBBB8888888B8)) 
    rf_reg_r1_0_31_0_5_i_4
       (.I0(y_carry_n_5),
        .I1(Jump),
        .I2(ReadData[2]),
        .I3(Instr[0]),
        .I4(Instr[1]),
        .I5(ALUResult[2]),
        .O(wd3[2]));
  LUT6 #(
    .INIT(64'hBBBBBBB8888888B8)) 
    rf_reg_r1_0_31_0_5_i_5
       (.I0(y_carry_n_6),
        .I1(Jump),
        .I2(ReadData[1]),
        .I3(Instr[0]),
        .I4(Instr[1]),
        .I5(ALUResult[1]),
        .O(wd3[1]));
  LUT6 #(
    .INIT(64'hBBBBBBB8888888B8)) 
    rf_reg_r1_0_31_0_5_i_6
       (.I0(y_carry__0_n_7),
        .I1(Jump),
        .I2(ReadData[4]),
        .I3(Instr[0]),
        .I4(Instr[1]),
        .I5(ALUResult[4]),
        .O(wd3[4]));
  LUT6 #(
    .INIT(64'hBBBBBBB8888888B8)) 
    rf_reg_r1_0_31_0_5_i_7
       (.I0(y_carry_n_4),
        .I1(Jump),
        .I2(ReadData[3]),
        .I3(Instr[0]),
        .I4(Instr[1]),
        .I5(ALUResult[3]),
        .O(wd3[3]));
  LUT6 #(
    .INIT(64'hBBBBBBB8888888B8)) 
    rf_reg_r1_0_31_12_17_i_1
       (.I0(y_carry__2_n_7),
        .I1(Jump),
        .I2(ReadData[12]),
        .I3(Instr[0]),
        .I4(Instr[1]),
        .I5(ALUResult[12]),
        .O(wd3[12]));
  LUT6 #(
    .INIT(64'hBBBBBBB8888888B8)) 
    rf_reg_r1_0_31_12_17_i_2
       (.I0(y_carry__1_n_4),
        .I1(Jump),
        .I2(ReadData[11]),
        .I3(Instr[0]),
        .I4(Instr[1]),
        .I5(ALUResult[11]),
        .O(wd3[11]));
  LUT6 #(
    .INIT(64'hBBBBBBB8888888B8)) 
    rf_reg_r1_0_31_12_17_i_3
       (.I0(y_carry__2_n_5),
        .I1(Jump),
        .I2(ReadData[14]),
        .I3(Instr[0]),
        .I4(Instr[1]),
        .I5(ALUResult[14]),
        .O(wd3[14]));
  LUT6 #(
    .INIT(64'hBBBBBBB8888888B8)) 
    rf_reg_r1_0_31_12_17_i_4
       (.I0(y_carry__2_n_6),
        .I1(Jump),
        .I2(ReadData[13]),
        .I3(Instr[0]),
        .I4(Instr[1]),
        .I5(ALUResult[13]),
        .O(wd3[13]));
  LUT6 #(
    .INIT(64'hBBBBBBB8888888B8)) 
    rf_reg_r1_0_31_12_17_i_5
       (.I0(y_carry__3_n_7),
        .I1(Jump),
        .I2(ReadData[16]),
        .I3(Instr[0]),
        .I4(Instr[1]),
        .I5(ALUResult[16]),
        .O(wd3[16]));
  LUT6 #(
    .INIT(64'hBBBBBBB8888888B8)) 
    rf_reg_r1_0_31_12_17_i_6
       (.I0(y_carry__2_n_4),
        .I1(Jump),
        .I2(ReadData[15]),
        .I3(Instr[0]),
        .I4(Instr[1]),
        .I5(ALUResult[15]),
        .O(wd3[15]));
  LUT6 #(
    .INIT(64'hBBBBBBB8888888B8)) 
    rf_reg_r1_0_31_18_23_i_1
       (.I0(y_carry__3_n_5),
        .I1(Jump),
        .I2(ReadData[18]),
        .I3(Instr[0]),
        .I4(Instr[1]),
        .I5(ALUResult[18]),
        .O(wd3[18]));
  LUT6 #(
    .INIT(64'hBBBBBBB8888888B8)) 
    rf_reg_r1_0_31_18_23_i_2
       (.I0(y_carry__3_n_6),
        .I1(Jump),
        .I2(ReadData[17]),
        .I3(Instr[0]),
        .I4(Instr[1]),
        .I5(ALUResult[17]),
        .O(wd3[17]));
  LUT6 #(
    .INIT(64'hBBBBBBB8888888B8)) 
    rf_reg_r1_0_31_18_23_i_3
       (.I0(y_carry__4_n_7),
        .I1(Jump),
        .I2(ReadData[20]),
        .I3(Instr[0]),
        .I4(Instr[1]),
        .I5(ALUResult[20]),
        .O(wd3[20]));
  LUT6 #(
    .INIT(64'hBBBBBBB8888888B8)) 
    rf_reg_r1_0_31_18_23_i_4
       (.I0(y_carry__3_n_4),
        .I1(Jump),
        .I2(ReadData[19]),
        .I3(Instr[0]),
        .I4(Instr[1]),
        .I5(ALUResult[19]),
        .O(wd3[19]));
  LUT6 #(
    .INIT(64'hBBBBBBB8888888B8)) 
    rf_reg_r1_0_31_18_23_i_5
       (.I0(y_carry__4_n_5),
        .I1(Jump),
        .I2(ReadData[22]),
        .I3(Instr[0]),
        .I4(Instr[1]),
        .I5(ALUResult[22]),
        .O(wd3[22]));
  LUT6 #(
    .INIT(64'hBBBBBBB8888888B8)) 
    rf_reg_r1_0_31_18_23_i_6
       (.I0(y_carry__4_n_6),
        .I1(Jump),
        .I2(ReadData[21]),
        .I3(Instr[0]),
        .I4(Instr[1]),
        .I5(ALUResult[21]),
        .O(wd3[21]));
  LUT6 #(
    .INIT(64'hBBBBBBB8888888B8)) 
    rf_reg_r1_0_31_24_29_i_1
       (.I0(y_carry__5_n_7),
        .I1(Jump),
        .I2(ReadData[24]),
        .I3(Instr[0]),
        .I4(Instr[1]),
        .I5(ALUResult[24]),
        .O(wd3[24]));
  LUT6 #(
    .INIT(64'hBBBBBBB8888888B8)) 
    rf_reg_r1_0_31_24_29_i_2
       (.I0(y_carry__4_n_4),
        .I1(Jump),
        .I2(ReadData[23]),
        .I3(Instr[0]),
        .I4(Instr[1]),
        .I5(ALUResult[23]),
        .O(wd3[23]));
  LUT6 #(
    .INIT(64'hBBBBBBB8888888B8)) 
    rf_reg_r1_0_31_24_29_i_3
       (.I0(y_carry__5_n_5),
        .I1(Jump),
        .I2(ReadData[26]),
        .I3(Instr[0]),
        .I4(Instr[1]),
        .I5(ALUResult[26]),
        .O(wd3[26]));
  LUT6 #(
    .INIT(64'hBBBBBBB8888888B8)) 
    rf_reg_r1_0_31_24_29_i_4
       (.I0(y_carry__5_n_6),
        .I1(Jump),
        .I2(ReadData[25]),
        .I3(Instr[0]),
        .I4(Instr[1]),
        .I5(ALUResult[25]),
        .O(wd3[25]));
  LUT6 #(
    .INIT(64'hBBBBBBB8888888B8)) 
    rf_reg_r1_0_31_24_29_i_6
       (.I0(y_carry__5_n_4),
        .I1(Jump),
        .I2(ReadData[27]),
        .I3(Instr[0]),
        .I4(Instr[1]),
        .I5(ALUResult[27]),
        .O(wd3[27]));
  LUT6 #(
    .INIT(64'hBBBBBBB8888888B8)) 
    rf_reg_r1_0_31_6_11_i_1
       (.I0(y_carry__0_n_5),
        .I1(Jump),
        .I2(ReadData[6]),
        .I3(Instr[0]),
        .I4(Instr[1]),
        .I5(ALUResult[6]),
        .O(wd3[6]));
  LUT6 #(
    .INIT(64'hBBBBBBB8888888B8)) 
    rf_reg_r1_0_31_6_11_i_2
       (.I0(y_carry__0_n_6),
        .I1(Jump),
        .I2(ReadData[5]),
        .I3(Instr[0]),
        .I4(Instr[1]),
        .I5(ALUResult[5]),
        .O(wd3[5]));
  LUT6 #(
    .INIT(64'hBBBBBBB8888888B8)) 
    rf_reg_r1_0_31_6_11_i_3
       (.I0(y_carry__1_n_7),
        .I1(Jump),
        .I2(ReadData[8]),
        .I3(Instr[0]),
        .I4(Instr[1]),
        .I5(ALUResult[8]),
        .O(wd3[8]));
  LUT6 #(
    .INIT(64'hBBBBBBB8888888B8)) 
    rf_reg_r1_0_31_6_11_i_4
       (.I0(y_carry__0_n_4),
        .I1(Jump),
        .I2(ReadData[7]),
        .I3(Instr[0]),
        .I4(Instr[1]),
        .I5(ALUResult[7]),
        .O(wd3[7]));
  LUT6 #(
    .INIT(64'hBBBBBBB8888888B8)) 
    rf_reg_r1_0_31_6_11_i_5
       (.I0(y_carry__1_n_5),
        .I1(Jump),
        .I2(ReadData[10]),
        .I3(Instr[0]),
        .I4(Instr[1]),
        .I5(ALUResult[10]),
        .O(wd3[10]));
  LUT6 #(
    .INIT(64'hBBBBBBB8888888B8)) 
    rf_reg_r1_0_31_6_11_i_6
       (.I0(y_carry__1_n_6),
        .I1(Jump),
        .I2(ReadData[9]),
        .I3(Instr[0]),
        .I4(Instr[1]),
        .I5(ALUResult[9]),
        .O(wd3[9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 y_carry
       (.CI(1'b0),
        .CO({y_carry_n_0,y_carry_n_1,y_carry_n_2,y_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,DI[1],1'b0}),
        .O({y_carry_n_4,y_carry_n_5,y_carry_n_6,y_carry_n_7}),
        .S({rf_reg_r1_0_31_0_5_i_6_0[0],DI[2],S,DI[0]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 y_carry__0
       (.CI(y_carry_n_0),
        .CO({y_carry__0_n_0,y_carry__0_n_1,y_carry__0_n_2,y_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({y_carry__0_n_4,y_carry__0_n_5,y_carry__0_n_6,y_carry__0_n_7}),
        .S({rf_reg_r1_0_31_6_11_i_3_0[0],rf_reg_r1_0_31_0_5_i_6_0[3:1]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 y_carry__1
       (.CI(y_carry__0_n_0),
        .CO({y_carry__1_n_0,y_carry__1_n_1,y_carry__1_n_2,y_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({y_carry__1_n_4,y_carry__1_n_5,y_carry__1_n_6,y_carry__1_n_7}),
        .S({rf_reg_r1_0_31_12_17_i_1_0[0],rf_reg_r1_0_31_6_11_i_3_0[3:1]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 y_carry__2
       (.CI(y_carry__1_n_0),
        .CO({y_carry__2_n_0,y_carry__2_n_1,y_carry__2_n_2,y_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({y_carry__2_n_4,y_carry__2_n_5,y_carry__2_n_6,y_carry__2_n_7}),
        .S({rf_reg_r1_0_31_12_17_i_5_0[0],rf_reg_r1_0_31_12_17_i_1_0[3:1]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 y_carry__3
       (.CI(y_carry__2_n_0),
        .CO({y_carry__3_n_0,y_carry__3_n_1,y_carry__3_n_2,y_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({y_carry__3_n_4,y_carry__3_n_5,y_carry__3_n_6,y_carry__3_n_7}),
        .S({rf_reg_r1_0_31_18_23_i_3_0[0],rf_reg_r1_0_31_12_17_i_5_0[3:1]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 y_carry__4
       (.CI(y_carry__3_n_0),
        .CO({y_carry__4_n_0,y_carry__4_n_1,y_carry__4_n_2,y_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({y_carry__4_n_4,y_carry__4_n_5,y_carry__4_n_6,y_carry__4_n_7}),
        .S({rf_reg_r1_0_31_24_29_i_1_0[0],rf_reg_r1_0_31_18_23_i_3_0[3:1]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 y_carry__5
       (.CI(y_carry__4_n_0),
        .CO({y_carry__5_n_0,y_carry__5_n_1,y_carry__5_n_2,y_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({y_carry__5_n_4,y_carry__5_n_5,y_carry__5_n_6,y_carry__5_n_7}),
        .S({rf_reg_r1_0_31_24_29_i_5[0],rf_reg_r1_0_31_24_29_i_1_0[3:1]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 y_carry__6
       (.CI(y_carry__5_n_0),
        .CO({NLW_y_carry__6_CO_UNCONNECTED[3:2],y_carry__6_n_2,y_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_y_carry__6_O_UNCONNECTED[3],O}),
        .S({1'b0,rf_reg_r1_0_31_24_29_i_5_0,rf_reg_r1_0_31_24_29_i_5[2:1]}));
endmodule

(* ORIG_REF_NAME = "adder" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder_0
   (d0,
    sel0,
    DI,
    S,
    \q[4]_i_8 ,
    \q[4]_i_8_0 ,
    \q[8]_i_6 ,
    \q[8]_i_6_0 ,
    \q[12]_i_6 ,
    \q[12]_i_6_0 ,
    \q[16]_i_6 ,
    \q[16]_i_6_0 ,
    \q[20]_i_6 ,
    \q[20]_i_6_0 ,
    \q[24]_i_6 ,
    \q[24]_i_6_0 ,
    \q[28]_i_6 ,
    \q[28]_i_6_0 ,
    Instr);
  output [31:0]d0;
  output [1:0]sel0;
  input [3:0]DI;
  input [3:0]S;
  input [3:0]\q[4]_i_8 ;
  input [3:0]\q[4]_i_8_0 ;
  input [3:0]\q[8]_i_6 ;
  input [3:0]\q[8]_i_6_0 ;
  input [3:0]\q[12]_i_6 ;
  input [3:0]\q[12]_i_6_0 ;
  input [3:0]\q[16]_i_6 ;
  input [3:0]\q[16]_i_6_0 ;
  input [3:0]\q[20]_i_6 ;
  input [3:0]\q[20]_i_6_0 ;
  input [3:0]\q[24]_i_6 ;
  input [3:0]\q[24]_i_6_0 ;
  input [2:0]\q[28]_i_6 ;
  input [3:0]\q[28]_i_6_0 ;
  input [4:0]Instr;

  wire [3:0]DI;
  wire [4:0]Instr;
  wire [3:0]S;
  wire [31:0]d0;
  wire [3:0]\q[12]_i_6 ;
  wire [3:0]\q[12]_i_6_0 ;
  wire [3:0]\q[16]_i_6 ;
  wire [3:0]\q[16]_i_6_0 ;
  wire [3:0]\q[20]_i_6 ;
  wire [3:0]\q[20]_i_6_0 ;
  wire [3:0]\q[24]_i_6 ;
  wire [3:0]\q[24]_i_6_0 ;
  wire [2:0]\q[28]_i_6 ;
  wire [3:0]\q[28]_i_6_0 ;
  wire [3:0]\q[4]_i_8 ;
  wire [3:0]\q[4]_i_8_0 ;
  wire [3:0]\q[8]_i_6 ;
  wire [3:0]\q[8]_i_6_0 ;
  wire [1:0]sel0;
  wire y_carry__0_n_0;
  wire y_carry__0_n_1;
  wire y_carry__0_n_2;
  wire y_carry__0_n_3;
  wire y_carry__1_n_0;
  wire y_carry__1_n_1;
  wire y_carry__1_n_2;
  wire y_carry__1_n_3;
  wire y_carry__2_n_0;
  wire y_carry__2_n_1;
  wire y_carry__2_n_2;
  wire y_carry__2_n_3;
  wire y_carry__3_n_0;
  wire y_carry__3_n_1;
  wire y_carry__3_n_2;
  wire y_carry__3_n_3;
  wire y_carry__4_n_0;
  wire y_carry__4_n_1;
  wire y_carry__4_n_2;
  wire y_carry__4_n_3;
  wire y_carry__5_n_0;
  wire y_carry__5_n_1;
  wire y_carry__5_n_2;
  wire y_carry__5_n_3;
  wire y_carry__6_n_1;
  wire y_carry__6_n_2;
  wire y_carry__6_n_3;
  wire y_carry_n_0;
  wire y_carry_n_1;
  wire y_carry_n_2;
  wire y_carry_n_3;
  wire [3:3]NLW_y_carry__6_CO_UNCONNECTED;

  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 y_carry
       (.CI(1'b0),
        .CO({y_carry_n_0,y_carry_n_1,y_carry_n_2,y_carry_n_3}),
        .CYINIT(1'b0),
        .DI(DI),
        .O(d0[3:0]),
        .S(S));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 y_carry__0
       (.CI(y_carry_n_0),
        .CO({y_carry__0_n_0,y_carry__0_n_1,y_carry__0_n_2,y_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(\q[4]_i_8 ),
        .O(d0[7:4]),
        .S(\q[4]_i_8_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 y_carry__1
       (.CI(y_carry__0_n_0),
        .CO({y_carry__1_n_0,y_carry__1_n_1,y_carry__1_n_2,y_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(\q[8]_i_6 ),
        .O(d0[11:8]),
        .S(\q[8]_i_6_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 y_carry__2
       (.CI(y_carry__1_n_0),
        .CO({y_carry__2_n_0,y_carry__2_n_1,y_carry__2_n_2,y_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(\q[12]_i_6 ),
        .O(d0[15:12]),
        .S(\q[12]_i_6_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 y_carry__3
       (.CI(y_carry__2_n_0),
        .CO({y_carry__3_n_0,y_carry__3_n_1,y_carry__3_n_2,y_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(\q[16]_i_6 ),
        .O(d0[19:16]),
        .S(\q[16]_i_6_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 y_carry__4
       (.CI(y_carry__3_n_0),
        .CO({y_carry__4_n_0,y_carry__4_n_1,y_carry__4_n_2,y_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI(\q[20]_i_6 ),
        .O(d0[23:20]),
        .S(\q[20]_i_6_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 y_carry__5
       (.CI(y_carry__4_n_0),
        .CO({y_carry__5_n_0,y_carry__5_n_1,y_carry__5_n_2,y_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI(\q[24]_i_6 ),
        .O(d0[27:24]),
        .S(\q[24]_i_6_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 y_carry__6
       (.CI(y_carry__5_n_0),
        .CO({NLW_y_carry__6_CO_UNCONNECTED[3],y_carry__6_n_1,y_carry__6_n_2,y_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,\q[28]_i_6 }),
        .O(d0[31:28]),
        .S(\q[28]_i_6_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    y_carry_i_6
       (.I0(Instr[1]),
        .I1(Instr[0]),
        .I2(Instr[4]),
        .O(sel0[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hABAA)) 
    y_carry_i_7
       (.I0(Instr[1]),
        .I1(Instr[2]),
        .I2(Instr[4]),
        .I3(Instr[3]),
        .O(sel0[0]));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_alu
   (O,
    \q_reg[7] ,
    \q_reg[11] ,
    \q_reg[15] ,
    \q_reg[19] ,
    \q_reg[23] ,
    \q_reg[27] ,
    \q_reg[30] ,
    CO,
    ALUResult,
    \ALUResult[31]_INST_0_i_12 ,
    \ALUResult[28]_INST_0 ,
    \ALUResult[0]_INST_0_i_1_0 ,
    immext,
    ALUSrc,
    rd21,
    rd11,
    d1,
    \q_reg[5] ,
    \q_reg[5]_0 ,
    \q_reg[5]_1 ,
    \ALUResult[0]_INST_0_i_3 ,
    SrcA,
    S,
    \ALUResult[4]_INST_0_i_1 ,
    \ALUResult[8]_INST_0_i_2 ,
    \ALUResult[12]_INST_0_i_1 ,
    \ALUResult[16]_INST_0_i_5 ,
    \ALUResult[20]_INST_0_i_2 ,
    \ALUResult[24]_INST_0_i_4 ,
    \ALUResult[28]_INST_0_i_5 ,
    DI,
    sltuOut_carry__0_0,
    sltuOut_carry__1_0,
    sltuOut_carry__1_1,
    sltuOut_carry__2_0,
    sltuOut_carry__2_1,
    \ALUResult[0]_INST_0_i_2_0 ,
    \ALUResult[0]_INST_0_i_2_1 ,
    carried_carry__0_0,
    carried_carry__1_0,
    carried_carry__2_0,
    carried_carry__3_0,
    carried_carry__4_0,
    carried_carry__5_0,
    carried_carry__6_0,
    \q[0]_i_9 ,
    ALUControl,
    \addressM[0] ,
    \addressM[11] ,
    \addressM[11]_0 ,
    \addressM[11]_1 ,
    \q[0]_i_7 ,
    \addressM[29] ,
    \addressM[30] ,
    \addressM[31] ,
    result0__33,
    ALUControl__0,
    \addressM[0]_0 ,
    SrcB,
    data7,
    Instr,
    sel0,
    d0);
  output [3:0]O;
  output [3:0]\q_reg[7] ;
  output [3:0]\q_reg[11] ;
  output [3:0]\q_reg[15] ;
  output [3:0]\q_reg[19] ;
  output [3:0]\q_reg[23] ;
  output [3:0]\q_reg[27] ;
  output [3:0]\q_reg[30] ;
  output [0:0]CO;
  output [4:0]ALUResult;
  output \ALUResult[31]_INST_0_i_12 ;
  output \ALUResult[28]_INST_0 ;
  output \ALUResult[0]_INST_0_i_1_0 ;
  output [7:0]immext;
  output [0:0]ALUSrc;
  output rd21;
  output rd11;
  output [4:0]d1;
  output \q_reg[5] ;
  output \q_reg[5]_0 ;
  output \q_reg[5]_1 ;
  input \ALUResult[0]_INST_0_i_3 ;
  input [31:0]SrcA;
  input [3:0]S;
  input [3:0]\ALUResult[4]_INST_0_i_1 ;
  input [3:0]\ALUResult[8]_INST_0_i_2 ;
  input [3:0]\ALUResult[12]_INST_0_i_1 ;
  input [3:0]\ALUResult[16]_INST_0_i_5 ;
  input [3:0]\ALUResult[20]_INST_0_i_2 ;
  input [3:0]\ALUResult[24]_INST_0_i_4 ;
  input [3:0]\ALUResult[28]_INST_0_i_5 ;
  input [3:0]DI;
  input [3:0]sltuOut_carry__0_0;
  input [3:0]sltuOut_carry__1_0;
  input [3:0]sltuOut_carry__1_1;
  input [3:0]sltuOut_carry__2_0;
  input [3:0]sltuOut_carry__2_1;
  input [3:0]\ALUResult[0]_INST_0_i_2_0 ;
  input [3:0]\ALUResult[0]_INST_0_i_2_1 ;
  input [3:0]carried_carry__0_0;
  input [3:0]carried_carry__1_0;
  input [3:0]carried_carry__2_0;
  input [3:0]carried_carry__3_0;
  input [3:0]carried_carry__4_0;
  input [3:0]carried_carry__5_0;
  input [3:0]carried_carry__6_0;
  input [3:0]\q[0]_i_9 ;
  input [2:0]ALUControl;
  input \addressM[0] ;
  input \addressM[11] ;
  input \addressM[11]_0 ;
  input \addressM[11]_1 ;
  input \q[0]_i_7 ;
  input \addressM[29] ;
  input \addressM[30] ;
  input \addressM[31] ;
  input [0:0]result0__33;
  input [0:0]ALUControl__0;
  input \addressM[0]_0 ;
  input [4:0]SrcB;
  input [3:0]data7;
  input [19:0]Instr;
  input [1:0]sel0;
  input [4:0]d0;

  wire [2:0]ALUControl;
  wire [0:0]ALUControl__0;
  wire [4:0]ALUResult;
  wire \ALUResult[0]_INST_0_i_1_0 ;
  wire \ALUResult[0]_INST_0_i_1_n_0 ;
  wire [3:0]\ALUResult[0]_INST_0_i_2_0 ;
  wire [3:0]\ALUResult[0]_INST_0_i_2_1 ;
  wire \ALUResult[0]_INST_0_i_2_n_0 ;
  wire \ALUResult[0]_INST_0_i_3 ;
  wire [3:0]\ALUResult[12]_INST_0_i_1 ;
  wire [3:0]\ALUResult[16]_INST_0_i_5 ;
  wire [3:0]\ALUResult[20]_INST_0_i_2 ;
  wire [3:0]\ALUResult[24]_INST_0_i_4 ;
  wire \ALUResult[28]_INST_0 ;
  wire [3:0]\ALUResult[28]_INST_0_i_5 ;
  wire \ALUResult[29]_INST_0_i_2_n_0 ;
  wire \ALUResult[30]_INST_0_i_2_n_0 ;
  wire \ALUResult[31]_INST_0_i_12 ;
  wire \ALUResult[31]_INST_0_i_3_n_0 ;
  wire [3:0]\ALUResult[4]_INST_0_i_1 ;
  wire [3:0]\ALUResult[8]_INST_0_i_2 ;
  wire [0:0]ALUSrc;
  wire [0:0]CO;
  wire [3:0]DI;
  wire [19:0]Instr;
  wire [3:0]O;
  wire [3:0]S;
  wire [31:0]SrcA;
  wire [4:0]SrcB;
  wire \addressM[0] ;
  wire \addressM[0]_0 ;
  wire \addressM[11] ;
  wire \addressM[11]_0 ;
  wire \addressM[11]_1 ;
  wire \addressM[29] ;
  wire \addressM[30] ;
  wire \addressM[31] ;
  wire [3:0]carried_carry__0_0;
  wire carried_carry__0_n_0;
  wire carried_carry__0_n_1;
  wire carried_carry__0_n_2;
  wire carried_carry__0_n_3;
  wire [3:0]carried_carry__1_0;
  wire carried_carry__1_n_0;
  wire carried_carry__1_n_1;
  wire carried_carry__1_n_2;
  wire carried_carry__1_n_3;
  wire [3:0]carried_carry__2_0;
  wire carried_carry__2_n_0;
  wire carried_carry__2_n_1;
  wire carried_carry__2_n_2;
  wire carried_carry__2_n_3;
  wire [3:0]carried_carry__3_0;
  wire carried_carry__3_n_0;
  wire carried_carry__3_n_1;
  wire carried_carry__3_n_2;
  wire carried_carry__3_n_3;
  wire [3:0]carried_carry__4_0;
  wire carried_carry__4_n_0;
  wire carried_carry__4_n_1;
  wire carried_carry__4_n_2;
  wire carried_carry__4_n_3;
  wire [3:0]carried_carry__5_0;
  wire carried_carry__5_n_0;
  wire carried_carry__5_n_1;
  wire carried_carry__5_n_2;
  wire carried_carry__5_n_3;
  wire [3:0]carried_carry__6_0;
  wire carried_carry__6_n_1;
  wire carried_carry__6_n_2;
  wire carried_carry__6_n_3;
  wire carried_carry_n_0;
  wire carried_carry_n_1;
  wire carried_carry_n_2;
  wire carried_carry_n_3;
  wire [4:0]d0;
  wire [4:0]d1;
  wire [3:0]data7;
  wire data8;
  wire [7:0]immext;
  wire \q[0]_i_7 ;
  wire [3:0]\q[0]_i_9 ;
  wire [3:0]\q_reg[11] ;
  wire [3:0]\q_reg[15] ;
  wire [3:0]\q_reg[19] ;
  wire [3:0]\q_reg[23] ;
  wire [3:0]\q_reg[27] ;
  wire [3:0]\q_reg[30] ;
  wire \q_reg[5] ;
  wire \q_reg[5]_0 ;
  wire \q_reg[5]_1 ;
  wire [3:0]\q_reg[7] ;
  wire rd11;
  wire rd21;
  wire [0:0]result0__33;
  wire [1:0]sel0;
  wire [3:0]sltuOut_carry__0_0;
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
  wire sum_carry__0_n_0;
  wire sum_carry__0_n_1;
  wire sum_carry__0_n_2;
  wire sum_carry__0_n_3;
  wire sum_carry__1_n_0;
  wire sum_carry__1_n_1;
  wire sum_carry__1_n_2;
  wire sum_carry__1_n_3;
  wire sum_carry__2_n_0;
  wire sum_carry__2_n_1;
  wire sum_carry__2_n_2;
  wire sum_carry__2_n_3;
  wire sum_carry__3_n_0;
  wire sum_carry__3_n_1;
  wire sum_carry__3_n_2;
  wire sum_carry__3_n_3;
  wire sum_carry__4_n_0;
  wire sum_carry__4_n_1;
  wire sum_carry__4_n_2;
  wire sum_carry__4_n_3;
  wire sum_carry__5_n_0;
  wire sum_carry__5_n_1;
  wire sum_carry__5_n_2;
  wire sum_carry__5_n_3;
  wire sum_carry__6_n_1;
  wire sum_carry__6_n_2;
  wire sum_carry__6_n_3;
  wire sum_carry_n_0;
  wire sum_carry_n_1;
  wire sum_carry_n_2;
  wire sum_carry_n_3;
  wire [3:0]NLW_carried_carry_O_UNCONNECTED;
  wire [3:0]NLW_carried_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_carried_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_carried_carry__2_O_UNCONNECTED;
  wire [3:0]NLW_carried_carry__3_O_UNCONNECTED;
  wire [3:0]NLW_carried_carry__4_O_UNCONNECTED;
  wire [3:0]NLW_carried_carry__5_O_UNCONNECTED;
  wire [3:0]NLW_carried_carry__6_O_UNCONNECTED;
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
        .O(ALUResult[0]));
  LUT5 #(
    .INIT(32'hF088F0BB)) 
    \ALUResult[0]_INST_0_i_1 
       (.I0(SrcB[0]),
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
    .INIT(32'hB8BBB888)) 
    \ALUResult[11]_INST_0 
       (.I0(\ALUResult[31]_INST_0_i_12 ),
        .I1(ALUControl[2]),
        .I2(\addressM[11] ),
        .I3(\addressM[11]_0 ),
        .I4(\addressM[11]_1 ),
        .O(ALUResult[1]));
  LUT6 #(
    .INIT(64'hF0C0F0C0BBFFBBCC)) 
    \ALUResult[11]_INST_0_i_1 
       (.I0(SrcB[1]),
        .I1(ALUControl[1]),
        .I2(\q_reg[11] [3]),
        .I3(ALUControl[0]),
        .I4(data7[0]),
        .I5(ALUControl__0),
        .O(\ALUResult[31]_INST_0_i_12 ));
  LUT6 #(
    .INIT(64'hF1FDF9FDE0206020)) 
    \ALUResult[12]_INST_0_i_7 
       (.I0(Instr[0]),
        .I1(Instr[4]),
        .I2(Instr[6]),
        .I3(sel0[0]),
        .I4(Instr[1]),
        .I5(Instr[19]),
        .O(immext[0]));
  LUT6 #(
    .INIT(64'hF1FDF9FDE0206020)) 
    \ALUResult[13]_INST_0_i_7 
       (.I0(Instr[0]),
        .I1(Instr[4]),
        .I2(Instr[7]),
        .I3(sel0[0]),
        .I4(Instr[1]),
        .I5(Instr[19]),
        .O(immext[1]));
  LUT6 #(
    .INIT(64'hF1FDF9FDE0206020)) 
    \ALUResult[14]_INST_0_i_7 
       (.I0(Instr[0]),
        .I1(Instr[4]),
        .I2(Instr[8]),
        .I3(sel0[0]),
        .I4(Instr[1]),
        .I5(Instr[19]),
        .O(immext[2]));
  LUT6 #(
    .INIT(64'hF1FDF9FDE0206020)) 
    \ALUResult[15]_INST_0_i_7 
       (.I0(Instr[0]),
        .I1(Instr[4]),
        .I2(Instr[9]),
        .I3(sel0[0]),
        .I4(Instr[1]),
        .I5(Instr[19]),
        .O(immext[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ALUResult[28]_INST_0_i_10 
       (.I0(Instr[0]),
        .I1(Instr[3]),
        .O(\q_reg[5]_1 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \ALUResult[28]_INST_0_i_9 
       (.I0(Instr[11]),
        .I1(Instr[9]),
        .I2(Instr[10]),
        .I3(Instr[12]),
        .I4(Instr[13]),
        .O(rd11));
  MUXF7 \ALUResult[29]_INST_0 
       (.I0(\addressM[29] ),
        .I1(\ALUResult[29]_INST_0_i_2_n_0 ),
        .O(ALUResult[2]),
        .S(ALUControl[2]));
  LUT6 #(
    .INIT(64'hF0C0F0C0BBFFBBCC)) 
    \ALUResult[29]_INST_0_i_2 
       (.I0(SrcB[2]),
        .I1(ALUControl[1]),
        .I2(\q_reg[30] [1]),
        .I3(ALUControl[0]),
        .I4(data7[1]),
        .I5(ALUControl__0),
        .O(\ALUResult[29]_INST_0_i_2_n_0 ));
  MUXF7 \ALUResult[30]_INST_0 
       (.I0(\addressM[30] ),
        .I1(\ALUResult[30]_INST_0_i_2_n_0 ),
        .O(ALUResult[3]),
        .S(ALUControl[2]));
  LUT6 #(
    .INIT(64'hF0C0F0C0BBFFBBCC)) 
    \ALUResult[30]_INST_0_i_2 
       (.I0(SrcB[3]),
        .I1(ALUControl[1]),
        .I2(\q_reg[30] [2]),
        .I3(ALUControl[0]),
        .I4(data7[2]),
        .I5(ALUControl__0),
        .O(\ALUResult[30]_INST_0_i_2_n_0 ));
  MUXF7 \ALUResult[31]_INST_0 
       (.I0(\addressM[31] ),
        .I1(\ALUResult[31]_INST_0_i_3_n_0 ),
        .O(ALUResult[4]),
        .S(ALUControl[2]));
  LUT6 #(
    .INIT(64'hF0C0F0C0BBFFBBCC)) 
    \ALUResult[31]_INST_0_i_3 
       (.I0(SrcB[4]),
        .I1(ALUControl[1]),
        .I2(\q_reg[30] [3]),
        .I3(ALUControl[0]),
        .I4(data7[3]),
        .I5(ALUControl__0),
        .O(\ALUResult[31]_INST_0_i_3_n_0 ));
  CARRY4 carried_carry
       (.CI(1'b0),
        .CO({carried_carry_n_0,carried_carry_n_1,carried_carry_n_2,carried_carry_n_3}),
        .CYINIT(1'b1),
        .DI(SrcA[3:0]),
        .O(NLW_carried_carry_O_UNCONNECTED[3:0]),
        .S(carried_carry__0_0));
  CARRY4 carried_carry__0
       (.CI(carried_carry_n_0),
        .CO({carried_carry__0_n_0,carried_carry__0_n_1,carried_carry__0_n_2,carried_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(SrcA[7:4]),
        .O(NLW_carried_carry__0_O_UNCONNECTED[3:0]),
        .S(carried_carry__1_0));
  CARRY4 carried_carry__1
       (.CI(carried_carry__0_n_0),
        .CO({carried_carry__1_n_0,carried_carry__1_n_1,carried_carry__1_n_2,carried_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(SrcA[11:8]),
        .O(NLW_carried_carry__1_O_UNCONNECTED[3:0]),
        .S(carried_carry__2_0));
  CARRY4 carried_carry__2
       (.CI(carried_carry__1_n_0),
        .CO({carried_carry__2_n_0,carried_carry__2_n_1,carried_carry__2_n_2,carried_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(SrcA[15:12]),
        .O(NLW_carried_carry__2_O_UNCONNECTED[3:0]),
        .S(carried_carry__3_0));
  CARRY4 carried_carry__3
       (.CI(carried_carry__2_n_0),
        .CO({carried_carry__3_n_0,carried_carry__3_n_1,carried_carry__3_n_2,carried_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(SrcA[19:16]),
        .O(NLW_carried_carry__3_O_UNCONNECTED[3:0]),
        .S(carried_carry__4_0));
  CARRY4 carried_carry__4
       (.CI(carried_carry__3_n_0),
        .CO({carried_carry__4_n_0,carried_carry__4_n_1,carried_carry__4_n_2,carried_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI(SrcA[23:20]),
        .O(NLW_carried_carry__4_O_UNCONNECTED[3:0]),
        .S(carried_carry__5_0));
  CARRY4 carried_carry__5
       (.CI(carried_carry__4_n_0),
        .CO({carried_carry__5_n_0,carried_carry__5_n_1,carried_carry__5_n_2,carried_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI(SrcA[27:24]),
        .O(NLW_carried_carry__5_O_UNCONNECTED[3:0]),
        .S(carried_carry__6_0));
  CARRY4 carried_carry__6
       (.CI(carried_carry__5_n_0),
        .CO({CO,carried_carry__6_n_1,carried_carry__6_n_2,carried_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI(SrcA[31:28]),
        .O(NLW_carried_carry__6_O_UNCONNECTED[3:0]),
        .S(\q[0]_i_9 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \q[0]_i_15 
       (.I0(ALUResult[3]),
        .I1(ALUResult[4]),
        .I2(ALUResult[2]),
        .I3(\q[0]_i_7 ),
        .O(\ALUResult[28]_INST_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hACCCCCCC)) 
    \q[0]_i_2 
       (.I0(ALUResult[0]),
        .I1(d0[0]),
        .I2(Instr[0]),
        .I3(Instr[3]),
        .I4(Instr[4]),
        .O(d1[0]));
  LUT5 #(
    .INIT(32'hACCCCCCC)) 
    \q[12]_i_7 
       (.I0(ALUResult[1]),
        .I1(d0[1]),
        .I2(Instr[0]),
        .I3(Instr[3]),
        .I4(Instr[4]),
        .O(d1[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hACCCCCCC)) 
    \q[31]_i_5 
       (.I0(ALUResult[4]),
        .I1(d0[4]),
        .I2(Instr[0]),
        .I3(Instr[3]),
        .I4(Instr[4]),
        .O(d1[4]));
  LUT5 #(
    .INIT(32'hACCCCCCC)) 
    \q[31]_i_6 
       (.I0(ALUResult[3]),
        .I1(d0[3]),
        .I2(Instr[0]),
        .I3(Instr[3]),
        .I4(Instr[4]),
        .O(d1[3]));
  LUT5 #(
    .INIT(32'hACCCCCCC)) 
    \q[31]_i_7 
       (.I0(ALUResult[2]),
        .I1(d0[2]),
        .I2(Instr[0]),
        .I3(Instr[3]),
        .I4(Instr[4]),
        .O(d1[2]));
  MUXF7 \q_reg[0]_i_20 
       (.I0(\ALUResult[0]_INST_0_i_2_n_0 ),
        .I1(\ALUResult[0]_INST_0_i_1_n_0 ),
        .O(\ALUResult[0]_INST_0_i_1_0 ),
        .S(ALUControl[1]));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 sltuOut_carry
       (.CI(1'b0),
        .CO({sltuOut_carry_n_0,sltuOut_carry_n_1,sltuOut_carry_n_2,sltuOut_carry_n_3}),
        .CYINIT(1'b0),
        .DI(DI),
        .O(NLW_sltuOut_carry_O_UNCONNECTED[3:0]),
        .S(sltuOut_carry__0_0));
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
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sum_carry
       (.CI(1'b0),
        .CO({sum_carry_n_0,sum_carry_n_1,sum_carry_n_2,sum_carry_n_3}),
        .CYINIT(\ALUResult[0]_INST_0_i_3 ),
        .DI(SrcA[3:0]),
        .O(O),
        .S(S));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sum_carry__0
       (.CI(sum_carry_n_0),
        .CO({sum_carry__0_n_0,sum_carry__0_n_1,sum_carry__0_n_2,sum_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(SrcA[7:4]),
        .O(\q_reg[7] ),
        .S(\ALUResult[4]_INST_0_i_1 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sum_carry__1
       (.CI(sum_carry__0_n_0),
        .CO({sum_carry__1_n_0,sum_carry__1_n_1,sum_carry__1_n_2,sum_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(SrcA[11:8]),
        .O(\q_reg[11] ),
        .S(\ALUResult[8]_INST_0_i_2 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sum_carry__2
       (.CI(sum_carry__1_n_0),
        .CO({sum_carry__2_n_0,sum_carry__2_n_1,sum_carry__2_n_2,sum_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(SrcA[15:12]),
        .O(\q_reg[15] ),
        .S(\ALUResult[12]_INST_0_i_1 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sum_carry__3
       (.CI(sum_carry__2_n_0),
        .CO({sum_carry__3_n_0,sum_carry__3_n_1,sum_carry__3_n_2,sum_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(SrcA[19:16]),
        .O(\q_reg[19] ),
        .S(\ALUResult[16]_INST_0_i_5 ));
  LUT6 #(
    .INIT(64'hF1FDF9FDE0206020)) 
    sum_carry__3_i_13
       (.I0(Instr[0]),
        .I1(Instr[4]),
        .I2(Instr[13]),
        .I3(sel0[0]),
        .I4(Instr[1]),
        .I5(Instr[19]),
        .O(immext[7]));
  LUT6 #(
    .INIT(64'hF1FDF9FDE0206020)) 
    sum_carry__3_i_14
       (.I0(Instr[0]),
        .I1(Instr[4]),
        .I2(Instr[12]),
        .I3(sel0[0]),
        .I4(Instr[1]),
        .I5(Instr[19]),
        .O(immext[6]));
  LUT6 #(
    .INIT(64'hF1FDF9FDE0206020)) 
    sum_carry__3_i_15
       (.I0(Instr[0]),
        .I1(Instr[4]),
        .I2(Instr[11]),
        .I3(sel0[0]),
        .I4(Instr[1]),
        .I5(Instr[19]),
        .O(immext[5]));
  LUT6 #(
    .INIT(64'hF1FDF9FDE0206020)) 
    sum_carry__3_i_16
       (.I0(Instr[0]),
        .I1(Instr[4]),
        .I2(Instr[10]),
        .I3(sel0[0]),
        .I4(Instr[1]),
        .I5(Instr[19]),
        .O(immext[4]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sum_carry__4
       (.CI(sum_carry__3_n_0),
        .CO({sum_carry__4_n_0,sum_carry__4_n_1,sum_carry__4_n_2,sum_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI(SrcA[23:20]),
        .O(\q_reg[23] ),
        .S(\ALUResult[20]_INST_0_i_2 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sum_carry__5
       (.CI(sum_carry__4_n_0),
        .CO({sum_carry__5_n_0,sum_carry__5_n_1,sum_carry__5_n_2,sum_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI(SrcA[27:24]),
        .O(\q_reg[27] ),
        .S(\ALUResult[24]_INST_0_i_4 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sum_carry__6
       (.CI(sum_carry__5_n_0),
        .CO({NLW_sum_carry__6_CO_UNCONNECTED[3],sum_carry__6_n_1,sum_carry__6_n_2,sum_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,SrcA[30:28]}),
        .O(\q_reg[30] ),
        .S(\ALUResult[28]_INST_0_i_5 ));
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
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    y_carry__1_i_5
       (.I0(Instr[19]),
        .I1(sel0[1]),
        .I2(Instr[5]),
        .I3(sel0[0]),
        .I4(Instr[14]),
        .I5(\q_reg[5]_0 ),
        .O(\q_reg[5] ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    y_carry_i_5
       (.I0(Instr[0]),
        .I1(Instr[4]),
        .O(\q_reg[5]_0 ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath
   (\q_reg[0] ,
    \q_reg[1] ,
    \q_reg[2] ,
    \q_reg[3] ,
    \q_reg[4] ,
    \q_reg[5] ,
    \q_reg[6] ,
    \q_reg[7] ,
    \q_reg[8] ,
    \q_reg[9] ,
    \q_reg[10] ,
    \q_reg[11] ,
    \q_reg[12] ,
    \q_reg[13] ,
    \q_reg[14] ,
    \q_reg[15] ,
    \q_reg[16] ,
    \q_reg[17] ,
    \q_reg[18] ,
    \q_reg[19] ,
    \q_reg[20] ,
    \q_reg[21] ,
    \q_reg[22] ,
    \q_reg[23] ,
    \q_reg[24] ,
    \q_reg[25] ,
    \q_reg[26] ,
    \q_reg[27] ,
    \q_reg[28] ,
    \q_reg[29] ,
    \q_reg[30] ,
    \q_reg[31] ,
    ALUResult,
    WriteData,
    PCReady,
    clk,
    reset,
    Instr,
    ReadData);
  output \q_reg[0] ;
  output \q_reg[1] ;
  output \q_reg[2] ;
  output \q_reg[3] ;
  output \q_reg[4] ;
  output \q_reg[5] ;
  output \q_reg[6] ;
  output \q_reg[7] ;
  output \q_reg[8] ;
  output \q_reg[9] ;
  output \q_reg[10] ;
  output \q_reg[11] ;
  output \q_reg[12] ;
  output \q_reg[13] ;
  output \q_reg[14] ;
  output \q_reg[15] ;
  output \q_reg[16] ;
  output \q_reg[17] ;
  output \q_reg[18] ;
  output \q_reg[19] ;
  output \q_reg[20] ;
  output \q_reg[21] ;
  output \q_reg[22] ;
  output \q_reg[23] ;
  output \q_reg[24] ;
  output \q_reg[25] ;
  output \q_reg[26] ;
  output \q_reg[27] ;
  output \q_reg[28] ;
  output \q_reg[29] ;
  output \q_reg[30] ;
  output \q_reg[31] ;
  output [31:0]ALUResult;
  output [31:0]WriteData;
  input PCReady;
  input clk;
  input reset;
  input [29:0]Instr;
  input [31:0]ReadData;

  wire [3:1]ALUControl;
  wire [0:0]ALUControl__0;
  wire [31:0]ALUResult;
  wire [0:0]ALUSrc;
  wire [29:0]Instr;
  wire Jump;
  wire Neg;
  wire PCReady;
  wire [31:0]ReadData;
  wire [31:0]SrcA;
  wire [31:0]SrcB;
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
  wire alu_n_32;
  wire alu_n_38;
  wire alu_n_39;
  wire alu_n_4;
  wire alu_n_40;
  wire alu_n_5;
  wire alu_n_57;
  wire alu_n_58;
  wire alu_n_59;
  wire alu_n_6;
  wire alu_n_7;
  wire alu_n_8;
  wire alu_n_9;
  wire clk;
  wire [31:0]d0;
  wire [31:0]d1;
  wire [23:23]data5;
  wire [31:10]data7;
  wire [19:12]\ext/immext ;
  wire pcadd4_n_0;
  wire pcadd4_n_1;
  wire pcadd4_n_2;
  wire pcreg_n_100;
  wire pcreg_n_101;
  wire pcreg_n_102;
  wire pcreg_n_103;
  wire pcreg_n_104;
  wire pcreg_n_105;
  wire pcreg_n_106;
  wire pcreg_n_107;
  wire pcreg_n_108;
  wire pcreg_n_109;
  wire pcreg_n_110;
  wire pcreg_n_111;
  wire pcreg_n_112;
  wire pcreg_n_113;
  wire pcreg_n_114;
  wire pcreg_n_115;
  wire pcreg_n_116;
  wire pcreg_n_117;
  wire pcreg_n_118;
  wire pcreg_n_119;
  wire pcreg_n_120;
  wire pcreg_n_121;
  wire pcreg_n_122;
  wire pcreg_n_123;
  wire pcreg_n_131;
  wire pcreg_n_133;
  wire pcreg_n_134;
  wire pcreg_n_135;
  wire pcreg_n_136;
  wire pcreg_n_137;
  wire pcreg_n_138;
  wire pcreg_n_139;
  wire pcreg_n_140;
  wire pcreg_n_141;
  wire pcreg_n_142;
  wire pcreg_n_143;
  wire pcreg_n_144;
  wire pcreg_n_145;
  wire pcreg_n_146;
  wire pcreg_n_147;
  wire pcreg_n_148;
  wire pcreg_n_149;
  wire pcreg_n_150;
  wire pcreg_n_151;
  wire pcreg_n_152;
  wire pcreg_n_153;
  wire pcreg_n_154;
  wire pcreg_n_155;
  wire pcreg_n_156;
  wire pcreg_n_157;
  wire pcreg_n_158;
  wire pcreg_n_159;
  wire pcreg_n_160;
  wire pcreg_n_161;
  wire pcreg_n_162;
  wire pcreg_n_163;
  wire pcreg_n_164;
  wire pcreg_n_165;
  wire pcreg_n_166;
  wire pcreg_n_167;
  wire pcreg_n_168;
  wire pcreg_n_169;
  wire pcreg_n_170;
  wire pcreg_n_171;
  wire pcreg_n_172;
  wire pcreg_n_173;
  wire pcreg_n_174;
  wire pcreg_n_175;
  wire pcreg_n_176;
  wire pcreg_n_177;
  wire pcreg_n_178;
  wire pcreg_n_179;
  wire pcreg_n_180;
  wire pcreg_n_181;
  wire pcreg_n_182;
  wire pcreg_n_183;
  wire pcreg_n_184;
  wire pcreg_n_185;
  wire pcreg_n_186;
  wire pcreg_n_187;
  wire pcreg_n_188;
  wire pcreg_n_189;
  wire pcreg_n_190;
  wire pcreg_n_191;
  wire pcreg_n_192;
  wire pcreg_n_193;
  wire pcreg_n_194;
  wire pcreg_n_195;
  wire pcreg_n_196;
  wire pcreg_n_197;
  wire pcreg_n_198;
  wire pcreg_n_199;
  wire pcreg_n_200;
  wire pcreg_n_201;
  wire pcreg_n_202;
  wire pcreg_n_47;
  wire pcreg_n_48;
  wire pcreg_n_49;
  wire pcreg_n_85;
  wire pcreg_n_86;
  wire pcreg_n_87;
  wire pcreg_n_90;
  wire pcreg_n_91;
  wire pcreg_n_92;
  wire pcreg_n_93;
  wire pcreg_n_94;
  wire pcreg_n_95;
  wire pcreg_n_96;
  wire pcreg_n_97;
  wire pcreg_n_98;
  wire pcreg_n_99;
  wire \q_reg[0] ;
  wire \q_reg[10] ;
  wire \q_reg[11] ;
  wire \q_reg[12] ;
  wire \q_reg[13] ;
  wire \q_reg[14] ;
  wire \q_reg[15] ;
  wire \q_reg[16] ;
  wire \q_reg[17] ;
  wire \q_reg[18] ;
  wire \q_reg[19] ;
  wire \q_reg[1] ;
  wire \q_reg[20] ;
  wire \q_reg[21] ;
  wire \q_reg[22] ;
  wire \q_reg[23] ;
  wire \q_reg[24] ;
  wire \q_reg[25] ;
  wire \q_reg[26] ;
  wire \q_reg[27] ;
  wire \q_reg[28] ;
  wire \q_reg[29] ;
  wire \q_reg[2] ;
  wire \q_reg[30] ;
  wire \q_reg[31] ;
  wire \q_reg[3] ;
  wire \q_reg[4] ;
  wire \q_reg[5] ;
  wire \q_reg[6] ;
  wire \q_reg[7] ;
  wire \q_reg[8] ;
  wire \q_reg[9] ;
  wire [31:0]rd10;
  wire rd11;
  wire [31:5]rd20;
  wire rd21;
  wire reset;
  wire [0:0]result0__33;
  wire rf_n_100;
  wire rf_n_101;
  wire rf_n_102;
  wire rf_n_103;
  wire rf_n_104;
  wire rf_n_105;
  wire rf_n_106;
  wire rf_n_107;
  wire rf_n_108;
  wire rf_n_109;
  wire rf_n_110;
  wire rf_n_111;
  wire rf_n_112;
  wire rf_n_113;
  wire rf_n_114;
  wire rf_n_115;
  wire rf_n_116;
  wire rf_n_117;
  wire rf_n_118;
  wire rf_n_119;
  wire rf_n_120;
  wire rf_n_121;
  wire rf_n_122;
  wire rf_n_123;
  wire rf_n_124;
  wire rf_n_125;
  wire rf_n_126;
  wire rf_n_127;
  wire rf_n_128;
  wire rf_n_129;
  wire rf_n_163;
  wire rf_n_180;
  wire rf_n_181;
  wire rf_n_182;
  wire rf_n_183;
  wire rf_n_184;
  wire rf_n_185;
  wire rf_n_186;
  wire rf_n_187;
  wire rf_n_188;
  wire rf_n_189;
  wire rf_n_190;
  wire rf_n_191;
  wire rf_n_192;
  wire rf_n_193;
  wire rf_n_194;
  wire rf_n_195;
  wire rf_n_196;
  wire rf_n_197;
  wire rf_n_198;
  wire rf_n_199;
  wire rf_n_200;
  wire rf_n_201;
  wire rf_n_202;
  wire rf_n_203;
  wire rf_n_204;
  wire rf_n_205;
  wire rf_n_206;
  wire rf_n_207;
  wire rf_n_208;
  wire rf_n_209;
  wire rf_n_210;
  wire rf_n_211;
  wire rf_n_212;
  wire rf_n_213;
  wire rf_n_214;
  wire rf_n_215;
  wire rf_n_216;
  wire rf_n_217;
  wire rf_n_218;
  wire rf_n_219;
  wire rf_n_220;
  wire rf_n_221;
  wire rf_n_222;
  wire rf_n_223;
  wire rf_n_224;
  wire rf_n_225;
  wire rf_n_226;
  wire rf_n_227;
  wire rf_n_228;
  wire rf_n_229;
  wire rf_n_230;
  wire rf_n_231;
  wire rf_n_232;
  wire rf_n_233;
  wire rf_n_234;
  wire rf_n_235;
  wire rf_n_236;
  wire rf_n_237;
  wire rf_n_238;
  wire rf_n_239;
  wire rf_n_240;
  wire rf_n_241;
  wire rf_n_242;
  wire rf_n_243;
  wire rf_n_244;
  wire rf_n_245;
  wire rf_n_246;
  wire rf_n_247;
  wire rf_n_248;
  wire rf_n_249;
  wire rf_n_250;
  wire rf_n_251;
  wire rf_n_39;
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
  wire rf_n_89;
  wire rf_n_90;
  wire rf_n_93;
  wire rf_n_94;
  wire rf_n_95;
  wire rf_n_96;
  wire rf_n_97;
  wire rf_n_98;
  wire rf_n_99;
  wire [1:0]sel0;
  wire [31:0]wd3;
  wire [16:11]xorOut__31;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_alu alu
       (.ALUControl(ALUControl),
        .ALUControl__0(ALUControl__0),
        .ALUResult({ALUResult[31:29],ALUResult[11],ALUResult[0]}),
        .\ALUResult[0]_INST_0_i_1_0 (alu_n_40),
        .\ALUResult[0]_INST_0_i_2_0 ({rf_n_124,rf_n_125,rf_n_126,rf_n_127}),
        .\ALUResult[0]_INST_0_i_2_1 ({pcreg_n_200,rf_n_245,rf_n_246,rf_n_247}),
        .\ALUResult[0]_INST_0_i_3 (rf_n_211),
        .\ALUResult[12]_INST_0_i_1 ({rf_n_192,rf_n_193,rf_n_194,rf_n_195}),
        .\ALUResult[16]_INST_0_i_5 ({rf_n_196,rf_n_197,rf_n_198,rf_n_199}),
        .\ALUResult[20]_INST_0_i_2 ({rf_n_200,rf_n_201,rf_n_202,rf_n_203}),
        .\ALUResult[24]_INST_0_i_4 ({rf_n_204,rf_n_205,rf_n_206,rf_n_207}),
        .\ALUResult[28]_INST_0 (alu_n_39),
        .\ALUResult[28]_INST_0_i_5 ({pcreg_n_103,rf_n_208,rf_n_209,rf_n_210}),
        .\ALUResult[31]_INST_0_i_12 (alu_n_38),
        .\ALUResult[4]_INST_0_i_1 ({rf_n_184,rf_n_185,rf_n_186,rf_n_187}),
        .\ALUResult[8]_INST_0_i_2 ({rf_n_188,rf_n_189,rf_n_190,rf_n_191}),
        .ALUSrc(ALUSrc),
        .CO(alu_n_32),
        .DI({rf_n_112,rf_n_113,rf_n_114,rf_n_115}),
        .Instr({Instr[29],Instr[22:10],Instr[5:0]}),
        .O({alu_n_0,alu_n_1,alu_n_2,alu_n_3}),
        .S({rf_n_180,rf_n_181,rf_n_182,rf_n_183}),
        .SrcA(SrcA),
        .SrcB({SrcB[31:29],SrcB[11],SrcB[0]}),
        .\addressM[0] (pcreg_n_47),
        .\addressM[0]_0 (rf_n_251),
        .\addressM[11] (pcreg_n_90),
        .\addressM[11]_0 (pcreg_n_48),
        .\addressM[11]_1 (rf_n_77),
        .\addressM[29] (rf_n_81),
        .\addressM[30] (rf_n_82),
        .\addressM[31] (rf_n_83),
        .carried_carry__0_0({rf_n_213,rf_n_214,rf_n_215,rf_n_216}),
        .carried_carry__1_0({pcreg_n_194,pcreg_n_195,pcreg_n_196,rf_n_217}),
        .carried_carry__2_0({rf_n_224,pcreg_n_197,pcreg_n_198,pcreg_n_199}),
        .carried_carry__3_0({rf_n_225,rf_n_226,rf_n_227,rf_n_228}),
        .carried_carry__4_0({rf_n_229,rf_n_230,rf_n_231,rf_n_232}),
        .carried_carry__5_0({rf_n_237,rf_n_238,rf_n_239,rf_n_240}),
        .carried_carry__6_0({rf_n_241,rf_n_242,rf_n_243,rf_n_244}),
        .d0({d0[31:29],d0[11],d0[0]}),
        .d1({d1[31:29],d1[11],d1[0]}),
        .data7({data7[31:29],data7[11]}),
        .immext(\ext/immext ),
        .\q[0]_i_7 (ALUResult[28]),
        .\q[0]_i_9 ({pcreg_n_201,rf_n_248,rf_n_249,rf_n_250}),
        .\q_reg[11] ({alu_n_8,alu_n_9,alu_n_10,alu_n_11}),
        .\q_reg[15] ({alu_n_12,alu_n_13,alu_n_14,alu_n_15}),
        .\q_reg[19] ({alu_n_16,alu_n_17,alu_n_18,alu_n_19}),
        .\q_reg[23] ({alu_n_20,alu_n_21,alu_n_22,alu_n_23}),
        .\q_reg[27] ({alu_n_24,alu_n_25,alu_n_26,alu_n_27}),
        .\q_reg[30] ({Neg,alu_n_29,alu_n_30,alu_n_31}),
        .\q_reg[5] (alu_n_57),
        .\q_reg[5]_0 (alu_n_58),
        .\q_reg[5]_1 (alu_n_59),
        .\q_reg[7] ({alu_n_4,alu_n_5,alu_n_6,alu_n_7}),
        .rd11(rd11),
        .rd21(rd21),
        .result0__33(result0__33),
        .sel0(sel0),
        .sltuOut_carry__0_0({rf_n_218,rf_n_219,pcreg_n_192,pcreg_n_193}),
        .sltuOut_carry__1_0({rf_n_116,rf_n_117,rf_n_118,rf_n_119}),
        .sltuOut_carry__1_1({rf_n_220,rf_n_221,rf_n_222,rf_n_223}),
        .sltuOut_carry__2_0({rf_n_120,rf_n_121,rf_n_122,rf_n_123}),
        .sltuOut_carry__2_1({rf_n_233,rf_n_234,rf_n_235,rf_n_236}));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder pcadd4
       (.ALUResult(ALUResult[28:1]),
        .DI({\q_reg[3] ,\q_reg[2] ,\q_reg[1] }),
        .Instr(Instr[3:2]),
        .Jump(Jump),
        .O({pcadd4_n_0,pcadd4_n_1,pcadd4_n_2}),
        .ReadData(ReadData[28:1]),
        .S(pcreg_n_114),
        .rf_reg_r1_0_31_0_5_i_6_0({\q_reg[7] ,\q_reg[6] ,\q_reg[5] ,\q_reg[4] }),
        .rf_reg_r1_0_31_12_17_i_1_0({\q_reg[15] ,\q_reg[14] ,\q_reg[13] ,\q_reg[12] }),
        .rf_reg_r1_0_31_12_17_i_5_0({\q_reg[19] ,\q_reg[18] ,\q_reg[17] ,\q_reg[16] }),
        .rf_reg_r1_0_31_18_23_i_3_0({\q_reg[23] ,\q_reg[22] ,\q_reg[21] ,\q_reg[20] }),
        .rf_reg_r1_0_31_24_29_i_1_0({\q_reg[27] ,\q_reg[26] ,\q_reg[25] ,\q_reg[24] }),
        .rf_reg_r1_0_31_24_29_i_5({\q_reg[30] ,\q_reg[29] ,\q_reg[28] }),
        .rf_reg_r1_0_31_24_29_i_5_0(\q_reg[31] ),
        .rf_reg_r1_0_31_6_11_i_3_0({\q_reg[11] ,\q_reg[10] ,\q_reg[9] ,\q_reg[8] }),
        .wd3(wd3[28:1]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder_0 pcaddbranch
       (.DI({\q_reg[3] ,\q_reg[2] ,\q_reg[1] ,\q_reg[0] }),
        .Instr(Instr[4:0]),
        .S({pcreg_n_164,pcreg_n_165,pcreg_n_166,pcreg_n_167}),
        .d0(d0),
        .\q[12]_i_6 ({\q_reg[15] ,\q_reg[14] ,\q_reg[13] ,\q_reg[12] }),
        .\q[12]_i_6_0 ({pcreg_n_176,pcreg_n_177,pcreg_n_178,pcreg_n_179}),
        .\q[16]_i_6 ({\q_reg[19] ,\q_reg[18] ,\q_reg[17] ,\q_reg[16] }),
        .\q[16]_i_6_0 ({pcreg_n_180,pcreg_n_181,pcreg_n_182,pcreg_n_183}),
        .\q[20]_i_6 ({\q_reg[23] ,\q_reg[22] ,\q_reg[21] ,\q_reg[20] }),
        .\q[20]_i_6_0 ({pcreg_n_184,pcreg_n_185,pcreg_n_186,pcreg_n_187}),
        .\q[24]_i_6 ({\q_reg[27] ,\q_reg[26] ,\q_reg[25] ,\q_reg[24] }),
        .\q[24]_i_6_0 ({pcreg_n_188,pcreg_n_189,pcreg_n_190,pcreg_n_191}),
        .\q[28]_i_6 ({\q_reg[30] ,\q_reg[29] ,\q_reg[28] }),
        .\q[28]_i_6_0 ({pcreg_n_110,pcreg_n_111,pcreg_n_112,pcreg_n_113}),
        .\q[4]_i_8 ({\q_reg[7] ,\q_reg[6] ,\q_reg[5] ,\q_reg[4] }),
        .\q[4]_i_8_0 ({pcreg_n_168,pcreg_n_169,pcreg_n_170,pcreg_n_171}),
        .\q[8]_i_6 ({\q_reg[11] ,\q_reg[10] ,\q_reg[9] ,\q_reg[8] }),
        .\q[8]_i_6_0 ({pcreg_n_172,pcreg_n_173,pcreg_n_174,pcreg_n_175}),
        .sel0(sel0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_flopenr pcreg
       (.ALUControl(ALUControl),
        .ALUControl__0(ALUControl__0),
        .ALUResult({ALUResult[31:29],ALUResult[0]}),
        .\ALUResult[0]_INST_0_i_2 ({Neg,alu_n_31}),
        .\ALUResult[10]_INST_0_i_1_0 (rf_n_212),
        .\ALUResult[10]_INST_0_i_2 (rf_n_163),
        .\ALUResult[11]_INST_0_i_25_0 (pcreg_n_104),
        .\ALUResult[12]_INST_0_i_3_0 (rf_n_128),
        .\ALUResult[16]_INST_0_i_4_0 (rf_n_111),
        .\ALUResult[17]_INST_0_i_2_0 (pcreg_n_86),
        .\ALUResult[17]_INST_0_i_6 (pcreg_n_87),
        .\ALUResult[17]_INST_0_i_7 (rf_n_129),
        .\ALUResult[18]_INST_0_i_6 (pcreg_n_91),
        .\ALUResult[19]_INST_0_i_2_0 ({alu_n_16,alu_n_17,alu_n_18,alu_n_19}),
        .\ALUResult[19]_INST_0_i_6 (pcreg_n_92),
        .\ALUResult[1]_INST_0_i_12_0 (pcreg_n_109),
        .\ALUResult[1]_INST_0_i_4 (pcreg_n_95),
        .\ALUResult[20]_INST_0_i_1 (pcreg_n_93),
        .\ALUResult[20]_INST_0_i_14_0 (pcreg_n_147),
        .\ALUResult[21]_INST_0_i_14_0 (pcreg_n_150),
        .\ALUResult[22]_INST_0_i_13_0 (pcreg_n_97),
        .\ALUResult[23]_INST_0_i_12_0 (pcreg_n_144),
        .\ALUResult[23]_INST_0_i_1_0 ({alu_n_20,alu_n_23}),
        .\ALUResult[23]_INST_0_i_5 (pcreg_n_96),
        .\ALUResult[24]_INST_0_i_5 (pcreg_n_98),
        .\ALUResult[25]_INST_0_i_5 (pcreg_n_99),
        .\ALUResult[26]_INST_0_i_5 (pcreg_n_100),
        .\ALUResult[27]_INST_0_i_1_0 ({alu_n_24,alu_n_25,alu_n_26,alu_n_27}),
        .\ALUResult[27]_INST_0_i_5 (pcreg_n_101),
        .\ALUResult[2]_INST_0_i_12_0 (pcreg_n_108),
        .\ALUResult[31]_INST_0_i_10_0 (pcreg_n_48),
        .\ALUResult[31]_INST_0_i_12_0 (pcreg_n_49),
        .\ALUResult[31]_INST_0_i_12_1 (pcreg_n_94),
        .\ALUResult[31]_INST_0_i_19_0 (pcreg_n_102),
        .\ALUResult[31]_INST_0_i_21_0 (pcreg_n_131),
        .\ALUResult[3]_INST_0_i_12_0 (pcreg_n_107),
        .\ALUResult[8]_INST_0_i_10_0 (pcreg_n_106),
        .\ALUResult[9]_INST_0_i_10_0 (pcreg_n_105),
        .ALUSrc(ALUSrc),
        .CO(alu_n_32),
        .DI({\q_reg[3] ,\q_reg[2] ,\q_reg[1] ,\q_reg[0] }),
        .Instr(Instr),
        .Jump(Jump),
        .O(alu_n_3),
        .PCReady(PCReady),
        .ReadData({ReadData[31:29],ReadData[0]}),
        .S(pcreg_n_114),
        .SrcA(SrcA),
        .SrcB({SrcB[31:30],SrcB[15:12],SrcB[10],SrcB[7:0]}),
        .\addressM[10] (rf_n_76),
        .\addressM[11] ({alu_n_8,alu_n_9}),
        .\addressM[12] (rf_n_97),
        .\addressM[13] (rf_n_98),
        .\addressM[14] (rf_n_99),
        .\addressM[15] ({alu_n_12,alu_n_13,alu_n_14,alu_n_15}),
        .\addressM[15]_0 (rf_n_100),
        .\addressM[16] (rf_n_90),
        .\addressM[16]_0 (rf_n_101),
        .\addressM[17] (rf_n_102),
        .\addressM[18] (rf_n_103),
        .\addressM[19] (rf_n_104),
        .\addressM[23] (rf_n_105),
        .\addressM[24] (rf_n_106),
        .\addressM[25] (rf_n_107),
        .\addressM[26] (rf_n_108),
        .\addressM[27] (rf_n_109),
        .\addressM[28] (rf_n_84),
        .\addressM[28]_0 (rf_n_89),
        .\addressM[28]_1 (rf_n_110),
        .\addressM[4] (rf_n_93),
        .\addressM[5] (rf_n_94),
        .\addressM[6] (rf_n_95),
        .\addressM[7] ({alu_n_4,alu_n_5,alu_n_6,alu_n_7}),
        .\addressM[7]_0 (rf_n_96),
        .carried_carry__1(alu_n_58),
        .clk(clk),
        .d0({d0[28],d0[16:12],d0[10],d0[7:4]}),
        .data5(data5),
        .data7({data7[31],data7[15:10]}),
        .\q[0]_i_17 (rf_n_80),
        .\q[0]_i_3_0 (rf_n_73),
        .\q[0]_i_3_1 (rf_n_39),
        .\q[0]_i_3_2 (rf_n_75),
        .\q[0]_i_3_3 (rf_n_74),
        .\q[0]_i_7 (rf_n_79),
        .\q_reg[0]_0 (pcreg_n_47),
        .\q_reg[0]_1 (rf_n_78),
        .\q_reg[10]_0 (pcreg_n_85),
        .\q_reg[10]_1 ({pcreg_n_197,pcreg_n_198,pcreg_n_199}),
        .\q_reg[11]_0 ({\q_reg[11] ,\q_reg[10] ,\q_reg[9] ,\q_reg[8] }),
        .\q_reg[11]_1 (pcreg_n_90),
        .\q_reg[11]_2 ({pcreg_n_172,pcreg_n_173,pcreg_n_174,pcreg_n_175}),
        .\q_reg[13]_0 (pcreg_n_139),
        .\q_reg[15]_0 ({\q_reg[15] ,\q_reg[14] ,\q_reg[13] ,\q_reg[12] }),
        .\q_reg[15]_1 (pcreg_n_140),
        .\q_reg[15]_2 ({pcreg_n_176,pcreg_n_177,pcreg_n_178,pcreg_n_179}),
        .\q_reg[19]_0 ({\q_reg[19] ,\q_reg[18] ,\q_reg[17] ,\q_reg[16] }),
        .\q_reg[19]_1 ({pcreg_n_180,pcreg_n_181,pcreg_n_182,pcreg_n_183}),
        .\q_reg[1]_0 (pcreg_n_141),
        .\q_reg[21]_0 (pcreg_n_120),
        .\q_reg[23]_0 ({\q_reg[23] ,\q_reg[22] ,\q_reg[21] ,\q_reg[20] }),
        .\q_reg[23]_1 (pcreg_n_119),
        .\q_reg[23]_2 ({pcreg_n_184,pcreg_n_185,pcreg_n_186,pcreg_n_187}),
        .\q_reg[24]_0 (pcreg_n_149),
        .\q_reg[25]_0 (pcreg_n_116),
        .\q_reg[25]_1 (pcreg_n_118),
        .\q_reg[25]_2 (pcreg_n_152),
        .\q_reg[26]_0 (pcreg_n_122),
        .\q_reg[26]_1 (pcreg_n_123),
        .\q_reg[26]_2 (pcreg_n_148),
        .\q_reg[27]_0 ({\q_reg[27] ,\q_reg[26] ,\q_reg[25] ,\q_reg[24] }),
        .\q_reg[27]_1 (pcreg_n_117),
        .\q_reg[27]_2 (pcreg_n_136),
        .\q_reg[27]_3 (pcreg_n_151),
        .\q_reg[27]_4 ({pcreg_n_188,pcreg_n_189,pcreg_n_190,pcreg_n_191}),
        .\q_reg[28]_0 ({ALUResult[28],ALUResult[16:12],ALUResult[10],ALUResult[7:4]}),
        .\q_reg[28]_1 (pcreg_n_121),
        .\q_reg[28]_2 (pcreg_n_134),
        .\q_reg[29]_0 (pcreg_n_115),
        .\q_reg[29]_1 (pcreg_n_135),
        .\q_reg[2]_0 ({pcreg_n_192,pcreg_n_193}),
        .\q_reg[30]_0 ({\q_reg[30] ,\q_reg[29] ,\q_reg[28] }),
        .\q_reg[30]_1 (pcreg_n_133),
        .\q_reg[30]_2 (pcreg_n_143),
        .\q_reg[30]_3 (pcreg_n_145),
        .\q_reg[30]_4 (pcreg_n_200),
        .\q_reg[31]_0 (\q_reg[31] ),
        .\q_reg[31]_1 (pcreg_n_103),
        .\q_reg[31]_2 ({pcreg_n_110,pcreg_n_111,pcreg_n_112,pcreg_n_113}),
        .\q_reg[31]_3 (pcreg_n_146),
        .\q_reg[31]_4 (pcreg_n_201),
        .\q_reg[31]_5 ({d1[31:29],d1[27:17],d1[11],d1[9:8],d1[3:0]}),
        .\q_reg[3]_0 (pcreg_n_142),
        .\q_reg[3]_1 ({pcreg_n_164,pcreg_n_165,pcreg_n_166,pcreg_n_167}),
        .\q_reg[4]_0 (pcreg_n_155),
        .\q_reg[5]_0 (pcreg_n_153),
        .\q_reg[5]_1 (pcreg_n_154),
        .\q_reg[5]_10 (pcreg_n_202),
        .\q_reg[5]_2 (pcreg_n_156),
        .\q_reg[5]_3 (pcreg_n_157),
        .\q_reg[5]_4 (pcreg_n_158),
        .\q_reg[5]_5 (pcreg_n_159),
        .\q_reg[5]_6 (pcreg_n_160),
        .\q_reg[5]_7 (pcreg_n_161),
        .\q_reg[5]_8 (pcreg_n_162),
        .\q_reg[5]_9 (pcreg_n_163),
        .\q_reg[7]_0 ({\q_reg[7] ,\q_reg[6] ,\q_reg[5] ,\q_reg[4] }),
        .\q_reg[7]_1 (pcreg_n_137),
        .\q_reg[7]_2 ({pcreg_n_168,pcreg_n_169,pcreg_n_170,pcreg_n_171}),
        .\q_reg[7]_3 ({pcreg_n_194,pcreg_n_195,pcreg_n_196}),
        .\q_reg[9]_0 (pcreg_n_138),
        .rd10(rd10),
        .rd11(rd11),
        .rd20({rd20[31],rd20[10:5]}),
        .rd21(rd21),
        .reset(reset),
        .result0__33(result0__33),
        .rf_reg_r2_0_31_30_31__0({pcadd4_n_0,pcadd4_n_1,pcadd4_n_2}),
        .sel0(sel0),
        .wd3({wd3[31:29],wd3[0]}),
        .xorOut__31({xorOut__31[16:15],xorOut__31[13],xorOut__31[11]}),
        .y_carry__1(alu_n_57));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_regfile rf
       (.ALUControl(ALUControl),
        .ALUControl__0(ALUControl__0),
        .ALUResult({ALUResult[27:17],ALUResult[9:8],ALUResult[3:1]}),
        .\ALUResult[0]_INST_0_i_1 (pcreg_n_202),
        .\ALUResult[11]_INST_0_i_1 (rf_n_75),
        .\ALUResult[11]_INST_0_i_17 (rf_n_111),
        .\ALUResult[11]_INST_0_i_1_0 (alu_n_57),
        .\ALUResult[11]_INST_0_i_26 (rf_n_128),
        .\ALUResult[12]_INST_0_i_6 (pcreg_n_119),
        .\ALUResult[12]_INST_0_i_6_0 (pcreg_n_118),
        .\ALUResult[12]_INST_0_i_6_1 (pcreg_n_120),
        .\ALUResult[16]_INST_0_i_7 (pcreg_n_116),
        .\ALUResult[17]_INST_0_i_4_0 (pcreg_n_104),
        .\ALUResult[18]_INST_0_i_7_0 (pcreg_n_122),
        .\ALUResult[18]_INST_0_i_7_1 (pcreg_n_149),
        .\ALUResult[18]_INST_0_i_7_2 (pcreg_n_145),
        .\ALUResult[18]_INST_0_i_7_3 (pcreg_n_123),
        .\ALUResult[19]_INST_0_i_14 (pcreg_n_160),
        .\ALUResult[19]_INST_0_i_14_0 (pcreg_n_161),
        .\ALUResult[19]_INST_0_i_14_1 (pcreg_n_162),
        .\ALUResult[19]_INST_0_i_14_2 (pcreg_n_163),
        .\ALUResult[19]_INST_0_i_2 ({alu_n_16,alu_n_17,alu_n_18,alu_n_19}),
        .\ALUResult[19]_INST_0_i_4_0 (pcreg_n_147),
        .\ALUResult[19]_INST_0_i_7_0 (pcreg_n_117),
        .\ALUResult[19]_INST_0_i_7_1 (pcreg_n_152),
        .\ALUResult[19]_INST_0_i_7_2 (pcreg_n_146),
        .\ALUResult[1]_INST_0_i_1_0 (pcreg_n_109),
        .\ALUResult[1]_INST_0_i_2_0 (rf_n_39),
        .\ALUResult[20]_INST_0_i_6_0 (pcreg_n_150),
        .\ALUResult[20]_INST_0_i_9_0 (pcreg_n_121),
        .\ALUResult[21]_INST_0_i_2_0 (pcreg_n_138),
        .\ALUResult[21]_INST_0_i_2_1 (pcreg_n_139),
        .\ALUResult[21]_INST_0_i_2_2 (pcreg_n_137),
        .\ALUResult[21]_INST_0_i_5 (pcreg_n_153),
        .\ALUResult[21]_INST_0_i_5_0 (pcreg_n_154),
        .\ALUResult[21]_INST_0_i_5_1 (pcreg_n_158),
        .\ALUResult[21]_INST_0_i_5_2 (pcreg_n_159),
        .\ALUResult[21]_INST_0_i_9_0 (pcreg_n_115),
        .\ALUResult[21]_INST_0_i_9_1 (pcreg_n_136),
        .\ALUResult[22]_INST_0_i_19_0 (pcreg_n_134),
        .\ALUResult[22]_INST_0_i_19_1 (pcreg_n_151),
        .\ALUResult[22]_INST_0_i_19_2 (pcreg_n_143),
        .\ALUResult[22]_INST_0_i_19_3 (pcreg_n_148),
        .\ALUResult[22]_INST_0_i_7_0 (rf_n_211),
        .\ALUResult[22]_INST_0_i_9_0 (pcreg_n_144),
        .\ALUResult[23]_INST_0_i_2_0 (data5),
        .\ALUResult[25]_INST_0_i_6_0 (pcreg_n_135),
        .\ALUResult[26]_INST_0_i_6_0 (pcreg_n_133),
        .\ALUResult[29]_INST_0_i_2 (pcreg_n_102),
        .\ALUResult[29]_INST_0_i_5_0 (pcreg_n_140),
        .\ALUResult[29]_INST_0_i_5_1 (pcreg_n_142),
        .\ALUResult[29]_INST_0_i_5_2 (pcreg_n_141),
        .\ALUResult[29]_INST_0_i_5_3 (pcreg_n_157),
        .\ALUResult[2]_INST_0_i_1_0 (pcreg_n_108),
        .\ALUResult[30]_INST_0_i_2 (alu_n_58),
        .\ALUResult[30]_INST_0_i_2_0 (pcreg_n_131),
        .\ALUResult[31]_INST_0_i_12 (rf_n_76),
        .\ALUResult[31]_INST_0_i_12_0 (rf_n_80),
        .\ALUResult[31]_INST_0_i_12_1 (rf_n_93),
        .\ALUResult[31]_INST_0_i_12_10 (rf_n_102),
        .\ALUResult[31]_INST_0_i_12_11 (rf_n_103),
        .\ALUResult[31]_INST_0_i_12_12 (rf_n_104),
        .\ALUResult[31]_INST_0_i_12_13 (rf_n_105),
        .\ALUResult[31]_INST_0_i_12_14 (rf_n_106),
        .\ALUResult[31]_INST_0_i_12_15 (rf_n_107),
        .\ALUResult[31]_INST_0_i_12_16 (rf_n_108),
        .\ALUResult[31]_INST_0_i_12_17 (rf_n_109),
        .\ALUResult[31]_INST_0_i_12_18 (rf_n_110),
        .\ALUResult[31]_INST_0_i_12_2 (rf_n_94),
        .\ALUResult[31]_INST_0_i_12_3 (rf_n_95),
        .\ALUResult[31]_INST_0_i_12_4 (rf_n_96),
        .\ALUResult[31]_INST_0_i_12_5 (rf_n_97),
        .\ALUResult[31]_INST_0_i_12_6 (rf_n_98),
        .\ALUResult[31]_INST_0_i_12_7 (rf_n_99),
        .\ALUResult[31]_INST_0_i_12_8 (rf_n_100),
        .\ALUResult[31]_INST_0_i_12_9 (rf_n_101),
        .\ALUResult[31]_INST_0_i_14 (data7[30:29]),
        .\ALUResult[3]_INST_0_i_1_0 (pcreg_n_107),
        .\ALUResult[3]_INST_0_i_2_0 (rf_n_73),
        .\ALUResult[8]_INST_0_i_1_0 (pcreg_n_106),
        .\ALUResult[9]_INST_0_i_1_0 (pcreg_n_105),
        .\ALUResult[9]_INST_0_i_2_0 (rf_n_74),
        .\ALUResult[9]_INST_0_i_2_1 (pcreg_n_155),
        .\ALUResult[9]_INST_0_i_2_2 (pcreg_n_156),
        .ALUSrc(ALUSrc),
        .DI({rf_n_112,rf_n_113,rf_n_114,rf_n_115}),
        .Instr({Instr[29:13],Instr[9:2],Instr[0]}),
        .Jump(Jump),
        .O({alu_n_0,alu_n_1,alu_n_2}),
        .S({rf_n_180,rf_n_181,rf_n_182,rf_n_183}),
        .SrcA(SrcA),
        .WriteData(WriteData),
        .\addressM[10] ({alu_n_9,alu_n_10,alu_n_11}),
        .\addressM[11] ({\q_reg[11] ,\q_reg[10] ,\q_reg[9] ,\q_reg[8] }),
        .\addressM[15] ({data7[15:12],data7[10]}),
        .\addressM[15]_0 ({alu_n_12,alu_n_13,alu_n_14,alu_n_15}),
        .\addressM[17] (pcreg_n_87),
        .\addressM[18] (pcreg_n_91),
        .\addressM[19] (pcreg_n_92),
        .\addressM[1] (pcreg_n_49),
        .\addressM[20] (pcreg_n_94),
        .\addressM[21] (pcreg_n_95),
        .\addressM[22] (pcreg_n_97),
        .\addressM[23] (pcreg_n_48),
        .\addressM[23]_0 ({alu_n_20,alu_n_21,alu_n_22,alu_n_23}),
        .\addressM[23]_1 (pcreg_n_96),
        .\addressM[23]_2 ({\q_reg[23] ,\q_reg[22] ,\q_reg[21] ,\q_reg[20] }),
        .\addressM[24] (pcreg_n_98),
        .\addressM[25] (pcreg_n_99),
        .\addressM[26] (pcreg_n_100),
        .\addressM[27] (pcreg_n_101),
        .\addressM[27]_0 ({alu_n_24,alu_n_25,alu_n_26,alu_n_27}),
        .\addressM[27]_1 ({\q_reg[27] ,\q_reg[26] ,\q_reg[25] ,\q_reg[24] }),
        .\addressM[28] (alu_n_59),
        .\addressM[31] ({Neg,alu_n_29,alu_n_30,alu_n_31}),
        .\addressM[7] ({alu_n_4,alu_n_5,alu_n_6,alu_n_7}),
        .clk(clk),
        .clk_0({rd20[31],rd20[10:5]}),
        .d0({d0[27:17],d0[9:8],d0[3:1]}),
        .immext(\ext/immext ),
        .\q[0]_i_12_0 (pcreg_n_90),
        .\q[0]_i_19 (rf_n_78),
        .\q[0]_i_3 (alu_n_39),
        .\q[0]_i_3_0 (pcreg_n_86),
        .\q[0]_i_5 (pcreg_n_47),
        .\q[0]_i_5_0 (alu_n_40),
        .\q[0]_i_6 (pcreg_n_85),
        .\q[0]_i_6_0 (alu_n_38),
        .\q[0]_i_7_0 (pcreg_n_93),
        .\q_reg[0] (rf_n_251),
        .\q_reg[10] (rf_n_212),
        .\q_reg[11] (rf_n_77),
        .\q_reg[11]_0 ({rf_n_188,rf_n_189,rf_n_190,rf_n_191}),
        .\q_reg[11]_1 (rf_n_224),
        .\q_reg[14] ({rf_n_116,rf_n_117,rf_n_118,rf_n_119}),
        .\q_reg[14]_0 ({rf_n_220,rf_n_221,rf_n_222,rf_n_223}),
        .\q_reg[15] ({rf_n_192,rf_n_193,rf_n_194,rf_n_195}),
        .\q_reg[15]_0 ({rf_n_225,rf_n_226,rf_n_227,rf_n_228}),
        .\q_reg[16] ({xorOut__31[16:15],xorOut__31[13],xorOut__31[11]}),
        .\q_reg[16]_0 (rf_n_90),
        .\q_reg[17] (rf_n_79),
        .\q_reg[19] ({rf_n_196,rf_n_197,rf_n_198,rf_n_199}),
        .\q_reg[19]_0 ({rf_n_229,rf_n_230,rf_n_231,rf_n_232}),
        .\q_reg[22] ({rf_n_120,rf_n_121,rf_n_122,rf_n_123}),
        .\q_reg[22]_0 ({rf_n_233,rf_n_234,rf_n_235,rf_n_236}),
        .\q_reg[23] ({rf_n_200,rf_n_201,rf_n_202,rf_n_203}),
        .\q_reg[23]_0 ({rf_n_237,rf_n_238,rf_n_239,rf_n_240}),
        .\q_reg[27] (rf_n_129),
        .\q_reg[27]_0 ({d1[27:17],d1[9:8],d1[3:1]}),
        .\q_reg[27]_1 ({rf_n_204,rf_n_205,rf_n_206,rf_n_207}),
        .\q_reg[27]_2 ({rf_n_241,rf_n_242,rf_n_243,rf_n_244}),
        .\q_reg[28] (rf_n_84),
        .\q_reg[28]_0 (rf_n_89),
        .\q_reg[28]_1 ({rf_n_245,rf_n_246,rf_n_247}),
        .\q_reg[29] (rf_n_81),
        .\q_reg[30] (rf_n_82),
        .\q_reg[30]_0 ({rf_n_124,rf_n_125,rf_n_126,rf_n_127}),
        .\q_reg[30]_1 ({rf_n_208,rf_n_209,rf_n_210}),
        .\q_reg[30]_2 ({rf_n_248,rf_n_249,rf_n_250}),
        .\q_reg[31] (rf_n_83),
        .\q_reg[3] (rf_n_163),
        .\q_reg[3]_0 ({rf_n_213,rf_n_214,rf_n_215,rf_n_216}),
        .\q_reg[4] (rf_n_217),
        .\q_reg[5] ({SrcB[31:29],SrcB[15:10],SrcB[7:0]}),
        .\q_reg[6] ({rf_n_218,rf_n_219}),
        .\q_reg[7] ({rf_n_184,rf_n_185,rf_n_186,rf_n_187}),
        .rd10(rd10),
        .rd11(rd11),
        .rd21(rd21),
        .sel0(sel0[1]),
        .sum_carry({\q_reg[3] ,\q_reg[2] ,\q_reg[1] ,\q_reg[0] }),
        .sum_carry__0({\q_reg[7] ,\q_reg[6] ,\q_reg[5] ,\q_reg[4] }),
        .sum_carry__2({\q_reg[15] ,\q_reg[14] ,\q_reg[13] ,\q_reg[12] }),
        .sum_carry__3({\q_reg[19] ,\q_reg[18] ,\q_reg[17] ,\q_reg[16] }),
        .sum_carry__6({\q_reg[30] ,\q_reg[29] ,\q_reg[28] }),
        .wd3(wd3));
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

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_flopenr
   (DI,
    \q_reg[7]_0 ,
    \q_reg[11]_0 ,
    \q_reg[15]_0 ,
    \q_reg[19]_0 ,
    \q_reg[23]_0 ,
    \q_reg[27]_0 ,
    \q_reg[30]_0 ,
    \q_reg[31]_0 ,
    wd3,
    \q_reg[28]_0 ,
    \q_reg[0]_0 ,
    \ALUResult[31]_INST_0_i_10_0 ,
    \ALUResult[31]_INST_0_i_12_0 ,
    SrcA,
    ALUControl,
    \q_reg[10]_0 ,
    \ALUResult[17]_INST_0_i_2_0 ,
    \ALUResult[17]_INST_0_i_6 ,
    result0__33,
    ALUControl__0,
    \q_reg[11]_1 ,
    \ALUResult[18]_INST_0_i_6 ,
    \ALUResult[19]_INST_0_i_6 ,
    \ALUResult[20]_INST_0_i_1 ,
    \ALUResult[31]_INST_0_i_12_1 ,
    \ALUResult[1]_INST_0_i_4 ,
    \ALUResult[23]_INST_0_i_5 ,
    \ALUResult[22]_INST_0_i_13_0 ,
    \ALUResult[24]_INST_0_i_5 ,
    \ALUResult[25]_INST_0_i_5 ,
    \ALUResult[26]_INST_0_i_5 ,
    \ALUResult[27]_INST_0_i_5 ,
    \ALUResult[31]_INST_0_i_19_0 ,
    \q_reg[31]_1 ,
    \ALUResult[11]_INST_0_i_25_0 ,
    \ALUResult[9]_INST_0_i_10_0 ,
    \ALUResult[8]_INST_0_i_10_0 ,
    \ALUResult[3]_INST_0_i_12_0 ,
    \ALUResult[2]_INST_0_i_12_0 ,
    \ALUResult[1]_INST_0_i_12_0 ,
    \q_reg[31]_2 ,
    S,
    \q_reg[29]_0 ,
    \q_reg[25]_0 ,
    \q_reg[27]_1 ,
    \q_reg[25]_1 ,
    \q_reg[23]_1 ,
    \q_reg[21]_0 ,
    \q_reg[28]_1 ,
    \q_reg[26]_0 ,
    \q_reg[26]_1 ,
    data7,
    \ALUResult[31]_INST_0_i_21_0 ,
    data5,
    \q_reg[30]_1 ,
    \q_reg[28]_2 ,
    \q_reg[29]_1 ,
    \q_reg[27]_2 ,
    \q_reg[7]_1 ,
    \q_reg[9]_0 ,
    \q_reg[13]_0 ,
    \q_reg[15]_1 ,
    \q_reg[1]_0 ,
    \q_reg[3]_0 ,
    \q_reg[30]_2 ,
    \ALUResult[23]_INST_0_i_12_0 ,
    \q_reg[30]_3 ,
    \q_reg[31]_3 ,
    \ALUResult[20]_INST_0_i_14_0 ,
    \q_reg[26]_2 ,
    \q_reg[24]_0 ,
    \ALUResult[21]_INST_0_i_14_0 ,
    \q_reg[27]_3 ,
    \q_reg[25]_2 ,
    \q_reg[5]_0 ,
    \q_reg[5]_1 ,
    \q_reg[4]_0 ,
    \q_reg[5]_2 ,
    \q_reg[5]_3 ,
    \q_reg[5]_4 ,
    \q_reg[5]_5 ,
    \q_reg[5]_6 ,
    \q_reg[5]_7 ,
    \q_reg[5]_8 ,
    \q_reg[5]_9 ,
    \q_reg[3]_1 ,
    \q_reg[7]_2 ,
    \q_reg[11]_2 ,
    \q_reg[15]_2 ,
    \q_reg[19]_1 ,
    \q_reg[23]_2 ,
    \q_reg[27]_4 ,
    \q_reg[2]_0 ,
    \q_reg[7]_3 ,
    \q_reg[10]_1 ,
    \q_reg[30]_4 ,
    \q_reg[31]_4 ,
    \q_reg[5]_10 ,
    PCReady,
    clk,
    reset,
    \q_reg[31]_5 ,
    Instr,
    Jump,
    ReadData,
    ALUResult,
    \q_reg[0]_1 ,
    \q[0]_i_3_0 ,
    \q[0]_i_3_1 ,
    O,
    SrcB,
    \addressM[4] ,
    \addressM[7] ,
    \addressM[5] ,
    \addressM[6] ,
    \addressM[7]_0 ,
    \q[0]_i_3_2 ,
    \q[0]_i_3_3 ,
    \addressM[10] ,
    \addressM[11] ,
    \addressM[12] ,
    \addressM[15] ,
    \addressM[13] ,
    \addressM[14] ,
    \addressM[15]_0 ,
    \q[0]_i_7 ,
    \addressM[16] ,
    \addressM[28] ,
    \addressM[28]_0 ,
    rf_reg_r2_0_31_30_31__0,
    CO,
    \ALUResult[0]_INST_0_i_2 ,
    xorOut__31,
    \ALUResult[19]_INST_0_i_2_0 ,
    \ALUResult[10]_INST_0_i_1_0 ,
    \addressM[16]_0 ,
    \addressM[17] ,
    \addressM[18] ,
    \addressM[19] ,
    \q[0]_i_17 ,
    \ALUResult[23]_INST_0_i_1_0 ,
    \addressM[23] ,
    \addressM[24] ,
    \ALUResult[27]_INST_0_i_1_0 ,
    \addressM[25] ,
    \addressM[26] ,
    \addressM[27] ,
    \addressM[28]_1 ,
    ALUSrc,
    rd21,
    rd20,
    \ALUResult[16]_INST_0_i_4_0 ,
    \ALUResult[12]_INST_0_i_3_0 ,
    \ALUResult[17]_INST_0_i_7 ,
    rd11,
    rd10,
    d0,
    carried_carry__1,
    sel0,
    y_carry__1,
    \ALUResult[10]_INST_0_i_2 );
  output [3:0]DI;
  output [3:0]\q_reg[7]_0 ;
  output [3:0]\q_reg[11]_0 ;
  output [3:0]\q_reg[15]_0 ;
  output [3:0]\q_reg[19]_0 ;
  output [3:0]\q_reg[23]_0 ;
  output [3:0]\q_reg[27]_0 ;
  output [2:0]\q_reg[30]_0 ;
  output [0:0]\q_reg[31]_0 ;
  output [3:0]wd3;
  output [10:0]\q_reg[28]_0 ;
  output \q_reg[0]_0 ;
  output \ALUResult[31]_INST_0_i_10_0 ;
  output \ALUResult[31]_INST_0_i_12_0 ;
  output [31:0]SrcA;
  output [2:0]ALUControl;
  output \q_reg[10]_0 ;
  output \ALUResult[17]_INST_0_i_2_0 ;
  output \ALUResult[17]_INST_0_i_6 ;
  output [0:0]result0__33;
  output [0:0]ALUControl__0;
  output \q_reg[11]_1 ;
  output \ALUResult[18]_INST_0_i_6 ;
  output \ALUResult[19]_INST_0_i_6 ;
  output \ALUResult[20]_INST_0_i_1 ;
  output \ALUResult[31]_INST_0_i_12_1 ;
  output \ALUResult[1]_INST_0_i_4 ;
  output \ALUResult[23]_INST_0_i_5 ;
  output \ALUResult[22]_INST_0_i_13_0 ;
  output \ALUResult[24]_INST_0_i_5 ;
  output \ALUResult[25]_INST_0_i_5 ;
  output \ALUResult[26]_INST_0_i_5 ;
  output \ALUResult[27]_INST_0_i_5 ;
  output \ALUResult[31]_INST_0_i_19_0 ;
  output [0:0]\q_reg[31]_1 ;
  output \ALUResult[11]_INST_0_i_25_0 ;
  output \ALUResult[9]_INST_0_i_10_0 ;
  output \ALUResult[8]_INST_0_i_10_0 ;
  output \ALUResult[3]_INST_0_i_12_0 ;
  output \ALUResult[2]_INST_0_i_12_0 ;
  output \ALUResult[1]_INST_0_i_12_0 ;
  output [3:0]\q_reg[31]_2 ;
  output [0:0]S;
  output \q_reg[29]_0 ;
  output \q_reg[25]_0 ;
  output \q_reg[27]_1 ;
  output \q_reg[25]_1 ;
  output \q_reg[23]_1 ;
  output \q_reg[21]_0 ;
  output \q_reg[28]_1 ;
  output \q_reg[26]_0 ;
  output \q_reg[26]_1 ;
  output [6:0]data7;
  output \ALUResult[31]_INST_0_i_21_0 ;
  output [0:0]data5;
  output \q_reg[30]_1 ;
  output \q_reg[28]_2 ;
  output \q_reg[29]_1 ;
  output \q_reg[27]_2 ;
  output \q_reg[7]_1 ;
  output \q_reg[9]_0 ;
  output \q_reg[13]_0 ;
  output \q_reg[15]_1 ;
  output \q_reg[1]_0 ;
  output \q_reg[3]_0 ;
  output \q_reg[30]_2 ;
  output \ALUResult[23]_INST_0_i_12_0 ;
  output \q_reg[30]_3 ;
  output \q_reg[31]_3 ;
  output \ALUResult[20]_INST_0_i_14_0 ;
  output \q_reg[26]_2 ;
  output \q_reg[24]_0 ;
  output \ALUResult[21]_INST_0_i_14_0 ;
  output \q_reg[27]_3 ;
  output \q_reg[25]_2 ;
  output \q_reg[5]_0 ;
  output \q_reg[5]_1 ;
  output \q_reg[4]_0 ;
  output \q_reg[5]_2 ;
  output \q_reg[5]_3 ;
  output \q_reg[5]_4 ;
  output \q_reg[5]_5 ;
  output \q_reg[5]_6 ;
  output \q_reg[5]_7 ;
  output \q_reg[5]_8 ;
  output \q_reg[5]_9 ;
  output [3:0]\q_reg[3]_1 ;
  output [3:0]\q_reg[7]_2 ;
  output [3:0]\q_reg[11]_2 ;
  output [3:0]\q_reg[15]_2 ;
  output [3:0]\q_reg[19]_1 ;
  output [3:0]\q_reg[23]_2 ;
  output [3:0]\q_reg[27]_4 ;
  output [1:0]\q_reg[2]_0 ;
  output [2:0]\q_reg[7]_3 ;
  output [2:0]\q_reg[10]_1 ;
  output [0:0]\q_reg[30]_4 ;
  output [0:0]\q_reg[31]_4 ;
  output \q_reg[5]_10 ;
  input PCReady;
  input clk;
  input reset;
  input [20:0]\q_reg[31]_5 ;
  input [29:0]Instr;
  input Jump;
  input [3:0]ReadData;
  input [3:0]ALUResult;
  input \q_reg[0]_1 ;
  input \q[0]_i_3_0 ;
  input \q[0]_i_3_1 ;
  input [0:0]O;
  input [14:0]SrcB;
  input \addressM[4] ;
  input [3:0]\addressM[7] ;
  input \addressM[5] ;
  input \addressM[6] ;
  input \addressM[7]_0 ;
  input \q[0]_i_3_2 ;
  input \q[0]_i_3_3 ;
  input \addressM[10] ;
  input [1:0]\addressM[11] ;
  input \addressM[12] ;
  input [3:0]\addressM[15] ;
  input \addressM[13] ;
  input \addressM[14] ;
  input \addressM[15]_0 ;
  input \q[0]_i_7 ;
  input \addressM[16] ;
  input \addressM[28] ;
  input \addressM[28]_0 ;
  input [2:0]rf_reg_r2_0_31_30_31__0;
  input [0:0]CO;
  input [1:0]\ALUResult[0]_INST_0_i_2 ;
  input [3:0]xorOut__31;
  input [3:0]\ALUResult[19]_INST_0_i_2_0 ;
  input \ALUResult[10]_INST_0_i_1_0 ;
  input \addressM[16]_0 ;
  input \addressM[17] ;
  input \addressM[18] ;
  input \addressM[19] ;
  input \q[0]_i_17 ;
  input [1:0]\ALUResult[23]_INST_0_i_1_0 ;
  input \addressM[23] ;
  input \addressM[24] ;
  input [3:0]\ALUResult[27]_INST_0_i_1_0 ;
  input \addressM[25] ;
  input \addressM[26] ;
  input \addressM[27] ;
  input \addressM[28]_1 ;
  input [0:0]ALUSrc;
  input rd21;
  input [6:0]rd20;
  input \ALUResult[16]_INST_0_i_4_0 ;
  input \ALUResult[12]_INST_0_i_3_0 ;
  input \ALUResult[17]_INST_0_i_7 ;
  input rd11;
  input [31:0]rd10;
  input [10:0]d0;
  input carried_carry__1;
  input [1:0]sel0;
  input y_carry__1;
  input \ALUResult[10]_INST_0_i_2 ;

  wire [2:0]ALUControl;
  wire [0:0]ALUControl__0;
  wire [3:0]ALUResult;
  wire \ALUResult[0]_INST_0_i_10_n_0 ;
  wire \ALUResult[0]_INST_0_i_11_n_0 ;
  wire [1:0]\ALUResult[0]_INST_0_i_2 ;
  wire \ALUResult[0]_INST_0_i_6_n_0 ;
  wire \ALUResult[0]_INST_0_i_7_n_0 ;
  wire \ALUResult[0]_INST_0_i_8_n_0 ;
  wire \ALUResult[0]_INST_0_i_9_n_0 ;
  wire \ALUResult[10]_INST_0_i_10_n_0 ;
  wire \ALUResult[10]_INST_0_i_11_n_0 ;
  wire \ALUResult[10]_INST_0_i_12_n_0 ;
  wire \ALUResult[10]_INST_0_i_1_0 ;
  wire \ALUResult[10]_INST_0_i_2 ;
  wire \ALUResult[10]_INST_0_i_3_n_0 ;
  wire \ALUResult[10]_INST_0_i_7_n_0 ;
  wire \ALUResult[10]_INST_0_i_9_n_0 ;
  wire \ALUResult[11]_INST_0_i_10_n_0 ;
  wire \ALUResult[11]_INST_0_i_11_n_0 ;
  wire \ALUResult[11]_INST_0_i_12_n_0 ;
  wire \ALUResult[11]_INST_0_i_14_n_0 ;
  wire \ALUResult[11]_INST_0_i_15_n_0 ;
  wire \ALUResult[11]_INST_0_i_16_n_0 ;
  wire \ALUResult[11]_INST_0_i_18_n_0 ;
  wire \ALUResult[11]_INST_0_i_19_n_0 ;
  wire \ALUResult[11]_INST_0_i_20_n_0 ;
  wire \ALUResult[11]_INST_0_i_22_n_0 ;
  wire \ALUResult[11]_INST_0_i_23_n_0 ;
  wire \ALUResult[11]_INST_0_i_24_n_0 ;
  wire \ALUResult[11]_INST_0_i_25_0 ;
  wire \ALUResult[11]_INST_0_i_28_n_0 ;
  wire \ALUResult[11]_INST_0_i_6_n_0 ;
  wire \ALUResult[11]_INST_0_i_9_n_0 ;
  wire \ALUResult[12]_INST_0_i_1_n_0 ;
  wire \ALUResult[12]_INST_0_i_3_0 ;
  wire \ALUResult[12]_INST_0_i_3_n_0 ;
  wire \ALUResult[12]_INST_0_i_6_n_0 ;
  wire \ALUResult[13]_INST_0_i_1_n_0 ;
  wire \ALUResult[13]_INST_0_i_3_n_0 ;
  wire \ALUResult[13]_INST_0_i_6_n_0 ;
  wire \ALUResult[13]_INST_0_i_8_n_0 ;
  wire \ALUResult[13]_INST_0_i_9_n_0 ;
  wire \ALUResult[14]_INST_0_i_10_n_0 ;
  wire \ALUResult[14]_INST_0_i_11_n_0 ;
  wire \ALUResult[14]_INST_0_i_12_n_0 ;
  wire \ALUResult[14]_INST_0_i_1_n_0 ;
  wire \ALUResult[14]_INST_0_i_3_n_0 ;
  wire \ALUResult[14]_INST_0_i_6_n_0 ;
  wire \ALUResult[14]_INST_0_i_8_n_0 ;
  wire \ALUResult[14]_INST_0_i_9_n_0 ;
  wire \ALUResult[15]_INST_0_i_10_n_0 ;
  wire \ALUResult[15]_INST_0_i_11_n_0 ;
  wire \ALUResult[15]_INST_0_i_12_n_0 ;
  wire \ALUResult[15]_INST_0_i_13_n_0 ;
  wire \ALUResult[15]_INST_0_i_1_n_0 ;
  wire \ALUResult[15]_INST_0_i_3_n_0 ;
  wire \ALUResult[15]_INST_0_i_6_n_0 ;
  wire \ALUResult[15]_INST_0_i_8_n_0 ;
  wire \ALUResult[15]_INST_0_i_9_n_0 ;
  wire \ALUResult[16]_INST_0_i_10_n_0 ;
  wire \ALUResult[16]_INST_0_i_11_n_0 ;
  wire \ALUResult[16]_INST_0_i_12_n_0 ;
  wire \ALUResult[16]_INST_0_i_1_n_0 ;
  wire \ALUResult[16]_INST_0_i_2_n_0 ;
  wire \ALUResult[16]_INST_0_i_4_0 ;
  wire \ALUResult[16]_INST_0_i_4_n_0 ;
  wire \ALUResult[16]_INST_0_i_5_n_0 ;
  wire \ALUResult[16]_INST_0_i_7_n_0 ;
  wire \ALUResult[16]_INST_0_i_9_n_0 ;
  wire \ALUResult[17]_INST_0_i_11_n_0 ;
  wire \ALUResult[17]_INST_0_i_2_0 ;
  wire \ALUResult[17]_INST_0_i_5_n_0 ;
  wire \ALUResult[17]_INST_0_i_6 ;
  wire \ALUResult[17]_INST_0_i_7 ;
  wire \ALUResult[17]_INST_0_i_8_n_0 ;
  wire \ALUResult[18]_INST_0_i_12_n_0 ;
  wire \ALUResult[18]_INST_0_i_14_n_0 ;
  wire \ALUResult[18]_INST_0_i_5_n_0 ;
  wire \ALUResult[18]_INST_0_i_6 ;
  wire \ALUResult[18]_INST_0_i_9_n_0 ;
  wire \ALUResult[19]_INST_0_i_11_n_0 ;
  wire [3:0]\ALUResult[19]_INST_0_i_2_0 ;
  wire \ALUResult[19]_INST_0_i_5_n_0 ;
  wire \ALUResult[19]_INST_0_i_6 ;
  wire \ALUResult[19]_INST_0_i_8_n_0 ;
  wire \ALUResult[1]_INST_0_i_12_0 ;
  wire \ALUResult[1]_INST_0_i_12_n_0 ;
  wire \ALUResult[1]_INST_0_i_13_n_0 ;
  wire \ALUResult[1]_INST_0_i_4 ;
  wire \ALUResult[20]_INST_0_i_1 ;
  wire \ALUResult[20]_INST_0_i_14_0 ;
  wire \ALUResult[20]_INST_0_i_5_n_0 ;
  wire \ALUResult[20]_INST_0_i_7_n_0 ;
  wire \ALUResult[21]_INST_0_i_14_0 ;
  wire \ALUResult[21]_INST_0_i_7_n_0 ;
  wire \ALUResult[22]_INST_0_i_10_n_0 ;
  wire \ALUResult[22]_INST_0_i_11_n_0 ;
  wire \ALUResult[22]_INST_0_i_12_n_0 ;
  wire \ALUResult[22]_INST_0_i_13_0 ;
  wire \ALUResult[22]_INST_0_i_13_n_0 ;
  wire \ALUResult[23]_INST_0_i_12_0 ;
  wire [1:0]\ALUResult[23]_INST_0_i_1_0 ;
  wire \ALUResult[23]_INST_0_i_4_n_0 ;
  wire \ALUResult[23]_INST_0_i_5 ;
  wire \ALUResult[24]_INST_0_i_4_n_0 ;
  wire \ALUResult[24]_INST_0_i_5 ;
  wire \ALUResult[24]_INST_0_i_9_n_0 ;
  wire \ALUResult[25]_INST_0_i_4_n_0 ;
  wire \ALUResult[25]_INST_0_i_5 ;
  wire \ALUResult[25]_INST_0_i_9_n_0 ;
  wire \ALUResult[26]_INST_0_i_12_n_0 ;
  wire \ALUResult[26]_INST_0_i_4_n_0 ;
  wire \ALUResult[26]_INST_0_i_5 ;
  wire \ALUResult[26]_INST_0_i_9_n_0 ;
  wire [3:0]\ALUResult[27]_INST_0_i_1_0 ;
  wire \ALUResult[27]_INST_0_i_4_n_0 ;
  wire \ALUResult[27]_INST_0_i_5 ;
  wire \ALUResult[27]_INST_0_i_9_n_0 ;
  wire \ALUResult[28]_INST_0_i_12_n_0 ;
  wire \ALUResult[28]_INST_0_i_1_n_0 ;
  wire \ALUResult[28]_INST_0_i_5_n_0 ;
  wire \ALUResult[2]_INST_0_i_11_n_0 ;
  wire \ALUResult[2]_INST_0_i_12_0 ;
  wire \ALUResult[2]_INST_0_i_12_n_0 ;
  wire \ALUResult[2]_INST_0_i_13_n_0 ;
  wire \ALUResult[31]_INST_0_i_10_0 ;
  wire \ALUResult[31]_INST_0_i_12_0 ;
  wire \ALUResult[31]_INST_0_i_12_1 ;
  wire \ALUResult[31]_INST_0_i_15_n_0 ;
  wire \ALUResult[31]_INST_0_i_16_n_0 ;
  wire \ALUResult[31]_INST_0_i_17_n_0 ;
  wire \ALUResult[31]_INST_0_i_18_n_0 ;
  wire \ALUResult[31]_INST_0_i_19_0 ;
  wire \ALUResult[31]_INST_0_i_19_n_0 ;
  wire \ALUResult[31]_INST_0_i_20_n_0 ;
  wire \ALUResult[31]_INST_0_i_21_0 ;
  wire \ALUResult[31]_INST_0_i_21_n_0 ;
  wire \ALUResult[31]_INST_0_i_25_n_0 ;
  wire \ALUResult[3]_INST_0_i_11_n_0 ;
  wire \ALUResult[3]_INST_0_i_12_0 ;
  wire \ALUResult[3]_INST_0_i_12_n_0 ;
  wire \ALUResult[3]_INST_0_i_13_n_0 ;
  wire \ALUResult[4]_INST_0_i_10_n_0 ;
  wire \ALUResult[4]_INST_0_i_11_n_0 ;
  wire \ALUResult[4]_INST_0_i_12_n_0 ;
  wire \ALUResult[4]_INST_0_i_1_n_0 ;
  wire \ALUResult[4]_INST_0_i_3_n_0 ;
  wire \ALUResult[4]_INST_0_i_6_n_0 ;
  wire \ALUResult[5]_INST_0_i_10_n_0 ;
  wire \ALUResult[5]_INST_0_i_1_n_0 ;
  wire \ALUResult[5]_INST_0_i_3_n_0 ;
  wire \ALUResult[5]_INST_0_i_6_n_0 ;
  wire \ALUResult[5]_INST_0_i_8_n_0 ;
  wire \ALUResult[5]_INST_0_i_9_n_0 ;
  wire \ALUResult[6]_INST_0_i_10_n_0 ;
  wire \ALUResult[6]_INST_0_i_1_n_0 ;
  wire \ALUResult[6]_INST_0_i_3_n_0 ;
  wire \ALUResult[6]_INST_0_i_6_n_0 ;
  wire \ALUResult[6]_INST_0_i_8_n_0 ;
  wire \ALUResult[6]_INST_0_i_9_n_0 ;
  wire \ALUResult[7]_INST_0_i_10_n_0 ;
  wire \ALUResult[7]_INST_0_i_1_n_0 ;
  wire \ALUResult[7]_INST_0_i_3_n_0 ;
  wire \ALUResult[7]_INST_0_i_6_n_0 ;
  wire \ALUResult[7]_INST_0_i_8_n_0 ;
  wire \ALUResult[7]_INST_0_i_9_n_0 ;
  wire \ALUResult[8]_INST_0_i_10_0 ;
  wire \ALUResult[8]_INST_0_i_10_n_0 ;
  wire \ALUResult[8]_INST_0_i_11_n_0 ;
  wire \ALUResult[8]_INST_0_i_12_n_0 ;
  wire \ALUResult[8]_INST_0_i_9_n_0 ;
  wire \ALUResult[9]_INST_0_i_10_0 ;
  wire \ALUResult[9]_INST_0_i_10_n_0 ;
  wire \ALUResult[9]_INST_0_i_11_n_0 ;
  wire \ALUResult[9]_INST_0_i_12_n_0 ;
  wire \ALUResult[9]_INST_0_i_9_n_0 ;
  wire [0:0]ALUSrc;
  wire [0:0]CO;
  wire [3:0]DI;
  wire [29:0]Instr;
  wire Jump;
  wire [0:0]O;
  wire PCReady;
  wire [3:0]ReadData;
  wire [0:0]S;
  wire [31:0]SrcA;
  wire [14:0]SrcB;
  wire \addressM[10] ;
  wire [1:0]\addressM[11] ;
  wire \addressM[12] ;
  wire \addressM[13] ;
  wire \addressM[14] ;
  wire [3:0]\addressM[15] ;
  wire \addressM[15]_0 ;
  wire \addressM[16] ;
  wire \addressM[16]_0 ;
  wire \addressM[17] ;
  wire \addressM[18] ;
  wire \addressM[19] ;
  wire \addressM[23] ;
  wire \addressM[24] ;
  wire \addressM[25] ;
  wire \addressM[26] ;
  wire \addressM[27] ;
  wire \addressM[28] ;
  wire \addressM[28]_0 ;
  wire \addressM[28]_1 ;
  wire \addressM[4] ;
  wire \addressM[5] ;
  wire \addressM[6] ;
  wire [3:0]\addressM[7] ;
  wire \addressM[7]_0 ;
  wire [1:0]\c/ALUOp ;
  wire \c/BranchControl__7 ;
  wire \c/ad/RtypeSub__0 ;
  wire carried_carry__1;
  wire clk;
  wire [10:0]d0;
  wire [28:4]d1;
  wire [0:0]data5;
  wire [6:0]data7;
  wire \q[0]_i_17 ;
  wire \q[0]_i_1_n_0 ;
  wire \q[0]_i_3_0 ;
  wire \q[0]_i_3_1 ;
  wire \q[0]_i_3_2 ;
  wire \q[0]_i_3_3 ;
  wire \q[0]_i_4_n_0 ;
  wire \q[0]_i_5_n_0 ;
  wire \q[0]_i_6_n_0 ;
  wire \q[0]_i_7 ;
  wire \q[0]_i_8_n_0 ;
  wire \q[0]_i_9_n_0 ;
  wire \q[12]_i_2_n_0 ;
  wire \q[12]_i_3_n_0 ;
  wire \q[12]_i_4_n_0 ;
  wire \q[12]_i_5_n_0 ;
  wire \q[16]_i_2_n_0 ;
  wire \q[16]_i_3_n_0 ;
  wire \q[16]_i_4_n_0 ;
  wire \q[16]_i_5_n_0 ;
  wire \q[20]_i_2_n_0 ;
  wire \q[20]_i_3_n_0 ;
  wire \q[20]_i_4_n_0 ;
  wire \q[20]_i_5_n_0 ;
  wire \q[24]_i_2_n_0 ;
  wire \q[24]_i_3_n_0 ;
  wire \q[24]_i_4_n_0 ;
  wire \q[24]_i_5_n_0 ;
  wire \q[28]_i_2_n_0 ;
  wire \q[28]_i_3_n_0 ;
  wire \q[28]_i_4_n_0 ;
  wire \q[28]_i_5_n_0 ;
  wire \q[31]_i_2_n_0 ;
  wire \q[31]_i_3_n_0 ;
  wire \q[31]_i_4_n_0 ;
  wire \q[4]_i_2_n_0 ;
  wire \q[4]_i_3_n_0 ;
  wire \q[4]_i_4_n_0 ;
  wire \q[4]_i_5_n_0 ;
  wire \q[4]_i_6_n_0 ;
  wire \q[8]_i_2_n_0 ;
  wire \q[8]_i_3_n_0 ;
  wire \q[8]_i_4_n_0 ;
  wire \q[8]_i_5_n_0 ;
  wire \q_reg[0]_0 ;
  wire \q_reg[0]_1 ;
  wire \q_reg[10]_0 ;
  wire [2:0]\q_reg[10]_1 ;
  wire [3:0]\q_reg[11]_0 ;
  wire \q_reg[11]_1 ;
  wire [3:0]\q_reg[11]_2 ;
  wire \q_reg[12]_i_1_n_0 ;
  wire \q_reg[12]_i_1_n_1 ;
  wire \q_reg[12]_i_1_n_2 ;
  wire \q_reg[12]_i_1_n_3 ;
  wire \q_reg[12]_i_1_n_4 ;
  wire \q_reg[12]_i_1_n_5 ;
  wire \q_reg[12]_i_1_n_6 ;
  wire \q_reg[12]_i_1_n_7 ;
  wire \q_reg[13]_0 ;
  wire [3:0]\q_reg[15]_0 ;
  wire \q_reg[15]_1 ;
  wire [3:0]\q_reg[15]_2 ;
  wire \q_reg[16]_i_1_n_0 ;
  wire \q_reg[16]_i_1_n_1 ;
  wire \q_reg[16]_i_1_n_2 ;
  wire \q_reg[16]_i_1_n_3 ;
  wire \q_reg[16]_i_1_n_4 ;
  wire \q_reg[16]_i_1_n_5 ;
  wire \q_reg[16]_i_1_n_6 ;
  wire \q_reg[16]_i_1_n_7 ;
  wire [3:0]\q_reg[19]_0 ;
  wire [3:0]\q_reg[19]_1 ;
  wire \q_reg[1]_0 ;
  wire \q_reg[20]_i_1_n_0 ;
  wire \q_reg[20]_i_1_n_1 ;
  wire \q_reg[20]_i_1_n_2 ;
  wire \q_reg[20]_i_1_n_3 ;
  wire \q_reg[20]_i_1_n_4 ;
  wire \q_reg[20]_i_1_n_5 ;
  wire \q_reg[20]_i_1_n_6 ;
  wire \q_reg[20]_i_1_n_7 ;
  wire \q_reg[21]_0 ;
  wire [3:0]\q_reg[23]_0 ;
  wire \q_reg[23]_1 ;
  wire [3:0]\q_reg[23]_2 ;
  wire \q_reg[24]_0 ;
  wire \q_reg[24]_i_1_n_0 ;
  wire \q_reg[24]_i_1_n_1 ;
  wire \q_reg[24]_i_1_n_2 ;
  wire \q_reg[24]_i_1_n_3 ;
  wire \q_reg[24]_i_1_n_4 ;
  wire \q_reg[24]_i_1_n_5 ;
  wire \q_reg[24]_i_1_n_6 ;
  wire \q_reg[24]_i_1_n_7 ;
  wire \q_reg[25]_0 ;
  wire \q_reg[25]_1 ;
  wire \q_reg[25]_2 ;
  wire \q_reg[26]_0 ;
  wire \q_reg[26]_1 ;
  wire \q_reg[26]_2 ;
  wire [3:0]\q_reg[27]_0 ;
  wire \q_reg[27]_1 ;
  wire \q_reg[27]_2 ;
  wire \q_reg[27]_3 ;
  wire [3:0]\q_reg[27]_4 ;
  wire [10:0]\q_reg[28]_0 ;
  wire \q_reg[28]_1 ;
  wire \q_reg[28]_2 ;
  wire \q_reg[28]_i_1_n_0 ;
  wire \q_reg[28]_i_1_n_1 ;
  wire \q_reg[28]_i_1_n_2 ;
  wire \q_reg[28]_i_1_n_3 ;
  wire \q_reg[28]_i_1_n_4 ;
  wire \q_reg[28]_i_1_n_5 ;
  wire \q_reg[28]_i_1_n_6 ;
  wire \q_reg[28]_i_1_n_7 ;
  wire \q_reg[29]_0 ;
  wire \q_reg[29]_1 ;
  wire [1:0]\q_reg[2]_0 ;
  wire [2:0]\q_reg[30]_0 ;
  wire \q_reg[30]_1 ;
  wire \q_reg[30]_2 ;
  wire \q_reg[30]_3 ;
  wire [0:0]\q_reg[30]_4 ;
  wire [0:0]\q_reg[31]_0 ;
  wire [0:0]\q_reg[31]_1 ;
  wire [3:0]\q_reg[31]_2 ;
  wire \q_reg[31]_3 ;
  wire [0:0]\q_reg[31]_4 ;
  wire [20:0]\q_reg[31]_5 ;
  wire \q_reg[31]_i_1_n_2 ;
  wire \q_reg[31]_i_1_n_3 ;
  wire \q_reg[31]_i_1_n_5 ;
  wire \q_reg[31]_i_1_n_6 ;
  wire \q_reg[31]_i_1_n_7 ;
  wire \q_reg[3]_0 ;
  wire [3:0]\q_reg[3]_1 ;
  wire \q_reg[4]_0 ;
  wire \q_reg[4]_i_1_n_0 ;
  wire \q_reg[4]_i_1_n_1 ;
  wire \q_reg[4]_i_1_n_2 ;
  wire \q_reg[4]_i_1_n_3 ;
  wire \q_reg[4]_i_1_n_4 ;
  wire \q_reg[4]_i_1_n_5 ;
  wire \q_reg[4]_i_1_n_6 ;
  wire \q_reg[4]_i_1_n_7 ;
  wire \q_reg[5]_0 ;
  wire \q_reg[5]_1 ;
  wire \q_reg[5]_10 ;
  wire \q_reg[5]_2 ;
  wire \q_reg[5]_3 ;
  wire \q_reg[5]_4 ;
  wire \q_reg[5]_5 ;
  wire \q_reg[5]_6 ;
  wire \q_reg[5]_7 ;
  wire \q_reg[5]_8 ;
  wire \q_reg[5]_9 ;
  wire [3:0]\q_reg[7]_0 ;
  wire \q_reg[7]_1 ;
  wire [3:0]\q_reg[7]_2 ;
  wire [2:0]\q_reg[7]_3 ;
  wire \q_reg[8]_i_1_n_0 ;
  wire \q_reg[8]_i_1_n_1 ;
  wire \q_reg[8]_i_1_n_2 ;
  wire \q_reg[8]_i_1_n_3 ;
  wire \q_reg[8]_i_1_n_4 ;
  wire \q_reg[8]_i_1_n_5 ;
  wire \q_reg[8]_i_1_n_6 ;
  wire \q_reg[8]_i_1_n_7 ;
  wire \q_reg[9]_0 ;
  wire [31:0]rd10;
  wire rd11;
  wire [6:0]rd20;
  wire rd21;
  wire reset;
  wire [0:0]result0__33;
  wire [2:0]rf_reg_r2_0_31_30_31__0;
  wire [1:0]sel0;
  wire [3:0]wd3;
  wire [3:0]xorOut__31;
  wire y_carry__1;
  wire [3:2]\NLW_q_reg[31]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_q_reg[31]_i_1_O_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult[0]_INST_0_i_10 
       (.I0(\ALUResult[4]_INST_0_i_12_n_0 ),
        .I1(SrcB[2]),
        .I2(\ALUResult[0]_INST_0_i_11_n_0 ),
        .O(\ALUResult[0]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[0]_INST_0_i_11 
       (.I0(SrcA[24]),
        .I1(SrcA[8]),
        .I2(SrcB[3]),
        .I3(SrcA[16]),
        .I4(SrcB[4]),
        .I5(SrcA[0]),
        .O(\ALUResult[0]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFCFAFC0AFC0A0C0)) 
    \ALUResult[0]_INST_0_i_3 
       (.I0(\ALUResult[0]_INST_0_i_6_n_0 ),
        .I1(O),
        .I2(\ALUResult[31]_INST_0_i_10_0 ),
        .I3(\ALUResult[31]_INST_0_i_12_0 ),
        .I4(SrcA[0]),
        .I5(SrcB[0]),
        .O(\q_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hFFBFFFBE00080028)) 
    \ALUResult[0]_INST_0_i_4 
       (.I0(SrcA[31]),
        .I1(ALUControl__0),
        .I2(SrcB[14]),
        .I3(ALUControl[0]),
        .I4(ALUControl[1]),
        .I5(\ALUResult[0]_INST_0_i_2 [1]),
        .O(result0__33));
  MUXF7 \ALUResult[0]_INST_0_i_6 
       (.I0(\ALUResult[0]_INST_0_i_7_n_0 ),
        .I1(\ALUResult[0]_INST_0_i_8_n_0 ),
        .O(\ALUResult[0]_INST_0_i_6_n_0 ),
        .S(ALUControl[0]));
  LUT4 #(
    .INIT(16'h8BB8)) 
    \ALUResult[0]_INST_0_i_7 
       (.I0(result0__33),
        .I1(ALUControl__0),
        .I2(SrcB[0]),
        .I3(SrcA[0]),
        .O(\ALUResult[0]_INST_0_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \ALUResult[0]_INST_0_i_8 
       (.I0(\ALUResult[1]_INST_0_i_12_n_0 ),
        .I1(SrcB[0]),
        .I2(\ALUResult[0]_INST_0_i_9_n_0 ),
        .I3(SrcB[1]),
        .I4(\ALUResult[0]_INST_0_i_10_n_0 ),
        .O(\ALUResult[0]_INST_0_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult[0]_INST_0_i_9 
       (.I0(\ALUResult[6]_INST_0_i_10_n_0 ),
        .I1(SrcB[2]),
        .I2(\ALUResult[2]_INST_0_i_13_n_0 ),
        .O(\ALUResult[0]_INST_0_i_9_n_0 ));
  MUXF7 \ALUResult[10]_INST_0 
       (.I0(\q_reg[10]_0 ),
        .I1(\addressM[10] ),
        .O(\q_reg[28]_0 [4]),
        .S(ALUControl[2]));
  LUT6 #(
    .INIT(64'hAFCFAFC0AFC0A0C0)) 
    \ALUResult[10]_INST_0_i_1 
       (.I0(\ALUResult[10]_INST_0_i_3_n_0 ),
        .I1(\addressM[11] [0]),
        .I2(\ALUResult[31]_INST_0_i_10_0 ),
        .I3(\ALUResult[31]_INST_0_i_12_0 ),
        .I4(SrcA[10]),
        .I5(SrcB[8]),
        .O(\q_reg[10]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[10]_INST_0_i_10 
       (.I0(\ALUResult[11]_INST_0_i_23_n_0 ),
        .I1(\ALUResult[11]_INST_0_i_24_n_0 ),
        .I2(SrcB[1]),
        .I3(\ALUResult[11]_INST_0_i_22_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[10]_INST_0_i_12_n_0 ),
        .O(\ALUResult[10]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[10]_INST_0_i_11 
       (.I0(SrcA[31]),
        .I1(SrcA[18]),
        .I2(SrcB[3]),
        .I3(SrcA[26]),
        .I4(SrcB[4]),
        .I5(SrcA[10]),
        .O(\ALUResult[10]_INST_0_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \ALUResult[10]_INST_0_i_12 
       (.I0(SrcA[18]),
        .I1(SrcB[3]),
        .I2(SrcA[26]),
        .I3(SrcB[4]),
        .I4(SrcA[10]),
        .O(\ALUResult[10]_INST_0_i_12_n_0 ));
  MUXF7 \ALUResult[10]_INST_0_i_3 
       (.I0(\ALUResult[10]_INST_0_i_1_0 ),
        .I1(\ALUResult[10]_INST_0_i_7_n_0 ),
        .O(\ALUResult[10]_INST_0_i_3_n_0 ),
        .S(ALUControl[0]));
  LUT6 #(
    .INIT(64'hFF33CC00B8B8B8B8)) 
    \ALUResult[10]_INST_0_i_5 
       (.I0(\q_reg[4]_0 ),
        .I1(SrcB[1]),
        .I2(\ALUResult[13]_INST_0_i_8_n_0 ),
        .I3(\ALUResult[10]_INST_0_i_2 ),
        .I4(\q_reg[5]_2 ),
        .I5(SrcB[0]),
        .O(data7[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[10]_INST_0_i_7 
       (.I0(\ALUResult[11]_INST_0_i_10_n_0 ),
        .I1(\ALUResult[10]_INST_0_i_9_n_0 ),
        .I2(ALUControl__0),
        .I3(\ALUResult[11]_INST_0_i_12_n_0 ),
        .I4(SrcB[0]),
        .I5(\ALUResult[10]_INST_0_i_10_n_0 ),
        .O(\ALUResult[10]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[10]_INST_0_i_9 
       (.I0(\ALUResult[11]_INST_0_i_15_n_0 ),
        .I1(\ALUResult[11]_INST_0_i_16_n_0 ),
        .I2(SrcB[1]),
        .I3(\ALUResult[11]_INST_0_i_14_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[10]_INST_0_i_11_n_0 ),
        .O(\ALUResult[10]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[11]_INST_0_i_10 
       (.I0(\q_reg[25]_0 ),
        .I1(\ALUResult[11]_INST_0_i_18_n_0 ),
        .I2(SrcB[1]),
        .I3(\ALUResult[11]_INST_0_i_19_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[11]_INST_0_i_20_n_0 ),
        .O(\ALUResult[11]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[11]_INST_0_i_11 
       (.I0(\q_reg[26]_1 ),
        .I1(\ALUResult[11]_INST_0_i_22_n_0 ),
        .I2(SrcB[1]),
        .I3(\ALUResult[11]_INST_0_i_23_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[11]_INST_0_i_24_n_0 ),
        .O(\ALUResult[11]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[11]_INST_0_i_12 
       (.I0(\q_reg[25]_1 ),
        .I1(\q_reg[21]_0 ),
        .I2(SrcB[1]),
        .I3(\q_reg[23]_1 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[11]_INST_0_i_28_n_0 ),
        .O(\ALUResult[11]_INST_0_i_12_n_0 ));
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \ALUResult[11]_INST_0_i_13 
       (.I0(SrcA[26]),
        .I1(SrcB[3]),
        .I2(SrcA[31]),
        .I3(SrcB[4]),
        .I4(SrcA[18]),
        .O(\q_reg[26]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[11]_INST_0_i_14 
       (.I0(SrcA[31]),
        .I1(SrcA[22]),
        .I2(SrcB[3]),
        .I3(SrcA[30]),
        .I4(SrcB[4]),
        .I5(SrcA[14]),
        .O(\ALUResult[11]_INST_0_i_14_n_0 ));
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \ALUResult[11]_INST_0_i_15 
       (.I0(SrcA[24]),
        .I1(SrcB[3]),
        .I2(SrcA[31]),
        .I3(SrcB[4]),
        .I4(SrcA[16]),
        .O(\ALUResult[11]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[11]_INST_0_i_16 
       (.I0(SrcA[31]),
        .I1(SrcA[20]),
        .I2(SrcB[3]),
        .I3(SrcA[28]),
        .I4(SrcB[4]),
        .I5(SrcA[12]),
        .O(\ALUResult[11]_INST_0_i_16_n_0 ));
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \ALUResult[11]_INST_0_i_17 
       (.I0(SrcA[25]),
        .I1(SrcB[3]),
        .I2(SrcA[31]),
        .I3(SrcB[4]),
        .I4(SrcA[17]),
        .O(\q_reg[25]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[11]_INST_0_i_18 
       (.I0(SrcA[31]),
        .I1(SrcA[21]),
        .I2(SrcB[3]),
        .I3(SrcA[29]),
        .I4(SrcB[4]),
        .I5(SrcA[13]),
        .O(\ALUResult[11]_INST_0_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \ALUResult[11]_INST_0_i_19 
       (.I0(SrcA[23]),
        .I1(SrcB[3]),
        .I2(SrcA[31]),
        .I3(SrcB[4]),
        .I4(SrcA[15]),
        .O(\ALUResult[11]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h88B8FFFF88B80000)) 
    \ALUResult[11]_INST_0_i_2 
       (.I0(\ALUResult[11]_INST_0_i_6_n_0 ),
        .I1(ALUControl[0]),
        .I2(xorOut__31[0]),
        .I3(ALUControl__0),
        .I4(\ALUResult[31]_INST_0_i_12_0 ),
        .I5(\addressM[11] [1]),
        .O(\q_reg[11]_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[11]_INST_0_i_20 
       (.I0(SrcA[31]),
        .I1(SrcA[19]),
        .I2(SrcB[3]),
        .I3(SrcA[27]),
        .I4(SrcB[4]),
        .I5(SrcA[11]),
        .O(\ALUResult[11]_INST_0_i_20_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \ALUResult[11]_INST_0_i_21 
       (.I0(SrcA[26]),
        .I1(SrcB[3]),
        .I2(SrcA[18]),
        .I3(SrcB[4]),
        .O(\q_reg[26]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \ALUResult[11]_INST_0_i_22 
       (.I0(SrcA[22]),
        .I1(SrcB[3]),
        .I2(SrcA[30]),
        .I3(SrcB[4]),
        .I4(SrcA[14]),
        .O(\ALUResult[11]_INST_0_i_22_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \ALUResult[11]_INST_0_i_23 
       (.I0(SrcA[24]),
        .I1(SrcB[3]),
        .I2(SrcA[16]),
        .I3(SrcB[4]),
        .O(\ALUResult[11]_INST_0_i_23_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \ALUResult[11]_INST_0_i_24 
       (.I0(SrcA[20]),
        .I1(SrcB[3]),
        .I2(SrcA[28]),
        .I3(SrcB[4]),
        .I4(SrcA[12]),
        .O(\ALUResult[11]_INST_0_i_24_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \ALUResult[11]_INST_0_i_25 
       (.I0(SrcA[25]),
        .I1(SrcB[3]),
        .I2(SrcA[17]),
        .I3(SrcB[4]),
        .O(\q_reg[25]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \ALUResult[11]_INST_0_i_26 
       (.I0(SrcA[21]),
        .I1(SrcB[3]),
        .I2(SrcA[29]),
        .I3(SrcB[4]),
        .I4(SrcA[13]),
        .O(\q_reg[21]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \ALUResult[11]_INST_0_i_27 
       (.I0(SrcA[23]),
        .I1(SrcB[3]),
        .I2(SrcA[31]),
        .I3(SrcB[4]),
        .I4(SrcA[15]),
        .O(\q_reg[23]_1 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \ALUResult[11]_INST_0_i_28 
       (.I0(SrcA[19]),
        .I1(SrcB[3]),
        .I2(SrcA[27]),
        .I3(SrcB[4]),
        .I4(SrcA[11]),
        .O(\ALUResult[11]_INST_0_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hFF33CC00B8B8B8B8)) 
    \ALUResult[11]_INST_0_i_5 
       (.I0(\q_reg[5]_2 ),
        .I1(SrcB[1]),
        .I2(\ALUResult[14]_INST_0_i_8_n_0 ),
        .I3(\q_reg[4]_0 ),
        .I4(\ALUResult[13]_INST_0_i_8_n_0 ),
        .I5(SrcB[0]),
        .O(data7[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[11]_INST_0_i_6 
       (.I0(\ALUResult[11]_INST_0_i_9_n_0 ),
        .I1(\ALUResult[11]_INST_0_i_10_n_0 ),
        .I2(ALUControl__0),
        .I3(\ALUResult[11]_INST_0_i_11_n_0 ),
        .I4(SrcB[0]),
        .I5(\ALUResult[11]_INST_0_i_12_n_0 ),
        .O(\ALUResult[11]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \ALUResult[11]_INST_0_i_8 
       (.I0(SrcA[4]),
        .I1(SrcB[2]),
        .I2(SrcA[0]),
        .I3(SrcB[3]),
        .I4(SrcA[8]),
        .I5(SrcB[4]),
        .O(\q_reg[4]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[11]_INST_0_i_9 
       (.I0(\q_reg[26]_0 ),
        .I1(\ALUResult[11]_INST_0_i_14_n_0 ),
        .I2(SrcB[1]),
        .I3(\ALUResult[11]_INST_0_i_15_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[11]_INST_0_i_16_n_0 ),
        .O(\ALUResult[11]_INST_0_i_9_n_0 ));
  MUXF7 \ALUResult[12]_INST_0 
       (.I0(\ALUResult[12]_INST_0_i_1_n_0 ),
        .I1(\addressM[12] ),
        .O(\q_reg[28]_0 [5]),
        .S(ALUControl[2]));
  LUT6 #(
    .INIT(64'hAFCFAFC0AFC0A0C0)) 
    \ALUResult[12]_INST_0_i_1 
       (.I0(\ALUResult[12]_INST_0_i_3_n_0 ),
        .I1(\addressM[15] [0]),
        .I2(\ALUResult[31]_INST_0_i_10_0 ),
        .I3(\ALUResult[31]_INST_0_i_12_0 ),
        .I4(SrcA[12]),
        .I5(SrcB[9]),
        .O(\ALUResult[12]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88888BB8)) 
    \ALUResult[12]_INST_0_i_3 
       (.I0(\ALUResult[12]_INST_0_i_6_n_0 ),
        .I1(ALUControl[0]),
        .I2(SrcA[12]),
        .I3(SrcB[9]),
        .I4(ALUControl__0),
        .O(\ALUResult[12]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFF33CC00B8B8B8B8)) 
    \ALUResult[12]_INST_0_i_5 
       (.I0(\ALUResult[13]_INST_0_i_8_n_0 ),
        .I1(SrcB[1]),
        .I2(\ALUResult[15]_INST_0_i_8_n_0 ),
        .I3(\q_reg[5]_2 ),
        .I4(\ALUResult[14]_INST_0_i_8_n_0 ),
        .I5(SrcB[0]),
        .O(data7[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[12]_INST_0_i_6 
       (.I0(\ALUResult[13]_INST_0_i_9_n_0 ),
        .I1(\ALUResult[11]_INST_0_i_9_n_0 ),
        .I2(ALUControl__0),
        .I3(\ALUResult[12]_INST_0_i_3_0 ),
        .I4(SrcB[0]),
        .I5(\ALUResult[11]_INST_0_i_11_n_0 ),
        .O(\ALUResult[12]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \ALUResult[12]_INST_0_i_8 
       (.I0(SrcA[5]),
        .I1(SrcB[2]),
        .I2(SrcA[1]),
        .I3(SrcB[3]),
        .I4(SrcA[9]),
        .I5(SrcB[4]),
        .O(\q_reg[5]_2 ));
  MUXF7 \ALUResult[13]_INST_0 
       (.I0(\ALUResult[13]_INST_0_i_1_n_0 ),
        .I1(\addressM[13] ),
        .O(\q_reg[28]_0 [6]),
        .S(ALUControl[2]));
  LUT6 #(
    .INIT(64'hAFCFAFC0AFC0A0C0)) 
    \ALUResult[13]_INST_0_i_1 
       (.I0(\ALUResult[13]_INST_0_i_3_n_0 ),
        .I1(\addressM[15] [1]),
        .I2(\ALUResult[31]_INST_0_i_10_0 ),
        .I3(\ALUResult[31]_INST_0_i_12_0 ),
        .I4(SrcA[13]),
        .I5(SrcB[10]),
        .O(\ALUResult[13]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h88B8)) 
    \ALUResult[13]_INST_0_i_3 
       (.I0(\ALUResult[13]_INST_0_i_6_n_0 ),
        .I1(ALUControl[0]),
        .I2(xorOut__31[1]),
        .I3(ALUControl__0),
        .O(\ALUResult[13]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFF33CC00B8B8B8B8)) 
    \ALUResult[13]_INST_0_i_5 
       (.I0(\ALUResult[14]_INST_0_i_8_n_0 ),
        .I1(SrcB[1]),
        .I2(\ALUResult[14]_INST_0_i_9_n_0 ),
        .I3(\ALUResult[13]_INST_0_i_8_n_0 ),
        .I4(\ALUResult[15]_INST_0_i_8_n_0 ),
        .I5(SrcB[0]),
        .O(data7[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[13]_INST_0_i_6 
       (.I0(\ALUResult[14]_INST_0_i_10_n_0 ),
        .I1(\ALUResult[13]_INST_0_i_9_n_0 ),
        .I2(ALUControl__0),
        .I3(\ALUResult[14]_INST_0_i_11_n_0 ),
        .I4(SrcB[0]),
        .I5(\ALUResult[12]_INST_0_i_3_0 ),
        .O(\ALUResult[13]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \ALUResult[13]_INST_0_i_8 
       (.I0(SrcA[6]),
        .I1(SrcB[2]),
        .I2(SrcA[2]),
        .I3(SrcB[3]),
        .I4(SrcA[10]),
        .I5(SrcB[4]),
        .O(\ALUResult[13]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[13]_INST_0_i_9 
       (.I0(\q_reg[27]_1 ),
        .I1(\ALUResult[11]_INST_0_i_19_n_0 ),
        .I2(SrcB[1]),
        .I3(\q_reg[25]_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[11]_INST_0_i_18_n_0 ),
        .O(\ALUResult[13]_INST_0_i_9_n_0 ));
  MUXF7 \ALUResult[14]_INST_0 
       (.I0(\ALUResult[14]_INST_0_i_1_n_0 ),
        .I1(\addressM[14] ),
        .O(\q_reg[28]_0 [7]),
        .S(ALUControl[2]));
  LUT6 #(
    .INIT(64'hAFCFAFC0AFC0A0C0)) 
    \ALUResult[14]_INST_0_i_1 
       (.I0(\ALUResult[14]_INST_0_i_3_n_0 ),
        .I1(\addressM[15] [2]),
        .I2(\ALUResult[31]_INST_0_i_10_0 ),
        .I3(\ALUResult[31]_INST_0_i_12_0 ),
        .I4(SrcA[14]),
        .I5(SrcB[11]),
        .O(\ALUResult[14]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[14]_INST_0_i_10 
       (.I0(\q_reg[28]_1 ),
        .I1(\ALUResult[11]_INST_0_i_15_n_0 ),
        .I2(SrcB[1]),
        .I3(\q_reg[26]_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[11]_INST_0_i_14_n_0 ),
        .O(\ALUResult[14]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[14]_INST_0_i_11 
       (.I0(\ALUResult[16]_INST_0_i_12_n_0 ),
        .I1(\ALUResult[11]_INST_0_i_23_n_0 ),
        .I2(SrcB[1]),
        .I3(\q_reg[26]_1 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[11]_INST_0_i_22_n_0 ),
        .O(\ALUResult[14]_INST_0_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \ALUResult[14]_INST_0_i_12 
       (.I0(SrcA[5]),
        .I1(SrcB[3]),
        .I2(SrcA[13]),
        .I3(SrcB[4]),
        .O(\ALUResult[14]_INST_0_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h88888BB8)) 
    \ALUResult[14]_INST_0_i_3 
       (.I0(\ALUResult[14]_INST_0_i_6_n_0 ),
        .I1(ALUControl[0]),
        .I2(SrcA[14]),
        .I3(SrcB[11]),
        .I4(ALUControl__0),
        .O(\ALUResult[14]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFF33CC00B8B8B8B8)) 
    \ALUResult[14]_INST_0_i_5 
       (.I0(\ALUResult[15]_INST_0_i_8_n_0 ),
        .I1(SrcB[1]),
        .I2(\ALUResult[15]_INST_0_i_9_n_0 ),
        .I3(\ALUResult[14]_INST_0_i_8_n_0 ),
        .I4(\ALUResult[14]_INST_0_i_9_n_0 ),
        .I5(SrcB[0]),
        .O(data7[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[14]_INST_0_i_6 
       (.I0(\ALUResult[15]_INST_0_i_10_n_0 ),
        .I1(\ALUResult[14]_INST_0_i_10_n_0 ),
        .I2(ALUControl__0),
        .I3(\ALUResult[15]_INST_0_i_11_n_0 ),
        .I4(SrcB[0]),
        .I5(\ALUResult[14]_INST_0_i_11_n_0 ),
        .O(\ALUResult[14]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \ALUResult[14]_INST_0_i_8 
       (.I0(SrcA[7]),
        .I1(SrcB[2]),
        .I2(SrcA[3]),
        .I3(SrcB[3]),
        .I4(SrcA[11]),
        .I5(SrcB[4]),
        .O(\ALUResult[14]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \ALUResult[14]_INST_0_i_9 
       (.I0(SrcA[1]),
        .I1(SrcB[3]),
        .I2(SrcA[9]),
        .I3(SrcB[4]),
        .I4(SrcB[2]),
        .I5(\ALUResult[14]_INST_0_i_12_n_0 ),
        .O(\ALUResult[14]_INST_0_i_9_n_0 ));
  MUXF7 \ALUResult[15]_INST_0 
       (.I0(\ALUResult[15]_INST_0_i_1_n_0 ),
        .I1(\addressM[15]_0 ),
        .O(\q_reg[28]_0 [8]),
        .S(ALUControl[2]));
  LUT6 #(
    .INIT(64'hAFCFAFC0AFC0A0C0)) 
    \ALUResult[15]_INST_0_i_1 
       (.I0(\ALUResult[15]_INST_0_i_3_n_0 ),
        .I1(\addressM[15] [3]),
        .I2(\ALUResult[31]_INST_0_i_10_0 ),
        .I3(\ALUResult[31]_INST_0_i_12_0 ),
        .I4(SrcA[15]),
        .I5(SrcB[12]),
        .O(\ALUResult[15]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[15]_INST_0_i_10 
       (.I0(\q_reg[29]_0 ),
        .I1(\q_reg[25]_0 ),
        .I2(SrcB[1]),
        .I3(\q_reg[27]_1 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[11]_INST_0_i_19_n_0 ),
        .O(\ALUResult[15]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[15]_INST_0_i_11 
       (.I0(\ALUResult[17]_INST_0_i_11_n_0 ),
        .I1(\q_reg[25]_1 ),
        .I2(SrcB[1]),
        .I3(\ALUResult[17]_INST_0_i_7 ),
        .I4(SrcB[2]),
        .I5(\q_reg[23]_1 ),
        .O(\ALUResult[15]_INST_0_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \ALUResult[15]_INST_0_i_12 
       (.I0(SrcA[4]),
        .I1(SrcB[3]),
        .I2(SrcA[12]),
        .I3(SrcB[4]),
        .O(\ALUResult[15]_INST_0_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \ALUResult[15]_INST_0_i_13 
       (.I0(SrcA[6]),
        .I1(SrcB[3]),
        .I2(SrcA[14]),
        .I3(SrcB[4]),
        .O(\ALUResult[15]_INST_0_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h88B8)) 
    \ALUResult[15]_INST_0_i_3 
       (.I0(\ALUResult[15]_INST_0_i_6_n_0 ),
        .I1(ALUControl[0]),
        .I2(xorOut__31[2]),
        .I3(ALUControl__0),
        .O(\ALUResult[15]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \ALUResult[15]_INST_0_i_5 
       (.I0(\ALUResult[15]_INST_0_i_8_n_0 ),
        .I1(SrcB[1]),
        .I2(\ALUResult[15]_INST_0_i_9_n_0 ),
        .I3(SrcB[0]),
        .I4(\ALUResult[16]_INST_0_i_9_n_0 ),
        .O(data7[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[15]_INST_0_i_6 
       (.I0(\ALUResult[16]_INST_0_i_10_n_0 ),
        .I1(\ALUResult[15]_INST_0_i_10_n_0 ),
        .I2(ALUControl__0),
        .I3(\ALUResult[16]_INST_0_i_11_n_0 ),
        .I4(SrcB[0]),
        .I5(\ALUResult[15]_INST_0_i_11_n_0 ),
        .O(\ALUResult[15]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \ALUResult[15]_INST_0_i_8 
       (.I0(SrcA[0]),
        .I1(SrcB[3]),
        .I2(SrcA[8]),
        .I3(SrcB[4]),
        .I4(SrcB[2]),
        .I5(\ALUResult[15]_INST_0_i_12_n_0 ),
        .O(\ALUResult[15]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \ALUResult[15]_INST_0_i_9 
       (.I0(SrcA[2]),
        .I1(SrcB[3]),
        .I2(SrcA[10]),
        .I3(SrcB[4]),
        .I4(SrcB[2]),
        .I5(\ALUResult[15]_INST_0_i_13_n_0 ),
        .O(\ALUResult[15]_INST_0_i_9_n_0 ));
  MUXF8 \ALUResult[16]_INST_0 
       (.I0(\ALUResult[16]_INST_0_i_1_n_0 ),
        .I1(\ALUResult[16]_INST_0_i_2_n_0 ),
        .O(\q_reg[28]_0 [9]),
        .S(ALUControl[2]));
  MUXF7 \ALUResult[16]_INST_0_i_1 
       (.I0(\addressM[16] ),
        .I1(\ALUResult[16]_INST_0_i_4_n_0 ),
        .O(\ALUResult[16]_INST_0_i_1_n_0 ),
        .S(\ALUResult[31]_INST_0_i_10_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[16]_INST_0_i_10 
       (.I0(\q_reg[30]_2 ),
        .I1(\q_reg[26]_0 ),
        .I2(SrcB[1]),
        .I3(\q_reg[28]_1 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[11]_INST_0_i_15_n_0 ),
        .O(\ALUResult[16]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[16]_INST_0_i_11 
       (.I0(\q_reg[30]_3 ),
        .I1(\q_reg[26]_1 ),
        .I2(SrcB[1]),
        .I3(\ALUResult[16]_INST_0_i_12_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[11]_INST_0_i_23_n_0 ),
        .O(\ALUResult[16]_INST_0_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \ALUResult[16]_INST_0_i_12 
       (.I0(SrcA[28]),
        .I1(SrcB[3]),
        .I2(SrcA[20]),
        .I3(SrcB[4]),
        .O(\ALUResult[16]_INST_0_i_12_n_0 ));
  MUXF7 \ALUResult[16]_INST_0_i_2 
       (.I0(\ALUResult[16]_INST_0_i_5_n_0 ),
        .I1(\addressM[16]_0 ),
        .O(\ALUResult[16]_INST_0_i_2_n_0 ),
        .S(ALUControl[1]));
  LUT6 #(
    .INIT(64'h88B8FFFF88B80000)) 
    \ALUResult[16]_INST_0_i_4 
       (.I0(\ALUResult[16]_INST_0_i_7_n_0 ),
        .I1(ALUControl[0]),
        .I2(xorOut__31[3]),
        .I3(ALUControl__0),
        .I4(\ALUResult[31]_INST_0_i_12_0 ),
        .I5(\ALUResult[19]_INST_0_i_2_0 [0]),
        .O(\ALUResult[16]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h88888888FFFCCCFC)) 
    \ALUResult[16]_INST_0_i_5 
       (.I0(\ALUResult[19]_INST_0_i_2_0 [0]),
        .I1(ALUControl[0]),
        .I2(\ALUResult[17]_INST_0_i_8_n_0 ),
        .I3(SrcB[0]),
        .I4(\ALUResult[16]_INST_0_i_9_n_0 ),
        .I5(ALUControl__0),
        .O(\ALUResult[16]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[16]_INST_0_i_7 
       (.I0(\ALUResult[16]_INST_0_i_4_0 ),
        .I1(\ALUResult[16]_INST_0_i_10_n_0 ),
        .I2(ALUControl__0),
        .I3(\ALUResult[11]_INST_0_i_25_0 ),
        .I4(SrcB[0]),
        .I5(\ALUResult[16]_INST_0_i_11_n_0 ),
        .O(\ALUResult[16]_INST_0_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult[16]_INST_0_i_9 
       (.I0(\ALUResult[14]_INST_0_i_9_n_0 ),
        .I1(SrcB[1]),
        .I2(\ALUResult[18]_INST_0_i_12_n_0 ),
        .O(\ALUResult[16]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[17]_INST_0_i_10 
       (.I0(\q_reg[31]_3 ),
        .I1(\ALUResult[17]_INST_0_i_7 ),
        .I2(SrcB[1]),
        .I3(\ALUResult[17]_INST_0_i_11_n_0 ),
        .I4(SrcB[2]),
        .I5(\q_reg[25]_1 ),
        .O(\ALUResult[11]_INST_0_i_25_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \ALUResult[17]_INST_0_i_11 
       (.I0(SrcA[29]),
        .I1(SrcB[3]),
        .I2(SrcA[21]),
        .I3(SrcB[4]),
        .O(\ALUResult[17]_INST_0_i_11_n_0 ));
  MUXF7 \ALUResult[17]_INST_0_i_2 
       (.I0(\ALUResult[17]_INST_0_i_5_n_0 ),
        .I1(\addressM[17] ),
        .O(\ALUResult[17]_INST_0_i_6 ),
        .S(ALUControl[1]));
  LUT6 #(
    .INIT(64'h88888888FFFCCCFC)) 
    \ALUResult[17]_INST_0_i_5 
       (.I0(\ALUResult[19]_INST_0_i_2_0 [1]),
        .I1(ALUControl[0]),
        .I2(\ALUResult[18]_INST_0_i_9_n_0 ),
        .I3(SrcB[0]),
        .I4(\ALUResult[17]_INST_0_i_8_n_0 ),
        .I5(ALUControl__0),
        .O(\ALUResult[17]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult[17]_INST_0_i_8 
       (.I0(\ALUResult[15]_INST_0_i_9_n_0 ),
        .I1(SrcB[1]),
        .I2(\ALUResult[19]_INST_0_i_11_n_0 ),
        .O(\ALUResult[17]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \ALUResult[18]_INST_0_i_12 
       (.I0(SrcA[3]),
        .I1(SrcB[3]),
        .I2(SrcA[11]),
        .I3(SrcB[4]),
        .I4(SrcB[2]),
        .I5(\ALUResult[18]_INST_0_i_14_n_0 ),
        .O(\ALUResult[18]_INST_0_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \ALUResult[18]_INST_0_i_13 
       (.I0(SrcA[30]),
        .I1(SrcB[3]),
        .I2(SrcA[22]),
        .I3(SrcB[4]),
        .O(\q_reg[30]_3 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \ALUResult[18]_INST_0_i_14 
       (.I0(SrcA[7]),
        .I1(SrcB[3]),
        .I2(SrcA[15]),
        .I3(SrcB[4]),
        .O(\ALUResult[18]_INST_0_i_14_n_0 ));
  MUXF7 \ALUResult[18]_INST_0_i_2 
       (.I0(\ALUResult[18]_INST_0_i_5_n_0 ),
        .I1(\addressM[18] ),
        .O(\ALUResult[18]_INST_0_i_6 ),
        .S(ALUControl[1]));
  LUT6 #(
    .INIT(64'h88888888FFFCCCFC)) 
    \ALUResult[18]_INST_0_i_5 
       (.I0(\ALUResult[19]_INST_0_i_2_0 [2]),
        .I1(ALUControl[0]),
        .I2(\ALUResult[19]_INST_0_i_8_n_0 ),
        .I3(SrcB[0]),
        .I4(\ALUResult[18]_INST_0_i_9_n_0 ),
        .I5(ALUControl__0),
        .O(\ALUResult[18]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult[18]_INST_0_i_9 
       (.I0(\ALUResult[18]_INST_0_i_12_n_0 ),
        .I1(SrcB[1]),
        .I2(\ALUResult[20]_INST_0_i_7_n_0 ),
        .O(\ALUResult[18]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \ALUResult[19]_INST_0_i_11 
       (.I0(SrcA[4]),
        .I1(SrcB[3]),
        .I2(SrcA[12]),
        .I3(SrcB[4]),
        .I4(SrcB[2]),
        .I5(\ALUResult[22]_INST_0_i_10_n_0 ),
        .O(\ALUResult[19]_INST_0_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \ALUResult[19]_INST_0_i_13 
       (.I0(SrcA[27]),
        .I1(SrcB[3]),
        .I2(SrcA[31]),
        .I3(SrcB[4]),
        .I4(SrcA[19]),
        .O(\q_reg[27]_1 ));
  LUT4 #(
    .INIT(16'h00B8)) 
    \ALUResult[19]_INST_0_i_14 
       (.I0(SrcA[31]),
        .I1(SrcB[3]),
        .I2(SrcA[23]),
        .I3(SrcB[4]),
        .O(\q_reg[31]_3 ));
  MUXF7 \ALUResult[19]_INST_0_i_2 
       (.I0(\ALUResult[19]_INST_0_i_5_n_0 ),
        .I1(\addressM[19] ),
        .O(\ALUResult[19]_INST_0_i_6 ),
        .S(ALUControl[1]));
  LUT6 #(
    .INIT(64'h88888888FFFCCCFC)) 
    \ALUResult[19]_INST_0_i_5 
       (.I0(\ALUResult[19]_INST_0_i_2_0 [3]),
        .I1(ALUControl[0]),
        .I2(\ALUResult[20]_INST_0_i_5_n_0 ),
        .I3(SrcB[0]),
        .I4(\ALUResult[19]_INST_0_i_8_n_0 ),
        .I5(ALUControl__0),
        .O(\ALUResult[19]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult[19]_INST_0_i_8 
       (.I0(\ALUResult[19]_INST_0_i_11_n_0 ),
        .I1(SrcB[1]),
        .I2(\ALUResult[21]_INST_0_i_7_n_0 ),
        .O(\ALUResult[19]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[1]_INST_0_i_12 
       (.I0(\ALUResult[7]_INST_0_i_10_n_0 ),
        .I1(\ALUResult[3]_INST_0_i_13_n_0 ),
        .I2(SrcB[1]),
        .I3(\ALUResult[5]_INST_0_i_10_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[1]_INST_0_i_13_n_0 ),
        .O(\ALUResult[1]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[1]_INST_0_i_13 
       (.I0(SrcA[25]),
        .I1(SrcA[9]),
        .I2(SrcB[3]),
        .I3(SrcA[17]),
        .I4(SrcB[4]),
        .I5(SrcA[1]),
        .O(\ALUResult[1]_INST_0_i_13_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \ALUResult[1]_INST_0_i_7 
       (.I0(\ALUResult[2]_INST_0_i_11_n_0 ),
        .I1(ALUControl__0),
        .I2(\ALUResult[2]_INST_0_i_12_n_0 ),
        .I3(SrcB[0]),
        .I4(\ALUResult[1]_INST_0_i_12_n_0 ),
        .O(\ALUResult[1]_INST_0_i_12_0 ));
  LUT6 #(
    .INIT(64'hBBBABBBB888A8888)) 
    \ALUResult[1]_INST_0_i_8 
       (.I0(Instr[6]),
        .I1(Instr[1]),
        .I2(Instr[2]),
        .I3(Instr[4]),
        .I4(Instr[3]),
        .I5(Instr[19]),
        .O(\q_reg[5]_0 ));
  LUT6 #(
    .INIT(64'hBBBABBBB888A8888)) 
    \ALUResult[1]_INST_0_i_9 
       (.I0(Instr[19]),
        .I1(Instr[1]),
        .I2(Instr[2]),
        .I3(Instr[4]),
        .I4(Instr[3]),
        .I5(Instr[6]),
        .O(\q_reg[5]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult[20]_INST_0_i_11 
       (.I0(\q_reg[26]_2 ),
        .I1(SrcB[1]),
        .I2(\q_reg[24]_0 ),
        .O(\ALUResult[20]_INST_0_i_14_0 ));
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \ALUResult[20]_INST_0_i_13 
       (.I0(SrcA[28]),
        .I1(SrcB[3]),
        .I2(SrcA[31]),
        .I3(SrcB[4]),
        .I4(SrcA[20]),
        .O(\q_reg[28]_1 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \ALUResult[20]_INST_0_i_14 
       (.I0(SrcA[24]),
        .I1(SrcB[2]),
        .I2(SrcA[28]),
        .I3(SrcB[3]),
        .I4(SrcA[20]),
        .I5(SrcB[4]),
        .O(\q_reg[24]_0 ));
  LUT6 #(
    .INIT(64'h88888888FFFCCCFC)) 
    \ALUResult[20]_INST_0_i_2 
       (.I0(\ALUResult[23]_INST_0_i_1_0 [0]),
        .I1(ALUControl[0]),
        .I2(\ALUResult[1]_INST_0_i_4 ),
        .I3(SrcB[0]),
        .I4(\ALUResult[20]_INST_0_i_5_n_0 ),
        .I5(ALUControl__0),
        .O(\ALUResult[31]_INST_0_i_12_1 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult[20]_INST_0_i_5 
       (.I0(\ALUResult[20]_INST_0_i_7_n_0 ),
        .I1(SrcB[1]),
        .I2(\q_reg[7]_1 ),
        .O(\ALUResult[20]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \ALUResult[20]_INST_0_i_7 
       (.I0(SrcA[5]),
        .I1(SrcB[3]),
        .I2(SrcA[13]),
        .I3(SrcB[4]),
        .I4(SrcB[2]),
        .I5(\q_reg[9]_0 ),
        .O(\ALUResult[20]_INST_0_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult[21]_INST_0_i_11 
       (.I0(\q_reg[27]_3 ),
        .I1(SrcB[1]),
        .I2(\q_reg[25]_2 ),
        .O(\ALUResult[21]_INST_0_i_14_0 ));
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \ALUResult[21]_INST_0_i_13 
       (.I0(SrcA[29]),
        .I1(SrcB[3]),
        .I2(SrcA[31]),
        .I3(SrcB[4]),
        .I4(SrcA[21]),
        .O(\q_reg[29]_0 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \ALUResult[21]_INST_0_i_14 
       (.I0(SrcA[25]),
        .I1(SrcB[2]),
        .I2(SrcA[29]),
        .I3(SrcB[3]),
        .I4(SrcA[21]),
        .I5(SrcB[4]),
        .O(\q_reg[25]_2 ));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \ALUResult[21]_INST_0_i_5 
       (.I0(\ALUResult[22]_INST_0_i_10_n_0 ),
        .I1(SrcB[2]),
        .I2(\ALUResult[22]_INST_0_i_11_n_0 ),
        .I3(\ALUResult[21]_INST_0_i_7_n_0 ),
        .I4(SrcB[1]),
        .O(\ALUResult[1]_INST_0_i_4 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \ALUResult[21]_INST_0_i_7 
       (.I0(SrcA[6]),
        .I1(SrcB[3]),
        .I2(SrcA[14]),
        .I3(SrcB[4]),
        .I4(SrcB[2]),
        .I5(\ALUResult[22]_INST_0_i_12_n_0 ),
        .O(\ALUResult[21]_INST_0_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \ALUResult[22]_INST_0_i_10 
       (.I0(SrcA[8]),
        .I1(SrcB[3]),
        .I2(SrcA[0]),
        .I3(SrcB[4]),
        .I4(SrcA[16]),
        .O(\ALUResult[22]_INST_0_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \ALUResult[22]_INST_0_i_11 
       (.I0(SrcA[12]),
        .I1(SrcB[3]),
        .I2(SrcA[4]),
        .I3(SrcB[4]),
        .I4(SrcA[20]),
        .O(\ALUResult[22]_INST_0_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \ALUResult[22]_INST_0_i_12 
       (.I0(SrcA[10]),
        .I1(SrcB[3]),
        .I2(SrcA[2]),
        .I3(SrcB[4]),
        .I4(SrcA[18]),
        .O(\ALUResult[22]_INST_0_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \ALUResult[22]_INST_0_i_13 
       (.I0(SrcA[14]),
        .I1(SrcB[3]),
        .I2(SrcA[6]),
        .I3(SrcB[4]),
        .I4(SrcA[22]),
        .O(\ALUResult[22]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h454000000000CFC0)) 
    \ALUResult[22]_INST_0_i_14 
       (.I0(Instr[1]),
        .I1(Instr[5]),
        .I2(sel0[0]),
        .I3(Instr[18]),
        .I4(Instr[4]),
        .I5(Instr[0]),
        .O(\q_reg[5]_10 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \ALUResult[22]_INST_0_i_15 
       (.I0(SrcA[9]),
        .I1(SrcB[3]),
        .I2(SrcA[1]),
        .I3(SrcB[4]),
        .I4(SrcA[17]),
        .O(\q_reg[9]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \ALUResult[22]_INST_0_i_16 
       (.I0(SrcA[13]),
        .I1(SrcB[3]),
        .I2(SrcA[5]),
        .I3(SrcB[4]),
        .I4(SrcA[21]),
        .O(\q_reg[13]_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \ALUResult[22]_INST_0_i_17 
       (.I0(SrcA[7]),
        .I1(SrcB[3]),
        .I2(SrcA[15]),
        .I3(SrcB[4]),
        .I4(SrcB[2]),
        .I5(\ALUResult[26]_INST_0_i_12_n_0 ),
        .O(\q_reg[7]_1 ));
  LUT6 #(
    .INIT(64'hFFFFFFAA00AA8200)) 
    \ALUResult[22]_INST_0_i_2 
       (.I0(\c/ALUOp [1]),
        .I1(Instr[10]),
        .I2(\c/ad/RtypeSub__0 ),
        .I3(Instr[11]),
        .I4(Instr[12]),
        .I5(\c/ALUOp [0]),
        .O(ALUControl[1]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult[22]_INST_0_i_20 
       (.I0(\q_reg[29]_1 ),
        .I1(SrcB[1]),
        .I2(\q_reg[27]_2 ),
        .O(\ALUResult[23]_INST_0_i_12_0 ));
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \ALUResult[22]_INST_0_i_25 
       (.I0(SrcA[30]),
        .I1(SrcB[3]),
        .I2(SrcA[31]),
        .I3(SrcB[4]),
        .I4(SrcA[22]),
        .O(\q_reg[30]_2 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \ALUResult[22]_INST_0_i_26 
       (.I0(SrcA[26]),
        .I1(SrcB[2]),
        .I2(SrcA[30]),
        .I3(SrcB[3]),
        .I4(SrcA[22]),
        .I5(SrcB[4]),
        .O(\q_reg[26]_2 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[22]_INST_0_i_6 
       (.I0(\ALUResult[22]_INST_0_i_10_n_0 ),
        .I1(\ALUResult[22]_INST_0_i_11_n_0 ),
        .I2(SrcB[1]),
        .I3(\ALUResult[22]_INST_0_i_12_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[22]_INST_0_i_13_n_0 ),
        .O(\ALUResult[22]_INST_0_i_13_0 ));
  MUXF7 \ALUResult[23]_INST_0_i_1 
       (.I0(\ALUResult[23]_INST_0_i_4_n_0 ),
        .I1(\addressM[23] ),
        .O(\ALUResult[23]_INST_0_i_5 ),
        .S(ALUControl[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[23]_INST_0_i_10 
       (.I0(\q_reg[30]_1 ),
        .I1(\q_reg[28]_2 ),
        .I2(SrcB[0]),
        .I3(\q_reg[29]_1 ),
        .I4(SrcB[1]),
        .I5(\q_reg[27]_2 ),
        .O(data5));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \ALUResult[23]_INST_0_i_11 
       (.I0(SrcA[27]),
        .I1(SrcB[2]),
        .I2(SrcA[31]),
        .I3(SrcB[3]),
        .I4(SrcA[23]),
        .I5(SrcB[4]),
        .O(\q_reg[27]_3 ));
  LUT6 #(
    .INIT(64'hFF00FB0BFF00F808)) 
    \ALUResult[23]_INST_0_i_12 
       (.I0(SrcA[27]),
        .I1(SrcB[2]),
        .I2(SrcB[3]),
        .I3(SrcA[31]),
        .I4(SrcB[4]),
        .I5(SrcA[23]),
        .O(\q_reg[27]_2 ));
  LUT6 #(
    .INIT(64'h88888888FFFCCCFC)) 
    \ALUResult[23]_INST_0_i_4 
       (.I0(\ALUResult[23]_INST_0_i_1_0 [1]),
        .I1(ALUControl[0]),
        .I2(\ALUResult[24]_INST_0_i_9_n_0 ),
        .I3(SrcB[0]),
        .I4(\ALUResult[22]_INST_0_i_13_0 ),
        .I5(ALUControl__0),
        .O(\ALUResult[23]_INST_0_i_4_n_0 ));
  MUXF7 \ALUResult[24]_INST_0_i_1 
       (.I0(\ALUResult[24]_INST_0_i_4_n_0 ),
        .I1(\addressM[24] ),
        .O(\ALUResult[24]_INST_0_i_5 ),
        .S(ALUControl[1]));
  LUT6 #(
    .INIT(64'hFF00FB0BFF00F808)) 
    \ALUResult[24]_INST_0_i_13 
       (.I0(SrcA[28]),
        .I1(SrcB[2]),
        .I2(SrcB[3]),
        .I3(SrcA[31]),
        .I4(SrcB[4]),
        .I5(SrcA[24]),
        .O(\q_reg[28]_2 ));
  LUT6 #(
    .INIT(64'h88888888FFFCCCFC)) 
    \ALUResult[24]_INST_0_i_4 
       (.I0(\ALUResult[27]_INST_0_i_1_0 [0]),
        .I1(ALUControl[0]),
        .I2(\ALUResult[25]_INST_0_i_9_n_0 ),
        .I3(SrcB[0]),
        .I4(\ALUResult[24]_INST_0_i_9_n_0 ),
        .I5(ALUControl__0),
        .O(\ALUResult[24]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[24]_INST_0_i_9 
       (.I0(\q_reg[9]_0 ),
        .I1(\q_reg[13]_0 ),
        .I2(SrcB[1]),
        .I3(\ALUResult[26]_INST_0_i_12_n_0 ),
        .I4(SrcB[2]),
        .I5(\q_reg[15]_1 ),
        .O(\ALUResult[24]_INST_0_i_9_n_0 ));
  MUXF7 \ALUResult[25]_INST_0_i_1 
       (.I0(\ALUResult[25]_INST_0_i_4_n_0 ),
        .I1(\addressM[25] ),
        .O(\ALUResult[25]_INST_0_i_5 ),
        .S(ALUControl[1]));
  LUT6 #(
    .INIT(64'hFF00FB0BFF00F808)) 
    \ALUResult[25]_INST_0_i_13 
       (.I0(SrcA[29]),
        .I1(SrcB[2]),
        .I2(SrcB[3]),
        .I3(SrcA[31]),
        .I4(SrcB[4]),
        .I5(SrcA[25]),
        .O(\q_reg[29]_1 ));
  LUT6 #(
    .INIT(64'h88888888FFFCCCFC)) 
    \ALUResult[25]_INST_0_i_4 
       (.I0(\ALUResult[27]_INST_0_i_1_0 [1]),
        .I1(ALUControl[0]),
        .I2(\ALUResult[26]_INST_0_i_9_n_0 ),
        .I3(SrcB[0]),
        .I4(\ALUResult[25]_INST_0_i_9_n_0 ),
        .I5(ALUControl__0),
        .O(\ALUResult[25]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[25]_INST_0_i_9 
       (.I0(\ALUResult[22]_INST_0_i_12_n_0 ),
        .I1(\ALUResult[22]_INST_0_i_13_n_0 ),
        .I2(SrcB[1]),
        .I3(\ALUResult[22]_INST_0_i_11_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[31]_INST_0_i_18_n_0 ),
        .O(\ALUResult[25]_INST_0_i_9_n_0 ));
  MUXF7 \ALUResult[26]_INST_0_i_1 
       (.I0(\ALUResult[26]_INST_0_i_4_n_0 ),
        .I1(\addressM[26] ),
        .O(\ALUResult[26]_INST_0_i_5 ),
        .S(ALUControl[1]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \ALUResult[26]_INST_0_i_12 
       (.I0(SrcA[11]),
        .I1(SrcB[3]),
        .I2(SrcA[3]),
        .I3(SrcB[4]),
        .I4(SrcA[19]),
        .O(\ALUResult[26]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FB0BFF00F808)) 
    \ALUResult[26]_INST_0_i_15 
       (.I0(SrcA[30]),
        .I1(SrcB[2]),
        .I2(SrcB[3]),
        .I3(SrcA[31]),
        .I4(SrcB[4]),
        .I5(SrcA[26]),
        .O(\q_reg[30]_1 ));
  LUT6 #(
    .INIT(64'h88888888FFFCCCFC)) 
    \ALUResult[26]_INST_0_i_4 
       (.I0(\ALUResult[27]_INST_0_i_1_0 [2]),
        .I1(ALUControl[0]),
        .I2(\ALUResult[27]_INST_0_i_9_n_0 ),
        .I3(SrcB[0]),
        .I4(\ALUResult[26]_INST_0_i_9_n_0 ),
        .I5(ALUControl__0),
        .O(\ALUResult[26]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[26]_INST_0_i_9 
       (.I0(\ALUResult[26]_INST_0_i_12_n_0 ),
        .I1(\q_reg[15]_1 ),
        .I2(SrcB[1]),
        .I3(\q_reg[13]_0 ),
        .I4(SrcB[2]),
        .I5(\q_reg[1]_0 ),
        .O(\ALUResult[26]_INST_0_i_9_n_0 ));
  MUXF7 \ALUResult[27]_INST_0_i_1 
       (.I0(\ALUResult[27]_INST_0_i_4_n_0 ),
        .I1(\addressM[27] ),
        .O(\ALUResult[27]_INST_0_i_5 ),
        .S(ALUControl[1]));
  LUT6 #(
    .INIT(64'h88888888FFFCCCFC)) 
    \ALUResult[27]_INST_0_i_4 
       (.I0(\ALUResult[27]_INST_0_i_1_0 [3]),
        .I1(ALUControl[0]),
        .I2(\ALUResult[28]_INST_0_i_12_n_0 ),
        .I3(SrcB[0]),
        .I4(\ALUResult[27]_INST_0_i_9_n_0 ),
        .I5(ALUControl__0),
        .O(\ALUResult[27]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[27]_INST_0_i_9 
       (.I0(\ALUResult[22]_INST_0_i_11_n_0 ),
        .I1(\ALUResult[31]_INST_0_i_18_n_0 ),
        .I2(SrcB[1]),
        .I3(\ALUResult[22]_INST_0_i_13_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[31]_INST_0_i_20_n_0 ),
        .O(\ALUResult[27]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \ALUResult[28]_INST_0 
       (.I0(\ALUResult[28]_INST_0_i_1_n_0 ),
        .I1(ALUControl[2]),
        .I2(\addressM[28] ),
        .I3(\ALUResult[31]_INST_0_i_10_0 ),
        .I4(\addressM[28]_0 ),
        .O(\q_reg[28]_0 [10]));
  MUXF7 \ALUResult[28]_INST_0_i_1 
       (.I0(\ALUResult[28]_INST_0_i_5_n_0 ),
        .I1(\addressM[28]_1 ),
        .O(\ALUResult[28]_INST_0_i_1_n_0 ),
        .S(ALUControl[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[28]_INST_0_i_12 
       (.I0(\q_reg[13]_0 ),
        .I1(\q_reg[1]_0 ),
        .I2(SrcB[1]),
        .I3(\q_reg[15]_1 ),
        .I4(SrcB[2]),
        .I5(\q_reg[3]_0 ),
        .O(\ALUResult[28]_INST_0_i_12_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \ALUResult[28]_INST_0_i_3 
       (.I0(ALUControl[1]),
        .I1(ALUControl[0]),
        .O(\ALUResult[31]_INST_0_i_10_0 ));
  LUT6 #(
    .INIT(64'h88888888FFFCCCFC)) 
    \ALUResult[28]_INST_0_i_5 
       (.I0(\ALUResult[0]_INST_0_i_2 [0]),
        .I1(ALUControl[0]),
        .I2(\ALUResult[31]_INST_0_i_19_0 ),
        .I3(SrcB[0]),
        .I4(\ALUResult[28]_INST_0_i_12_n_0 ),
        .I5(ALUControl__0),
        .O(\ALUResult[28]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[29]_INST_0_i_8 
       (.I0(\ALUResult[22]_INST_0_i_13_n_0 ),
        .I1(\ALUResult[31]_INST_0_i_20_n_0 ),
        .I2(SrcB[1]),
        .I3(\ALUResult[31]_INST_0_i_18_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[31]_INST_0_i_19_n_0 ),
        .O(\ALUResult[31]_INST_0_i_19_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[2]_INST_0_i_11 
       (.I0(\ALUResult[8]_INST_0_i_11_n_0 ),
        .I1(\ALUResult[4]_INST_0_i_12_n_0 ),
        .I2(SrcB[1]),
        .I3(\ALUResult[6]_INST_0_i_10_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[2]_INST_0_i_13_n_0 ),
        .O(\ALUResult[2]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[2]_INST_0_i_12 
       (.I0(\ALUResult[8]_INST_0_i_12_n_0 ),
        .I1(\ALUResult[4]_INST_0_i_12_n_0 ),
        .I2(SrcB[1]),
        .I3(\ALUResult[6]_INST_0_i_10_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[2]_INST_0_i_13_n_0 ),
        .O(\ALUResult[2]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[2]_INST_0_i_13 
       (.I0(SrcA[26]),
        .I1(SrcA[10]),
        .I2(SrcB[3]),
        .I3(SrcA[18]),
        .I4(SrcB[4]),
        .I5(SrcA[2]),
        .O(\ALUResult[2]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[2]_INST_0_i_7 
       (.I0(\ALUResult[3]_INST_0_i_11_n_0 ),
        .I1(\ALUResult[2]_INST_0_i_11_n_0 ),
        .I2(ALUControl__0),
        .I3(\ALUResult[3]_INST_0_i_12_n_0 ),
        .I4(SrcB[0]),
        .I5(\ALUResult[2]_INST_0_i_12_n_0 ),
        .O(\ALUResult[2]_INST_0_i_12_0 ));
  LUT6 #(
    .INIT(64'hBBBABBBB888A8888)) 
    \ALUResult[2]_INST_0_i_8 
       (.I0(Instr[7]),
        .I1(Instr[1]),
        .I2(Instr[2]),
        .I3(Instr[4]),
        .I4(Instr[3]),
        .I5(Instr[20]),
        .O(\q_reg[5]_4 ));
  LUT6 #(
    .INIT(64'hBBBABBBB888A8888)) 
    \ALUResult[2]_INST_0_i_9 
       (.I0(Instr[20]),
        .I1(Instr[1]),
        .I2(Instr[2]),
        .I3(Instr[4]),
        .I4(Instr[3]),
        .I5(Instr[7]),
        .O(\q_reg[5]_5 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \ALUResult[30]_INST_0_i_11 
       (.I0(SrcA[15]),
        .I1(SrcB[3]),
        .I2(SrcA[7]),
        .I3(SrcB[4]),
        .I4(SrcA[23]),
        .O(\q_reg[15]_1 ));
  LUT6 #(
    .INIT(64'hAAAAFEEEAAAAAAAA)) 
    \ALUResult[31]_INST_0_i_1 
       (.I0(\c/ALUOp [0]),
        .I1(Instr[10]),
        .I2(Instr[11]),
        .I3(\c/ad/RtypeSub__0 ),
        .I4(Instr[12]),
        .I5(\c/ALUOp [1]),
        .O(ALUControl[2]));
  LUT6 #(
    .INIT(64'hFFFCCECCCC00CCCC)) 
    \ALUResult[31]_INST_0_i_10 
       (.I0(\c/ad/RtypeSub__0 ),
        .I1(\c/ALUOp [0]),
        .I2(Instr[10]),
        .I3(Instr[11]),
        .I4(Instr[12]),
        .I5(\c/ALUOp [1]),
        .O(ALUControl[0]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \ALUResult[31]_INST_0_i_11 
       (.I0(\ALUResult[31]_INST_0_i_21_0 ),
        .I1(SrcB[0]),
        .I2(\ALUResult[31]_INST_0_i_15_n_0 ),
        .I3(SrcB[1]),
        .I4(\ALUResult[31]_INST_0_i_16_n_0 ),
        .O(data7[6]));
  LUT5 #(
    .INIT(32'h83380038)) 
    \ALUResult[31]_INST_0_i_12 
       (.I0(Instr[3]),
        .I1(Instr[0]),
        .I2(Instr[4]),
        .I3(Instr[2]),
        .I4(\ALUResult[31]_INST_0_i_17_n_0 ),
        .O(ALUControl__0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[31]_INST_0_i_14 
       (.I0(\ALUResult[31]_INST_0_i_18_n_0 ),
        .I1(\ALUResult[31]_INST_0_i_19_n_0 ),
        .I2(SrcB[1]),
        .I3(\ALUResult[31]_INST_0_i_20_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[31]_INST_0_i_21_n_0 ),
        .O(\ALUResult[31]_INST_0_i_21_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult[31]_INST_0_i_15 
       (.I0(\q_reg[1]_0 ),
        .I1(SrcB[2]),
        .I2(\q_reg[5]_3 ),
        .O(\ALUResult[31]_INST_0_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult[31]_INST_0_i_16 
       (.I0(\q_reg[3]_0 ),
        .I1(SrcB[2]),
        .I2(\ALUResult[31]_INST_0_i_25_n_0 ),
        .O(\ALUResult[31]_INST_0_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h26449CCC)) 
    \ALUResult[31]_INST_0_i_17 
       (.I0(Instr[12]),
        .I1(Instr[11]),
        .I2(Instr[3]),
        .I3(Instr[28]),
        .I4(Instr[10]),
        .O(\ALUResult[31]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[31]_INST_0_i_18 
       (.I0(SrcA[0]),
        .I1(SrcA[16]),
        .I2(SrcB[3]),
        .I3(SrcA[8]),
        .I4(SrcB[4]),
        .I5(SrcA[24]),
        .O(\ALUResult[31]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[31]_INST_0_i_19 
       (.I0(SrcA[4]),
        .I1(SrcA[20]),
        .I2(SrcB[3]),
        .I3(SrcA[12]),
        .I4(SrcB[4]),
        .I5(SrcA[28]),
        .O(\ALUResult[31]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[31]_INST_0_i_20 
       (.I0(SrcA[2]),
        .I1(SrcA[18]),
        .I2(SrcB[3]),
        .I3(SrcA[10]),
        .I4(SrcB[4]),
        .I5(SrcA[26]),
        .O(\ALUResult[31]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[31]_INST_0_i_21 
       (.I0(SrcA[6]),
        .I1(SrcA[22]),
        .I2(SrcB[3]),
        .I3(SrcA[14]),
        .I4(SrcB[4]),
        .I5(SrcA[30]),
        .O(\ALUResult[31]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[31]_INST_0_i_22 
       (.I0(SrcA[1]),
        .I1(SrcA[17]),
        .I2(SrcB[3]),
        .I3(SrcA[9]),
        .I4(SrcB[4]),
        .I5(SrcA[25]),
        .O(\q_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[31]_INST_0_i_23 
       (.I0(SrcA[5]),
        .I1(SrcA[21]),
        .I2(SrcB[3]),
        .I3(SrcA[13]),
        .I4(SrcB[4]),
        .I5(SrcA[29]),
        .O(\q_reg[5]_3 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[31]_INST_0_i_24 
       (.I0(SrcA[3]),
        .I1(SrcA[19]),
        .I2(SrcB[3]),
        .I3(SrcA[11]),
        .I4(SrcB[4]),
        .I5(SrcA[27]),
        .O(\q_reg[3]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[31]_INST_0_i_25 
       (.I0(SrcA[7]),
        .I1(SrcA[23]),
        .I2(SrcB[3]),
        .I3(SrcA[15]),
        .I4(SrcB[4]),
        .I5(SrcA[31]),
        .O(\ALUResult[31]_INST_0_i_25_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h38)) 
    \ALUResult[31]_INST_0_i_4 
       (.I0(Instr[3]),
        .I1(Instr[0]),
        .I2(Instr[4]),
        .O(\c/ALUOp [0]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \ALUResult[31]_INST_0_i_5 
       (.I0(Instr[28]),
        .I1(Instr[3]),
        .O(\c/ad/RtypeSub__0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hA2)) 
    \ALUResult[31]_INST_0_i_6 
       (.I0(Instr[2]),
        .I1(Instr[0]),
        .I2(Instr[3]),
        .O(\c/ALUOp [1]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \ALUResult[31]_INST_0_i_8 
       (.I0(ALUControl[1]),
        .I1(ALUControl[0]),
        .I2(ALUControl__0),
        .O(\ALUResult[31]_INST_0_i_12_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[3]_INST_0_i_11 
       (.I0(\ALUResult[9]_INST_0_i_11_n_0 ),
        .I1(\ALUResult[5]_INST_0_i_10_n_0 ),
        .I2(SrcB[1]),
        .I3(\ALUResult[7]_INST_0_i_10_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[3]_INST_0_i_13_n_0 ),
        .O(\ALUResult[3]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[3]_INST_0_i_12 
       (.I0(\ALUResult[9]_INST_0_i_12_n_0 ),
        .I1(\ALUResult[5]_INST_0_i_10_n_0 ),
        .I2(SrcB[1]),
        .I3(\ALUResult[7]_INST_0_i_10_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[3]_INST_0_i_13_n_0 ),
        .O(\ALUResult[3]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[3]_INST_0_i_13 
       (.I0(SrcA[27]),
        .I1(SrcA[11]),
        .I2(SrcB[3]),
        .I3(SrcA[19]),
        .I4(SrcB[4]),
        .I5(SrcA[3]),
        .O(\ALUResult[3]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[3]_INST_0_i_7 
       (.I0(\ALUResult[4]_INST_0_i_10_n_0 ),
        .I1(\ALUResult[3]_INST_0_i_11_n_0 ),
        .I2(ALUControl__0),
        .I3(\ALUResult[4]_INST_0_i_11_n_0 ),
        .I4(SrcB[0]),
        .I5(\ALUResult[3]_INST_0_i_12_n_0 ),
        .O(\ALUResult[3]_INST_0_i_12_0 ));
  LUT6 #(
    .INIT(64'hBBBABBBB888A8888)) 
    \ALUResult[3]_INST_0_i_8 
       (.I0(Instr[8]),
        .I1(Instr[1]),
        .I2(Instr[2]),
        .I3(Instr[4]),
        .I4(Instr[3]),
        .I5(Instr[21]),
        .O(\q_reg[5]_6 ));
  LUT6 #(
    .INIT(64'hBBBABBBB888A8888)) 
    \ALUResult[3]_INST_0_i_9 
       (.I0(Instr[21]),
        .I1(Instr[1]),
        .I2(Instr[2]),
        .I3(Instr[4]),
        .I4(Instr[3]),
        .I5(Instr[8]),
        .O(\q_reg[5]_7 ));
  MUXF7 \ALUResult[4]_INST_0 
       (.I0(\ALUResult[4]_INST_0_i_1_n_0 ),
        .I1(\addressM[4] ),
        .O(\q_reg[28]_0 [0]),
        .S(ALUControl[2]));
  LUT6 #(
    .INIT(64'hAFCFAFC0AFC0A0C0)) 
    \ALUResult[4]_INST_0_i_1 
       (.I0(\ALUResult[4]_INST_0_i_3_n_0 ),
        .I1(\addressM[7] [0]),
        .I2(\ALUResult[31]_INST_0_i_10_0 ),
        .I3(\ALUResult[31]_INST_0_i_12_0 ),
        .I4(SrcA[4]),
        .I5(SrcB[4]),
        .O(\ALUResult[4]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[4]_INST_0_i_10 
       (.I0(\ALUResult[10]_INST_0_i_11_n_0 ),
        .I1(\ALUResult[6]_INST_0_i_10_n_0 ),
        .I2(SrcB[1]),
        .I3(\ALUResult[8]_INST_0_i_11_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[4]_INST_0_i_12_n_0 ),
        .O(\ALUResult[4]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[4]_INST_0_i_11 
       (.I0(\ALUResult[10]_INST_0_i_12_n_0 ),
        .I1(\ALUResult[6]_INST_0_i_10_n_0 ),
        .I2(SrcB[1]),
        .I3(\ALUResult[8]_INST_0_i_12_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[4]_INST_0_i_12_n_0 ),
        .O(\ALUResult[4]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[4]_INST_0_i_12 
       (.I0(SrcA[28]),
        .I1(SrcA[12]),
        .I2(SrcB[3]),
        .I3(SrcA[20]),
        .I4(SrcB[4]),
        .I5(SrcA[4]),
        .O(\ALUResult[4]_INST_0_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h88888BB8)) 
    \ALUResult[4]_INST_0_i_3 
       (.I0(\ALUResult[4]_INST_0_i_6_n_0 ),
        .I1(ALUControl[0]),
        .I2(SrcA[4]),
        .I3(SrcB[4]),
        .I4(ALUControl__0),
        .O(\ALUResult[4]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[4]_INST_0_i_6 
       (.I0(\ALUResult[5]_INST_0_i_8_n_0 ),
        .I1(\ALUResult[4]_INST_0_i_10_n_0 ),
        .I2(ALUControl__0),
        .I3(\ALUResult[5]_INST_0_i_9_n_0 ),
        .I4(SrcB[0]),
        .I5(\ALUResult[4]_INST_0_i_11_n_0 ),
        .O(\ALUResult[4]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hBBBABBBB888A8888)) 
    \ALUResult[4]_INST_0_i_7 
       (.I0(Instr[9]),
        .I1(Instr[1]),
        .I2(Instr[2]),
        .I3(Instr[4]),
        .I4(Instr[3]),
        .I5(Instr[22]),
        .O(\q_reg[5]_8 ));
  LUT6 #(
    .INIT(64'hBBBABBBB888A8888)) 
    \ALUResult[4]_INST_0_i_8 
       (.I0(Instr[22]),
        .I1(Instr[1]),
        .I2(Instr[2]),
        .I3(Instr[4]),
        .I4(Instr[3]),
        .I5(Instr[9]),
        .O(\q_reg[5]_9 ));
  MUXF7 \ALUResult[5]_INST_0 
       (.I0(\ALUResult[5]_INST_0_i_1_n_0 ),
        .I1(\addressM[5] ),
        .O(\q_reg[28]_0 [1]),
        .S(ALUControl[2]));
  LUT6 #(
    .INIT(64'hAFCFAFC0AFC0A0C0)) 
    \ALUResult[5]_INST_0_i_1 
       (.I0(\ALUResult[5]_INST_0_i_3_n_0 ),
        .I1(\addressM[7] [1]),
        .I2(\ALUResult[31]_INST_0_i_10_0 ),
        .I3(\ALUResult[31]_INST_0_i_12_0 ),
        .I4(SrcA[5]),
        .I5(SrcB[5]),
        .O(\ALUResult[5]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[5]_INST_0_i_10 
       (.I0(SrcA[29]),
        .I1(SrcA[13]),
        .I2(SrcB[3]),
        .I3(SrcA[21]),
        .I4(SrcB[4]),
        .I5(SrcA[5]),
        .O(\ALUResult[5]_INST_0_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h88888BB8)) 
    \ALUResult[5]_INST_0_i_3 
       (.I0(\ALUResult[5]_INST_0_i_6_n_0 ),
        .I1(ALUControl[0]),
        .I2(SrcA[5]),
        .I3(SrcB[5]),
        .I4(ALUControl__0),
        .O(\ALUResult[5]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[5]_INST_0_i_6 
       (.I0(\ALUResult[6]_INST_0_i_8_n_0 ),
        .I1(\ALUResult[5]_INST_0_i_8_n_0 ),
        .I2(ALUControl__0),
        .I3(\ALUResult[6]_INST_0_i_9_n_0 ),
        .I4(SrcB[0]),
        .I5(\ALUResult[5]_INST_0_i_9_n_0 ),
        .O(\ALUResult[5]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[5]_INST_0_i_8 
       (.I0(\ALUResult[11]_INST_0_i_20_n_0 ),
        .I1(\ALUResult[7]_INST_0_i_10_n_0 ),
        .I2(SrcB[1]),
        .I3(\ALUResult[9]_INST_0_i_11_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[5]_INST_0_i_10_n_0 ),
        .O(\ALUResult[5]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[5]_INST_0_i_9 
       (.I0(\ALUResult[11]_INST_0_i_28_n_0 ),
        .I1(\ALUResult[7]_INST_0_i_10_n_0 ),
        .I2(SrcB[1]),
        .I3(\ALUResult[9]_INST_0_i_12_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[5]_INST_0_i_10_n_0 ),
        .O(\ALUResult[5]_INST_0_i_9_n_0 ));
  MUXF7 \ALUResult[6]_INST_0 
       (.I0(\ALUResult[6]_INST_0_i_1_n_0 ),
        .I1(\addressM[6] ),
        .O(\q_reg[28]_0 [2]),
        .S(ALUControl[2]));
  LUT6 #(
    .INIT(64'hAFCFAFC0AFC0A0C0)) 
    \ALUResult[6]_INST_0_i_1 
       (.I0(\ALUResult[6]_INST_0_i_3_n_0 ),
        .I1(\addressM[7] [2]),
        .I2(\ALUResult[31]_INST_0_i_10_0 ),
        .I3(\ALUResult[31]_INST_0_i_12_0 ),
        .I4(SrcA[6]),
        .I5(SrcB[6]),
        .O(\ALUResult[6]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[6]_INST_0_i_10 
       (.I0(SrcA[30]),
        .I1(SrcA[14]),
        .I2(SrcB[3]),
        .I3(SrcA[22]),
        .I4(SrcB[4]),
        .I5(SrcA[6]),
        .O(\ALUResult[6]_INST_0_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h88888BB8)) 
    \ALUResult[6]_INST_0_i_3 
       (.I0(\ALUResult[6]_INST_0_i_6_n_0 ),
        .I1(ALUControl[0]),
        .I2(SrcA[6]),
        .I3(SrcB[6]),
        .I4(ALUControl__0),
        .O(\ALUResult[6]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[6]_INST_0_i_6 
       (.I0(\ALUResult[7]_INST_0_i_8_n_0 ),
        .I1(\ALUResult[6]_INST_0_i_8_n_0 ),
        .I2(ALUControl__0),
        .I3(\ALUResult[7]_INST_0_i_9_n_0 ),
        .I4(SrcB[0]),
        .I5(\ALUResult[6]_INST_0_i_9_n_0 ),
        .O(\ALUResult[6]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[6]_INST_0_i_8 
       (.I0(\ALUResult[11]_INST_0_i_16_n_0 ),
        .I1(\ALUResult[8]_INST_0_i_11_n_0 ),
        .I2(SrcB[1]),
        .I3(\ALUResult[10]_INST_0_i_11_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[6]_INST_0_i_10_n_0 ),
        .O(\ALUResult[6]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[6]_INST_0_i_9 
       (.I0(\ALUResult[11]_INST_0_i_24_n_0 ),
        .I1(\ALUResult[8]_INST_0_i_12_n_0 ),
        .I2(SrcB[1]),
        .I3(\ALUResult[10]_INST_0_i_12_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[6]_INST_0_i_10_n_0 ),
        .O(\ALUResult[6]_INST_0_i_9_n_0 ));
  MUXF7 \ALUResult[7]_INST_0 
       (.I0(\ALUResult[7]_INST_0_i_1_n_0 ),
        .I1(\addressM[7]_0 ),
        .O(\q_reg[28]_0 [3]),
        .S(ALUControl[2]));
  LUT6 #(
    .INIT(64'hAFCFAFC0AFC0A0C0)) 
    \ALUResult[7]_INST_0_i_1 
       (.I0(\ALUResult[7]_INST_0_i_3_n_0 ),
        .I1(\addressM[7] [3]),
        .I2(\ALUResult[31]_INST_0_i_10_0 ),
        .I3(\ALUResult[31]_INST_0_i_12_0 ),
        .I4(SrcA[7]),
        .I5(SrcB[7]),
        .O(\ALUResult[7]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[7]_INST_0_i_10 
       (.I0(SrcA[31]),
        .I1(SrcA[15]),
        .I2(SrcB[3]),
        .I3(SrcA[23]),
        .I4(SrcB[4]),
        .I5(SrcA[7]),
        .O(\ALUResult[7]_INST_0_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h88888BB8)) 
    \ALUResult[7]_INST_0_i_3 
       (.I0(\ALUResult[7]_INST_0_i_6_n_0 ),
        .I1(ALUControl[0]),
        .I2(SrcA[7]),
        .I3(SrcB[7]),
        .I4(ALUControl__0),
        .O(\ALUResult[7]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[7]_INST_0_i_6 
       (.I0(\ALUResult[8]_INST_0_i_9_n_0 ),
        .I1(\ALUResult[7]_INST_0_i_8_n_0 ),
        .I2(ALUControl__0),
        .I3(\ALUResult[8]_INST_0_i_10_n_0 ),
        .I4(SrcB[0]),
        .I5(\ALUResult[7]_INST_0_i_9_n_0 ),
        .O(\ALUResult[7]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[7]_INST_0_i_8 
       (.I0(\ALUResult[11]_INST_0_i_18_n_0 ),
        .I1(\ALUResult[9]_INST_0_i_11_n_0 ),
        .I2(SrcB[1]),
        .I3(\ALUResult[11]_INST_0_i_20_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[7]_INST_0_i_10_n_0 ),
        .O(\ALUResult[7]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[7]_INST_0_i_9 
       (.I0(\q_reg[21]_0 ),
        .I1(\ALUResult[9]_INST_0_i_12_n_0 ),
        .I2(SrcB[1]),
        .I3(\ALUResult[11]_INST_0_i_28_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[7]_INST_0_i_10_n_0 ),
        .O(\ALUResult[7]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[8]_INST_0_i_10 
       (.I0(\ALUResult[11]_INST_0_i_22_n_0 ),
        .I1(\ALUResult[10]_INST_0_i_12_n_0 ),
        .I2(SrcB[1]),
        .I3(\ALUResult[11]_INST_0_i_24_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[8]_INST_0_i_12_n_0 ),
        .O(\ALUResult[8]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[8]_INST_0_i_11 
       (.I0(SrcA[31]),
        .I1(SrcA[16]),
        .I2(SrcB[3]),
        .I3(SrcA[24]),
        .I4(SrcB[4]),
        .I5(SrcA[8]),
        .O(\ALUResult[8]_INST_0_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \ALUResult[8]_INST_0_i_12 
       (.I0(SrcA[16]),
        .I1(SrcB[3]),
        .I2(SrcA[24]),
        .I3(SrcB[4]),
        .I4(SrcA[8]),
        .O(\ALUResult[8]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[8]_INST_0_i_7 
       (.I0(\ALUResult[9]_INST_0_i_9_n_0 ),
        .I1(\ALUResult[8]_INST_0_i_9_n_0 ),
        .I2(ALUControl__0),
        .I3(\ALUResult[9]_INST_0_i_10_n_0 ),
        .I4(SrcB[0]),
        .I5(\ALUResult[8]_INST_0_i_10_n_0 ),
        .O(\ALUResult[8]_INST_0_i_10_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[8]_INST_0_i_9 
       (.I0(\ALUResult[11]_INST_0_i_14_n_0 ),
        .I1(\ALUResult[10]_INST_0_i_11_n_0 ),
        .I2(SrcB[1]),
        .I3(\ALUResult[11]_INST_0_i_16_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[8]_INST_0_i_11_n_0 ),
        .O(\ALUResult[8]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[9]_INST_0_i_10 
       (.I0(\q_reg[23]_1 ),
        .I1(\ALUResult[11]_INST_0_i_28_n_0 ),
        .I2(SrcB[1]),
        .I3(\q_reg[21]_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[9]_INST_0_i_12_n_0 ),
        .O(\ALUResult[9]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[9]_INST_0_i_11 
       (.I0(SrcA[31]),
        .I1(SrcA[17]),
        .I2(SrcB[3]),
        .I3(SrcA[25]),
        .I4(SrcB[4]),
        .I5(SrcA[9]),
        .O(\ALUResult[9]_INST_0_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \ALUResult[9]_INST_0_i_12 
       (.I0(SrcA[17]),
        .I1(SrcB[3]),
        .I2(SrcA[25]),
        .I3(SrcB[4]),
        .I4(SrcA[9]),
        .O(\ALUResult[9]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[9]_INST_0_i_7 
       (.I0(\ALUResult[10]_INST_0_i_9_n_0 ),
        .I1(\ALUResult[9]_INST_0_i_9_n_0 ),
        .I2(ALUControl__0),
        .I3(\ALUResult[10]_INST_0_i_10_n_0 ),
        .I4(SrcB[0]),
        .I5(\ALUResult[9]_INST_0_i_10_n_0 ),
        .O(\ALUResult[9]_INST_0_i_10_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[9]_INST_0_i_9 
       (.I0(\ALUResult[11]_INST_0_i_19_n_0 ),
        .I1(\ALUResult[11]_INST_0_i_20_n_0 ),
        .I2(SrcB[1]),
        .I3(\ALUResult[11]_INST_0_i_18_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[9]_INST_0_i_11_n_0 ),
        .O(\ALUResult[9]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h59AA595559555955)) 
    carried_carry__0_i_1
       (.I0(SrcA[7]),
        .I1(Instr[25]),
        .I2(carried_carry__1),
        .I3(ALUSrc),
        .I4(rd21),
        .I5(rd20[2]),
        .O(\q_reg[7]_3 [2]));
  LUT6 #(
    .INIT(64'h59AA595559555955)) 
    carried_carry__0_i_2
       (.I0(SrcA[6]),
        .I1(Instr[24]),
        .I2(carried_carry__1),
        .I3(ALUSrc),
        .I4(rd21),
        .I5(rd20[1]),
        .O(\q_reg[7]_3 [1]));
  LUT6 #(
    .INIT(64'h59AA595559555955)) 
    carried_carry__0_i_3
       (.I0(SrcA[5]),
        .I1(Instr[23]),
        .I2(carried_carry__1),
        .I3(ALUSrc),
        .I4(rd21),
        .I5(rd20[0]),
        .O(\q_reg[7]_3 [0]));
  LUT6 #(
    .INIT(64'h59AA595559555955)) 
    carried_carry__1_i_2
       (.I0(SrcA[10]),
        .I1(Instr[28]),
        .I2(carried_carry__1),
        .I3(ALUSrc),
        .I4(rd21),
        .I5(rd20[5]),
        .O(\q_reg[10]_1 [2]));
  LUT6 #(
    .INIT(64'h59AA595559555955)) 
    carried_carry__1_i_3
       (.I0(SrcA[9]),
        .I1(Instr[27]),
        .I2(carried_carry__1),
        .I3(ALUSrc),
        .I4(rd21),
        .I5(rd20[4]),
        .O(\q_reg[10]_1 [1]));
  LUT6 #(
    .INIT(64'h59AA595559555955)) 
    carried_carry__1_i_4
       (.I0(SrcA[8]),
        .I1(Instr[26]),
        .I2(carried_carry__1),
        .I3(ALUSrc),
        .I4(rd21),
        .I5(rd20[3]),
        .O(\q_reg[10]_1 [0]));
  LUT5 #(
    .INIT(32'hFB080808)) 
    carried_carry__6_i_1
       (.I0(\q_reg[31]_0 ),
        .I1(Instr[0]),
        .I2(Instr[3]),
        .I3(rd11),
        .I4(rd10[31]),
        .O(SrcA[31]));
  LUT5 #(
    .INIT(32'h9A959595)) 
    carried_carry__6_i_2
       (.I0(SrcA[31]),
        .I1(Instr[29]),
        .I2(ALUSrc),
        .I3(rd21),
        .I4(rd20[6]),
        .O(\q_reg[31]_4 ));
  LUT5 #(
    .INIT(32'hAFBFA080)) 
    \q[0]_i_1 
       (.I0(\q_reg[31]_5 [0]),
        .I1(\c/BranchControl__7 ),
        .I2(Instr[4]),
        .I3(Instr[0]),
        .I4(DI[0]),
        .O(\q[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFACCFA)) 
    \q[0]_i_19 
       (.I0(\ALUResult[16]_INST_0_i_1_n_0 ),
        .I1(\ALUResult[16]_INST_0_i_2_n_0 ),
        .I2(\q[0]_i_7 ),
        .I3(ALUControl[2]),
        .I4(\ALUResult[17]_INST_0_i_6 ),
        .O(\ALUResult[17]_INST_0_i_2_0 ));
  LUT6 #(
    .INIT(64'h6AAAFFFF6AAA0000)) 
    \q[0]_i_3 
       (.I0(\q[0]_i_4_n_0 ),
        .I1(\q[0]_i_5_n_0 ),
        .I2(\q[0]_i_6_n_0 ),
        .I3(\q_reg[0]_1 ),
        .I4(\q[0]_i_8_n_0 ),
        .I5(\q[0]_i_9_n_0 ),
        .O(\c/BranchControl__7 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \q[0]_i_4 
       (.I0(Instr[12]),
        .I1(Instr[11]),
        .I2(Instr[10]),
        .O(\q[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \q[0]_i_5 
       (.I0(\q_reg[28]_0 [0]),
        .I1(\q_reg[28]_0 [1]),
        .I2(\q_reg[28]_0 [2]),
        .I3(\q_reg[28]_0 [3]),
        .I4(\q[0]_i_3_0 ),
        .I5(\q[0]_i_3_1 ),
        .O(\q[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \q[0]_i_6 
       (.I0(\q_reg[28]_0 [5]),
        .I1(\q_reg[28]_0 [6]),
        .I2(\q_reg[28]_0 [7]),
        .I3(\q_reg[28]_0 [8]),
        .I4(\q[0]_i_3_2 ),
        .I5(\q[0]_i_3_3 ),
        .O(\q[0]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \q[0]_i_8 
       (.I0(Instr[12]),
        .I1(Instr[11]),
        .O(\q[0]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hA0380A38)) 
    \q[0]_i_9 
       (.I0(Instr[12]),
        .I1(result0__33),
        .I2(Instr[10]),
        .I3(Instr[11]),
        .I4(CO),
        .O(\q[0]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hAFBFA080)) 
    \q[12]_i_2 
       (.I0(d1[12]),
        .I1(\c/BranchControl__7 ),
        .I2(Instr[4]),
        .I3(Instr[0]),
        .I4(\q_reg[15]_0 [0]),
        .O(\q[12]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAFBFA080)) 
    \q[12]_i_3 
       (.I0(\q_reg[31]_5 [6]),
        .I1(\c/BranchControl__7 ),
        .I2(Instr[4]),
        .I3(Instr[0]),
        .I4(\q_reg[11]_0 [3]),
        .O(\q[12]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAFBFA080)) 
    \q[12]_i_4 
       (.I0(d1[10]),
        .I1(\c/BranchControl__7 ),
        .I2(Instr[4]),
        .I3(Instr[0]),
        .I4(\q_reg[11]_0 [2]),
        .O(\q[12]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAFBFA080)) 
    \q[12]_i_5 
       (.I0(\q_reg[31]_5 [5]),
        .I1(\c/BranchControl__7 ),
        .I2(Instr[4]),
        .I3(Instr[0]),
        .I4(\q_reg[11]_0 [1]),
        .O(\q[12]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hACCCCCCC)) 
    \q[12]_i_6 
       (.I0(\q_reg[28]_0 [5]),
        .I1(d0[5]),
        .I2(Instr[0]),
        .I3(Instr[3]),
        .I4(Instr[4]),
        .O(d1[12]));
  LUT5 #(
    .INIT(32'hACCCCCCC)) 
    \q[12]_i_8 
       (.I0(\q_reg[28]_0 [4]),
        .I1(d0[4]),
        .I2(Instr[0]),
        .I3(Instr[3]),
        .I4(Instr[4]),
        .O(d1[10]));
  LUT5 #(
    .INIT(32'hAFBFA080)) 
    \q[16]_i_2 
       (.I0(d1[16]),
        .I1(\c/BranchControl__7 ),
        .I2(Instr[4]),
        .I3(Instr[0]),
        .I4(\q_reg[19]_0 [0]),
        .O(\q[16]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAFBFA080)) 
    \q[16]_i_3 
       (.I0(d1[15]),
        .I1(\c/BranchControl__7 ),
        .I2(Instr[4]),
        .I3(Instr[0]),
        .I4(\q_reg[15]_0 [3]),
        .O(\q[16]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAFBFA080)) 
    \q[16]_i_4 
       (.I0(d1[14]),
        .I1(\c/BranchControl__7 ),
        .I2(Instr[4]),
        .I3(Instr[0]),
        .I4(\q_reg[15]_0 [2]),
        .O(\q[16]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAFBFA080)) 
    \q[16]_i_5 
       (.I0(d1[13]),
        .I1(\c/BranchControl__7 ),
        .I2(Instr[4]),
        .I3(Instr[0]),
        .I4(\q_reg[15]_0 [1]),
        .O(\q[16]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'hACCCCCCC)) 
    \q[16]_i_6 
       (.I0(\q_reg[28]_0 [9]),
        .I1(d0[9]),
        .I2(Instr[0]),
        .I3(Instr[3]),
        .I4(Instr[4]),
        .O(d1[16]));
  LUT5 #(
    .INIT(32'hACCCCCCC)) 
    \q[16]_i_7 
       (.I0(\q_reg[28]_0 [8]),
        .I1(d0[8]),
        .I2(Instr[0]),
        .I3(Instr[3]),
        .I4(Instr[4]),
        .O(d1[15]));
  LUT5 #(
    .INIT(32'hACCCCCCC)) 
    \q[16]_i_8 
       (.I0(\q_reg[28]_0 [7]),
        .I1(d0[7]),
        .I2(Instr[0]),
        .I3(Instr[3]),
        .I4(Instr[4]),
        .O(d1[14]));
  LUT5 #(
    .INIT(32'hACCCCCCC)) 
    \q[16]_i_9 
       (.I0(\q_reg[28]_0 [6]),
        .I1(d0[6]),
        .I2(Instr[0]),
        .I3(Instr[3]),
        .I4(Instr[4]),
        .O(d1[13]));
  LUT5 #(
    .INIT(32'hAFBFA080)) 
    \q[20]_i_2 
       (.I0(\q_reg[31]_5 [10]),
        .I1(\c/BranchControl__7 ),
        .I2(Instr[4]),
        .I3(Instr[0]),
        .I4(\q_reg[23]_0 [0]),
        .O(\q[20]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAFBFA080)) 
    \q[20]_i_3 
       (.I0(\q_reg[31]_5 [9]),
        .I1(\c/BranchControl__7 ),
        .I2(Instr[4]),
        .I3(Instr[0]),
        .I4(\q_reg[19]_0 [3]),
        .O(\q[20]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAFBFA080)) 
    \q[20]_i_4 
       (.I0(\q_reg[31]_5 [8]),
        .I1(\c/BranchControl__7 ),
        .I2(Instr[4]),
        .I3(Instr[0]),
        .I4(\q_reg[19]_0 [2]),
        .O(\q[20]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAFBFA080)) 
    \q[20]_i_5 
       (.I0(\q_reg[31]_5 [7]),
        .I1(\c/BranchControl__7 ),
        .I2(Instr[4]),
        .I3(Instr[0]),
        .I4(\q_reg[19]_0 [1]),
        .O(\q[20]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hAFBFA080)) 
    \q[24]_i_2 
       (.I0(\q_reg[31]_5 [14]),
        .I1(\c/BranchControl__7 ),
        .I2(Instr[4]),
        .I3(Instr[0]),
        .I4(\q_reg[27]_0 [0]),
        .O(\q[24]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAFBFA080)) 
    \q[24]_i_3 
       (.I0(\q_reg[31]_5 [13]),
        .I1(\c/BranchControl__7 ),
        .I2(Instr[4]),
        .I3(Instr[0]),
        .I4(\q_reg[23]_0 [3]),
        .O(\q[24]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAFBFA080)) 
    \q[24]_i_4 
       (.I0(\q_reg[31]_5 [12]),
        .I1(\c/BranchControl__7 ),
        .I2(Instr[4]),
        .I3(Instr[0]),
        .I4(\q_reg[23]_0 [2]),
        .O(\q[24]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAFBFA080)) 
    \q[24]_i_5 
       (.I0(\q_reg[31]_5 [11]),
        .I1(\c/BranchControl__7 ),
        .I2(Instr[4]),
        .I3(Instr[0]),
        .I4(\q_reg[23]_0 [1]),
        .O(\q[24]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hAFBFA080)) 
    \q[28]_i_2 
       (.I0(d1[28]),
        .I1(\c/BranchControl__7 ),
        .I2(Instr[4]),
        .I3(Instr[0]),
        .I4(\q_reg[30]_0 [0]),
        .O(\q[28]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAFBFA080)) 
    \q[28]_i_3 
       (.I0(\q_reg[31]_5 [17]),
        .I1(\c/BranchControl__7 ),
        .I2(Instr[4]),
        .I3(Instr[0]),
        .I4(\q_reg[27]_0 [3]),
        .O(\q[28]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAFBFA080)) 
    \q[28]_i_4 
       (.I0(\q_reg[31]_5 [16]),
        .I1(\c/BranchControl__7 ),
        .I2(Instr[4]),
        .I3(Instr[0]),
        .I4(\q_reg[27]_0 [2]),
        .O(\q[28]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAFBFA080)) 
    \q[28]_i_5 
       (.I0(\q_reg[31]_5 [15]),
        .I1(\c/BranchControl__7 ),
        .I2(Instr[4]),
        .I3(Instr[0]),
        .I4(\q_reg[27]_0 [1]),
        .O(\q[28]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hACCCCCCC)) 
    \q[28]_i_6 
       (.I0(\q_reg[28]_0 [10]),
        .I1(d0[10]),
        .I2(Instr[0]),
        .I3(Instr[3]),
        .I4(Instr[4]),
        .O(d1[28]));
  LUT5 #(
    .INIT(32'hAFBFA080)) 
    \q[31]_i_2 
       (.I0(\q_reg[31]_5 [20]),
        .I1(\c/BranchControl__7 ),
        .I2(Instr[4]),
        .I3(Instr[0]),
        .I4(\q_reg[31]_0 ),
        .O(\q[31]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAFBFA080)) 
    \q[31]_i_3 
       (.I0(\q_reg[31]_5 [19]),
        .I1(\c/BranchControl__7 ),
        .I2(Instr[4]),
        .I3(Instr[0]),
        .I4(\q_reg[30]_0 [2]),
        .O(\q[31]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAFBFA080)) 
    \q[31]_i_4 
       (.I0(\q_reg[31]_5 [18]),
        .I1(\c/BranchControl__7 ),
        .I2(Instr[4]),
        .I3(Instr[0]),
        .I4(\q_reg[30]_0 [1]),
        .O(\q[31]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAFBFA080)) 
    \q[4]_i_2 
       (.I0(\q_reg[31]_5 [2]),
        .I1(\c/BranchControl__7 ),
        .I2(Instr[4]),
        .I3(Instr[0]),
        .I4(DI[2]),
        .O(\q[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAFBFA080)) 
    \q[4]_i_3 
       (.I0(d1[4]),
        .I1(\c/BranchControl__7 ),
        .I2(Instr[4]),
        .I3(Instr[0]),
        .I4(\q_reg[7]_0 [0]),
        .O(\q[4]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAFBFA080)) 
    \q[4]_i_4 
       (.I0(\q_reg[31]_5 [3]),
        .I1(\c/BranchControl__7 ),
        .I2(Instr[4]),
        .I3(Instr[0]),
        .I4(DI[3]),
        .O(\q[4]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hCC55C555)) 
    \q[4]_i_5 
       (.I0(DI[2]),
        .I1(\q_reg[31]_5 [2]),
        .I2(Instr[0]),
        .I3(Instr[4]),
        .I4(\c/BranchControl__7 ),
        .O(\q[4]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hAFBFA080)) 
    \q[4]_i_6 
       (.I0(\q_reg[31]_5 [1]),
        .I1(\c/BranchControl__7 ),
        .I2(Instr[4]),
        .I3(Instr[0]),
        .I4(DI[1]),
        .O(\q[4]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hACCCCCCC)) 
    \q[4]_i_8 
       (.I0(\q_reg[28]_0 [0]),
        .I1(d0[0]),
        .I2(Instr[0]),
        .I3(Instr[3]),
        .I4(Instr[4]),
        .O(d1[4]));
  LUT5 #(
    .INIT(32'hAFBFA080)) 
    \q[8]_i_2 
       (.I0(\q_reg[31]_5 [4]),
        .I1(\c/BranchControl__7 ),
        .I2(Instr[4]),
        .I3(Instr[0]),
        .I4(\q_reg[11]_0 [0]),
        .O(\q[8]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAFBFA080)) 
    \q[8]_i_3 
       (.I0(d1[7]),
        .I1(\c/BranchControl__7 ),
        .I2(Instr[4]),
        .I3(Instr[0]),
        .I4(\q_reg[7]_0 [3]),
        .O(\q[8]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAFBFA080)) 
    \q[8]_i_4 
       (.I0(d1[6]),
        .I1(\c/BranchControl__7 ),
        .I2(Instr[4]),
        .I3(Instr[0]),
        .I4(\q_reg[7]_0 [2]),
        .O(\q[8]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAFBFA080)) 
    \q[8]_i_5 
       (.I0(d1[5]),
        .I1(\c/BranchControl__7 ),
        .I2(Instr[4]),
        .I3(Instr[0]),
        .I4(\q_reg[7]_0 [1]),
        .O(\q[8]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hACCCCCCC)) 
    \q[8]_i_7 
       (.I0(\q_reg[28]_0 [3]),
        .I1(d0[3]),
        .I2(Instr[0]),
        .I3(Instr[3]),
        .I4(Instr[4]),
        .O(d1[7]));
  LUT5 #(
    .INIT(32'hACCCCCCC)) 
    \q[8]_i_8 
       (.I0(\q_reg[28]_0 [2]),
        .I1(d0[2]),
        .I2(Instr[0]),
        .I3(Instr[3]),
        .I4(Instr[4]),
        .O(d1[6]));
  LUT5 #(
    .INIT(32'hACCCCCCC)) 
    \q[8]_i_9 
       (.I0(\q_reg[28]_0 [1]),
        .I1(d0[1]),
        .I2(Instr[0]),
        .I3(Instr[3]),
        .I4(Instr[4]),
        .O(d1[5]));
  FDCE \q_reg[0] 
       (.C(clk),
        .CE(PCReady),
        .CLR(reset),
        .D(\q[0]_i_1_n_0 ),
        .Q(DI[0]));
  MUXF7 \q_reg[0]_i_22 
       (.I0(\ALUResult[31]_INST_0_i_12_1 ),
        .I1(\q[0]_i_17 ),
        .O(\ALUResult[20]_INST_0_i_1 ),
        .S(ALUControl[1]));
  FDCE \q_reg[10] 
       (.C(clk),
        .CE(PCReady),
        .CLR(reset),
        .D(\q_reg[12]_i_1_n_6 ),
        .Q(\q_reg[11]_0 [2]));
  FDCE \q_reg[11] 
       (.C(clk),
        .CE(PCReady),
        .CLR(reset),
        .D(\q_reg[12]_i_1_n_5 ),
        .Q(\q_reg[11]_0 [3]));
  FDCE \q_reg[12] 
       (.C(clk),
        .CE(PCReady),
        .CLR(reset),
        .D(\q_reg[12]_i_1_n_4 ),
        .Q(\q_reg[15]_0 [0]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \q_reg[12]_i_1 
       (.CI(\q_reg[8]_i_1_n_0 ),
        .CO({\q_reg[12]_i_1_n_0 ,\q_reg[12]_i_1_n_1 ,\q_reg[12]_i_1_n_2 ,\q_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\q_reg[12]_i_1_n_4 ,\q_reg[12]_i_1_n_5 ,\q_reg[12]_i_1_n_6 ,\q_reg[12]_i_1_n_7 }),
        .S({\q[12]_i_2_n_0 ,\q[12]_i_3_n_0 ,\q[12]_i_4_n_0 ,\q[12]_i_5_n_0 }));
  FDCE \q_reg[13] 
       (.C(clk),
        .CE(PCReady),
        .CLR(reset),
        .D(\q_reg[16]_i_1_n_7 ),
        .Q(\q_reg[15]_0 [1]));
  FDCE \q_reg[14] 
       (.C(clk),
        .CE(PCReady),
        .CLR(reset),
        .D(\q_reg[16]_i_1_n_6 ),
        .Q(\q_reg[15]_0 [2]));
  FDCE \q_reg[15] 
       (.C(clk),
        .CE(PCReady),
        .CLR(reset),
        .D(\q_reg[16]_i_1_n_5 ),
        .Q(\q_reg[15]_0 [3]));
  FDCE \q_reg[16] 
       (.C(clk),
        .CE(PCReady),
        .CLR(reset),
        .D(\q_reg[16]_i_1_n_4 ),
        .Q(\q_reg[19]_0 [0]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \q_reg[16]_i_1 
       (.CI(\q_reg[12]_i_1_n_0 ),
        .CO({\q_reg[16]_i_1_n_0 ,\q_reg[16]_i_1_n_1 ,\q_reg[16]_i_1_n_2 ,\q_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\q_reg[16]_i_1_n_4 ,\q_reg[16]_i_1_n_5 ,\q_reg[16]_i_1_n_6 ,\q_reg[16]_i_1_n_7 }),
        .S({\q[16]_i_2_n_0 ,\q[16]_i_3_n_0 ,\q[16]_i_4_n_0 ,\q[16]_i_5_n_0 }));
  FDCE \q_reg[17] 
       (.C(clk),
        .CE(PCReady),
        .CLR(reset),
        .D(\q_reg[20]_i_1_n_7 ),
        .Q(\q_reg[19]_0 [1]));
  FDCE \q_reg[18] 
       (.C(clk),
        .CE(PCReady),
        .CLR(reset),
        .D(\q_reg[20]_i_1_n_6 ),
        .Q(\q_reg[19]_0 [2]));
  FDCE \q_reg[19] 
       (.C(clk),
        .CE(PCReady),
        .CLR(reset),
        .D(\q_reg[20]_i_1_n_5 ),
        .Q(\q_reg[19]_0 [3]));
  FDCE \q_reg[1] 
       (.C(clk),
        .CE(PCReady),
        .CLR(reset),
        .D(\q_reg[4]_i_1_n_7 ),
        .Q(DI[1]));
  FDCE \q_reg[20] 
       (.C(clk),
        .CE(PCReady),
        .CLR(reset),
        .D(\q_reg[20]_i_1_n_4 ),
        .Q(\q_reg[23]_0 [0]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \q_reg[20]_i_1 
       (.CI(\q_reg[16]_i_1_n_0 ),
        .CO({\q_reg[20]_i_1_n_0 ,\q_reg[20]_i_1_n_1 ,\q_reg[20]_i_1_n_2 ,\q_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\q_reg[20]_i_1_n_4 ,\q_reg[20]_i_1_n_5 ,\q_reg[20]_i_1_n_6 ,\q_reg[20]_i_1_n_7 }),
        .S({\q[20]_i_2_n_0 ,\q[20]_i_3_n_0 ,\q[20]_i_4_n_0 ,\q[20]_i_5_n_0 }));
  FDCE \q_reg[21] 
       (.C(clk),
        .CE(PCReady),
        .CLR(reset),
        .D(\q_reg[24]_i_1_n_7 ),
        .Q(\q_reg[23]_0 [1]));
  FDCE \q_reg[22] 
       (.C(clk),
        .CE(PCReady),
        .CLR(reset),
        .D(\q_reg[24]_i_1_n_6 ),
        .Q(\q_reg[23]_0 [2]));
  FDCE \q_reg[23] 
       (.C(clk),
        .CE(PCReady),
        .CLR(reset),
        .D(\q_reg[24]_i_1_n_5 ),
        .Q(\q_reg[23]_0 [3]));
  FDCE \q_reg[24] 
       (.C(clk),
        .CE(PCReady),
        .CLR(reset),
        .D(\q_reg[24]_i_1_n_4 ),
        .Q(\q_reg[27]_0 [0]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \q_reg[24]_i_1 
       (.CI(\q_reg[20]_i_1_n_0 ),
        .CO({\q_reg[24]_i_1_n_0 ,\q_reg[24]_i_1_n_1 ,\q_reg[24]_i_1_n_2 ,\q_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\q_reg[24]_i_1_n_4 ,\q_reg[24]_i_1_n_5 ,\q_reg[24]_i_1_n_6 ,\q_reg[24]_i_1_n_7 }),
        .S({\q[24]_i_2_n_0 ,\q[24]_i_3_n_0 ,\q[24]_i_4_n_0 ,\q[24]_i_5_n_0 }));
  FDCE \q_reg[25] 
       (.C(clk),
        .CE(PCReady),
        .CLR(reset),
        .D(\q_reg[28]_i_1_n_7 ),
        .Q(\q_reg[27]_0 [1]));
  FDCE \q_reg[26] 
       (.C(clk),
        .CE(PCReady),
        .CLR(reset),
        .D(\q_reg[28]_i_1_n_6 ),
        .Q(\q_reg[27]_0 [2]));
  FDCE \q_reg[27] 
       (.C(clk),
        .CE(PCReady),
        .CLR(reset),
        .D(\q_reg[28]_i_1_n_5 ),
        .Q(\q_reg[27]_0 [3]));
  FDCE \q_reg[28] 
       (.C(clk),
        .CE(PCReady),
        .CLR(reset),
        .D(\q_reg[28]_i_1_n_4 ),
        .Q(\q_reg[30]_0 [0]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \q_reg[28]_i_1 
       (.CI(\q_reg[24]_i_1_n_0 ),
        .CO({\q_reg[28]_i_1_n_0 ,\q_reg[28]_i_1_n_1 ,\q_reg[28]_i_1_n_2 ,\q_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\q_reg[28]_i_1_n_4 ,\q_reg[28]_i_1_n_5 ,\q_reg[28]_i_1_n_6 ,\q_reg[28]_i_1_n_7 }),
        .S({\q[28]_i_2_n_0 ,\q[28]_i_3_n_0 ,\q[28]_i_4_n_0 ,\q[28]_i_5_n_0 }));
  FDCE \q_reg[29] 
       (.C(clk),
        .CE(PCReady),
        .CLR(reset),
        .D(\q_reg[31]_i_1_n_7 ),
        .Q(\q_reg[30]_0 [1]));
  FDCE \q_reg[2] 
       (.C(clk),
        .CE(PCReady),
        .CLR(reset),
        .D(\q_reg[4]_i_1_n_6 ),
        .Q(DI[2]));
  FDCE \q_reg[30] 
       (.C(clk),
        .CE(PCReady),
        .CLR(reset),
        .D(\q_reg[31]_i_1_n_6 ),
        .Q(\q_reg[30]_0 [2]));
  FDCE \q_reg[31] 
       (.C(clk),
        .CE(PCReady),
        .CLR(reset),
        .D(\q_reg[31]_i_1_n_5 ),
        .Q(\q_reg[31]_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \q_reg[31]_i_1 
       (.CI(\q_reg[28]_i_1_n_0 ),
        .CO({\NLW_q_reg[31]_i_1_CO_UNCONNECTED [3:2],\q_reg[31]_i_1_n_2 ,\q_reg[31]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_q_reg[31]_i_1_O_UNCONNECTED [3],\q_reg[31]_i_1_n_5 ,\q_reg[31]_i_1_n_6 ,\q_reg[31]_i_1_n_7 }),
        .S({1'b0,\q[31]_i_2_n_0 ,\q[31]_i_3_n_0 ,\q[31]_i_4_n_0 }));
  FDCE \q_reg[3] 
       (.C(clk),
        .CE(PCReady),
        .CLR(reset),
        .D(\q_reg[4]_i_1_n_5 ),
        .Q(DI[3]));
  FDCE \q_reg[4] 
       (.C(clk),
        .CE(PCReady),
        .CLR(reset),
        .D(\q_reg[4]_i_1_n_4 ),
        .Q(\q_reg[7]_0 [0]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \q_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\q_reg[4]_i_1_n_0 ,\q_reg[4]_i_1_n_1 ,\q_reg[4]_i_1_n_2 ,\q_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\q[4]_i_2_n_0 ,1'b0}),
        .O({\q_reg[4]_i_1_n_4 ,\q_reg[4]_i_1_n_5 ,\q_reg[4]_i_1_n_6 ,\q_reg[4]_i_1_n_7 }),
        .S({\q[4]_i_3_n_0 ,\q[4]_i_4_n_0 ,\q[4]_i_5_n_0 ,\q[4]_i_6_n_0 }));
  FDCE \q_reg[5] 
       (.C(clk),
        .CE(PCReady),
        .CLR(reset),
        .D(\q_reg[8]_i_1_n_7 ),
        .Q(\q_reg[7]_0 [1]));
  FDCE \q_reg[6] 
       (.C(clk),
        .CE(PCReady),
        .CLR(reset),
        .D(\q_reg[8]_i_1_n_6 ),
        .Q(\q_reg[7]_0 [2]));
  FDCE \q_reg[7] 
       (.C(clk),
        .CE(PCReady),
        .CLR(reset),
        .D(\q_reg[8]_i_1_n_5 ),
        .Q(\q_reg[7]_0 [3]));
  FDCE \q_reg[8] 
       (.C(clk),
        .CE(PCReady),
        .CLR(reset),
        .D(\q_reg[8]_i_1_n_4 ),
        .Q(\q_reg[11]_0 [0]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \q_reg[8]_i_1 
       (.CI(\q_reg[4]_i_1_n_0 ),
        .CO({\q_reg[8]_i_1_n_0 ,\q_reg[8]_i_1_n_1 ,\q_reg[8]_i_1_n_2 ,\q_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\q_reg[8]_i_1_n_4 ,\q_reg[8]_i_1_n_5 ,\q_reg[8]_i_1_n_6 ,\q_reg[8]_i_1_n_7 }),
        .S({\q[8]_i_2_n_0 ,\q[8]_i_3_n_0 ,\q[8]_i_4_n_0 ,\q[8]_i_5_n_0 }));
  FDCE \q_reg[9] 
       (.C(clk),
        .CE(PCReady),
        .CLR(reset),
        .D(\q_reg[12]_i_1_n_7 ),
        .Q(\q_reg[11]_0 [1]));
  LUT6 #(
    .INIT(64'hBBBBBBB8888888B8)) 
    rf_reg_r1_0_31_0_5_i_3
       (.I0(DI[0]),
        .I1(Jump),
        .I2(ReadData[0]),
        .I3(Instr[2]),
        .I4(Instr[3]),
        .I5(ALUResult[0]),
        .O(wd3[0]));
  LUT6 #(
    .INIT(64'hBBBBBBB8888888B8)) 
    rf_reg_r1_0_31_24_29_i_5
       (.I0(rf_reg_r2_0_31_30_31__0[0]),
        .I1(Jump),
        .I2(ReadData[1]),
        .I3(Instr[2]),
        .I4(Instr[3]),
        .I5(ALUResult[1]),
        .O(wd3[1]));
  LUT6 #(
    .INIT(64'hBBBBBBB8888888B8)) 
    rf_reg_r1_0_31_30_31_i_1
       (.I0(rf_reg_r2_0_31_30_31__0[1]),
        .I1(Jump),
        .I2(ReadData[2]),
        .I3(Instr[2]),
        .I4(Instr[3]),
        .I5(ALUResult[2]),
        .O(wd3[2]));
  LUT6 #(
    .INIT(64'hBBBBBBB8888888B8)) 
    rf_reg_r1_0_31_30_31_i_1__0
       (.I0(rf_reg_r2_0_31_30_31__0[2]),
        .I1(Jump),
        .I2(ReadData[3]),
        .I3(Instr[2]),
        .I4(Instr[3]),
        .I5(ALUResult[3]),
        .O(wd3[3]));
  LUT4 #(
    .INIT(16'h9009)) 
    sltuOut_carry__2_i_5
       (.I0(SrcA[30]),
        .I1(SrcB[13]),
        .I2(SrcA[31]),
        .I3(SrcB[14]),
        .O(\q_reg[30]_4 ));
  LUT4 #(
    .INIT(16'h9009)) 
    sltuOut_carry_i_7
       (.I0(SrcA[2]),
        .I1(SrcB[2]),
        .I2(SrcA[3]),
        .I3(SrcB[3]),
        .O(\q_reg[2]_0 [1]));
  LUT4 #(
    .INIT(16'h9009)) 
    sltuOut_carry_i_8
       (.I0(SrcA[0]),
        .I1(SrcB[0]),
        .I2(SrcA[1]),
        .I3(SrcB[1]),
        .O(\q_reg[2]_0 [0]));
  LUT5 #(
    .INIT(32'hFB080808)) 
    sum_carry__0_i_1
       (.I0(\q_reg[7]_0 [3]),
        .I1(Instr[0]),
        .I2(Instr[3]),
        .I3(rd11),
        .I4(rd10[7]),
        .O(SrcA[7]));
  LUT5 #(
    .INIT(32'hFB080808)) 
    sum_carry__0_i_2
       (.I0(\q_reg[7]_0 [2]),
        .I1(Instr[0]),
        .I2(Instr[3]),
        .I3(rd11),
        .I4(rd10[6]),
        .O(SrcA[6]));
  LUT5 #(
    .INIT(32'hFB080808)) 
    sum_carry__0_i_3
       (.I0(\q_reg[7]_0 [1]),
        .I1(Instr[0]),
        .I2(Instr[3]),
        .I3(rd11),
        .I4(rd10[5]),
        .O(SrcA[5]));
  LUT5 #(
    .INIT(32'hFB080808)) 
    sum_carry__0_i_4
       (.I0(\q_reg[7]_0 [0]),
        .I1(Instr[0]),
        .I2(Instr[3]),
        .I3(rd11),
        .I4(rd10[4]),
        .O(SrcA[4]));
  LUT5 #(
    .INIT(32'hFB080808)) 
    sum_carry__1_i_1
       (.I0(\q_reg[11]_0 [3]),
        .I1(Instr[0]),
        .I2(Instr[3]),
        .I3(rd11),
        .I4(rd10[11]),
        .O(SrcA[11]));
  LUT5 #(
    .INIT(32'hFB080808)) 
    sum_carry__1_i_2
       (.I0(\q_reg[11]_0 [2]),
        .I1(Instr[0]),
        .I2(Instr[3]),
        .I3(rd11),
        .I4(rd10[10]),
        .O(SrcA[10]));
  LUT5 #(
    .INIT(32'hFB080808)) 
    sum_carry__1_i_3
       (.I0(\q_reg[11]_0 [1]),
        .I1(Instr[0]),
        .I2(Instr[3]),
        .I3(rd11),
        .I4(rd10[9]),
        .O(SrcA[9]));
  LUT5 #(
    .INIT(32'hFB080808)) 
    sum_carry__1_i_4
       (.I0(\q_reg[11]_0 [0]),
        .I1(Instr[0]),
        .I2(Instr[3]),
        .I3(rd11),
        .I4(rd10[8]),
        .O(SrcA[8]));
  LUT5 #(
    .INIT(32'hFB080808)) 
    sum_carry__2_i_1
       (.I0(\q_reg[15]_0 [3]),
        .I1(Instr[0]),
        .I2(Instr[3]),
        .I3(rd11),
        .I4(rd10[15]),
        .O(SrcA[15]));
  LUT5 #(
    .INIT(32'hFB080808)) 
    sum_carry__2_i_2
       (.I0(\q_reg[15]_0 [2]),
        .I1(Instr[0]),
        .I2(Instr[3]),
        .I3(rd11),
        .I4(rd10[14]),
        .O(SrcA[14]));
  LUT5 #(
    .INIT(32'hFB080808)) 
    sum_carry__2_i_3
       (.I0(\q_reg[15]_0 [1]),
        .I1(Instr[0]),
        .I2(Instr[3]),
        .I3(rd11),
        .I4(rd10[13]),
        .O(SrcA[13]));
  LUT5 #(
    .INIT(32'hFB080808)) 
    sum_carry__2_i_4
       (.I0(\q_reg[15]_0 [0]),
        .I1(Instr[0]),
        .I2(Instr[3]),
        .I3(rd11),
        .I4(rd10[12]),
        .O(SrcA[12]));
  LUT5 #(
    .INIT(32'hFB080808)) 
    sum_carry__3_i_1
       (.I0(\q_reg[19]_0 [3]),
        .I1(Instr[0]),
        .I2(Instr[3]),
        .I3(rd11),
        .I4(rd10[19]),
        .O(SrcA[19]));
  LUT5 #(
    .INIT(32'hFB080808)) 
    sum_carry__3_i_2
       (.I0(\q_reg[19]_0 [2]),
        .I1(Instr[0]),
        .I2(Instr[3]),
        .I3(rd11),
        .I4(rd10[18]),
        .O(SrcA[18]));
  LUT5 #(
    .INIT(32'hFB080808)) 
    sum_carry__3_i_3
       (.I0(\q_reg[19]_0 [1]),
        .I1(Instr[0]),
        .I2(Instr[3]),
        .I3(rd11),
        .I4(rd10[17]),
        .O(SrcA[17]));
  LUT5 #(
    .INIT(32'hFB080808)) 
    sum_carry__3_i_4
       (.I0(\q_reg[19]_0 [0]),
        .I1(Instr[0]),
        .I2(Instr[3]),
        .I3(rd11),
        .I4(rd10[16]),
        .O(SrcA[16]));
  LUT5 #(
    .INIT(32'hFB080808)) 
    sum_carry__4_i_1
       (.I0(\q_reg[23]_0 [3]),
        .I1(Instr[0]),
        .I2(Instr[3]),
        .I3(rd11),
        .I4(rd10[23]),
        .O(SrcA[23]));
  LUT5 #(
    .INIT(32'hFB080808)) 
    sum_carry__4_i_2
       (.I0(\q_reg[23]_0 [2]),
        .I1(Instr[0]),
        .I2(Instr[3]),
        .I3(rd11),
        .I4(rd10[22]),
        .O(SrcA[22]));
  LUT5 #(
    .INIT(32'hFB080808)) 
    sum_carry__4_i_3
       (.I0(\q_reg[23]_0 [1]),
        .I1(Instr[0]),
        .I2(Instr[3]),
        .I3(rd11),
        .I4(rd10[21]),
        .O(SrcA[21]));
  LUT5 #(
    .INIT(32'hFB080808)) 
    sum_carry__4_i_4
       (.I0(\q_reg[23]_0 [0]),
        .I1(Instr[0]),
        .I2(Instr[3]),
        .I3(rd11),
        .I4(rd10[20]),
        .O(SrcA[20]));
  LUT5 #(
    .INIT(32'hFB080808)) 
    sum_carry__5_i_1
       (.I0(\q_reg[27]_0 [3]),
        .I1(Instr[0]),
        .I2(Instr[3]),
        .I3(rd11),
        .I4(rd10[27]),
        .O(SrcA[27]));
  LUT5 #(
    .INIT(32'hFB080808)) 
    sum_carry__5_i_2
       (.I0(\q_reg[27]_0 [2]),
        .I1(Instr[0]),
        .I2(Instr[3]),
        .I3(rd11),
        .I4(rd10[26]),
        .O(SrcA[26]));
  LUT5 #(
    .INIT(32'hFB080808)) 
    sum_carry__5_i_3
       (.I0(\q_reg[27]_0 [1]),
        .I1(Instr[0]),
        .I2(Instr[3]),
        .I3(rd11),
        .I4(rd10[25]),
        .O(SrcA[25]));
  LUT5 #(
    .INIT(32'hFB080808)) 
    sum_carry__5_i_4
       (.I0(\q_reg[27]_0 [0]),
        .I1(Instr[0]),
        .I2(Instr[3]),
        .I3(rd11),
        .I4(rd10[24]),
        .O(SrcA[24]));
  LUT5 #(
    .INIT(32'hFB080808)) 
    sum_carry__6_i_1
       (.I0(\q_reg[30]_0 [2]),
        .I1(Instr[0]),
        .I2(Instr[3]),
        .I3(rd11),
        .I4(rd10[30]),
        .O(SrcA[30]));
  LUT5 #(
    .INIT(32'hFB080808)) 
    sum_carry__6_i_2
       (.I0(\q_reg[30]_0 [1]),
        .I1(Instr[0]),
        .I2(Instr[3]),
        .I3(rd11),
        .I4(rd10[29]),
        .O(SrcA[29]));
  LUT5 #(
    .INIT(32'hFB080808)) 
    sum_carry__6_i_3
       (.I0(\q_reg[30]_0 [0]),
        .I1(Instr[0]),
        .I2(Instr[3]),
        .I3(rd11),
        .I4(rd10[28]),
        .O(SrcA[28]));
  LUT6 #(
    .INIT(64'h9A959595656A6A6A)) 
    sum_carry__6_i_4
       (.I0(SrcA[31]),
        .I1(Instr[29]),
        .I2(ALUSrc),
        .I3(rd21),
        .I4(rd20[6]),
        .I5(ALUControl__0),
        .O(\q_reg[31]_1 ));
  LUT5 #(
    .INIT(32'hFB080808)) 
    sum_carry_i_2
       (.I0(DI[3]),
        .I1(Instr[0]),
        .I2(Instr[3]),
        .I3(rd11),
        .I4(rd10[3]),
        .O(SrcA[3]));
  LUT5 #(
    .INIT(32'hFB080808)) 
    sum_carry_i_3
       (.I0(DI[2]),
        .I1(Instr[0]),
        .I2(Instr[3]),
        .I3(rd11),
        .I4(rd10[2]),
        .O(SrcA[2]));
  LUT5 #(
    .INIT(32'hFB080808)) 
    sum_carry_i_4
       (.I0(DI[1]),
        .I1(Instr[0]),
        .I2(Instr[3]),
        .I3(rd11),
        .I4(rd10[1]),
        .O(SrcA[1]));
  LUT5 #(
    .INIT(32'hFB080808)) 
    sum_carry_i_5
       (.I0(DI[0]),
        .I1(Instr[0]),
        .I2(Instr[3]),
        .I3(rd11),
        .I4(rd10[0]),
        .O(SrcA[0]));
  LUT4 #(
    .INIT(16'h59AA)) 
    y_carry__0_i_1
       (.I0(\q_reg[7]_0 [3]),
        .I1(Instr[0]),
        .I2(Instr[4]),
        .I3(Instr[25]),
        .O(\q_reg[7]_2 [3]));
  LUT4 #(
    .INIT(16'h59AA)) 
    y_carry__0_i_2
       (.I0(\q_reg[7]_0 [2]),
        .I1(Instr[0]),
        .I2(Instr[4]),
        .I3(Instr[24]),
        .O(\q_reg[7]_2 [2]));
  LUT4 #(
    .INIT(16'h59AA)) 
    y_carry__0_i_3
       (.I0(\q_reg[7]_0 [1]),
        .I1(Instr[0]),
        .I2(Instr[4]),
        .I3(Instr[23]),
        .O(\q_reg[7]_2 [1]));
  LUT6 #(
    .INIT(64'h999A99A9A9AA9AAA)) 
    y_carry__0_i_4
       (.I0(\q_reg[7]_0 [0]),
        .I1(carried_carry__1),
        .I2(sel0[1]),
        .I3(Instr[9]),
        .I4(sel0[0]),
        .I5(Instr[22]),
        .O(\q_reg[7]_2 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    y_carry__1_i_1
       (.I0(\q_reg[11]_0 [3]),
        .I1(y_carry__1),
        .O(\q_reg[11]_2 [3]));
  LUT4 #(
    .INIT(16'h59AA)) 
    y_carry__1_i_2
       (.I0(\q_reg[11]_0 [2]),
        .I1(Instr[0]),
        .I2(Instr[4]),
        .I3(Instr[28]),
        .O(\q_reg[11]_2 [2]));
  LUT4 #(
    .INIT(16'h59AA)) 
    y_carry__1_i_3
       (.I0(\q_reg[11]_0 [1]),
        .I1(Instr[0]),
        .I2(Instr[4]),
        .I3(Instr[27]),
        .O(\q_reg[11]_2 [1]));
  LUT4 #(
    .INIT(16'h59AA)) 
    y_carry__1_i_4
       (.I0(\q_reg[11]_0 [0]),
        .I1(Instr[0]),
        .I2(Instr[4]),
        .I3(Instr[26]),
        .O(\q_reg[11]_2 [0]));
  LUT6 #(
    .INIT(64'h5555AAAA5666A666)) 
    y_carry__2_i_1
       (.I0(\q_reg[15]_0 [3]),
        .I1(Instr[29]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(Instr[13]),
        .I5(carried_carry__1),
        .O(\q_reg[15]_2 [3]));
  LUT6 #(
    .INIT(64'h5555AAAA5666A666)) 
    y_carry__2_i_2
       (.I0(\q_reg[15]_0 [2]),
        .I1(Instr[29]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(Instr[12]),
        .I5(carried_carry__1),
        .O(\q_reg[15]_2 [2]));
  LUT6 #(
    .INIT(64'h5555AAAA5666A666)) 
    y_carry__2_i_3
       (.I0(\q_reg[15]_0 [1]),
        .I1(Instr[29]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(Instr[11]),
        .I5(carried_carry__1),
        .O(\q_reg[15]_2 [1]));
  LUT6 #(
    .INIT(64'h5555AAAA5666A666)) 
    y_carry__2_i_4
       (.I0(\q_reg[15]_0 [0]),
        .I1(Instr[29]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(Instr[10]),
        .I5(carried_carry__1),
        .O(\q_reg[15]_2 [0]));
  LUT6 #(
    .INIT(64'h5555AAAA5666A666)) 
    y_carry__3_i_1
       (.I0(\q_reg[19]_0 [3]),
        .I1(Instr[29]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(Instr[17]),
        .I5(carried_carry__1),
        .O(\q_reg[19]_1 [3]));
  LUT6 #(
    .INIT(64'h5555AAAA5666A666)) 
    y_carry__3_i_2
       (.I0(\q_reg[19]_0 [2]),
        .I1(Instr[29]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(Instr[16]),
        .I5(carried_carry__1),
        .O(\q_reg[19]_1 [2]));
  LUT6 #(
    .INIT(64'h5555AAAA5666A666)) 
    y_carry__3_i_3
       (.I0(\q_reg[19]_0 [1]),
        .I1(Instr[29]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(Instr[15]),
        .I5(carried_carry__1),
        .O(\q_reg[19]_1 [1]));
  LUT6 #(
    .INIT(64'h5555AAAA5666A666)) 
    y_carry__3_i_4
       (.I0(\q_reg[19]_0 [0]),
        .I1(Instr[29]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(Instr[14]),
        .I5(carried_carry__1),
        .O(\q_reg[19]_1 [0]));
  LUT5 #(
    .INIT(32'h65666A66)) 
    y_carry__4_i_1
       (.I0(\q_reg[23]_0 [3]),
        .I1(Instr[29]),
        .I2(Instr[4]),
        .I3(Instr[0]),
        .I4(Instr[21]),
        .O(\q_reg[23]_2 [3]));
  LUT5 #(
    .INIT(32'h65666A66)) 
    y_carry__4_i_2
       (.I0(\q_reg[23]_0 [2]),
        .I1(Instr[29]),
        .I2(Instr[4]),
        .I3(Instr[0]),
        .I4(Instr[20]),
        .O(\q_reg[23]_2 [2]));
  LUT5 #(
    .INIT(32'h65666A66)) 
    y_carry__4_i_3
       (.I0(\q_reg[23]_0 [1]),
        .I1(Instr[29]),
        .I2(Instr[4]),
        .I3(Instr[0]),
        .I4(Instr[19]),
        .O(\q_reg[23]_2 [1]));
  LUT5 #(
    .INIT(32'h65666A66)) 
    y_carry__4_i_4
       (.I0(\q_reg[23]_0 [0]),
        .I1(Instr[29]),
        .I2(Instr[4]),
        .I3(Instr[0]),
        .I4(Instr[18]),
        .O(\q_reg[23]_2 [0]));
  LUT5 #(
    .INIT(32'h65666A66)) 
    y_carry__5_i_1
       (.I0(\q_reg[27]_0 [3]),
        .I1(Instr[29]),
        .I2(Instr[4]),
        .I3(Instr[0]),
        .I4(Instr[25]),
        .O(\q_reg[27]_4 [3]));
  LUT5 #(
    .INIT(32'h65666A66)) 
    y_carry__5_i_2
       (.I0(\q_reg[27]_0 [2]),
        .I1(Instr[29]),
        .I2(Instr[4]),
        .I3(Instr[0]),
        .I4(Instr[24]),
        .O(\q_reg[27]_4 [2]));
  LUT5 #(
    .INIT(32'h65666A66)) 
    y_carry__5_i_3
       (.I0(\q_reg[27]_0 [1]),
        .I1(Instr[29]),
        .I2(Instr[4]),
        .I3(Instr[0]),
        .I4(Instr[23]),
        .O(\q_reg[27]_4 [1]));
  LUT5 #(
    .INIT(32'h65666A66)) 
    y_carry__5_i_4
       (.I0(\q_reg[27]_0 [0]),
        .I1(Instr[29]),
        .I2(Instr[4]),
        .I3(Instr[0]),
        .I4(Instr[22]),
        .O(\q_reg[27]_4 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    y_carry__6_i_1
       (.I0(\q_reg[31]_0 ),
        .I1(Instr[29]),
        .O(\q_reg[31]_2 [3]));
  LUT5 #(
    .INIT(32'h65666A66)) 
    y_carry__6_i_2
       (.I0(\q_reg[30]_0 [2]),
        .I1(Instr[29]),
        .I2(Instr[4]),
        .I3(Instr[0]),
        .I4(Instr[28]),
        .O(\q_reg[31]_2 [2]));
  LUT5 #(
    .INIT(32'h65666A66)) 
    y_carry__6_i_3
       (.I0(\q_reg[30]_0 [1]),
        .I1(Instr[29]),
        .I2(Instr[4]),
        .I3(Instr[0]),
        .I4(Instr[27]),
        .O(\q_reg[31]_2 [1]));
  LUT5 #(
    .INIT(32'h65666A66)) 
    y_carry__6_i_4
       (.I0(\q_reg[30]_0 [0]),
        .I1(Instr[29]),
        .I2(Instr[4]),
        .I3(Instr[0]),
        .I4(Instr[26]),
        .O(\q_reg[31]_2 [0]));
  LUT1 #(
    .INIT(2'h1)) 
    y_carry_i_1
       (.I0(DI[2]),
        .O(S));
  LUT6 #(
    .INIT(64'h999A99A9A9AA9AAA)) 
    y_carry_i_1__0
       (.I0(DI[3]),
        .I1(carried_carry__1),
        .I2(sel0[1]),
        .I3(Instr[8]),
        .I4(sel0[0]),
        .I5(Instr[21]),
        .O(\q_reg[3]_1 [3]));
  LUT6 #(
    .INIT(64'h999A99A9A9AA9AAA)) 
    y_carry_i_2
       (.I0(DI[2]),
        .I1(carried_carry__1),
        .I2(sel0[1]),
        .I3(Instr[7]),
        .I4(sel0[0]),
        .I5(Instr[20]),
        .O(\q_reg[3]_1 [2]));
  LUT6 #(
    .INIT(64'h999A99A9A9AA9AAA)) 
    y_carry_i_3
       (.I0(DI[1]),
        .I1(carried_carry__1),
        .I2(sel0[1]),
        .I3(Instr[6]),
        .I4(sel0[0]),
        .I5(Instr[19]),
        .O(\q_reg[3]_1 [1]));
  LUT6 #(
    .INIT(64'hAAAAAAAA999AAA9A)) 
    y_carry_i_4
       (.I0(DI[0]),
        .I1(carried_carry__1),
        .I2(Instr[18]),
        .I3(sel0[0]),
        .I4(Instr[5]),
        .I5(sel0[1]),
        .O(\q_reg[3]_1 [0]));
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
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'h0230)) 
    \rd[25]_INST_0 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[2]),
        .I3(a[3]),
        .O(\^rd [25]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'h0029)) 
    \rd[28]_INST_0 
       (.I0(a[5]),
        .I1(a[2]),
        .I2(a[3]),
        .I3(a[4]),
        .O(\^rd [28]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    \rd[2]_INST_0 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[2]),
        .I3(a[3]),
        .O(\^rd [14]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'hCD77)) 
    \rd[4]_INST_0 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[2]),
        .I3(a[4]),
        .O(\^rd [4]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'hAE48)) 
    \rd[5]_INST_0 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[2]),
        .I3(a[3]),
        .O(\^rd [5]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
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
   (rd10,
    clk_0,
    \ALUResult[1]_INST_0_i_2_0 ,
    ALUResult,
    \q_reg[5] ,
    \ALUResult[3]_INST_0_i_2_0 ,
    \ALUResult[9]_INST_0_i_2_0 ,
    \ALUResult[11]_INST_0_i_1 ,
    \ALUResult[31]_INST_0_i_12 ,
    \q_reg[11] ,
    \q[0]_i_19 ,
    \q_reg[17] ,
    \ALUResult[31]_INST_0_i_12_0 ,
    \q_reg[29] ,
    \q_reg[30] ,
    \q_reg[31] ,
    \q_reg[28] ,
    \q_reg[16] ,
    \q_reg[28]_0 ,
    \q_reg[16]_0 ,
    \ALUResult[31]_INST_0_i_14 ,
    \ALUResult[31]_INST_0_i_12_1 ,
    \ALUResult[31]_INST_0_i_12_2 ,
    \ALUResult[31]_INST_0_i_12_3 ,
    \ALUResult[31]_INST_0_i_12_4 ,
    \ALUResult[31]_INST_0_i_12_5 ,
    \ALUResult[31]_INST_0_i_12_6 ,
    \ALUResult[31]_INST_0_i_12_7 ,
    \ALUResult[31]_INST_0_i_12_8 ,
    \ALUResult[31]_INST_0_i_12_9 ,
    \ALUResult[31]_INST_0_i_12_10 ,
    \ALUResult[31]_INST_0_i_12_11 ,
    \ALUResult[31]_INST_0_i_12_12 ,
    \ALUResult[31]_INST_0_i_12_13 ,
    \ALUResult[31]_INST_0_i_12_14 ,
    \ALUResult[31]_INST_0_i_12_15 ,
    \ALUResult[31]_INST_0_i_12_16 ,
    \ALUResult[31]_INST_0_i_12_17 ,
    \ALUResult[31]_INST_0_i_12_18 ,
    \ALUResult[11]_INST_0_i_17 ,
    DI,
    \q_reg[14] ,
    \q_reg[22] ,
    \q_reg[30]_0 ,
    \ALUResult[11]_INST_0_i_26 ,
    \q_reg[27] ,
    Jump,
    WriteData,
    \q_reg[3] ,
    \q_reg[27]_0 ,
    S,
    \q_reg[7] ,
    \q_reg[11]_0 ,
    \q_reg[15] ,
    \q_reg[19] ,
    \q_reg[23] ,
    \q_reg[27]_1 ,
    \q_reg[30]_1 ,
    \ALUResult[22]_INST_0_i_7_0 ,
    \q_reg[10] ,
    \q_reg[3]_0 ,
    \q_reg[4] ,
    \q_reg[6] ,
    \q_reg[14]_0 ,
    \q_reg[11]_1 ,
    \q_reg[15]_0 ,
    \q_reg[19]_0 ,
    \q_reg[22]_0 ,
    \q_reg[23]_0 ,
    \q_reg[27]_2 ,
    \q_reg[28]_1 ,
    \q_reg[30]_2 ,
    \q_reg[0] ,
    clk,
    wd3,
    Instr,
    \q[0]_i_5 ,
    \q[0]_i_5_0 ,
    ALUControl,
    O,
    \addressM[23] ,
    \addressM[1] ,
    SrcA,
    \addressM[10] ,
    \q[0]_i_6 ,
    \q[0]_i_6_0 ,
    \q[0]_i_12_0 ,
    \q[0]_i_3 ,
    \q[0]_i_3_0 ,
    \addressM[17] ,
    \addressM[18] ,
    \addressM[19] ,
    \q[0]_i_7_0 ,
    \addressM[20] ,
    \addressM[23]_0 ,
    \addressM[23]_1 ,
    \addressM[24] ,
    \addressM[25] ,
    \addressM[26] ,
    \addressM[27] ,
    \addressM[31] ,
    ALUControl__0,
    rd11,
    \addressM[28] ,
    sum_carry__6,
    \addressM[27]_0 ,
    \addressM[27]_1 ,
    \addressM[23]_2 ,
    \ALUResult[19]_INST_0_i_2 ,
    sum_carry__3,
    \addressM[11] ,
    \ALUResult[1]_INST_0_i_1_0 ,
    \addressM[15] ,
    \ALUResult[2]_INST_0_i_1_0 ,
    \ALUResult[3]_INST_0_i_1_0 ,
    \addressM[7] ,
    \ALUResult[8]_INST_0_i_1_0 ,
    \ALUResult[9]_INST_0_i_1_0 ,
    \addressM[15]_0 ,
    \addressM[21] ,
    \addressM[22] ,
    \ALUResult[23]_INST_0_i_2_0 ,
    \ALUResult[22]_INST_0_i_9_0 ,
    \ALUResult[20]_INST_0_i_6_0 ,
    \ALUResult[19]_INST_0_i_4_0 ,
    \ALUResult[17]_INST_0_i_4_0 ,
    \ALUResult[12]_INST_0_i_6 ,
    \ALUResult[12]_INST_0_i_6_0 ,
    \ALUResult[12]_INST_0_i_6_1 ,
    rd21,
    ALUSrc,
    \ALUResult[30]_INST_0_i_2 ,
    sum_carry__2,
    \ALUResult[29]_INST_0_i_2 ,
    \ALUResult[30]_INST_0_i_2_0 ,
    \ALUResult[25]_INST_0_i_6_0 ,
    \ALUResult[26]_INST_0_i_6_0 ,
    \ALUResult[22]_INST_0_i_19_0 ,
    \ALUResult[22]_INST_0_i_19_1 ,
    \ALUResult[0]_INST_0_i_1 ,
    \ALUResult[29]_INST_0_i_5_0 ,
    \ALUResult[29]_INST_0_i_5_1 ,
    \ALUResult[29]_INST_0_i_5_2 ,
    \ALUResult[29]_INST_0_i_5_3 ,
    \ALUResult[19]_INST_0_i_7_0 ,
    \ALUResult[21]_INST_0_i_9_0 ,
    \ALUResult[16]_INST_0_i_7 ,
    \ALUResult[20]_INST_0_i_9_0 ,
    \ALUResult[22]_INST_0_i_19_2 ,
    \ALUResult[18]_INST_0_i_7_0 ,
    \ALUResult[21]_INST_0_i_9_1 ,
    \ALUResult[18]_INST_0_i_7_1 ,
    \ALUResult[18]_INST_0_i_7_2 ,
    \ALUResult[18]_INST_0_i_7_3 ,
    \ALUResult[19]_INST_0_i_7_1 ,
    \ALUResult[19]_INST_0_i_7_2 ,
    \ALUResult[22]_INST_0_i_19_3 ,
    \ALUResult[21]_INST_0_i_5 ,
    sel0,
    \ALUResult[21]_INST_0_i_5_0 ,
    \ALUResult[21]_INST_0_i_5_1 ,
    \ALUResult[21]_INST_0_i_5_2 ,
    \ALUResult[19]_INST_0_i_14 ,
    \ALUResult[19]_INST_0_i_14_0 ,
    \ALUResult[19]_INST_0_i_14_1 ,
    \ALUResult[19]_INST_0_i_14_2 ,
    \ALUResult[11]_INST_0_i_1_0 ,
    immext,
    d0,
    sum_carry,
    sum_carry__0,
    \ALUResult[9]_INST_0_i_2_1 ,
    \ALUResult[9]_INST_0_i_2_2 ,
    \ALUResult[21]_INST_0_i_2_0 ,
    \ALUResult[21]_INST_0_i_2_1 ,
    \ALUResult[21]_INST_0_i_2_2 );
  output [31:0]rd10;
  output [6:0]clk_0;
  output \ALUResult[1]_INST_0_i_2_0 ;
  output [15:0]ALUResult;
  output [16:0]\q_reg[5] ;
  output \ALUResult[3]_INST_0_i_2_0 ;
  output \ALUResult[9]_INST_0_i_2_0 ;
  output \ALUResult[11]_INST_0_i_1 ;
  output \ALUResult[31]_INST_0_i_12 ;
  output \q_reg[11] ;
  output \q[0]_i_19 ;
  output \q_reg[17] ;
  output \ALUResult[31]_INST_0_i_12_0 ;
  output \q_reg[29] ;
  output \q_reg[30] ;
  output \q_reg[31] ;
  output \q_reg[28] ;
  output [3:0]\q_reg[16] ;
  output \q_reg[28]_0 ;
  output \q_reg[16]_0 ;
  output [1:0]\ALUResult[31]_INST_0_i_14 ;
  output \ALUResult[31]_INST_0_i_12_1 ;
  output \ALUResult[31]_INST_0_i_12_2 ;
  output \ALUResult[31]_INST_0_i_12_3 ;
  output \ALUResult[31]_INST_0_i_12_4 ;
  output \ALUResult[31]_INST_0_i_12_5 ;
  output \ALUResult[31]_INST_0_i_12_6 ;
  output \ALUResult[31]_INST_0_i_12_7 ;
  output \ALUResult[31]_INST_0_i_12_8 ;
  output \ALUResult[31]_INST_0_i_12_9 ;
  output \ALUResult[31]_INST_0_i_12_10 ;
  output \ALUResult[31]_INST_0_i_12_11 ;
  output \ALUResult[31]_INST_0_i_12_12 ;
  output \ALUResult[31]_INST_0_i_12_13 ;
  output \ALUResult[31]_INST_0_i_12_14 ;
  output \ALUResult[31]_INST_0_i_12_15 ;
  output \ALUResult[31]_INST_0_i_12_16 ;
  output \ALUResult[31]_INST_0_i_12_17 ;
  output \ALUResult[31]_INST_0_i_12_18 ;
  output \ALUResult[11]_INST_0_i_17 ;
  output [3:0]DI;
  output [3:0]\q_reg[14] ;
  output [3:0]\q_reg[22] ;
  output [3:0]\q_reg[30]_0 ;
  output \ALUResult[11]_INST_0_i_26 ;
  output \q_reg[27] ;
  output Jump;
  output [31:0]WriteData;
  output \q_reg[3] ;
  output [15:0]\q_reg[27]_0 ;
  output [3:0]S;
  output [3:0]\q_reg[7] ;
  output [3:0]\q_reg[11]_0 ;
  output [3:0]\q_reg[15] ;
  output [3:0]\q_reg[19] ;
  output [3:0]\q_reg[23] ;
  output [3:0]\q_reg[27]_1 ;
  output [2:0]\q_reg[30]_1 ;
  output \ALUResult[22]_INST_0_i_7_0 ;
  output \q_reg[10] ;
  output [3:0]\q_reg[3]_0 ;
  output [0:0]\q_reg[4] ;
  output [1:0]\q_reg[6] ;
  output [3:0]\q_reg[14]_0 ;
  output [0:0]\q_reg[11]_1 ;
  output [3:0]\q_reg[15]_0 ;
  output [3:0]\q_reg[19]_0 ;
  output [3:0]\q_reg[22]_0 ;
  output [3:0]\q_reg[23]_0 ;
  output [3:0]\q_reg[27]_2 ;
  output [2:0]\q_reg[28]_1 ;
  output [2:0]\q_reg[30]_2 ;
  output \q_reg[0] ;
  input clk;
  input [31:0]wd3;
  input [25:0]Instr;
  input \q[0]_i_5 ;
  input \q[0]_i_5_0 ;
  input [2:0]ALUControl;
  input [2:0]O;
  input \addressM[23] ;
  input \addressM[1] ;
  input [31:0]SrcA;
  input [2:0]\addressM[10] ;
  input \q[0]_i_6 ;
  input \q[0]_i_6_0 ;
  input \q[0]_i_12_0 ;
  input \q[0]_i_3 ;
  input \q[0]_i_3_0 ;
  input \addressM[17] ;
  input \addressM[18] ;
  input \addressM[19] ;
  input \q[0]_i_7_0 ;
  input \addressM[20] ;
  input [3:0]\addressM[23]_0 ;
  input \addressM[23]_1 ;
  input \addressM[24] ;
  input \addressM[25] ;
  input \addressM[26] ;
  input \addressM[27] ;
  input [3:0]\addressM[31] ;
  input [0:0]ALUControl__0;
  input rd11;
  input \addressM[28] ;
  input [2:0]sum_carry__6;
  input [3:0]\addressM[27]_0 ;
  input [3:0]\addressM[27]_1 ;
  input [3:0]\addressM[23]_2 ;
  input [3:0]\ALUResult[19]_INST_0_i_2 ;
  input [3:0]sum_carry__3;
  input [3:0]\addressM[11] ;
  input \ALUResult[1]_INST_0_i_1_0 ;
  input [4:0]\addressM[15] ;
  input \ALUResult[2]_INST_0_i_1_0 ;
  input \ALUResult[3]_INST_0_i_1_0 ;
  input [3:0]\addressM[7] ;
  input \ALUResult[8]_INST_0_i_1_0 ;
  input \ALUResult[9]_INST_0_i_1_0 ;
  input [3:0]\addressM[15]_0 ;
  input \addressM[21] ;
  input \addressM[22] ;
  input [0:0]\ALUResult[23]_INST_0_i_2_0 ;
  input \ALUResult[22]_INST_0_i_9_0 ;
  input \ALUResult[20]_INST_0_i_6_0 ;
  input \ALUResult[19]_INST_0_i_4_0 ;
  input \ALUResult[17]_INST_0_i_4_0 ;
  input \ALUResult[12]_INST_0_i_6 ;
  input \ALUResult[12]_INST_0_i_6_0 ;
  input \ALUResult[12]_INST_0_i_6_1 ;
  input rd21;
  input [0:0]ALUSrc;
  input \ALUResult[30]_INST_0_i_2 ;
  input [3:0]sum_carry__2;
  input \ALUResult[29]_INST_0_i_2 ;
  input \ALUResult[30]_INST_0_i_2_0 ;
  input \ALUResult[25]_INST_0_i_6_0 ;
  input \ALUResult[26]_INST_0_i_6_0 ;
  input \ALUResult[22]_INST_0_i_19_0 ;
  input \ALUResult[22]_INST_0_i_19_1 ;
  input \ALUResult[0]_INST_0_i_1 ;
  input \ALUResult[29]_INST_0_i_5_0 ;
  input \ALUResult[29]_INST_0_i_5_1 ;
  input \ALUResult[29]_INST_0_i_5_2 ;
  input \ALUResult[29]_INST_0_i_5_3 ;
  input \ALUResult[19]_INST_0_i_7_0 ;
  input \ALUResult[21]_INST_0_i_9_0 ;
  input \ALUResult[16]_INST_0_i_7 ;
  input \ALUResult[20]_INST_0_i_9_0 ;
  input \ALUResult[22]_INST_0_i_19_2 ;
  input \ALUResult[18]_INST_0_i_7_0 ;
  input \ALUResult[21]_INST_0_i_9_1 ;
  input \ALUResult[18]_INST_0_i_7_1 ;
  input \ALUResult[18]_INST_0_i_7_2 ;
  input \ALUResult[18]_INST_0_i_7_3 ;
  input \ALUResult[19]_INST_0_i_7_1 ;
  input \ALUResult[19]_INST_0_i_7_2 ;
  input \ALUResult[22]_INST_0_i_19_3 ;
  input \ALUResult[21]_INST_0_i_5 ;
  input [0:0]sel0;
  input \ALUResult[21]_INST_0_i_5_0 ;
  input \ALUResult[21]_INST_0_i_5_1 ;
  input \ALUResult[21]_INST_0_i_5_2 ;
  input \ALUResult[19]_INST_0_i_14 ;
  input \ALUResult[19]_INST_0_i_14_0 ;
  input \ALUResult[19]_INST_0_i_14_1 ;
  input \ALUResult[19]_INST_0_i_14_2 ;
  input \ALUResult[11]_INST_0_i_1_0 ;
  input [7:0]immext;
  input [15:0]d0;
  input [3:0]sum_carry;
  input [3:0]sum_carry__0;
  input \ALUResult[9]_INST_0_i_2_1 ;
  input \ALUResult[9]_INST_0_i_2_2 ;
  input \ALUResult[21]_INST_0_i_2_0 ;
  input \ALUResult[21]_INST_0_i_2_1 ;
  input \ALUResult[21]_INST_0_i_2_2 ;

  wire [2:0]ALUControl;
  wire [0:0]ALUControl__0;
  wire [15:0]ALUResult;
  wire \ALUResult[0]_INST_0_i_1 ;
  wire \ALUResult[11]_INST_0_i_1 ;
  wire \ALUResult[11]_INST_0_i_17 ;
  wire \ALUResult[11]_INST_0_i_1_0 ;
  wire \ALUResult[11]_INST_0_i_26 ;
  wire \ALUResult[12]_INST_0_i_6 ;
  wire \ALUResult[12]_INST_0_i_6_0 ;
  wire \ALUResult[12]_INST_0_i_6_1 ;
  wire \ALUResult[16]_INST_0_i_7 ;
  wire \ALUResult[17]_INST_0_i_3_n_0 ;
  wire \ALUResult[17]_INST_0_i_4_0 ;
  wire \ALUResult[17]_INST_0_i_4_n_0 ;
  wire \ALUResult[17]_INST_0_i_7_n_0 ;
  wire \ALUResult[18]_INST_0_i_10_n_0 ;
  wire \ALUResult[18]_INST_0_i_11_n_0 ;
  wire \ALUResult[18]_INST_0_i_1_n_0 ;
  wire \ALUResult[18]_INST_0_i_3_n_0 ;
  wire \ALUResult[18]_INST_0_i_4_n_0 ;
  wire \ALUResult[18]_INST_0_i_7_0 ;
  wire \ALUResult[18]_INST_0_i_7_1 ;
  wire \ALUResult[18]_INST_0_i_7_2 ;
  wire \ALUResult[18]_INST_0_i_7_3 ;
  wire \ALUResult[18]_INST_0_i_7_n_0 ;
  wire \ALUResult[19]_INST_0_i_10_n_0 ;
  wire \ALUResult[19]_INST_0_i_12_n_0 ;
  wire \ALUResult[19]_INST_0_i_14 ;
  wire \ALUResult[19]_INST_0_i_14_0 ;
  wire \ALUResult[19]_INST_0_i_14_1 ;
  wire \ALUResult[19]_INST_0_i_14_2 ;
  wire \ALUResult[19]_INST_0_i_1_n_0 ;
  wire [3:0]\ALUResult[19]_INST_0_i_2 ;
  wire \ALUResult[19]_INST_0_i_3_n_0 ;
  wire \ALUResult[19]_INST_0_i_4_0 ;
  wire \ALUResult[19]_INST_0_i_4_n_0 ;
  wire \ALUResult[19]_INST_0_i_7_0 ;
  wire \ALUResult[19]_INST_0_i_7_1 ;
  wire \ALUResult[19]_INST_0_i_7_2 ;
  wire \ALUResult[19]_INST_0_i_7_n_0 ;
  wire \ALUResult[19]_INST_0_i_9_n_0 ;
  wire \ALUResult[1]_INST_0_i_10_n_0 ;
  wire \ALUResult[1]_INST_0_i_11_n_0 ;
  wire \ALUResult[1]_INST_0_i_1_0 ;
  wire \ALUResult[1]_INST_0_i_1_n_0 ;
  wire \ALUResult[1]_INST_0_i_2_0 ;
  wire \ALUResult[1]_INST_0_i_2_n_0 ;
  wire \ALUResult[1]_INST_0_i_3_n_0 ;
  wire \ALUResult[1]_INST_0_i_6_n_0 ;
  wire \ALUResult[20]_INST_0_i_10_n_0 ;
  wire \ALUResult[20]_INST_0_i_12_n_0 ;
  wire \ALUResult[20]_INST_0_i_3_n_0 ;
  wire \ALUResult[20]_INST_0_i_6_0 ;
  wire \ALUResult[20]_INST_0_i_6_n_0 ;
  wire \ALUResult[20]_INST_0_i_8_n_0 ;
  wire \ALUResult[20]_INST_0_i_9_0 ;
  wire \ALUResult[20]_INST_0_i_9_n_0 ;
  wire \ALUResult[21]_INST_0_i_10_n_0 ;
  wire \ALUResult[21]_INST_0_i_12_n_0 ;
  wire \ALUResult[21]_INST_0_i_1_n_0 ;
  wire \ALUResult[21]_INST_0_i_2_0 ;
  wire \ALUResult[21]_INST_0_i_2_1 ;
  wire \ALUResult[21]_INST_0_i_2_2 ;
  wire \ALUResult[21]_INST_0_i_2_n_0 ;
  wire \ALUResult[21]_INST_0_i_3_n_0 ;
  wire \ALUResult[21]_INST_0_i_5 ;
  wire \ALUResult[21]_INST_0_i_5_0 ;
  wire \ALUResult[21]_INST_0_i_5_1 ;
  wire \ALUResult[21]_INST_0_i_5_2 ;
  wire \ALUResult[21]_INST_0_i_6_n_0 ;
  wire \ALUResult[21]_INST_0_i_8_n_0 ;
  wire \ALUResult[21]_INST_0_i_9_0 ;
  wire \ALUResult[21]_INST_0_i_9_1 ;
  wire \ALUResult[21]_INST_0_i_9_n_0 ;
  wire \ALUResult[22]_INST_0_i_18_n_0 ;
  wire \ALUResult[22]_INST_0_i_19_0 ;
  wire \ALUResult[22]_INST_0_i_19_1 ;
  wire \ALUResult[22]_INST_0_i_19_2 ;
  wire \ALUResult[22]_INST_0_i_19_3 ;
  wire \ALUResult[22]_INST_0_i_19_n_0 ;
  wire \ALUResult[22]_INST_0_i_1_n_0 ;
  wire \ALUResult[22]_INST_0_i_21_n_0 ;
  wire \ALUResult[22]_INST_0_i_22_n_0 ;
  wire \ALUResult[22]_INST_0_i_23_n_0 ;
  wire \ALUResult[22]_INST_0_i_24_n_0 ;
  wire \ALUResult[22]_INST_0_i_3_n_0 ;
  wire \ALUResult[22]_INST_0_i_4_n_0 ;
  wire \ALUResult[22]_INST_0_i_7_0 ;
  wire \ALUResult[22]_INST_0_i_8_n_0 ;
  wire \ALUResult[22]_INST_0_i_9_0 ;
  wire \ALUResult[22]_INST_0_i_9_n_0 ;
  wire [0:0]\ALUResult[23]_INST_0_i_2_0 ;
  wire \ALUResult[23]_INST_0_i_2_n_0 ;
  wire \ALUResult[23]_INST_0_i_3_n_0 ;
  wire \ALUResult[23]_INST_0_i_6_n_0 ;
  wire \ALUResult[23]_INST_0_i_9_n_0 ;
  wire \ALUResult[24]_INST_0_i_10_n_0 ;
  wire \ALUResult[24]_INST_0_i_12_n_0 ;
  wire \ALUResult[24]_INST_0_i_2_n_0 ;
  wire \ALUResult[24]_INST_0_i_3_n_0 ;
  wire \ALUResult[24]_INST_0_i_6_n_0 ;
  wire \ALUResult[25]_INST_0_i_10_n_0 ;
  wire \ALUResult[25]_INST_0_i_12_n_0 ;
  wire \ALUResult[25]_INST_0_i_2_n_0 ;
  wire \ALUResult[25]_INST_0_i_3_n_0 ;
  wire \ALUResult[25]_INST_0_i_6_0 ;
  wire \ALUResult[25]_INST_0_i_6_n_0 ;
  wire \ALUResult[26]_INST_0_i_10_n_0 ;
  wire \ALUResult[26]_INST_0_i_13_n_0 ;
  wire \ALUResult[26]_INST_0_i_14_n_0 ;
  wire \ALUResult[26]_INST_0_i_2_n_0 ;
  wire \ALUResult[26]_INST_0_i_3_n_0 ;
  wire \ALUResult[26]_INST_0_i_6_0 ;
  wire \ALUResult[26]_INST_0_i_6_n_0 ;
  wire \ALUResult[27]_INST_0_i_10_n_0 ;
  wire \ALUResult[27]_INST_0_i_12_n_0 ;
  wire \ALUResult[27]_INST_0_i_13_n_0 ;
  wire \ALUResult[27]_INST_0_i_14_n_0 ;
  wire \ALUResult[27]_INST_0_i_15_n_0 ;
  wire \ALUResult[27]_INST_0_i_2_n_0 ;
  wire \ALUResult[27]_INST_0_i_3_n_0 ;
  wire \ALUResult[27]_INST_0_i_6_n_0 ;
  wire \ALUResult[28]_INST_0_i_13_n_0 ;
  wire \ALUResult[28]_INST_0_i_15_n_0 ;
  wire \ALUResult[28]_INST_0_i_16_n_0 ;
  wire \ALUResult[28]_INST_0_i_17_n_0 ;
  wire \ALUResult[28]_INST_0_i_7_n_0 ;
  wire \ALUResult[29]_INST_0_i_10_n_0 ;
  wire \ALUResult[29]_INST_0_i_2 ;
  wire \ALUResult[29]_INST_0_i_3_n_0 ;
  wire \ALUResult[29]_INST_0_i_5_0 ;
  wire \ALUResult[29]_INST_0_i_5_1 ;
  wire \ALUResult[29]_INST_0_i_5_2 ;
  wire \ALUResult[29]_INST_0_i_5_3 ;
  wire \ALUResult[29]_INST_0_i_6_n_0 ;
  wire \ALUResult[29]_INST_0_i_7_n_0 ;
  wire \ALUResult[29]_INST_0_i_9_n_0 ;
  wire \ALUResult[2]_INST_0_i_10_n_0 ;
  wire \ALUResult[2]_INST_0_i_1_0 ;
  wire \ALUResult[2]_INST_0_i_1_n_0 ;
  wire \ALUResult[2]_INST_0_i_2_n_0 ;
  wire \ALUResult[2]_INST_0_i_3_n_0 ;
  wire \ALUResult[2]_INST_0_i_6_n_0 ;
  wire \ALUResult[30]_INST_0_i_10_n_0 ;
  wire \ALUResult[30]_INST_0_i_2 ;
  wire \ALUResult[30]_INST_0_i_2_0 ;
  wire \ALUResult[30]_INST_0_i_3_n_0 ;
  wire \ALUResult[30]_INST_0_i_6_n_0 ;
  wire \ALUResult[30]_INST_0_i_7_n_0 ;
  wire \ALUResult[30]_INST_0_i_8_n_0 ;
  wire \ALUResult[30]_INST_0_i_9_n_0 ;
  wire \ALUResult[31]_INST_0_i_12 ;
  wire \ALUResult[31]_INST_0_i_12_0 ;
  wire \ALUResult[31]_INST_0_i_12_1 ;
  wire \ALUResult[31]_INST_0_i_12_10 ;
  wire \ALUResult[31]_INST_0_i_12_11 ;
  wire \ALUResult[31]_INST_0_i_12_12 ;
  wire \ALUResult[31]_INST_0_i_12_13 ;
  wire \ALUResult[31]_INST_0_i_12_14 ;
  wire \ALUResult[31]_INST_0_i_12_15 ;
  wire \ALUResult[31]_INST_0_i_12_16 ;
  wire \ALUResult[31]_INST_0_i_12_17 ;
  wire \ALUResult[31]_INST_0_i_12_18 ;
  wire \ALUResult[31]_INST_0_i_12_2 ;
  wire \ALUResult[31]_INST_0_i_12_3 ;
  wire \ALUResult[31]_INST_0_i_12_4 ;
  wire \ALUResult[31]_INST_0_i_12_5 ;
  wire \ALUResult[31]_INST_0_i_12_6 ;
  wire \ALUResult[31]_INST_0_i_12_7 ;
  wire \ALUResult[31]_INST_0_i_12_8 ;
  wire \ALUResult[31]_INST_0_i_12_9 ;
  wire \ALUResult[31]_INST_0_i_13_n_0 ;
  wire [1:0]\ALUResult[31]_INST_0_i_14 ;
  wire \ALUResult[31]_INST_0_i_7_n_0 ;
  wire \ALUResult[3]_INST_0_i_10_n_0 ;
  wire \ALUResult[3]_INST_0_i_1_0 ;
  wire \ALUResult[3]_INST_0_i_1_n_0 ;
  wire \ALUResult[3]_INST_0_i_2_0 ;
  wire \ALUResult[3]_INST_0_i_2_n_0 ;
  wire \ALUResult[3]_INST_0_i_3_n_0 ;
  wire \ALUResult[3]_INST_0_i_6_n_0 ;
  wire \ALUResult[4]_INST_0_i_9_n_0 ;
  wire \ALUResult[5]_INST_0_i_7_n_0 ;
  wire \ALUResult[6]_INST_0_i_7_n_0 ;
  wire \ALUResult[7]_INST_0_i_7_n_0 ;
  wire \ALUResult[8]_INST_0_i_1_0 ;
  wire \ALUResult[8]_INST_0_i_1_n_0 ;
  wire \ALUResult[8]_INST_0_i_2_n_0 ;
  wire \ALUResult[8]_INST_0_i_3_n_0 ;
  wire \ALUResult[8]_INST_0_i_6_n_0 ;
  wire \ALUResult[8]_INST_0_i_8_n_0 ;
  wire \ALUResult[9]_INST_0_i_1_0 ;
  wire \ALUResult[9]_INST_0_i_1_n_0 ;
  wire \ALUResult[9]_INST_0_i_2_0 ;
  wire \ALUResult[9]_INST_0_i_2_1 ;
  wire \ALUResult[9]_INST_0_i_2_2 ;
  wire \ALUResult[9]_INST_0_i_2_n_0 ;
  wire \ALUResult[9]_INST_0_i_3_n_0 ;
  wire \ALUResult[9]_INST_0_i_6_n_0 ;
  wire \ALUResult[9]_INST_0_i_8_n_0 ;
  wire [0:0]ALUSrc;
  wire [3:0]DI;
  wire [25:0]Instr;
  wire Jump;
  wire [2:0]O;
  wire [3:0]S;
  wire [31:0]SrcA;
  wire [28:8]SrcB;
  wire [31:0]WriteData;
  wire [2:0]\addressM[10] ;
  wire [3:0]\addressM[11] ;
  wire [4:0]\addressM[15] ;
  wire [3:0]\addressM[15]_0 ;
  wire \addressM[17] ;
  wire \addressM[18] ;
  wire \addressM[19] ;
  wire \addressM[1] ;
  wire \addressM[20] ;
  wire \addressM[21] ;
  wire \addressM[22] ;
  wire \addressM[23] ;
  wire [3:0]\addressM[23]_0 ;
  wire \addressM[23]_1 ;
  wire [3:0]\addressM[23]_2 ;
  wire \addressM[24] ;
  wire \addressM[25] ;
  wire \addressM[26] ;
  wire \addressM[27] ;
  wire [3:0]\addressM[27]_0 ;
  wire [3:0]\addressM[27]_1 ;
  wire \addressM[28] ;
  wire [3:0]\addressM[31] ;
  wire [3:0]\addressM[7] ;
  wire [29:5]\alu/xorOut__31 ;
  wire clk;
  wire [6:0]clk_0;
  wire [15:0]d0;
  wire [28:24]data5;
  wire [9:1]data7;
  wire [7:0]immext;
  wire \q[0]_i_12_0 ;
  wire \q[0]_i_14_n_0 ;
  wire \q[0]_i_16_n_0 ;
  wire \q[0]_i_17_n_0 ;
  wire \q[0]_i_18_n_0 ;
  wire \q[0]_i_19 ;
  wire \q[0]_i_3 ;
  wire \q[0]_i_3_0 ;
  wire \q[0]_i_5 ;
  wire \q[0]_i_5_0 ;
  wire \q[0]_i_6 ;
  wire \q[0]_i_6_0 ;
  wire \q[0]_i_7_0 ;
  wire \q_reg[0] ;
  wire \q_reg[0]_i_21_n_0 ;
  wire \q_reg[0]_i_23_n_0 ;
  wire \q_reg[10] ;
  wire \q_reg[11] ;
  wire [3:0]\q_reg[11]_0 ;
  wire [0:0]\q_reg[11]_1 ;
  wire [3:0]\q_reg[14] ;
  wire [3:0]\q_reg[14]_0 ;
  wire [3:0]\q_reg[15] ;
  wire [3:0]\q_reg[15]_0 ;
  wire [3:0]\q_reg[16] ;
  wire \q_reg[16]_0 ;
  wire \q_reg[17] ;
  wire [3:0]\q_reg[19] ;
  wire [3:0]\q_reg[19]_0 ;
  wire [3:0]\q_reg[22] ;
  wire [3:0]\q_reg[22]_0 ;
  wire [3:0]\q_reg[23] ;
  wire [3:0]\q_reg[23]_0 ;
  wire \q_reg[27] ;
  wire [15:0]\q_reg[27]_0 ;
  wire [3:0]\q_reg[27]_1 ;
  wire [3:0]\q_reg[27]_2 ;
  wire \q_reg[28] ;
  wire \q_reg[28]_0 ;
  wire [2:0]\q_reg[28]_1 ;
  wire \q_reg[29] ;
  wire \q_reg[30] ;
  wire [3:0]\q_reg[30]_0 ;
  wire [2:0]\q_reg[30]_1 ;
  wire [2:0]\q_reg[30]_2 ;
  wire \q_reg[31] ;
  wire \q_reg[3] ;
  wire [3:0]\q_reg[3]_0 ;
  wire [0:0]\q_reg[4] ;
  wire [16:0]\q_reg[5] ;
  wire [1:0]\q_reg[6] ;
  wire [3:0]\q_reg[7] ;
  wire [31:0]rd10;
  wire rd11;
  wire [30:0]rd20;
  wire rd21;
  wire [0:0]sel0;
  wire [3:0]sum_carry;
  wire [3:0]sum_carry__0;
  wire [3:0]sum_carry__2;
  wire [3:0]sum_carry__3;
  wire [2:0]sum_carry__6;
  wire [31:0]wd3;
  wire we3;
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

  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \ALUResult[0]_INST_0_i_5 
       (.I0(\q_reg[5] [1]),
        .I1(\q_reg[5] [3]),
        .I2(SrcA[0]),
        .I3(\q_reg[5] [4]),
        .I4(\q_reg[5] [2]),
        .I5(\q_reg[5] [0]),
        .O(\q_reg[0] ));
  LUT6 #(
    .INIT(64'hF0C0F0C0BBFFBBCC)) 
    \ALUResult[10]_INST_0_i_2 
       (.I0(\q_reg[5] [8]),
        .I1(ALUControl[1]),
        .I2(\addressM[10] [2]),
        .I3(ALUControl[0]),
        .I4(\addressM[15] [0]),
        .I5(ALUControl__0),
        .O(\ALUResult[31]_INST_0_i_12 ));
  LUT6 #(
    .INIT(64'h8AFF8A008A008A00)) 
    \ALUResult[10]_INST_0_i_4 
       (.I0(Instr[24]),
        .I1(Instr[3]),
        .I2(Instr[0]),
        .I3(ALUSrc),
        .I4(rd21),
        .I5(clk_0[5]),
        .O(\q_reg[5] [8]));
  LUT6 #(
    .INIT(64'h000000004777B888)) 
    \ALUResult[10]_INST_0_i_6 
       (.I0(\addressM[11] [2]),
        .I1(\addressM[28] ),
        .I2(rd11),
        .I3(rd10[10]),
        .I4(\q_reg[5] [8]),
        .I5(ALUControl__0),
        .O(\q_reg[10] ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \ALUResult[10]_INST_0_i_8 
       (.I0(SrcA[3]),
        .I1(\q_reg[5] [2]),
        .I2(\q_reg[5] [4]),
        .I3(SrcA[7]),
        .I4(\q_reg[5] [3]),
        .O(\q_reg[3] ));
  LUT6 #(
    .INIT(64'hFFEAAAEAAA800080)) 
    \ALUResult[11]_INST_0_i_3 
       (.I0(\addressM[1] ),
        .I1(rd10[11]),
        .I2(rd11),
        .I3(\addressM[28] ),
        .I4(\addressM[11] [3]),
        .I5(\q_reg[5] [9]),
        .O(\q_reg[11] ));
  LUT4 #(
    .INIT(16'hB888)) 
    \ALUResult[11]_INST_0_i_4 
       (.I0(\ALUResult[11]_INST_0_i_1_0 ),
        .I1(ALUSrc),
        .I2(rd21),
        .I3(rd20[11]),
        .O(\q_reg[5] [9]));
  LUT6 #(
    .INIT(64'h6A556A6A6AAA6A6A)) 
    \ALUResult[11]_INST_0_i_7 
       (.I0(\q_reg[5] [9]),
        .I1(rd10[11]),
        .I2(rd11),
        .I3(Instr[2]),
        .I4(Instr[0]),
        .I5(\addressM[11] [3]),
        .O(\q_reg[16] [0]));
  LUT6 #(
    .INIT(64'hF0C0F0C0BBFFBBCC)) 
    \ALUResult[12]_INST_0_i_2 
       (.I0(\q_reg[5] [10]),
        .I1(ALUControl[1]),
        .I2(\addressM[15]_0 [0]),
        .I3(ALUControl[0]),
        .I4(\addressM[15] [1]),
        .I5(ALUControl__0),
        .O(\ALUResult[31]_INST_0_i_12_5 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \ALUResult[12]_INST_0_i_4 
       (.I0(immext[0]),
        .I1(ALUSrc),
        .I2(rd21),
        .I3(rd20[12]),
        .O(\q_reg[5] [10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[13]_INST_0_i_10 
       (.I0(\q_reg[27] ),
        .I1(\ALUResult[12]_INST_0_i_6 ),
        .I2(\q_reg[5] [1]),
        .I3(\ALUResult[12]_INST_0_i_6_0 ),
        .I4(\q_reg[5] [2]),
        .I5(\ALUResult[12]_INST_0_i_6_1 ),
        .O(\ALUResult[11]_INST_0_i_26 ));
  LUT6 #(
    .INIT(64'hF0C0F0C0BBFFBBCC)) 
    \ALUResult[13]_INST_0_i_2 
       (.I0(\q_reg[5] [11]),
        .I1(ALUControl[1]),
        .I2(\addressM[15]_0 [1]),
        .I3(ALUControl[0]),
        .I4(\addressM[15] [2]),
        .I5(ALUControl__0),
        .O(\ALUResult[31]_INST_0_i_12_6 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \ALUResult[13]_INST_0_i_4 
       (.I0(immext[1]),
        .I1(ALUSrc),
        .I2(rd21),
        .I3(rd20[13]),
        .O(\q_reg[5] [11]));
  LUT6 #(
    .INIT(64'hF0C0F0C0BBFFBBCC)) 
    \ALUResult[14]_INST_0_i_2 
       (.I0(\q_reg[5] [12]),
        .I1(ALUControl[1]),
        .I2(\addressM[15]_0 [2]),
        .I3(ALUControl[0]),
        .I4(\addressM[15] [3]),
        .I5(ALUControl__0),
        .O(\ALUResult[31]_INST_0_i_12_7 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \ALUResult[14]_INST_0_i_4 
       (.I0(immext[2]),
        .I1(ALUSrc),
        .I2(rd21),
        .I3(rd20[14]),
        .O(\q_reg[5] [12]));
  LUT6 #(
    .INIT(64'hF0C0F0C0BBFFBBCC)) 
    \ALUResult[15]_INST_0_i_2 
       (.I0(\q_reg[5] [13]),
        .I1(ALUControl[1]),
        .I2(\addressM[15]_0 [3]),
        .I3(ALUControl[0]),
        .I4(\addressM[15] [4]),
        .I5(ALUControl__0),
        .O(\ALUResult[31]_INST_0_i_12_8 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \ALUResult[15]_INST_0_i_4 
       (.I0(immext[3]),
        .I1(ALUSrc),
        .I2(rd21),
        .I3(rd20[15]),
        .O(\q_reg[5] [13]));
  LUT6 #(
    .INIT(64'hFFEAAAEAAA800080)) 
    \ALUResult[16]_INST_0_i_3 
       (.I0(\addressM[1] ),
        .I1(rd10[16]),
        .I2(rd11),
        .I3(\addressM[28] ),
        .I4(sum_carry__3[0]),
        .I5(SrcB[16]),
        .O(\q_reg[16]_0 ));
  LUT4 #(
    .INIT(16'hF0BB)) 
    \ALUResult[16]_INST_0_i_6 
       (.I0(SrcB[16]),
        .I1(ALUControl[0]),
        .I2(\ALUResult[19]_INST_0_i_2 [0]),
        .I3(ALUControl__0),
        .O(\ALUResult[31]_INST_0_i_12_9 ));
  LUT6 #(
    .INIT(64'h6A556A6A6AAA6A6A)) 
    \ALUResult[16]_INST_0_i_8 
       (.I0(SrcB[16]),
        .I1(rd10[16]),
        .I2(rd11),
        .I3(Instr[2]),
        .I4(Instr[0]),
        .I5(sum_carry__3[0]),
        .O(\q_reg[16] [3]));
  MUXF8 \ALUResult[17]_INST_0 
       (.I0(\q_reg[17] ),
        .I1(\addressM[17] ),
        .O(ALUResult[5]),
        .S(ALUControl[2]));
  MUXF7 \ALUResult[17]_INST_0_i_1 
       (.I0(\ALUResult[17]_INST_0_i_3_n_0 ),
        .I1(\ALUResult[17]_INST_0_i_4_n_0 ),
        .O(\q_reg[17] ),
        .S(\addressM[23] ));
  LUT6 #(
    .INIT(64'hFFEAAAEAAA800080)) 
    \ALUResult[17]_INST_0_i_3 
       (.I0(\addressM[1] ),
        .I1(rd10[17]),
        .I2(rd11),
        .I3(\addressM[28] ),
        .I4(sum_carry__3[1]),
        .I5(SrcB[17]),
        .O(\ALUResult[17]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h88B8FFFF88B80000)) 
    \ALUResult[17]_INST_0_i_4 
       (.I0(\ALUResult[17]_INST_0_i_7_n_0 ),
        .I1(ALUControl[0]),
        .I2(\alu/xorOut__31 [17]),
        .I3(ALUControl__0),
        .I4(\addressM[1] ),
        .I5(\ALUResult[19]_INST_0_i_2 [1]),
        .O(\ALUResult[17]_INST_0_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hF0BB)) 
    \ALUResult[17]_INST_0_i_6 
       (.I0(SrcB[17]),
        .I1(ALUControl[0]),
        .I2(\ALUResult[19]_INST_0_i_2 [1]),
        .I3(ALUControl__0),
        .O(\ALUResult[31]_INST_0_i_12_10 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[17]_INST_0_i_7 
       (.I0(\ALUResult[18]_INST_0_i_10_n_0 ),
        .I1(\ALUResult[11]_INST_0_i_17 ),
        .I2(ALUControl__0),
        .I3(\ALUResult[18]_INST_0_i_11_n_0 ),
        .I4(\q_reg[5] [0]),
        .I5(\ALUResult[17]_INST_0_i_4_0 ),
        .O(\ALUResult[17]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[17]_INST_0_i_9 
       (.I0(\ALUResult[19]_INST_0_i_12_n_0 ),
        .I1(\ALUResult[19]_INST_0_i_7_0 ),
        .I2(\q_reg[5] [1]),
        .I3(\ALUResult[21]_INST_0_i_9_0 ),
        .I4(\q_reg[5] [2]),
        .I5(\ALUResult[16]_INST_0_i_7 ),
        .O(\ALUResult[11]_INST_0_i_17 ));
  MUXF8 \ALUResult[18]_INST_0 
       (.I0(\ALUResult[18]_INST_0_i_1_n_0 ),
        .I1(\addressM[18] ),
        .O(ALUResult[6]),
        .S(ALUControl[2]));
  MUXF7 \ALUResult[18]_INST_0_i_1 
       (.I0(\ALUResult[18]_INST_0_i_3_n_0 ),
        .I1(\ALUResult[18]_INST_0_i_4_n_0 ),
        .O(\ALUResult[18]_INST_0_i_1_n_0 ),
        .S(\addressM[23] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[18]_INST_0_i_10 
       (.I0(\ALUResult[20]_INST_0_i_12_n_0 ),
        .I1(\ALUResult[20]_INST_0_i_9_0 ),
        .I2(\q_reg[5] [1]),
        .I3(\ALUResult[22]_INST_0_i_19_2 ),
        .I4(\q_reg[5] [2]),
        .I5(\ALUResult[18]_INST_0_i_7_0 ),
        .O(\ALUResult[18]_INST_0_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \ALUResult[18]_INST_0_i_11 
       (.I0(\ALUResult[18]_INST_0_i_7_1 ),
        .I1(\q_reg[5] [1]),
        .I2(\ALUResult[18]_INST_0_i_7_2 ),
        .I3(\q_reg[5] [2]),
        .I4(\ALUResult[18]_INST_0_i_7_3 ),
        .O(\ALUResult[18]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFEAAAEAAA800080)) 
    \ALUResult[18]_INST_0_i_3 
       (.I0(\addressM[1] ),
        .I1(rd10[18]),
        .I2(rd11),
        .I3(\addressM[28] ),
        .I4(sum_carry__3[2]),
        .I5(SrcB[18]),
        .O(\ALUResult[18]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h88B8FFFF88B80000)) 
    \ALUResult[18]_INST_0_i_4 
       (.I0(\ALUResult[18]_INST_0_i_7_n_0 ),
        .I1(ALUControl[0]),
        .I2(\alu/xorOut__31 [18]),
        .I3(ALUControl__0),
        .I4(\addressM[1] ),
        .I5(\ALUResult[19]_INST_0_i_2 [2]),
        .O(\ALUResult[18]_INST_0_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hF0BB)) 
    \ALUResult[18]_INST_0_i_6 
       (.I0(SrcB[18]),
        .I1(ALUControl[0]),
        .I2(\ALUResult[19]_INST_0_i_2 [2]),
        .I3(ALUControl__0),
        .O(\ALUResult[31]_INST_0_i_12_11 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[18]_INST_0_i_7 
       (.I0(\ALUResult[19]_INST_0_i_9_n_0 ),
        .I1(\ALUResult[18]_INST_0_i_10_n_0 ),
        .I2(ALUControl__0),
        .I3(\ALUResult[19]_INST_0_i_10_n_0 ),
        .I4(\q_reg[5] [0]),
        .I5(\ALUResult[18]_INST_0_i_11_n_0 ),
        .O(\ALUResult[18]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h6A556A6A6AAA6A6A)) 
    \ALUResult[18]_INST_0_i_8 
       (.I0(SrcB[18]),
        .I1(rd10[18]),
        .I2(rd11),
        .I3(Instr[2]),
        .I4(Instr[0]),
        .I5(sum_carry__3[2]),
        .O(\alu/xorOut__31 [18]));
  MUXF8 \ALUResult[19]_INST_0 
       (.I0(\ALUResult[19]_INST_0_i_1_n_0 ),
        .I1(\addressM[19] ),
        .O(ALUResult[7]),
        .S(ALUControl[2]));
  MUXF7 \ALUResult[19]_INST_0_i_1 
       (.I0(\ALUResult[19]_INST_0_i_3_n_0 ),
        .I1(\ALUResult[19]_INST_0_i_4_n_0 ),
        .O(\ALUResult[19]_INST_0_i_1_n_0 ),
        .S(\addressM[23] ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \ALUResult[19]_INST_0_i_10 
       (.I0(\ALUResult[19]_INST_0_i_7_1 ),
        .I1(\q_reg[5] [1]),
        .I2(\ALUResult[19]_INST_0_i_7_2 ),
        .I3(\q_reg[5] [2]),
        .I4(\q_reg[27] ),
        .O(\ALUResult[19]_INST_0_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'hCDC8)) 
    \ALUResult[19]_INST_0_i_12 
       (.I0(\q_reg[5] [3]),
        .I1(SrcA[31]),
        .I2(\q_reg[5] [4]),
        .I3(SrcA[23]),
        .O(\ALUResult[19]_INST_0_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h00B8)) 
    \ALUResult[19]_INST_0_i_15 
       (.I0(SrcA[27]),
        .I1(\q_reg[5] [3]),
        .I2(SrcA[19]),
        .I3(\q_reg[5] [4]),
        .O(\q_reg[27] ));
  LUT6 #(
    .INIT(64'hFFEAAAEAAA800080)) 
    \ALUResult[19]_INST_0_i_3 
       (.I0(\addressM[1] ),
        .I1(rd10[19]),
        .I2(rd11),
        .I3(\addressM[28] ),
        .I4(sum_carry__3[3]),
        .I5(SrcB[19]),
        .O(\ALUResult[19]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h88B8FFFF88B80000)) 
    \ALUResult[19]_INST_0_i_4 
       (.I0(\ALUResult[19]_INST_0_i_7_n_0 ),
        .I1(ALUControl[0]),
        .I2(\alu/xorOut__31 [19]),
        .I3(ALUControl__0),
        .I4(\addressM[1] ),
        .I5(\ALUResult[19]_INST_0_i_2 [3]),
        .O(\ALUResult[19]_INST_0_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hF0BB)) 
    \ALUResult[19]_INST_0_i_6 
       (.I0(SrcB[19]),
        .I1(ALUControl[0]),
        .I2(\ALUResult[19]_INST_0_i_2 [3]),
        .I3(ALUControl__0),
        .O(\ALUResult[31]_INST_0_i_12_12 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[19]_INST_0_i_7 
       (.I0(\ALUResult[20]_INST_0_i_10_n_0 ),
        .I1(\ALUResult[19]_INST_0_i_9_n_0 ),
        .I2(ALUControl__0),
        .I3(\ALUResult[19]_INST_0_i_4_0 ),
        .I4(\q_reg[5] [0]),
        .I5(\ALUResult[19]_INST_0_i_10_n_0 ),
        .O(\ALUResult[19]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[19]_INST_0_i_9 
       (.I0(\ALUResult[21]_INST_0_i_12_n_0 ),
        .I1(\ALUResult[21]_INST_0_i_9_0 ),
        .I2(\q_reg[5] [1]),
        .I3(\ALUResult[19]_INST_0_i_12_n_0 ),
        .I4(\q_reg[5] [2]),
        .I5(\ALUResult[19]_INST_0_i_7_0 ),
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
        .I1(O[0]),
        .I2(\addressM[23] ),
        .I3(\addressM[1] ),
        .I4(SrcA[1]),
        .I5(\q_reg[5] [1]),
        .O(\ALUResult[1]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000008F888088)) 
    \ALUResult[1]_INST_0_i_10 
       (.I0(rd10[0]),
        .I1(rd11),
        .I2(Instr[2]),
        .I3(Instr[0]),
        .I4(sum_carry[0]),
        .I5(\q_reg[5] [4]),
        .O(\ALUResult[1]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h000000008F888088)) 
    \ALUResult[1]_INST_0_i_11 
       (.I0(rd10[1]),
        .I1(rd11),
        .I2(Instr[2]),
        .I3(Instr[0]),
        .I4(sum_carry[1]),
        .I5(\q_reg[5] [4]),
        .O(\ALUResult[1]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hF0C0F0C0BBFFBBCC)) 
    \ALUResult[1]_INST_0_i_2 
       (.I0(\q_reg[5] [1]),
        .I1(ALUControl[1]),
        .I2(O[0]),
        .I3(ALUControl[0]),
        .I4(data7[1]),
        .I5(ALUControl__0),
        .O(\ALUResult[1]_INST_0_i_2_n_0 ));
  MUXF7 \ALUResult[1]_INST_0_i_3 
       (.I0(\ALUResult[1]_INST_0_i_6_n_0 ),
        .I1(\ALUResult[1]_INST_0_i_1_0 ),
        .O(\ALUResult[1]_INST_0_i_3_n_0 ),
        .S(ALUControl[0]));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \ALUResult[1]_INST_0_i_4 
       (.I0(\ALUResult[21]_INST_0_i_5 ),
        .I1(sel0),
        .I2(\ALUResult[21]_INST_0_i_5_0 ),
        .I3(\ALUResult[30]_INST_0_i_2 ),
        .I4(ALUSrc),
        .I5(WriteData[1]),
        .O(\q_reg[5] [1]));
  LUT6 #(
    .INIT(64'h0000000000000B08)) 
    \ALUResult[1]_INST_0_i_5 
       (.I0(\ALUResult[1]_INST_0_i_10_n_0 ),
        .I1(\q_reg[5] [0]),
        .I2(\q_reg[5] [2]),
        .I3(\ALUResult[1]_INST_0_i_11_n_0 ),
        .I4(\q_reg[5] [3]),
        .I5(\q_reg[5] [1]),
        .O(data7[1]));
  LUT6 #(
    .INIT(64'h000000004777B888)) 
    \ALUResult[1]_INST_0_i_6 
       (.I0(sum_carry[1]),
        .I1(\addressM[28] ),
        .I2(rd11),
        .I3(rd10[1]),
        .I4(\q_reg[5] [1]),
        .I5(ALUControl__0),
        .O(\ALUResult[1]_INST_0_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \ALUResult[20]_INST_0 
       (.I0(\ALUResult[31]_INST_0_i_12_0 ),
        .I1(ALUControl[1]),
        .I2(\addressM[20] ),
        .I3(ALUControl[2]),
        .I4(\ALUResult[20]_INST_0_i_3_n_0 ),
        .O(ALUResult[8]));
  LUT4 #(
    .INIT(16'hF0BB)) 
    \ALUResult[20]_INST_0_i_1 
       (.I0(SrcB[20]),
        .I1(ALUControl[0]),
        .I2(\addressM[23]_0 [0]),
        .I3(ALUControl__0),
        .O(\ALUResult[31]_INST_0_i_12_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[20]_INST_0_i_10 
       (.I0(\ALUResult[22]_INST_0_i_24_n_0 ),
        .I1(\ALUResult[22]_INST_0_i_19_2 ),
        .I2(\q_reg[5] [1]),
        .I3(\ALUResult[20]_INST_0_i_12_n_0 ),
        .I4(\q_reg[5] [2]),
        .I5(\ALUResult[20]_INST_0_i_9_0 ),
        .O(\ALUResult[20]_INST_0_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'hCDC8)) 
    \ALUResult[20]_INST_0_i_12 
       (.I0(\q_reg[5] [3]),
        .I1(SrcA[31]),
        .I2(\q_reg[5] [4]),
        .I3(SrcA[24]),
        .O(\ALUResult[20]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFCFAFC0AFC0A0C0)) 
    \ALUResult[20]_INST_0_i_3 
       (.I0(\ALUResult[20]_INST_0_i_6_n_0 ),
        .I1(\addressM[23]_0 [0]),
        .I2(\addressM[23] ),
        .I3(\addressM[1] ),
        .I4(SrcA[20]),
        .I5(SrcB[20]),
        .O(\ALUResult[20]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFB800B800B800)) 
    \ALUResult[20]_INST_0_i_4 
       (.I0(Instr[14]),
        .I1(\ALUResult[30]_INST_0_i_2 ),
        .I2(Instr[25]),
        .I3(ALUSrc),
        .I4(rd21),
        .I5(rd20[20]),
        .O(SrcB[20]));
  MUXF7 \ALUResult[20]_INST_0_i_6 
       (.I0(\ALUResult[20]_INST_0_i_8_n_0 ),
        .I1(\ALUResult[20]_INST_0_i_9_n_0 ),
        .O(\ALUResult[20]_INST_0_i_6_n_0 ),
        .S(ALUControl[0]));
  LUT6 #(
    .INIT(64'h000000004777B888)) 
    \ALUResult[20]_INST_0_i_8 
       (.I0(\addressM[23]_2 [0]),
        .I1(\addressM[28] ),
        .I2(rd11),
        .I3(rd10[20]),
        .I4(SrcB[20]),
        .I5(ALUControl__0),
        .O(\ALUResult[20]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[20]_INST_0_i_9 
       (.I0(\ALUResult[21]_INST_0_i_10_n_0 ),
        .I1(\ALUResult[20]_INST_0_i_10_n_0 ),
        .I2(ALUControl__0),
        .I3(\ALUResult[20]_INST_0_i_6_0 ),
        .I4(\q_reg[5] [0]),
        .I5(\ALUResult[19]_INST_0_i_4_0 ),
        .O(\ALUResult[20]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \ALUResult[21]_INST_0 
       (.I0(\ALUResult[21]_INST_0_i_1_n_0 ),
        .I1(ALUControl[1]),
        .I2(\ALUResult[21]_INST_0_i_2_n_0 ),
        .I3(ALUControl[2]),
        .I4(\ALUResult[21]_INST_0_i_3_n_0 ),
        .O(ALUResult[9]));
  LUT4 #(
    .INIT(16'hF0BB)) 
    \ALUResult[21]_INST_0_i_1 
       (.I0(SrcB[21]),
        .I1(ALUControl[0]),
        .I2(\addressM[23]_0 [1]),
        .I3(ALUControl__0),
        .O(\ALUResult[21]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \ALUResult[21]_INST_0_i_10 
       (.I0(\ALUResult[21]_INST_0_i_9_1 ),
        .I1(\q_reg[5] [1]),
        .I2(\ALUResult[21]_INST_0_i_12_n_0 ),
        .I3(\q_reg[5] [2]),
        .I4(\ALUResult[21]_INST_0_i_9_0 ),
        .O(\ALUResult[21]_INST_0_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'hCDC8)) 
    \ALUResult[21]_INST_0_i_12 
       (.I0(\q_reg[5] [3]),
        .I1(SrcA[31]),
        .I2(\q_reg[5] [4]),
        .I3(SrcA[25]),
        .O(\ALUResult[21]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h88888888FFFCCCFC)) 
    \ALUResult[21]_INST_0_i_2 
       (.I0(\addressM[23]_0 [1]),
        .I1(ALUControl[0]),
        .I2(\ALUResult[22]_INST_0_i_8_n_0 ),
        .I3(\q_reg[5] [0]),
        .I4(\addressM[21] ),
        .I5(ALUControl__0),
        .O(\ALUResult[21]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFCFAFC0AFC0A0C0)) 
    \ALUResult[21]_INST_0_i_3 
       (.I0(\ALUResult[21]_INST_0_i_6_n_0 ),
        .I1(\addressM[23]_0 [1]),
        .I2(\addressM[23] ),
        .I3(\addressM[1] ),
        .I4(SrcA[21]),
        .I5(SrcB[21]),
        .O(\ALUResult[21]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFB800B800B800)) 
    \ALUResult[21]_INST_0_i_4 
       (.I0(Instr[15]),
        .I1(\ALUResult[30]_INST_0_i_2 ),
        .I2(Instr[25]),
        .I3(ALUSrc),
        .I4(rd21),
        .I5(rd20[21]),
        .O(SrcB[21]));
  MUXF7 \ALUResult[21]_INST_0_i_6 
       (.I0(\ALUResult[21]_INST_0_i_8_n_0 ),
        .I1(\ALUResult[21]_INST_0_i_9_n_0 ),
        .O(\ALUResult[21]_INST_0_i_6_n_0 ),
        .S(ALUControl[0]));
  LUT6 #(
    .INIT(64'h000000004777B888)) 
    \ALUResult[21]_INST_0_i_8 
       (.I0(\addressM[23]_2 [1]),
        .I1(\addressM[28] ),
        .I2(rd11),
        .I3(rd10[21]),
        .I4(SrcB[21]),
        .I5(ALUControl__0),
        .O(\ALUResult[21]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[21]_INST_0_i_9 
       (.I0(\ALUResult[22]_INST_0_i_21_n_0 ),
        .I1(\ALUResult[21]_INST_0_i_10_n_0 ),
        .I2(ALUControl__0),
        .I3(\ALUResult[22]_INST_0_i_23_n_0 ),
        .I4(\q_reg[5] [0]),
        .I5(\ALUResult[20]_INST_0_i_6_0 ),
        .O(\ALUResult[21]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \ALUResult[22]_INST_0 
       (.I0(\ALUResult[22]_INST_0_i_1_n_0 ),
        .I1(ALUControl[1]),
        .I2(\ALUResult[22]_INST_0_i_3_n_0 ),
        .I3(ALUControl[2]),
        .I4(\ALUResult[22]_INST_0_i_4_n_0 ),
        .O(ALUResult[10]));
  LUT4 #(
    .INIT(16'hF0BB)) 
    \ALUResult[22]_INST_0_i_1 
       (.I0(SrcB[22]),
        .I1(ALUControl[0]),
        .I2(\addressM[23]_0 [2]),
        .I3(ALUControl__0),
        .O(\ALUResult[22]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000004777B888)) 
    \ALUResult[22]_INST_0_i_18 
       (.I0(\addressM[23]_2 [2]),
        .I1(\addressM[28] ),
        .I2(rd11),
        .I3(rd10[22]),
        .I4(SrcB[22]),
        .I5(ALUControl__0),
        .O(\ALUResult[22]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[22]_INST_0_i_19 
       (.I0(\ALUResult[22]_INST_0_i_9_0 ),
        .I1(\ALUResult[22]_INST_0_i_21_n_0 ),
        .I2(ALUControl__0),
        .I3(\ALUResult[22]_INST_0_i_22_n_0 ),
        .I4(\q_reg[5] [0]),
        .I5(\ALUResult[22]_INST_0_i_23_n_0 ),
        .O(\ALUResult[22]_INST_0_i_19_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \ALUResult[22]_INST_0_i_21 
       (.I0(\ALUResult[22]_INST_0_i_19_0 ),
        .I1(\q_reg[5] [1]),
        .I2(\ALUResult[22]_INST_0_i_24_n_0 ),
        .I3(\q_reg[5] [2]),
        .I4(\ALUResult[22]_INST_0_i_19_2 ),
        .O(\ALUResult[22]_INST_0_i_21_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult[22]_INST_0_i_22 
       (.I0(\ALUResult[25]_INST_0_i_12_n_0 ),
        .I1(\q_reg[5] [1]),
        .I2(\ALUResult[22]_INST_0_i_19_1 ),
        .O(\ALUResult[22]_INST_0_i_22_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult[22]_INST_0_i_23 
       (.I0(\ALUResult[24]_INST_0_i_12_n_0 ),
        .I1(\q_reg[5] [1]),
        .I2(\ALUResult[22]_INST_0_i_19_3 ),
        .O(\ALUResult[22]_INST_0_i_23_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'hCDC8)) 
    \ALUResult[22]_INST_0_i_24 
       (.I0(\q_reg[5] [3]),
        .I1(SrcA[31]),
        .I2(\q_reg[5] [4]),
        .I3(SrcA[26]),
        .O(\ALUResult[22]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h88888888FFFCCCFC)) 
    \ALUResult[22]_INST_0_i_3 
       (.I0(\addressM[23]_0 [2]),
        .I1(ALUControl[0]),
        .I2(\addressM[22] ),
        .I3(\q_reg[5] [0]),
        .I4(\ALUResult[22]_INST_0_i_8_n_0 ),
        .I5(ALUControl__0),
        .O(\ALUResult[22]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFCFAFC0AFC0A0C0)) 
    \ALUResult[22]_INST_0_i_4 
       (.I0(\ALUResult[22]_INST_0_i_9_n_0 ),
        .I1(\addressM[23]_0 [2]),
        .I2(\addressM[23] ),
        .I3(\addressM[1] ),
        .I4(SrcA[22]),
        .I5(SrcB[22]),
        .O(\ALUResult[22]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFB800B800B800)) 
    \ALUResult[22]_INST_0_i_5 
       (.I0(Instr[16]),
        .I1(\ALUResult[30]_INST_0_i_2 ),
        .I2(Instr[25]),
        .I3(ALUSrc),
        .I4(rd21),
        .I5(rd20[22]),
        .O(SrcB[22]));
  LUT4 #(
    .INIT(16'hB888)) 
    \ALUResult[22]_INST_0_i_7 
       (.I0(\ALUResult[0]_INST_0_i_1 ),
        .I1(ALUSrc),
        .I2(rd21),
        .I3(rd20[0]),
        .O(\q_reg[5] [0]));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \ALUResult[22]_INST_0_i_8 
       (.I0(\ALUResult[21]_INST_0_i_2_0 ),
        .I1(\q_reg[5] [2]),
        .I2(\ALUResult[21]_INST_0_i_2_1 ),
        .I3(\ALUResult[21]_INST_0_i_2_2 ),
        .I4(\q_reg[5] [1]),
        .O(\ALUResult[22]_INST_0_i_8_n_0 ));
  MUXF7 \ALUResult[22]_INST_0_i_9 
       (.I0(\ALUResult[22]_INST_0_i_18_n_0 ),
        .I1(\ALUResult[22]_INST_0_i_19_n_0 ),
        .O(\ALUResult[22]_INST_0_i_9_n_0 ),
        .S(ALUControl[0]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \ALUResult[23]_INST_0 
       (.I0(\addressM[23]_1 ),
        .I1(ALUControl[2]),
        .I2(\ALUResult[23]_INST_0_i_2_n_0 ),
        .I3(\addressM[23] ),
        .I4(\ALUResult[23]_INST_0_i_3_n_0 ),
        .O(ALUResult[11]));
  LUT6 #(
    .INIT(64'h88B8FFFF88B80000)) 
    \ALUResult[23]_INST_0_i_2 
       (.I0(\ALUResult[23]_INST_0_i_6_n_0 ),
        .I1(ALUControl[0]),
        .I2(\alu/xorOut__31 [23]),
        .I3(ALUControl__0),
        .I4(\addressM[1] ),
        .I5(\addressM[23]_0 [3]),
        .O(\ALUResult[23]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFEAAAEAAA800080)) 
    \ALUResult[23]_INST_0_i_3 
       (.I0(\addressM[1] ),
        .I1(rd10[23]),
        .I2(rd11),
        .I3(\addressM[28] ),
        .I4(\addressM[23]_2 [3]),
        .I5(SrcB[23]),
        .O(\ALUResult[23]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hF0BB)) 
    \ALUResult[23]_INST_0_i_5 
       (.I0(SrcB[23]),
        .I1(ALUControl[0]),
        .I2(\addressM[23]_0 [3]),
        .I3(ALUControl__0),
        .O(\ALUResult[31]_INST_0_i_12_13 ));
  MUXF7 \ALUResult[23]_INST_0_i_6 
       (.I0(\ALUResult[23]_INST_0_i_9_n_0 ),
        .I1(\ALUResult[23]_INST_0_i_2_0 ),
        .O(\ALUResult[23]_INST_0_i_6_n_0 ),
        .S(ALUControl__0));
  LUT6 #(
    .INIT(64'h6A556A6A6AAA6A6A)) 
    \ALUResult[23]_INST_0_i_7 
       (.I0(SrcB[23]),
        .I1(rd10[23]),
        .I2(rd11),
        .I3(Instr[2]),
        .I4(Instr[0]),
        .I5(\addressM[23]_2 [3]),
        .O(\alu/xorOut__31 [23]));
  LUT6 #(
    .INIT(64'hB8FFB800B800B800)) 
    \ALUResult[23]_INST_0_i_8 
       (.I0(Instr[17]),
        .I1(\ALUResult[30]_INST_0_i_2 ),
        .I2(Instr[25]),
        .I3(ALUSrc),
        .I4(rd21),
        .I5(rd20[23]),
        .O(SrcB[23]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[23]_INST_0_i_9 
       (.I0(\ALUResult[26]_INST_0_i_14_n_0 ),
        .I1(\ALUResult[24]_INST_0_i_12_n_0 ),
        .I2(\q_reg[5] [0]),
        .I3(\ALUResult[25]_INST_0_i_12_n_0 ),
        .I4(\q_reg[5] [1]),
        .I5(\ALUResult[22]_INST_0_i_19_1 ),
        .O(\ALUResult[23]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \ALUResult[24]_INST_0 
       (.I0(\addressM[24] ),
        .I1(ALUControl[2]),
        .I2(\ALUResult[24]_INST_0_i_2_n_0 ),
        .I3(\addressM[23] ),
        .I4(\ALUResult[24]_INST_0_i_3_n_0 ),
        .O(ALUResult[12]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[24]_INST_0_i_10 
       (.I0(\ALUResult[27]_INST_0_i_13_n_0 ),
        .I1(\ALUResult[25]_INST_0_i_12_n_0 ),
        .I2(\q_reg[5] [0]),
        .I3(\ALUResult[26]_INST_0_i_14_n_0 ),
        .I4(\q_reg[5] [1]),
        .I5(\ALUResult[24]_INST_0_i_12_n_0 ),
        .O(\ALUResult[24]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[24]_INST_0_i_11 
       (.I0(\ALUResult[27]_INST_0_i_15_n_0 ),
        .I1(\ALUResult[25]_INST_0_i_6_0 ),
        .I2(\q_reg[5] [0]),
        .I3(\ALUResult[26]_INST_0_i_6_0 ),
        .I4(\q_reg[5] [1]),
        .I5(\ALUResult[22]_INST_0_i_19_0 ),
        .O(data5[24]));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \ALUResult[24]_INST_0_i_12 
       (.I0(SrcA[28]),
        .I1(\q_reg[5] [2]),
        .I2(\q_reg[5] [4]),
        .I3(SrcA[24]),
        .I4(\q_reg[5] [3]),
        .O(\ALUResult[24]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h88B8FFFF88B80000)) 
    \ALUResult[24]_INST_0_i_2 
       (.I0(\ALUResult[24]_INST_0_i_6_n_0 ),
        .I1(ALUControl[0]),
        .I2(\alu/xorOut__31 [24]),
        .I3(ALUControl__0),
        .I4(\addressM[1] ),
        .I5(\addressM[27]_0 [0]),
        .O(\ALUResult[24]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFEAAAEAAA800080)) 
    \ALUResult[24]_INST_0_i_3 
       (.I0(\addressM[1] ),
        .I1(rd10[24]),
        .I2(rd11),
        .I3(\addressM[28] ),
        .I4(\addressM[27]_1 [0]),
        .I5(SrcB[24]),
        .O(\ALUResult[24]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hF0BB)) 
    \ALUResult[24]_INST_0_i_5 
       (.I0(SrcB[24]),
        .I1(ALUControl[0]),
        .I2(\addressM[27]_0 [0]),
        .I3(ALUControl__0),
        .O(\ALUResult[31]_INST_0_i_12_14 ));
  MUXF7 \ALUResult[24]_INST_0_i_6 
       (.I0(\ALUResult[24]_INST_0_i_10_n_0 ),
        .I1(data5[24]),
        .O(\ALUResult[24]_INST_0_i_6_n_0 ),
        .S(ALUControl__0));
  LUT6 #(
    .INIT(64'h6A556A6A6AAA6A6A)) 
    \ALUResult[24]_INST_0_i_7 
       (.I0(SrcB[24]),
        .I1(rd10[24]),
        .I2(rd11),
        .I3(Instr[2]),
        .I4(Instr[0]),
        .I5(\addressM[27]_1 [0]),
        .O(\alu/xorOut__31 [24]));
  LUT6 #(
    .INIT(64'hB8FFB800B800B800)) 
    \ALUResult[24]_INST_0_i_8 
       (.I0(Instr[18]),
        .I1(\ALUResult[30]_INST_0_i_2 ),
        .I2(Instr[25]),
        .I3(ALUSrc),
        .I4(rd21),
        .I5(rd20[24]),
        .O(SrcB[24]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \ALUResult[25]_INST_0 
       (.I0(\addressM[25] ),
        .I1(ALUControl[2]),
        .I2(\ALUResult[25]_INST_0_i_2_n_0 ),
        .I3(\addressM[23] ),
        .I4(\ALUResult[25]_INST_0_i_3_n_0 ),
        .O(ALUResult[13]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[25]_INST_0_i_10 
       (.I0(\ALUResult[26]_INST_0_i_13_n_0 ),
        .I1(\ALUResult[26]_INST_0_i_14_n_0 ),
        .I2(\q_reg[5] [0]),
        .I3(\ALUResult[27]_INST_0_i_13_n_0 ),
        .I4(\q_reg[5] [1]),
        .I5(\ALUResult[25]_INST_0_i_12_n_0 ),
        .O(\ALUResult[25]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[25]_INST_0_i_11 
       (.I0(\ALUResult[28]_INST_0_i_17_n_0 ),
        .I1(\ALUResult[26]_INST_0_i_6_0 ),
        .I2(\q_reg[5] [0]),
        .I3(\ALUResult[27]_INST_0_i_15_n_0 ),
        .I4(\q_reg[5] [1]),
        .I5(\ALUResult[25]_INST_0_i_6_0 ),
        .O(data5[25]));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \ALUResult[25]_INST_0_i_12 
       (.I0(SrcA[29]),
        .I1(\q_reg[5] [2]),
        .I2(\q_reg[5] [4]),
        .I3(SrcA[25]),
        .I4(\q_reg[5] [3]),
        .O(\ALUResult[25]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h88B8FFFF88B80000)) 
    \ALUResult[25]_INST_0_i_2 
       (.I0(\ALUResult[25]_INST_0_i_6_n_0 ),
        .I1(ALUControl[0]),
        .I2(\alu/xorOut__31 [25]),
        .I3(ALUControl__0),
        .I4(\addressM[1] ),
        .I5(\addressM[27]_0 [1]),
        .O(\ALUResult[25]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFEAAAEAAA800080)) 
    \ALUResult[25]_INST_0_i_3 
       (.I0(\addressM[1] ),
        .I1(rd10[25]),
        .I2(rd11),
        .I3(\addressM[28] ),
        .I4(\addressM[27]_1 [1]),
        .I5(SrcB[25]),
        .O(\ALUResult[25]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hF0BB)) 
    \ALUResult[25]_INST_0_i_5 
       (.I0(SrcB[25]),
        .I1(ALUControl[0]),
        .I2(\addressM[27]_0 [1]),
        .I3(ALUControl__0),
        .O(\ALUResult[31]_INST_0_i_12_15 ));
  MUXF7 \ALUResult[25]_INST_0_i_6 
       (.I0(\ALUResult[25]_INST_0_i_10_n_0 ),
        .I1(data5[25]),
        .O(\ALUResult[25]_INST_0_i_6_n_0 ),
        .S(ALUControl__0));
  LUT6 #(
    .INIT(64'h6A556A6A6AAA6A6A)) 
    \ALUResult[25]_INST_0_i_7 
       (.I0(SrcB[25]),
        .I1(rd10[25]),
        .I2(rd11),
        .I3(Instr[2]),
        .I4(Instr[0]),
        .I5(\addressM[27]_1 [1]),
        .O(\alu/xorOut__31 [25]));
  LUT6 #(
    .INIT(64'hB8FFB800B800B800)) 
    \ALUResult[25]_INST_0_i_8 
       (.I0(Instr[19]),
        .I1(\ALUResult[30]_INST_0_i_2 ),
        .I2(Instr[25]),
        .I3(ALUSrc),
        .I4(rd21),
        .I5(rd20[25]),
        .O(SrcB[25]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \ALUResult[26]_INST_0 
       (.I0(\addressM[26] ),
        .I1(ALUControl[2]),
        .I2(\ALUResult[26]_INST_0_i_2_n_0 ),
        .I3(\addressM[23] ),
        .I4(\ALUResult[26]_INST_0_i_3_n_0 ),
        .O(ALUResult[14]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[26]_INST_0_i_10 
       (.I0(\ALUResult[27]_INST_0_i_12_n_0 ),
        .I1(\ALUResult[27]_INST_0_i_13_n_0 ),
        .I2(\q_reg[5] [0]),
        .I3(\ALUResult[26]_INST_0_i_13_n_0 ),
        .I4(\q_reg[5] [1]),
        .I5(\ALUResult[26]_INST_0_i_14_n_0 ),
        .O(\ALUResult[26]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[26]_INST_0_i_11 
       (.I0(\ALUResult[27]_INST_0_i_14_n_0 ),
        .I1(\ALUResult[27]_INST_0_i_15_n_0 ),
        .I2(\q_reg[5] [0]),
        .I3(\ALUResult[28]_INST_0_i_17_n_0 ),
        .I4(\q_reg[5] [1]),
        .I5(\ALUResult[26]_INST_0_i_6_0 ),
        .O(data5[26]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \ALUResult[26]_INST_0_i_13 
       (.I0(\q_reg[5] [3]),
        .I1(SrcA[28]),
        .I2(\q_reg[5] [4]),
        .I3(\q_reg[5] [2]),
        .O(\ALUResult[26]_INST_0_i_13_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \ALUResult[26]_INST_0_i_14 
       (.I0(SrcA[30]),
        .I1(\q_reg[5] [2]),
        .I2(\q_reg[5] [4]),
        .I3(SrcA[26]),
        .I4(\q_reg[5] [3]),
        .O(\ALUResult[26]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h88B8FFFF88B80000)) 
    \ALUResult[26]_INST_0_i_2 
       (.I0(\ALUResult[26]_INST_0_i_6_n_0 ),
        .I1(ALUControl[0]),
        .I2(\alu/xorOut__31 [26]),
        .I3(ALUControl__0),
        .I4(\addressM[1] ),
        .I5(\addressM[27]_0 [2]),
        .O(\ALUResult[26]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFEAAAEAAA800080)) 
    \ALUResult[26]_INST_0_i_3 
       (.I0(\addressM[1] ),
        .I1(rd10[26]),
        .I2(rd11),
        .I3(\addressM[28] ),
        .I4(\addressM[27]_1 [2]),
        .I5(SrcB[26]),
        .O(\ALUResult[26]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hF0BB)) 
    \ALUResult[26]_INST_0_i_5 
       (.I0(SrcB[26]),
        .I1(ALUControl[0]),
        .I2(\addressM[27]_0 [2]),
        .I3(ALUControl__0),
        .O(\ALUResult[31]_INST_0_i_12_16 ));
  MUXF7 \ALUResult[26]_INST_0_i_6 
       (.I0(\ALUResult[26]_INST_0_i_10_n_0 ),
        .I1(data5[26]),
        .O(\ALUResult[26]_INST_0_i_6_n_0 ),
        .S(ALUControl__0));
  LUT6 #(
    .INIT(64'h6A556A6A6AAA6A6A)) 
    \ALUResult[26]_INST_0_i_7 
       (.I0(SrcB[26]),
        .I1(rd10[26]),
        .I2(rd11),
        .I3(Instr[2]),
        .I4(Instr[0]),
        .I5(\addressM[27]_1 [2]),
        .O(\alu/xorOut__31 [26]));
  LUT6 #(
    .INIT(64'hB8FFB800B800B800)) 
    \ALUResult[26]_INST_0_i_8 
       (.I0(Instr[20]),
        .I1(\ALUResult[30]_INST_0_i_2 ),
        .I2(Instr[25]),
        .I3(ALUSrc),
        .I4(rd21),
        .I5(rd20[26]),
        .O(SrcB[26]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \ALUResult[27]_INST_0 
       (.I0(\addressM[27] ),
        .I1(ALUControl[2]),
        .I2(\ALUResult[27]_INST_0_i_2_n_0 ),
        .I3(\addressM[23] ),
        .I4(\ALUResult[27]_INST_0_i_3_n_0 ),
        .O(ALUResult[15]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \ALUResult[27]_INST_0_i_10 
       (.I0(\ALUResult[28]_INST_0_i_15_n_0 ),
        .I1(\q_reg[5] [0]),
        .I2(\ALUResult[27]_INST_0_i_12_n_0 ),
        .I3(\q_reg[5] [1]),
        .I4(\ALUResult[27]_INST_0_i_13_n_0 ),
        .O(\ALUResult[27]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[27]_INST_0_i_11 
       (.I0(\ALUResult[28]_INST_0_i_16_n_0 ),
        .I1(\ALUResult[28]_INST_0_i_17_n_0 ),
        .I2(\q_reg[5] [0]),
        .I3(\ALUResult[27]_INST_0_i_14_n_0 ),
        .I4(\q_reg[5] [1]),
        .I5(\ALUResult[27]_INST_0_i_15_n_0 ),
        .O(data5[27]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \ALUResult[27]_INST_0_i_12 
       (.I0(\q_reg[5] [3]),
        .I1(SrcA[29]),
        .I2(\q_reg[5] [4]),
        .I3(\q_reg[5] [2]),
        .O(\ALUResult[27]_INST_0_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'h00000B08)) 
    \ALUResult[27]_INST_0_i_13 
       (.I0(SrcA[31]),
        .I1(\q_reg[5] [2]),
        .I2(\q_reg[5] [4]),
        .I3(SrcA[27]),
        .I4(\q_reg[5] [3]),
        .O(\ALUResult[27]_INST_0_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'hF0F1F0E0)) 
    \ALUResult[27]_INST_0_i_14 
       (.I0(\q_reg[5] [2]),
        .I1(\q_reg[5] [3]),
        .I2(SrcA[31]),
        .I3(\q_reg[5] [4]),
        .I4(SrcA[29]),
        .O(\ALUResult[27]_INST_0_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'hF0F1F0E0)) 
    \ALUResult[27]_INST_0_i_15 
       (.I0(\q_reg[5] [2]),
        .I1(\q_reg[5] [3]),
        .I2(SrcA[31]),
        .I3(\q_reg[5] [4]),
        .I4(SrcA[27]),
        .O(\ALUResult[27]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h88B8FFFF88B80000)) 
    \ALUResult[27]_INST_0_i_2 
       (.I0(\ALUResult[27]_INST_0_i_6_n_0 ),
        .I1(ALUControl[0]),
        .I2(\alu/xorOut__31 [27]),
        .I3(ALUControl__0),
        .I4(\addressM[1] ),
        .I5(\addressM[27]_0 [3]),
        .O(\ALUResult[27]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFEAAAEAAA800080)) 
    \ALUResult[27]_INST_0_i_3 
       (.I0(\addressM[1] ),
        .I1(rd10[27]),
        .I2(rd11),
        .I3(\addressM[28] ),
        .I4(\addressM[27]_1 [3]),
        .I5(SrcB[27]),
        .O(\ALUResult[27]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hF0BB)) 
    \ALUResult[27]_INST_0_i_5 
       (.I0(SrcB[27]),
        .I1(ALUControl[0]),
        .I2(\addressM[27]_0 [3]),
        .I3(ALUControl__0),
        .O(\ALUResult[31]_INST_0_i_12_17 ));
  MUXF7 \ALUResult[27]_INST_0_i_6 
       (.I0(\ALUResult[27]_INST_0_i_10_n_0 ),
        .I1(data5[27]),
        .O(\ALUResult[27]_INST_0_i_6_n_0 ),
        .S(ALUControl__0));
  LUT6 #(
    .INIT(64'h6A556A6A6AAA6A6A)) 
    \ALUResult[27]_INST_0_i_7 
       (.I0(SrcB[27]),
        .I1(rd10[27]),
        .I2(rd11),
        .I3(Instr[2]),
        .I4(Instr[0]),
        .I5(\addressM[27]_1 [3]),
        .O(\alu/xorOut__31 [27]));
  LUT6 #(
    .INIT(64'hB8FFB800B800B800)) 
    \ALUResult[27]_INST_0_i_8 
       (.I0(Instr[21]),
        .I1(\ALUResult[30]_INST_0_i_2 ),
        .I2(Instr[25]),
        .I3(ALUSrc),
        .I4(rd21),
        .I5(rd20[27]),
        .O(SrcB[27]));
  LUT6 #(
    .INIT(64'hB8FFB800B800B800)) 
    \ALUResult[28]_INST_0_i_11 
       (.I0(Instr[22]),
        .I1(\ALUResult[30]_INST_0_i_2 ),
        .I2(Instr[25]),
        .I3(ALUSrc),
        .I4(rd21),
        .I5(rd20[28]),
        .O(SrcB[28]));
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult[28]_INST_0_i_13 
       (.I0(\ALUResult[29]_INST_0_i_10_n_0 ),
        .I1(\q_reg[5] [0]),
        .I2(\ALUResult[28]_INST_0_i_15_n_0 ),
        .O(\ALUResult[28]_INST_0_i_13_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \ALUResult[28]_INST_0_i_14 
       (.I0(\ALUResult[29]_INST_0_i_9_n_0 ),
        .I1(\q_reg[5] [0]),
        .I2(\ALUResult[28]_INST_0_i_16_n_0 ),
        .I3(\q_reg[5] [1]),
        .I4(\ALUResult[28]_INST_0_i_17_n_0 ),
        .O(data5[28]));
  LUT6 #(
    .INIT(64'h0000000000000B08)) 
    \ALUResult[28]_INST_0_i_15 
       (.I0(SrcA[30]),
        .I1(\q_reg[5] [1]),
        .I2(\q_reg[5] [3]),
        .I3(SrcA[28]),
        .I4(\q_reg[5] [4]),
        .I5(\q_reg[5] [2]),
        .O(\ALUResult[28]_INST_0_i_15_n_0 ));
  LUT5 #(
    .INIT(32'hF0F1F0E0)) 
    \ALUResult[28]_INST_0_i_16 
       (.I0(\q_reg[5] [2]),
        .I1(\q_reg[5] [3]),
        .I2(SrcA[31]),
        .I3(\q_reg[5] [4]),
        .I4(SrcA[30]),
        .O(\ALUResult[28]_INST_0_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'hF0F1F0E0)) 
    \ALUResult[28]_INST_0_i_17 
       (.I0(\q_reg[5] [2]),
        .I1(\q_reg[5] [3]),
        .I2(SrcA[31]),
        .I3(\q_reg[5] [4]),
        .I4(SrcA[28]),
        .O(\ALUResult[28]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h88B8FFFF88B80000)) 
    \ALUResult[28]_INST_0_i_2 
       (.I0(\ALUResult[28]_INST_0_i_7_n_0 ),
        .I1(ALUControl[0]),
        .I2(\alu/xorOut__31 [28]),
        .I3(ALUControl__0),
        .I4(\addressM[1] ),
        .I5(\addressM[31] [0]),
        .O(\q_reg[28] ));
  LUT6 #(
    .INIT(64'hFFEAAAEAAA800080)) 
    \ALUResult[28]_INST_0_i_4 
       (.I0(\addressM[1] ),
        .I1(rd10[28]),
        .I2(rd11),
        .I3(\addressM[28] ),
        .I4(sum_carry__6[0]),
        .I5(SrcB[28]),
        .O(\q_reg[28]_0 ));
  LUT4 #(
    .INIT(16'hF0BB)) 
    \ALUResult[28]_INST_0_i_6 
       (.I0(SrcB[28]),
        .I1(ALUControl[0]),
        .I2(\addressM[31] [0]),
        .I3(ALUControl__0),
        .O(\ALUResult[31]_INST_0_i_12_18 ));
  MUXF7 \ALUResult[28]_INST_0_i_7 
       (.I0(\ALUResult[28]_INST_0_i_13_n_0 ),
        .I1(data5[28]),
        .O(\ALUResult[28]_INST_0_i_7_n_0 ),
        .S(ALUControl__0));
  LUT6 #(
    .INIT(64'h6A556A6A6AAA6A6A)) 
    \ALUResult[28]_INST_0_i_8 
       (.I0(SrcB[28]),
        .I1(rd10[28]),
        .I2(rd11),
        .I3(Instr[2]),
        .I4(Instr[0]),
        .I5(sum_carry__6[0]),
        .O(\alu/xorOut__31 [28]));
  LUT6 #(
    .INIT(64'hAFCFAFC0AFC0A0C0)) 
    \ALUResult[29]_INST_0_i_1 
       (.I0(\ALUResult[29]_INST_0_i_3_n_0 ),
        .I1(\addressM[31] [1]),
        .I2(\addressM[23] ),
        .I3(\addressM[1] ),
        .I4(SrcA[29]),
        .I5(\q_reg[5] [14]),
        .O(\q_reg[29] ));
  LUT6 #(
    .INIT(64'h0000000000000B08)) 
    \ALUResult[29]_INST_0_i_10 
       (.I0(SrcA[31]),
        .I1(\q_reg[5] [1]),
        .I2(\q_reg[5] [3]),
        .I3(SrcA[29]),
        .I4(\q_reg[5] [4]),
        .I5(\q_reg[5] [2]),
        .O(\ALUResult[29]_INST_0_i_10_n_0 ));
  MUXF7 \ALUResult[29]_INST_0_i_3 
       (.I0(\ALUResult[29]_INST_0_i_6_n_0 ),
        .I1(\ALUResult[29]_INST_0_i_7_n_0 ),
        .O(\ALUResult[29]_INST_0_i_3_n_0 ),
        .S(ALUControl[0]));
  LUT6 #(
    .INIT(64'hB8FFB800B800B800)) 
    \ALUResult[29]_INST_0_i_4 
       (.I0(Instr[23]),
        .I1(\ALUResult[30]_INST_0_i_2 ),
        .I2(Instr[25]),
        .I3(ALUSrc),
        .I4(rd21),
        .I5(rd20[29]),
        .O(\q_reg[5] [14]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult[29]_INST_0_i_5 
       (.I0(\ALUResult[29]_INST_0_i_2 ),
        .I1(\q_reg[5] [0]),
        .I2(\ALUResult[30]_INST_0_i_8_n_0 ),
        .O(\ALUResult[31]_INST_0_i_14 [0]));
  LUT6 #(
    .INIT(64'h000000004777B888)) 
    \ALUResult[29]_INST_0_i_6 
       (.I0(sum_carry__6[1]),
        .I1(\addressM[28] ),
        .I2(rd11),
        .I3(rd10[29]),
        .I4(\q_reg[5] [14]),
        .I5(ALUControl__0),
        .O(\ALUResult[29]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[29]_INST_0_i_7 
       (.I0(\ALUResult[30]_INST_0_i_9_n_0 ),
        .I1(\ALUResult[29]_INST_0_i_9_n_0 ),
        .I2(ALUControl__0),
        .I3(\ALUResult[30]_INST_0_i_10_n_0 ),
        .I4(\q_reg[5] [0]),
        .I5(\ALUResult[29]_INST_0_i_10_n_0 ),
        .O(\ALUResult[29]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FF01FF00FE00)) 
    \ALUResult[29]_INST_0_i_9 
       (.I0(\q_reg[5] [1]),
        .I1(\q_reg[5] [2]),
        .I2(\q_reg[5] [3]),
        .I3(SrcA[31]),
        .I4(\q_reg[5] [4]),
        .I5(SrcA[29]),
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
        .I1(O[1]),
        .I2(\addressM[23] ),
        .I3(\addressM[1] ),
        .I4(SrcA[2]),
        .I5(\q_reg[5] [2]),
        .O(\ALUResult[2]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \ALUResult[2]_INST_0_i_10 
       (.I0(\q_reg[5] [2]),
        .I1(\q_reg[5] [4]),
        .I2(SrcA[1]),
        .I3(\q_reg[5] [3]),
        .I4(\q_reg[5] [1]),
        .O(\ALUResult[2]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hF0C0F0C0BBFFBBCC)) 
    \ALUResult[2]_INST_0_i_2 
       (.I0(\q_reg[5] [2]),
        .I1(ALUControl[1]),
        .I2(O[1]),
        .I3(ALUControl[0]),
        .I4(data7[2]),
        .I5(ALUControl__0),
        .O(\ALUResult[2]_INST_0_i_2_n_0 ));
  MUXF7 \ALUResult[2]_INST_0_i_3 
       (.I0(\ALUResult[2]_INST_0_i_6_n_0 ),
        .I1(\ALUResult[2]_INST_0_i_1_0 ),
        .O(\ALUResult[2]_INST_0_i_3_n_0 ),
        .S(ALUControl[0]));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \ALUResult[2]_INST_0_i_4 
       (.I0(\ALUResult[21]_INST_0_i_5_1 ),
        .I1(sel0),
        .I2(\ALUResult[21]_INST_0_i_5_2 ),
        .I3(\ALUResult[30]_INST_0_i_2 ),
        .I4(ALUSrc),
        .I5(WriteData[2]),
        .O(\q_reg[5] [2]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult[2]_INST_0_i_5 
       (.I0(\ALUResult[2]_INST_0_i_10_n_0 ),
        .I1(\q_reg[5] [0]),
        .I2(\ALUResult[3]_INST_0_i_10_n_0 ),
        .O(data7[2]));
  LUT6 #(
    .INIT(64'h000000004777B888)) 
    \ALUResult[2]_INST_0_i_6 
       (.I0(sum_carry[2]),
        .I1(\addressM[28] ),
        .I2(rd11),
        .I3(rd10[2]),
        .I4(\q_reg[5] [2]),
        .I5(ALUControl__0),
        .O(\ALUResult[2]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFCFAFC0AFC0A0C0)) 
    \ALUResult[30]_INST_0_i_1 
       (.I0(\ALUResult[30]_INST_0_i_3_n_0 ),
        .I1(\addressM[31] [2]),
        .I2(\addressM[23] ),
        .I3(\addressM[1] ),
        .I4(SrcA[30]),
        .I5(\q_reg[5] [15]),
        .O(\q_reg[30] ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \ALUResult[30]_INST_0_i_10 
       (.I0(\q_reg[5] [2]),
        .I1(\q_reg[5] [4]),
        .I2(SrcA[30]),
        .I3(\q_reg[5] [3]),
        .I4(\q_reg[5] [1]),
        .O(\ALUResult[30]_INST_0_i_10_n_0 ));
  MUXF7 \ALUResult[30]_INST_0_i_3 
       (.I0(\ALUResult[30]_INST_0_i_6_n_0 ),
        .I1(\ALUResult[30]_INST_0_i_7_n_0 ),
        .O(\ALUResult[30]_INST_0_i_3_n_0 ),
        .S(ALUControl[0]));
  LUT6 #(
    .INIT(64'hB8FFB800B800B800)) 
    \ALUResult[30]_INST_0_i_4 
       (.I0(Instr[24]),
        .I1(\ALUResult[30]_INST_0_i_2 ),
        .I2(Instr[25]),
        .I3(ALUSrc),
        .I4(rd21),
        .I5(rd20[30]),
        .O(\q_reg[5] [15]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult[30]_INST_0_i_5 
       (.I0(\ALUResult[30]_INST_0_i_8_n_0 ),
        .I1(\q_reg[5] [0]),
        .I2(\ALUResult[30]_INST_0_i_2_0 ),
        .O(\ALUResult[31]_INST_0_i_14 [1]));
  LUT6 #(
    .INIT(64'h000000004777B888)) 
    \ALUResult[30]_INST_0_i_6 
       (.I0(sum_carry__6[2]),
        .I1(\addressM[28] ),
        .I2(rd11),
        .I3(rd10[30]),
        .I4(\q_reg[5] [15]),
        .I5(ALUControl__0),
        .O(\ALUResult[30]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[30]_INST_0_i_7 
       (.I0(SrcA[31]),
        .I1(\ALUResult[30]_INST_0_i_9_n_0 ),
        .I2(ALUControl__0),
        .I3(\ALUResult[31]_INST_0_i_13_n_0 ),
        .I4(\q_reg[5] [0]),
        .I5(\ALUResult[30]_INST_0_i_10_n_0 ),
        .O(\ALUResult[30]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[30]_INST_0_i_8 
       (.I0(\ALUResult[29]_INST_0_i_5_0 ),
        .I1(\ALUResult[29]_INST_0_i_5_1 ),
        .I2(\q_reg[5] [1]),
        .I3(\ALUResult[29]_INST_0_i_5_2 ),
        .I4(\q_reg[5] [2]),
        .I5(\ALUResult[29]_INST_0_i_5_3 ),
        .O(\ALUResult[30]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FF01FF00FE00)) 
    \ALUResult[30]_INST_0_i_9 
       (.I0(\q_reg[5] [1]),
        .I1(\q_reg[5] [2]),
        .I2(\q_reg[5] [3]),
        .I3(SrcA[31]),
        .I4(\q_reg[5] [4]),
        .I5(SrcA[30]),
        .O(\ALUResult[30]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \ALUResult[31]_INST_0_i_13 
       (.I0(\q_reg[5] [2]),
        .I1(\q_reg[5] [4]),
        .I2(SrcA[31]),
        .I3(\q_reg[5] [3]),
        .I4(\q_reg[5] [1]),
        .O(\ALUResult[31]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFCFAFC0AFC0A0C0)) 
    \ALUResult[31]_INST_0_i_2 
       (.I0(\ALUResult[31]_INST_0_i_7_n_0 ),
        .I1(\addressM[31] [3]),
        .I2(\addressM[23] ),
        .I3(\addressM[1] ),
        .I4(SrcA[31]),
        .I5(\q_reg[5] [16]),
        .O(\q_reg[31] ));
  LUT6 #(
    .INIT(64'hF000F000202F2F20)) 
    \ALUResult[31]_INST_0_i_7 
       (.I0(\ALUResult[31]_INST_0_i_13_n_0 ),
        .I1(\q_reg[5] [0]),
        .I2(ALUControl[0]),
        .I3(SrcA[31]),
        .I4(\q_reg[5] [16]),
        .I5(ALUControl__0),
        .O(\ALUResult[31]_INST_0_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \ALUResult[31]_INST_0_i_9 
       (.I0(Instr[25]),
        .I1(ALUSrc),
        .I2(rd21),
        .I3(clk_0[6]),
        .O(\q_reg[5] [16]));
  MUXF7 \ALUResult[3]_INST_0 
       (.I0(\ALUResult[3]_INST_0_i_1_n_0 ),
        .I1(\ALUResult[3]_INST_0_i_2_n_0 ),
        .O(ALUResult[2]),
        .S(ALUControl[2]));
  LUT6 #(
    .INIT(64'hAFCFAFC0AFC0A0C0)) 
    \ALUResult[3]_INST_0_i_1 
       (.I0(\ALUResult[3]_INST_0_i_3_n_0 ),
        .I1(O[2]),
        .I2(\addressM[23] ),
        .I3(\addressM[1] ),
        .I4(SrcA[3]),
        .I5(\q_reg[5] [3]),
        .O(\ALUResult[3]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000B08)) 
    \ALUResult[3]_INST_0_i_10 
       (.I0(SrcA[0]),
        .I1(\q_reg[5] [1]),
        .I2(\q_reg[5] [3]),
        .I3(SrcA[2]),
        .I4(\q_reg[5] [4]),
        .I5(\q_reg[5] [2]),
        .O(\ALUResult[3]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hF0C0F0C0BBFFBBCC)) 
    \ALUResult[3]_INST_0_i_2 
       (.I0(\q_reg[5] [3]),
        .I1(ALUControl[1]),
        .I2(O[2]),
        .I3(ALUControl[0]),
        .I4(data7[3]),
        .I5(ALUControl__0),
        .O(\ALUResult[3]_INST_0_i_2_n_0 ));
  MUXF7 \ALUResult[3]_INST_0_i_3 
       (.I0(\ALUResult[3]_INST_0_i_6_n_0 ),
        .I1(\ALUResult[3]_INST_0_i_1_0 ),
        .O(\ALUResult[3]_INST_0_i_3_n_0 ),
        .S(ALUControl[0]));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \ALUResult[3]_INST_0_i_4 
       (.I0(\ALUResult[19]_INST_0_i_14 ),
        .I1(sel0),
        .I2(\ALUResult[19]_INST_0_i_14_0 ),
        .I3(\ALUResult[30]_INST_0_i_2 ),
        .I4(ALUSrc),
        .I5(WriteData[3]),
        .O(\q_reg[5] [3]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult[3]_INST_0_i_5 
       (.I0(\ALUResult[3]_INST_0_i_10_n_0 ),
        .I1(\q_reg[5] [0]),
        .I2(\ALUResult[4]_INST_0_i_9_n_0 ),
        .O(data7[3]));
  LUT6 #(
    .INIT(64'h000000004777B888)) 
    \ALUResult[3]_INST_0_i_6 
       (.I0(sum_carry[3]),
        .I1(\addressM[28] ),
        .I2(rd11),
        .I3(rd10[3]),
        .I4(\q_reg[5] [3]),
        .I5(ALUControl__0),
        .O(\ALUResult[3]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hF0C0F0C0BBFFBBCC)) 
    \ALUResult[4]_INST_0_i_2 
       (.I0(\q_reg[5] [4]),
        .I1(ALUControl[1]),
        .I2(\addressM[7] [0]),
        .I3(ALUControl[0]),
        .I4(data7[4]),
        .I5(ALUControl__0),
        .O(\ALUResult[31]_INST_0_i_12_1 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \ALUResult[4]_INST_0_i_4 
       (.I0(\ALUResult[19]_INST_0_i_14_1 ),
        .I1(sel0),
        .I2(\ALUResult[19]_INST_0_i_14_2 ),
        .I3(\ALUResult[30]_INST_0_i_2 ),
        .I4(ALUSrc),
        .I5(WriteData[4]),
        .O(\q_reg[5] [4]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult[4]_INST_0_i_5 
       (.I0(\ALUResult[4]_INST_0_i_9_n_0 ),
        .I1(\q_reg[5] [0]),
        .I2(\ALUResult[5]_INST_0_i_7_n_0 ),
        .O(data7[4]));
  LUT6 #(
    .INIT(64'h0000000000000B08)) 
    \ALUResult[4]_INST_0_i_9 
       (.I0(SrcA[1]),
        .I1(\q_reg[5] [1]),
        .I2(\q_reg[5] [3]),
        .I3(SrcA[3]),
        .I4(\q_reg[5] [4]),
        .I5(\q_reg[5] [2]),
        .O(\ALUResult[4]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hF0C0F0C0BBFFBBCC)) 
    \ALUResult[5]_INST_0_i_2 
       (.I0(\q_reg[5] [5]),
        .I1(ALUControl[1]),
        .I2(\addressM[7] [1]),
        .I3(ALUControl[0]),
        .I4(data7[5]),
        .I5(ALUControl__0),
        .O(\ALUResult[31]_INST_0_i_12_2 ));
  LUT6 #(
    .INIT(64'h8AFF8A008A008A00)) 
    \ALUResult[5]_INST_0_i_4 
       (.I0(Instr[19]),
        .I1(Instr[3]),
        .I2(Instr[0]),
        .I3(ALUSrc),
        .I4(rd21),
        .I5(clk_0[0]),
        .O(\q_reg[5] [5]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult[5]_INST_0_i_5 
       (.I0(\ALUResult[5]_INST_0_i_7_n_0 ),
        .I1(\q_reg[5] [0]),
        .I2(\ALUResult[6]_INST_0_i_7_n_0 ),
        .O(data7[5]));
  LUT6 #(
    .INIT(64'h0004FFFF00040000)) 
    \ALUResult[5]_INST_0_i_7 
       (.I0(\q_reg[5] [3]),
        .I1(SrcA[2]),
        .I2(\q_reg[5] [4]),
        .I3(\q_reg[5] [2]),
        .I4(\q_reg[5] [1]),
        .I5(\ALUResult[7]_INST_0_i_7_n_0 ),
        .O(\ALUResult[5]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hF0C0F0C0BBFFBBCC)) 
    \ALUResult[6]_INST_0_i_2 
       (.I0(\q_reg[5] [6]),
        .I1(ALUControl[1]),
        .I2(\addressM[7] [2]),
        .I3(ALUControl[0]),
        .I4(data7[6]),
        .I5(ALUControl__0),
        .O(\ALUResult[31]_INST_0_i_12_3 ));
  LUT6 #(
    .INIT(64'h8AFF8A008A008A00)) 
    \ALUResult[6]_INST_0_i_4 
       (.I0(Instr[20]),
        .I1(Instr[3]),
        .I2(Instr[0]),
        .I3(ALUSrc),
        .I4(rd21),
        .I5(clk_0[1]),
        .O(\q_reg[5] [6]));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \ALUResult[6]_INST_0_i_5 
       (.I0(\ALUResult[7]_INST_0_i_7_n_0 ),
        .I1(\q_reg[5] [1]),
        .I2(\ALUResult[9]_INST_0_i_8_n_0 ),
        .I3(\ALUResult[6]_INST_0_i_7_n_0 ),
        .I4(\q_reg[5] [0]),
        .O(data7[6]));
  LUT6 #(
    .INIT(64'h0004FFFF00040000)) 
    \ALUResult[6]_INST_0_i_7 
       (.I0(\q_reg[5] [3]),
        .I1(SrcA[3]),
        .I2(\q_reg[5] [4]),
        .I3(\q_reg[5] [2]),
        .I4(\q_reg[5] [1]),
        .I5(\ALUResult[8]_INST_0_i_8_n_0 ),
        .O(\ALUResult[6]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hF0C0F0C0BBFFBBCC)) 
    \ALUResult[7]_INST_0_i_2 
       (.I0(\q_reg[5] [7]),
        .I1(ALUControl[1]),
        .I2(\addressM[7] [3]),
        .I3(ALUControl[0]),
        .I4(data7[7]),
        .I5(ALUControl__0),
        .O(\ALUResult[31]_INST_0_i_12_4 ));
  LUT6 #(
    .INIT(64'h8AFF8A008A008A00)) 
    \ALUResult[7]_INST_0_i_4 
       (.I0(Instr[21]),
        .I1(Instr[3]),
        .I2(Instr[0]),
        .I3(ALUSrc),
        .I4(rd21),
        .I5(clk_0[2]),
        .O(\q_reg[5] [7]));
  LUT6 #(
    .INIT(64'hFF33CC00B8B8B8B8)) 
    \ALUResult[7]_INST_0_i_5 
       (.I0(\ALUResult[8]_INST_0_i_8_n_0 ),
        .I1(\q_reg[5] [1]),
        .I2(\q_reg[3] ),
        .I3(\ALUResult[7]_INST_0_i_7_n_0 ),
        .I4(\ALUResult[9]_INST_0_i_8_n_0 ),
        .I5(\q_reg[5] [0]),
        .O(data7[7]));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \ALUResult[7]_INST_0_i_7 
       (.I0(SrcA[0]),
        .I1(\q_reg[5] [2]),
        .I2(\q_reg[5] [4]),
        .I3(SrcA[4]),
        .I4(\q_reg[5] [3]),
        .O(\ALUResult[7]_INST_0_i_7_n_0 ));
  MUXF7 \ALUResult[8]_INST_0 
       (.I0(\ALUResult[8]_INST_0_i_1_n_0 ),
        .I1(\ALUResult[8]_INST_0_i_2_n_0 ),
        .O(ALUResult[3]),
        .S(ALUControl[2]));
  LUT6 #(
    .INIT(64'hAFCFAFC0AFC0A0C0)) 
    \ALUResult[8]_INST_0_i_1 
       (.I0(\ALUResult[8]_INST_0_i_3_n_0 ),
        .I1(\addressM[10] [0]),
        .I2(\addressM[23] ),
        .I3(\addressM[1] ),
        .I4(SrcA[8]),
        .I5(SrcB[8]),
        .O(\ALUResult[8]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0C0F0C0BBFFBBCC)) 
    \ALUResult[8]_INST_0_i_2 
       (.I0(SrcB[8]),
        .I1(ALUControl[1]),
        .I2(\addressM[10] [0]),
        .I3(ALUControl[0]),
        .I4(data7[8]),
        .I5(ALUControl__0),
        .O(\ALUResult[8]_INST_0_i_2_n_0 ));
  MUXF7 \ALUResult[8]_INST_0_i_3 
       (.I0(\ALUResult[8]_INST_0_i_6_n_0 ),
        .I1(\ALUResult[8]_INST_0_i_1_0 ),
        .O(\ALUResult[8]_INST_0_i_3_n_0 ),
        .S(ALUControl[0]));
  LUT6 #(
    .INIT(64'h8AFF8A008A008A00)) 
    \ALUResult[8]_INST_0_i_4 
       (.I0(Instr[22]),
        .I1(Instr[3]),
        .I2(Instr[0]),
        .I3(ALUSrc),
        .I4(rd21),
        .I5(clk_0[3]),
        .O(SrcB[8]));
  LUT6 #(
    .INIT(64'hFF33CC00B8B8B8B8)) 
    \ALUResult[8]_INST_0_i_5 
       (.I0(\ALUResult[9]_INST_0_i_8_n_0 ),
        .I1(\q_reg[5] [1]),
        .I2(\ALUResult[9]_INST_0_i_2_1 ),
        .I3(\ALUResult[8]_INST_0_i_8_n_0 ),
        .I4(\q_reg[3] ),
        .I5(\q_reg[5] [0]),
        .O(data7[8]));
  LUT6 #(
    .INIT(64'h000000004777B888)) 
    \ALUResult[8]_INST_0_i_6 
       (.I0(\addressM[11] [0]),
        .I1(\addressM[28] ),
        .I2(rd11),
        .I3(rd10[8]),
        .I4(SrcB[8]),
        .I5(ALUControl__0),
        .O(\ALUResult[8]_INST_0_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \ALUResult[8]_INST_0_i_8 
       (.I0(SrcA[1]),
        .I1(\q_reg[5] [2]),
        .I2(\q_reg[5] [4]),
        .I3(SrcA[5]),
        .I4(\q_reg[5] [3]),
        .O(\ALUResult[8]_INST_0_i_8_n_0 ));
  MUXF7 \ALUResult[9]_INST_0 
       (.I0(\ALUResult[9]_INST_0_i_1_n_0 ),
        .I1(\ALUResult[9]_INST_0_i_2_n_0 ),
        .O(ALUResult[4]),
        .S(ALUControl[2]));
  LUT6 #(
    .INIT(64'hAFCFAFC0AFC0A0C0)) 
    \ALUResult[9]_INST_0_i_1 
       (.I0(\ALUResult[9]_INST_0_i_3_n_0 ),
        .I1(\addressM[10] [1]),
        .I2(\addressM[23] ),
        .I3(\addressM[1] ),
        .I4(SrcA[9]),
        .I5(SrcB[9]),
        .O(\ALUResult[9]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0C0F0C0BBFFBBCC)) 
    \ALUResult[9]_INST_0_i_2 
       (.I0(SrcB[9]),
        .I1(ALUControl[1]),
        .I2(\addressM[10] [1]),
        .I3(ALUControl[0]),
        .I4(data7[9]),
        .I5(ALUControl__0),
        .O(\ALUResult[9]_INST_0_i_2_n_0 ));
  MUXF7 \ALUResult[9]_INST_0_i_3 
       (.I0(\ALUResult[9]_INST_0_i_6_n_0 ),
        .I1(\ALUResult[9]_INST_0_i_1_0 ),
        .O(\ALUResult[9]_INST_0_i_3_n_0 ),
        .S(ALUControl[0]));
  LUT6 #(
    .INIT(64'h8AFF8A008A008A00)) 
    \ALUResult[9]_INST_0_i_4 
       (.I0(Instr[23]),
        .I1(Instr[3]),
        .I2(Instr[0]),
        .I3(ALUSrc),
        .I4(rd21),
        .I5(clk_0[4]),
        .O(SrcB[9]));
  LUT6 #(
    .INIT(64'hFF33CC00B8B8B8B8)) 
    \ALUResult[9]_INST_0_i_5 
       (.I0(\q_reg[3] ),
        .I1(\q_reg[5] [1]),
        .I2(\ALUResult[9]_INST_0_i_2_2 ),
        .I3(\ALUResult[9]_INST_0_i_8_n_0 ),
        .I4(\ALUResult[9]_INST_0_i_2_1 ),
        .I5(\q_reg[5] [0]),
        .O(data7[9]));
  LUT6 #(
    .INIT(64'h000000004777B888)) 
    \ALUResult[9]_INST_0_i_6 
       (.I0(\addressM[11] [1]),
        .I1(\addressM[28] ),
        .I2(rd11),
        .I3(rd10[9]),
        .I4(SrcB[9]),
        .I5(ALUControl__0),
        .O(\ALUResult[9]_INST_0_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \ALUResult[9]_INST_0_i_8 
       (.I0(SrcA[2]),
        .I1(\q_reg[5] [2]),
        .I2(\q_reg[5] [4]),
        .I3(SrcA[6]),
        .I4(\q_reg[5] [3]),
        .O(\ALUResult[9]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \WriteData[0]_INST_0 
       (.I0(Instr[18]),
        .I1(Instr[17]),
        .I2(Instr[15]),
        .I3(Instr[14]),
        .I4(Instr[16]),
        .I5(rd20[0]),
        .O(WriteData[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \WriteData[10]_INST_0 
       (.I0(Instr[18]),
        .I1(Instr[17]),
        .I2(Instr[15]),
        .I3(Instr[14]),
        .I4(Instr[16]),
        .I5(clk_0[5]),
        .O(WriteData[10]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \WriteData[11]_INST_0 
       (.I0(Instr[18]),
        .I1(Instr[17]),
        .I2(Instr[15]),
        .I3(Instr[14]),
        .I4(Instr[16]),
        .I5(rd20[11]),
        .O(WriteData[11]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \WriteData[12]_INST_0 
       (.I0(Instr[18]),
        .I1(Instr[17]),
        .I2(Instr[15]),
        .I3(Instr[14]),
        .I4(Instr[16]),
        .I5(rd20[12]),
        .O(WriteData[12]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \WriteData[13]_INST_0 
       (.I0(Instr[18]),
        .I1(Instr[17]),
        .I2(Instr[15]),
        .I3(Instr[14]),
        .I4(Instr[16]),
        .I5(rd20[13]),
        .O(WriteData[13]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \WriteData[14]_INST_0 
       (.I0(Instr[18]),
        .I1(Instr[17]),
        .I2(Instr[15]),
        .I3(Instr[14]),
        .I4(Instr[16]),
        .I5(rd20[14]),
        .O(WriteData[14]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \WriteData[15]_INST_0 
       (.I0(Instr[18]),
        .I1(Instr[17]),
        .I2(Instr[15]),
        .I3(Instr[14]),
        .I4(Instr[16]),
        .I5(rd20[15]),
        .O(WriteData[15]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \WriteData[16]_INST_0 
       (.I0(Instr[18]),
        .I1(Instr[17]),
        .I2(Instr[15]),
        .I3(Instr[14]),
        .I4(Instr[16]),
        .I5(rd20[16]),
        .O(WriteData[16]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \WriteData[17]_INST_0 
       (.I0(Instr[18]),
        .I1(Instr[17]),
        .I2(Instr[15]),
        .I3(Instr[14]),
        .I4(Instr[16]),
        .I5(rd20[17]),
        .O(WriteData[17]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \WriteData[18]_INST_0 
       (.I0(Instr[18]),
        .I1(Instr[17]),
        .I2(Instr[15]),
        .I3(Instr[14]),
        .I4(Instr[16]),
        .I5(rd20[18]),
        .O(WriteData[18]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \WriteData[19]_INST_0 
       (.I0(Instr[18]),
        .I1(Instr[17]),
        .I2(Instr[15]),
        .I3(Instr[14]),
        .I4(Instr[16]),
        .I5(rd20[19]),
        .O(WriteData[19]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \WriteData[1]_INST_0 
       (.I0(Instr[18]),
        .I1(Instr[17]),
        .I2(Instr[15]),
        .I3(Instr[14]),
        .I4(Instr[16]),
        .I5(rd20[1]),
        .O(WriteData[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \WriteData[20]_INST_0 
       (.I0(Instr[18]),
        .I1(Instr[17]),
        .I2(Instr[15]),
        .I3(Instr[14]),
        .I4(Instr[16]),
        .I5(rd20[20]),
        .O(WriteData[20]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \WriteData[21]_INST_0 
       (.I0(Instr[18]),
        .I1(Instr[17]),
        .I2(Instr[15]),
        .I3(Instr[14]),
        .I4(Instr[16]),
        .I5(rd20[21]),
        .O(WriteData[21]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \WriteData[22]_INST_0 
       (.I0(Instr[18]),
        .I1(Instr[17]),
        .I2(Instr[15]),
        .I3(Instr[14]),
        .I4(Instr[16]),
        .I5(rd20[22]),
        .O(WriteData[22]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \WriteData[23]_INST_0 
       (.I0(Instr[18]),
        .I1(Instr[17]),
        .I2(Instr[15]),
        .I3(Instr[14]),
        .I4(Instr[16]),
        .I5(rd20[23]),
        .O(WriteData[23]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \WriteData[24]_INST_0 
       (.I0(Instr[18]),
        .I1(Instr[17]),
        .I2(Instr[15]),
        .I3(Instr[14]),
        .I4(Instr[16]),
        .I5(rd20[24]),
        .O(WriteData[24]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \WriteData[25]_INST_0 
       (.I0(Instr[18]),
        .I1(Instr[17]),
        .I2(Instr[15]),
        .I3(Instr[14]),
        .I4(Instr[16]),
        .I5(rd20[25]),
        .O(WriteData[25]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \WriteData[26]_INST_0 
       (.I0(Instr[18]),
        .I1(Instr[17]),
        .I2(Instr[15]),
        .I3(Instr[14]),
        .I4(Instr[16]),
        .I5(rd20[26]),
        .O(WriteData[26]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \WriteData[27]_INST_0 
       (.I0(Instr[18]),
        .I1(Instr[17]),
        .I2(Instr[15]),
        .I3(Instr[14]),
        .I4(Instr[16]),
        .I5(rd20[27]),
        .O(WriteData[27]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \WriteData[28]_INST_0 
       (.I0(Instr[18]),
        .I1(Instr[17]),
        .I2(Instr[15]),
        .I3(Instr[14]),
        .I4(Instr[16]),
        .I5(rd20[28]),
        .O(WriteData[28]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \WriteData[29]_INST_0 
       (.I0(Instr[18]),
        .I1(Instr[17]),
        .I2(Instr[15]),
        .I3(Instr[14]),
        .I4(Instr[16]),
        .I5(rd20[29]),
        .O(WriteData[29]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \WriteData[2]_INST_0 
       (.I0(Instr[18]),
        .I1(Instr[17]),
        .I2(Instr[15]),
        .I3(Instr[14]),
        .I4(Instr[16]),
        .I5(rd20[2]),
        .O(WriteData[2]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \WriteData[30]_INST_0 
       (.I0(Instr[18]),
        .I1(Instr[17]),
        .I2(Instr[15]),
        .I3(Instr[14]),
        .I4(Instr[16]),
        .I5(rd20[30]),
        .O(WriteData[30]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \WriteData[31]_INST_0 
       (.I0(Instr[18]),
        .I1(Instr[17]),
        .I2(Instr[15]),
        .I3(Instr[14]),
        .I4(Instr[16]),
        .I5(clk_0[6]),
        .O(WriteData[31]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \WriteData[3]_INST_0 
       (.I0(Instr[18]),
        .I1(Instr[17]),
        .I2(Instr[15]),
        .I3(Instr[14]),
        .I4(Instr[16]),
        .I5(rd20[3]),
        .O(WriteData[3]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \WriteData[4]_INST_0 
       (.I0(Instr[18]),
        .I1(Instr[17]),
        .I2(Instr[15]),
        .I3(Instr[14]),
        .I4(Instr[16]),
        .I5(rd20[4]),
        .O(WriteData[4]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \WriteData[5]_INST_0 
       (.I0(Instr[18]),
        .I1(Instr[17]),
        .I2(Instr[15]),
        .I3(Instr[14]),
        .I4(Instr[16]),
        .I5(clk_0[0]),
        .O(WriteData[5]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \WriteData[6]_INST_0 
       (.I0(Instr[18]),
        .I1(Instr[17]),
        .I2(Instr[15]),
        .I3(Instr[14]),
        .I4(Instr[16]),
        .I5(clk_0[1]),
        .O(WriteData[6]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \WriteData[7]_INST_0 
       (.I0(Instr[18]),
        .I1(Instr[17]),
        .I2(Instr[15]),
        .I3(Instr[14]),
        .I4(Instr[16]),
        .I5(clk_0[2]),
        .O(WriteData[7]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \WriteData[8]_INST_0 
       (.I0(Instr[18]),
        .I1(Instr[17]),
        .I2(Instr[15]),
        .I3(Instr[14]),
        .I4(Instr[16]),
        .I5(clk_0[3]),
        .O(WriteData[8]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \WriteData[9]_INST_0 
       (.I0(Instr[18]),
        .I1(Instr[17]),
        .I2(Instr[15]),
        .I3(Instr[14]),
        .I4(Instr[16]),
        .I5(clk_0[4]),
        .O(WriteData[9]));
  LUT6 #(
    .INIT(64'hFB08080804F7F7F7)) 
    carried_carry__0_i_4
       (.I0(sum_carry__0[0]),
        .I1(Instr[0]),
        .I2(Instr[2]),
        .I3(rd11),
        .I4(rd10[4]),
        .I5(\q_reg[5] [4]),
        .O(\q_reg[4] ));
  LUT6 #(
    .INIT(64'hFB08080804F7F7F7)) 
    carried_carry__1_i_1
       (.I0(\addressM[11] [3]),
        .I1(Instr[0]),
        .I2(Instr[2]),
        .I3(rd11),
        .I4(rd10[11]),
        .I5(\q_reg[5] [9]),
        .O(\q_reg[11]_1 ));
  LUT6 #(
    .INIT(64'hFB08080804F7F7F7)) 
    carried_carry__2_i_1
       (.I0(sum_carry__2[3]),
        .I1(Instr[0]),
        .I2(Instr[2]),
        .I3(rd11),
        .I4(rd10[15]),
        .I5(\q_reg[5] [13]),
        .O(\q_reg[15]_0 [3]));
  LUT6 #(
    .INIT(64'hFB08080804F7F7F7)) 
    carried_carry__2_i_2
       (.I0(sum_carry__2[2]),
        .I1(Instr[0]),
        .I2(Instr[2]),
        .I3(rd11),
        .I4(rd10[14]),
        .I5(\q_reg[5] [12]),
        .O(\q_reg[15]_0 [2]));
  LUT6 #(
    .INIT(64'hFB08080804F7F7F7)) 
    carried_carry__2_i_3
       (.I0(sum_carry__2[1]),
        .I1(Instr[0]),
        .I2(Instr[2]),
        .I3(rd11),
        .I4(rd10[13]),
        .I5(\q_reg[5] [11]),
        .O(\q_reg[15]_0 [1]));
  LUT6 #(
    .INIT(64'hFB08080804F7F7F7)) 
    carried_carry__2_i_4
       (.I0(sum_carry__2[0]),
        .I1(Instr[0]),
        .I2(Instr[2]),
        .I3(rd11),
        .I4(rd10[12]),
        .I5(\q_reg[5] [10]),
        .O(\q_reg[15]_0 [0]));
  LUT6 #(
    .INIT(64'hFB08080804F7F7F7)) 
    carried_carry__3_i_1
       (.I0(sum_carry__3[3]),
        .I1(Instr[0]),
        .I2(Instr[2]),
        .I3(rd11),
        .I4(rd10[19]),
        .I5(SrcB[19]),
        .O(\q_reg[19]_0 [3]));
  LUT6 #(
    .INIT(64'hFB08080804F7F7F7)) 
    carried_carry__3_i_2
       (.I0(sum_carry__3[2]),
        .I1(Instr[0]),
        .I2(Instr[2]),
        .I3(rd11),
        .I4(rd10[18]),
        .I5(SrcB[18]),
        .O(\q_reg[19]_0 [2]));
  LUT6 #(
    .INIT(64'hFB08080804F7F7F7)) 
    carried_carry__3_i_3
       (.I0(sum_carry__3[1]),
        .I1(Instr[0]),
        .I2(Instr[2]),
        .I3(rd11),
        .I4(rd10[17]),
        .I5(SrcB[17]),
        .O(\q_reg[19]_0 [1]));
  LUT6 #(
    .INIT(64'hFB08080804F7F7F7)) 
    carried_carry__3_i_4
       (.I0(sum_carry__3[0]),
        .I1(Instr[0]),
        .I2(Instr[2]),
        .I3(rd11),
        .I4(rd10[16]),
        .I5(SrcB[16]),
        .O(\q_reg[19]_0 [0]));
  LUT6 #(
    .INIT(64'hFB08080804F7F7F7)) 
    carried_carry__4_i_1
       (.I0(\addressM[23]_2 [3]),
        .I1(Instr[0]),
        .I2(Instr[2]),
        .I3(rd11),
        .I4(rd10[23]),
        .I5(SrcB[23]),
        .O(\q_reg[23]_0 [3]));
  LUT6 #(
    .INIT(64'hFB08080804F7F7F7)) 
    carried_carry__4_i_2
       (.I0(\addressM[23]_2 [2]),
        .I1(Instr[0]),
        .I2(Instr[2]),
        .I3(rd11),
        .I4(rd10[22]),
        .I5(SrcB[22]),
        .O(\q_reg[23]_0 [2]));
  LUT6 #(
    .INIT(64'hFB08080804F7F7F7)) 
    carried_carry__4_i_3
       (.I0(\addressM[23]_2 [1]),
        .I1(Instr[0]),
        .I2(Instr[2]),
        .I3(rd11),
        .I4(rd10[21]),
        .I5(SrcB[21]),
        .O(\q_reg[23]_0 [1]));
  LUT6 #(
    .INIT(64'hFB08080804F7F7F7)) 
    carried_carry__4_i_4
       (.I0(\addressM[23]_2 [0]),
        .I1(Instr[0]),
        .I2(Instr[2]),
        .I3(rd11),
        .I4(rd10[20]),
        .I5(SrcB[20]),
        .O(\q_reg[23]_0 [0]));
  LUT6 #(
    .INIT(64'hFB08080804F7F7F7)) 
    carried_carry__5_i_1
       (.I0(\addressM[27]_1 [3]),
        .I1(Instr[0]),
        .I2(Instr[2]),
        .I3(rd11),
        .I4(rd10[27]),
        .I5(SrcB[27]),
        .O(\q_reg[27]_2 [3]));
  LUT6 #(
    .INIT(64'hFB08080804F7F7F7)) 
    carried_carry__5_i_2
       (.I0(\addressM[27]_1 [2]),
        .I1(Instr[0]),
        .I2(Instr[2]),
        .I3(rd11),
        .I4(rd10[26]),
        .I5(SrcB[26]),
        .O(\q_reg[27]_2 [2]));
  LUT6 #(
    .INIT(64'hFB08080804F7F7F7)) 
    carried_carry__5_i_3
       (.I0(\addressM[27]_1 [1]),
        .I1(Instr[0]),
        .I2(Instr[2]),
        .I3(rd11),
        .I4(rd10[25]),
        .I5(SrcB[25]),
        .O(\q_reg[27]_2 [1]));
  LUT6 #(
    .INIT(64'hFB08080804F7F7F7)) 
    carried_carry__5_i_4
       (.I0(\addressM[27]_1 [0]),
        .I1(Instr[0]),
        .I2(Instr[2]),
        .I3(rd11),
        .I4(rd10[24]),
        .I5(SrcB[24]),
        .O(\q_reg[27]_2 [0]));
  LUT6 #(
    .INIT(64'hFB08080804F7F7F7)) 
    carried_carry__6_i_3
       (.I0(sum_carry__6[2]),
        .I1(Instr[0]),
        .I2(Instr[2]),
        .I3(rd11),
        .I4(rd10[30]),
        .I5(\q_reg[5] [15]),
        .O(\q_reg[30]_2 [2]));
  LUT6 #(
    .INIT(64'hFB08080804F7F7F7)) 
    carried_carry__6_i_4
       (.I0(sum_carry__6[1]),
        .I1(Instr[0]),
        .I2(Instr[2]),
        .I3(rd11),
        .I4(rd10[29]),
        .I5(\q_reg[5] [14]),
        .O(\q_reg[30]_2 [1]));
  LUT6 #(
    .INIT(64'hFB08080804F7F7F7)) 
    carried_carry__6_i_5
       (.I0(sum_carry__6[0]),
        .I1(Instr[0]),
        .I2(Instr[2]),
        .I3(rd11),
        .I4(rd10[28]),
        .I5(SrcB[28]),
        .O(\q_reg[30]_2 [0]));
  LUT6 #(
    .INIT(64'hFB08080804F7F7F7)) 
    carried_carry_i_1
       (.I0(sum_carry[3]),
        .I1(Instr[0]),
        .I2(Instr[2]),
        .I3(rd11),
        .I4(rd10[3]),
        .I5(\q_reg[5] [3]),
        .O(\q_reg[3]_0 [3]));
  LUT6 #(
    .INIT(64'hFB08080804F7F7F7)) 
    carried_carry_i_2
       (.I0(sum_carry[2]),
        .I1(Instr[0]),
        .I2(Instr[2]),
        .I3(rd11),
        .I4(rd10[2]),
        .I5(\q_reg[5] [2]),
        .O(\q_reg[3]_0 [2]));
  LUT6 #(
    .INIT(64'hFB08080804F7F7F7)) 
    carried_carry_i_3
       (.I0(sum_carry[1]),
        .I1(Instr[0]),
        .I2(Instr[2]),
        .I3(rd11),
        .I4(rd10[1]),
        .I5(\q_reg[5] [1]),
        .O(\q_reg[3]_0 [1]));
  LUT6 #(
    .INIT(64'hFB08080804F7F7F7)) 
    carried_carry_i_4
       (.I0(sum_carry[0]),
        .I1(Instr[0]),
        .I2(Instr[2]),
        .I3(rd11),
        .I4(rd10[0]),
        .I5(\q_reg[5] [0]),
        .O(\q_reg[3]_0 [0]));
  LUT5 #(
    .INIT(32'h00053305)) 
    \q[0]_i_10 
       (.I0(\ALUResult[2]_INST_0_i_1_n_0 ),
        .I1(\ALUResult[2]_INST_0_i_2_n_0 ),
        .I2(\ALUResult[3]_INST_0_i_1_n_0 ),
        .I3(ALUControl[2]),
        .I4(\ALUResult[3]_INST_0_i_2_n_0 ),
        .O(\ALUResult[3]_INST_0_i_2_0 ));
  LUT5 #(
    .INIT(32'h00053305)) 
    \q[0]_i_11 
       (.I0(\q[0]_i_5 ),
        .I1(\q[0]_i_5_0 ),
        .I2(\ALUResult[1]_INST_0_i_1_n_0 ),
        .I3(ALUControl[2]),
        .I4(\ALUResult[1]_INST_0_i_2_n_0 ),
        .O(\ALUResult[1]_INST_0_i_2_0 ));
  LUT5 #(
    .INIT(32'h00053305)) 
    \q[0]_i_12 
       (.I0(\q[0]_i_6 ),
        .I1(\ALUResult[31]_INST_0_i_12 ),
        .I2(\q_reg[0]_i_21_n_0 ),
        .I3(ALUControl[2]),
        .I4(\q[0]_i_6_0 ),
        .O(\ALUResult[11]_INST_0_i_1 ));
  LUT5 #(
    .INIT(32'h00053305)) 
    \q[0]_i_13 
       (.I0(\ALUResult[8]_INST_0_i_1_n_0 ),
        .I1(\ALUResult[8]_INST_0_i_2_n_0 ),
        .I2(\ALUResult[9]_INST_0_i_1_n_0 ),
        .I3(ALUControl[2]),
        .I4(\ALUResult[9]_INST_0_i_2_n_0 ),
        .O(\ALUResult[9]_INST_0_i_2_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \q[0]_i_14 
       (.I0(ALUResult[13]),
        .I1(ALUResult[12]),
        .I2(ALUResult[15]),
        .I3(ALUResult[14]),
        .O(\q[0]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h00000000111DDD1D)) 
    \q[0]_i_16 
       (.I0(\ALUResult[22]_INST_0_i_4_n_0 ),
        .I1(ALUControl[2]),
        .I2(\ALUResult[22]_INST_0_i_3_n_0 ),
        .I3(ALUControl[1]),
        .I4(\ALUResult[22]_INST_0_i_1_n_0 ),
        .I5(ALUResult[11]),
        .O(\q[0]_i_16_n_0 ));
  LUT5 #(
    .INIT(32'hFFFACCFA)) 
    \q[0]_i_17 
       (.I0(\ALUResult[20]_INST_0_i_3_n_0 ),
        .I1(\q[0]_i_7_0 ),
        .I2(\ALUResult[21]_INST_0_i_3_n_0 ),
        .I3(ALUControl[2]),
        .I4(\q_reg[0]_i_23_n_0 ),
        .O(\q[0]_i_17_n_0 ));
  LUT5 #(
    .INIT(32'h00053305)) 
    \q[0]_i_18 
       (.I0(\ALUResult[18]_INST_0_i_1_n_0 ),
        .I1(\addressM[18] ),
        .I2(\ALUResult[19]_INST_0_i_1_n_0 ),
        .I3(ALUControl[2]),
        .I4(\addressM[19] ),
        .O(\q[0]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000400000)) 
    \q[0]_i_7 
       (.I0(\q[0]_i_14_n_0 ),
        .I1(\q[0]_i_3 ),
        .I2(\q[0]_i_16_n_0 ),
        .I3(\q[0]_i_17_n_0 ),
        .I4(\q[0]_i_18_n_0 ),
        .I5(\q[0]_i_3_0 ),
        .O(\q[0]_i_19 ));
  LUT5 #(
    .INIT(32'hACCCCCCC)) 
    \q[12]_i_9 
       (.I0(ALUResult[4]),
        .I1(d0[4]),
        .I2(Instr[0]),
        .I3(Instr[2]),
        .I4(Instr[3]),
        .O(\q_reg[27]_0 [4]));
  LUT5 #(
    .INIT(32'hACCCCCCC)) 
    \q[20]_i_6 
       (.I0(ALUResult[8]),
        .I1(d0[8]),
        .I2(Instr[0]),
        .I3(Instr[2]),
        .I4(Instr[3]),
        .O(\q_reg[27]_0 [8]));
  LUT5 #(
    .INIT(32'hACCCCCCC)) 
    \q[20]_i_7 
       (.I0(ALUResult[7]),
        .I1(d0[7]),
        .I2(Instr[0]),
        .I3(Instr[2]),
        .I4(Instr[3]),
        .O(\q_reg[27]_0 [7]));
  LUT5 #(
    .INIT(32'hACCCCCCC)) 
    \q[20]_i_8 
       (.I0(ALUResult[6]),
        .I1(d0[6]),
        .I2(Instr[0]),
        .I3(Instr[2]),
        .I4(Instr[3]),
        .O(\q_reg[27]_0 [6]));
  LUT5 #(
    .INIT(32'hACCCCCCC)) 
    \q[20]_i_9 
       (.I0(ALUResult[5]),
        .I1(d0[5]),
        .I2(Instr[0]),
        .I3(Instr[2]),
        .I4(Instr[3]),
        .O(\q_reg[27]_0 [5]));
  LUT5 #(
    .INIT(32'hACCCCCCC)) 
    \q[24]_i_6 
       (.I0(ALUResult[12]),
        .I1(d0[12]),
        .I2(Instr[0]),
        .I3(Instr[2]),
        .I4(Instr[3]),
        .O(\q_reg[27]_0 [12]));
  LUT5 #(
    .INIT(32'hACCCCCCC)) 
    \q[24]_i_7 
       (.I0(ALUResult[11]),
        .I1(d0[11]),
        .I2(Instr[0]),
        .I3(Instr[2]),
        .I4(Instr[3]),
        .O(\q_reg[27]_0 [11]));
  LUT5 #(
    .INIT(32'hACCCCCCC)) 
    \q[24]_i_8 
       (.I0(ALUResult[10]),
        .I1(d0[10]),
        .I2(Instr[0]),
        .I3(Instr[2]),
        .I4(Instr[3]),
        .O(\q_reg[27]_0 [10]));
  LUT5 #(
    .INIT(32'hACCCCCCC)) 
    \q[24]_i_9 
       (.I0(ALUResult[9]),
        .I1(d0[9]),
        .I2(Instr[0]),
        .I3(Instr[2]),
        .I4(Instr[3]),
        .O(\q_reg[27]_0 [9]));
  LUT5 #(
    .INIT(32'hACCCCCCC)) 
    \q[28]_i_7 
       (.I0(ALUResult[15]),
        .I1(d0[15]),
        .I2(Instr[0]),
        .I3(Instr[2]),
        .I4(Instr[3]),
        .O(\q_reg[27]_0 [15]));
  LUT5 #(
    .INIT(32'hACCCCCCC)) 
    \q[28]_i_8 
       (.I0(ALUResult[14]),
        .I1(d0[14]),
        .I2(Instr[0]),
        .I3(Instr[2]),
        .I4(Instr[3]),
        .O(\q_reg[27]_0 [14]));
  LUT5 #(
    .INIT(32'hACCCCCCC)) 
    \q[28]_i_9 
       (.I0(ALUResult[13]),
        .I1(d0[13]),
        .I2(Instr[0]),
        .I3(Instr[2]),
        .I4(Instr[3]),
        .O(\q_reg[27]_0 [13]));
  LUT5 #(
    .INIT(32'hACCCCCCC)) 
    \q[4]_i_10 
       (.I0(ALUResult[0]),
        .I1(d0[0]),
        .I2(Instr[0]),
        .I3(Instr[2]),
        .I4(Instr[3]),
        .O(\q_reg[27]_0 [0]));
  LUT5 #(
    .INIT(32'hACCCCCCC)) 
    \q[4]_i_7 
       (.I0(ALUResult[1]),
        .I1(d0[1]),
        .I2(Instr[0]),
        .I3(Instr[2]),
        .I4(Instr[3]),
        .O(\q_reg[27]_0 [1]));
  LUT5 #(
    .INIT(32'hACCCCCCC)) 
    \q[4]_i_9 
       (.I0(ALUResult[2]),
        .I1(d0[2]),
        .I2(Instr[0]),
        .I3(Instr[2]),
        .I4(Instr[3]),
        .O(\q_reg[27]_0 [2]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'hACCCCCCC)) 
    \q[8]_i_6 
       (.I0(ALUResult[3]),
        .I1(d0[3]),
        .I2(Instr[0]),
        .I3(Instr[2]),
        .I4(Instr[3]),
        .O(\q_reg[27]_0 [3]));
  MUXF7 \q_reg[0]_i_21 
       (.I0(\q_reg[11] ),
        .I1(\q[0]_i_12_0 ),
        .O(\q_reg[0]_i_21_n_0 ),
        .S(\addressM[23] ));
  MUXF7 \q_reg[0]_i_23 
       (.I0(\ALUResult[21]_INST_0_i_2_n_0 ),
        .I1(\ALUResult[21]_INST_0_i_1_n_0 ),
        .O(\q_reg[0]_i_23_n_0 ),
        .S(ALUControl[1]));
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
       (.ADDRA(Instr[13:9]),
        .ADDRB(Instr[13:9]),
        .ADDRC(Instr[13:9]),
        .ADDRD(Instr[8:4]),
        .DIA(wd3[1:0]),
        .DIB(wd3[3:2]),
        .DIC(wd3[5:4]),
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
       (.I0(Instr[2]),
        .I1(Instr[0]),
        .I2(Instr[1]),
        .O(we3));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h8)) 
    rf_reg_r1_0_31_0_5_i_8
       (.I0(Instr[0]),
        .I1(Instr[3]),
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
       (.ADDRA(Instr[13:9]),
        .ADDRB(Instr[13:9]),
        .ADDRC(Instr[13:9]),
        .ADDRD(Instr[8:4]),
        .DIA(wd3[13:12]),
        .DIB(wd3[15:14]),
        .DIC(wd3[17:16]),
        .DID({1'b0,1'b0}),
        .DOA(rd10[13:12]),
        .DOB(rd10[15:14]),
        .DOC(rd10[17:16]),
        .DOD(NLW_rf_reg_r1_0_31_12_17_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(we3));
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
       (.ADDRA(Instr[13:9]),
        .ADDRB(Instr[13:9]),
        .ADDRC(Instr[13:9]),
        .ADDRD(Instr[8:4]),
        .DIA(wd3[19:18]),
        .DIB(wd3[21:20]),
        .DIC(wd3[23:22]),
        .DID({1'b0,1'b0}),
        .DOA(rd10[19:18]),
        .DOB(rd10[21:20]),
        .DOC(rd10[23:22]),
        .DOD(NLW_rf_reg_r1_0_31_18_23_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(we3));
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
       (.ADDRA(Instr[13:9]),
        .ADDRB(Instr[13:9]),
        .ADDRC(Instr[13:9]),
        .ADDRD(Instr[8:4]),
        .DIA(wd3[25:24]),
        .DIB(wd3[27:26]),
        .DIC(wd3[29:28]),
        .DID({1'b0,1'b0}),
        .DOA(rd10[25:24]),
        .DOB(rd10[27:26]),
        .DOC(rd10[29:28]),
        .DOD(NLW_rf_reg_r1_0_31_24_29_DOD_UNCONNECTED[1:0]),
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
  RAM32X1D rf_reg_r1_0_31_30_31
       (.A0(Instr[4]),
        .A1(Instr[5]),
        .A2(Instr[6]),
        .A3(Instr[7]),
        .A4(Instr[8]),
        .D(wd3[30]),
        .DPO(rd10[30]),
        .DPRA0(Instr[9]),
        .DPRA1(Instr[10]),
        .DPRA2(Instr[11]),
        .DPRA3(Instr[12]),
        .DPRA4(Instr[13]),
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
       (.A0(Instr[4]),
        .A1(Instr[5]),
        .A2(Instr[6]),
        .A3(Instr[7]),
        .A4(Instr[8]),
        .D(wd3[31]),
        .DPO(rd10[31]),
        .DPRA0(Instr[9]),
        .DPRA1(Instr[10]),
        .DPRA2(Instr[11]),
        .DPRA3(Instr[12]),
        .DPRA4(Instr[13]),
        .SPO(NLW_rf_reg_r1_0_31_30_31__0_SPO_UNCONNECTED),
        .WCLK(clk),
        .WE(we3));
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
       (.ADDRA(Instr[13:9]),
        .ADDRB(Instr[13:9]),
        .ADDRC(Instr[13:9]),
        .ADDRD(Instr[8:4]),
        .DIA(wd3[7:6]),
        .DIB(wd3[9:8]),
        .DIC(wd3[11:10]),
        .DID({1'b0,1'b0}),
        .DOA(rd10[7:6]),
        .DOB(rd10[9:8]),
        .DOC(rd10[11:10]),
        .DOD(NLW_rf_reg_r1_0_31_6_11_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(we3));
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
       (.ADDRA(Instr[18:14]),
        .ADDRB(Instr[18:14]),
        .ADDRC(Instr[18:14]),
        .ADDRD(Instr[8:4]),
        .DIA(wd3[1:0]),
        .DIB(wd3[3:2]),
        .DIC(wd3[5:4]),
        .DID({1'b0,1'b0}),
        .DOA(rd20[1:0]),
        .DOB(rd20[3:2]),
        .DOC({clk_0[0],rd20[4]}),
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
       (.ADDRA(Instr[18:14]),
        .ADDRB(Instr[18:14]),
        .ADDRC(Instr[18:14]),
        .ADDRD(Instr[8:4]),
        .DIA(wd3[13:12]),
        .DIB(wd3[15:14]),
        .DIC(wd3[17:16]),
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
       (.ADDRA(Instr[18:14]),
        .ADDRB(Instr[18:14]),
        .ADDRC(Instr[18:14]),
        .ADDRD(Instr[8:4]),
        .DIA(wd3[19:18]),
        .DIB(wd3[21:20]),
        .DIC(wd3[23:22]),
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
       (.ADDRA(Instr[18:14]),
        .ADDRB(Instr[18:14]),
        .ADDRC(Instr[18:14]),
        .ADDRD(Instr[8:4]),
        .DIA(wd3[25:24]),
        .DIB(wd3[27:26]),
        .DIC(wd3[29:28]),
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
       (.A0(Instr[4]),
        .A1(Instr[5]),
        .A2(Instr[6]),
        .A3(Instr[7]),
        .A4(Instr[8]),
        .D(wd3[30]),
        .DPO(rd20[30]),
        .DPRA0(Instr[14]),
        .DPRA1(Instr[15]),
        .DPRA2(Instr[16]),
        .DPRA3(Instr[17]),
        .DPRA4(Instr[18]),
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
       (.A0(Instr[4]),
        .A1(Instr[5]),
        .A2(Instr[6]),
        .A3(Instr[7]),
        .A4(Instr[8]),
        .D(wd3[31]),
        .DPO(clk_0[6]),
        .DPRA0(Instr[14]),
        .DPRA1(Instr[15]),
        .DPRA2(Instr[16]),
        .DPRA3(Instr[17]),
        .DPRA4(Instr[18]),
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
       (.ADDRA(Instr[18:14]),
        .ADDRB(Instr[18:14]),
        .ADDRC(Instr[18:14]),
        .ADDRD(Instr[8:4]),
        .DIA(wd3[7:6]),
        .DIB(wd3[9:8]),
        .DIC(wd3[11:10]),
        .DID({1'b0,1'b0}),
        .DOA(clk_0[2:1]),
        .DOB(clk_0[4:3]),
        .DOC({rd20[11],clk_0[5]}),
        .DOD(NLW_rf_reg_r2_0_31_6_11_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(we3));
  LUT4 #(
    .INIT(16'h2F02)) 
    sltuOut_carry__0_i_1
       (.I0(\q_reg[5] [12]),
        .I1(SrcA[14]),
        .I2(SrcA[15]),
        .I3(\q_reg[5] [13]),
        .O(\q_reg[14] [3]));
  LUT6 #(
    .INIT(64'h6A556A6A6AAA6A6A)) 
    sltuOut_carry__0_i_10
       (.I0(\q_reg[5] [11]),
        .I1(rd10[13]),
        .I2(rd11),
        .I3(Instr[2]),
        .I4(Instr[0]),
        .I5(sum_carry__2[1]),
        .O(\q_reg[16] [1]));
  LUT6 #(
    .INIT(64'hF707F7F708F80808)) 
    sltuOut_carry__0_i_11
       (.I0(clk_0[4]),
        .I1(rd21),
        .I2(ALUSrc),
        .I3(\ALUResult[30]_INST_0_i_2 ),
        .I4(Instr[23]),
        .I5(SrcA[9]),
        .O(\alu/xorOut__31 [9]));
  LUT4 #(
    .INIT(16'h2F02)) 
    sltuOut_carry__0_i_2
       (.I0(\q_reg[5] [10]),
        .I1(SrcA[12]),
        .I2(SrcA[13]),
        .I3(\q_reg[5] [11]),
        .O(\q_reg[14] [2]));
  LUT4 #(
    .INIT(16'h2F02)) 
    sltuOut_carry__0_i_3
       (.I0(\q_reg[5] [8]),
        .I1(SrcA[10]),
        .I2(SrcA[11]),
        .I3(\q_reg[5] [9]),
        .O(\q_reg[14] [1]));
  LUT4 #(
    .INIT(16'h2F02)) 
    sltuOut_carry__0_i_4
       (.I0(SrcB[8]),
        .I1(SrcA[8]),
        .I2(SrcA[9]),
        .I3(SrcB[9]),
        .O(\q_reg[14] [0]));
  LUT6 #(
    .INIT(64'h00000000B8884777)) 
    sltuOut_carry__0_i_5
       (.I0(sum_carry__2[2]),
        .I1(\addressM[28] ),
        .I2(rd11),
        .I3(rd10[14]),
        .I4(\q_reg[5] [12]),
        .I5(\q_reg[16] [2]),
        .O(\q_reg[14]_0 [3]));
  LUT6 #(
    .INIT(64'h00000000B8884777)) 
    sltuOut_carry__0_i_6
       (.I0(sum_carry__2[0]),
        .I1(\addressM[28] ),
        .I2(rd11),
        .I3(rd10[12]),
        .I4(\q_reg[5] [10]),
        .I5(\q_reg[16] [1]),
        .O(\q_reg[14]_0 [2]));
  LUT6 #(
    .INIT(64'h00000000B8884777)) 
    sltuOut_carry__0_i_7
       (.I0(\addressM[11] [2]),
        .I1(\addressM[28] ),
        .I2(rd11),
        .I3(rd10[10]),
        .I4(\q_reg[5] [8]),
        .I5(\q_reg[16] [0]),
        .O(\q_reg[14]_0 [1]));
  LUT6 #(
    .INIT(64'h00000000B8884777)) 
    sltuOut_carry__0_i_8
       (.I0(\addressM[11] [0]),
        .I1(\addressM[28] ),
        .I2(rd11),
        .I3(rd10[8]),
        .I4(SrcB[8]),
        .I5(\alu/xorOut__31 [9]),
        .O(\q_reg[14]_0 [0]));
  LUT6 #(
    .INIT(64'h6A556A6A6AAA6A6A)) 
    sltuOut_carry__0_i_9
       (.I0(\q_reg[5] [13]),
        .I1(rd10[15]),
        .I2(rd11),
        .I3(Instr[2]),
        .I4(Instr[0]),
        .I5(sum_carry__2[3]),
        .O(\q_reg[16] [2]));
  LUT4 #(
    .INIT(16'h2F02)) 
    sltuOut_carry__1_i_1
       (.I0(SrcB[22]),
        .I1(SrcA[22]),
        .I2(SrcA[23]),
        .I3(SrcB[23]),
        .O(\q_reg[22] [3]));
  LUT6 #(
    .INIT(64'h6A556A6A6AAA6A6A)) 
    sltuOut_carry__1_i_10
       (.I0(SrcB[19]),
        .I1(rd10[19]),
        .I2(rd11),
        .I3(Instr[2]),
        .I4(Instr[0]),
        .I5(sum_carry__3[3]),
        .O(\alu/xorOut__31 [19]));
  LUT6 #(
    .INIT(64'h6A556A6A6AAA6A6A)) 
    sltuOut_carry__1_i_11
       (.I0(SrcB[17]),
        .I1(rd10[17]),
        .I2(rd11),
        .I3(Instr[2]),
        .I4(Instr[0]),
        .I5(sum_carry__3[1]),
        .O(\alu/xorOut__31 [17]));
  LUT4 #(
    .INIT(16'h2F02)) 
    sltuOut_carry__1_i_2
       (.I0(SrcB[20]),
        .I1(SrcA[20]),
        .I2(SrcA[21]),
        .I3(SrcB[21]),
        .O(\q_reg[22] [2]));
  LUT4 #(
    .INIT(16'h2F02)) 
    sltuOut_carry__1_i_3
       (.I0(SrcB[18]),
        .I1(SrcA[18]),
        .I2(SrcA[19]),
        .I3(SrcB[19]),
        .O(\q_reg[22] [1]));
  LUT4 #(
    .INIT(16'h2F02)) 
    sltuOut_carry__1_i_4
       (.I0(SrcB[16]),
        .I1(SrcA[16]),
        .I2(SrcA[17]),
        .I3(SrcB[17]),
        .O(\q_reg[22] [0]));
  LUT6 #(
    .INIT(64'h00000000B8884777)) 
    sltuOut_carry__1_i_5
       (.I0(\addressM[23]_2 [2]),
        .I1(\addressM[28] ),
        .I2(rd11),
        .I3(rd10[22]),
        .I4(SrcB[22]),
        .I5(\alu/xorOut__31 [23]),
        .O(\q_reg[22]_0 [3]));
  LUT6 #(
    .INIT(64'h00000000B8884777)) 
    sltuOut_carry__1_i_6
       (.I0(\addressM[23]_2 [0]),
        .I1(\addressM[28] ),
        .I2(rd11),
        .I3(rd10[20]),
        .I4(SrcB[20]),
        .I5(\alu/xorOut__31 [21]),
        .O(\q_reg[22]_0 [2]));
  LUT6 #(
    .INIT(64'h00000000B8884777)) 
    sltuOut_carry__1_i_7
       (.I0(sum_carry__3[2]),
        .I1(\addressM[28] ),
        .I2(rd11),
        .I3(rd10[18]),
        .I4(SrcB[18]),
        .I5(\alu/xorOut__31 [19]),
        .O(\q_reg[22]_0 [1]));
  LUT6 #(
    .INIT(64'h00000000B8884777)) 
    sltuOut_carry__1_i_8
       (.I0(sum_carry__3[0]),
        .I1(\addressM[28] ),
        .I2(rd11),
        .I3(rd10[16]),
        .I4(SrcB[16]),
        .I5(\alu/xorOut__31 [17]),
        .O(\q_reg[22]_0 [0]));
  LUT6 #(
    .INIT(64'h6A556A6A6AAA6A6A)) 
    sltuOut_carry__1_i_9
       (.I0(SrcB[21]),
        .I1(rd10[21]),
        .I2(rd11),
        .I3(Instr[2]),
        .I4(Instr[0]),
        .I5(\addressM[23]_2 [1]),
        .O(\alu/xorOut__31 [21]));
  LUT4 #(
    .INIT(16'h2F02)) 
    sltuOut_carry__2_i_1
       (.I0(\q_reg[5] [15]),
        .I1(SrcA[30]),
        .I2(SrcA[31]),
        .I3(\q_reg[5] [16]),
        .O(\q_reg[30]_0 [3]));
  LUT4 #(
    .INIT(16'h2F02)) 
    sltuOut_carry__2_i_2
       (.I0(SrcB[28]),
        .I1(SrcA[28]),
        .I2(SrcA[29]),
        .I3(\q_reg[5] [14]),
        .O(\q_reg[30]_0 [2]));
  LUT4 #(
    .INIT(16'h2F02)) 
    sltuOut_carry__2_i_3
       (.I0(SrcB[26]),
        .I1(SrcA[26]),
        .I2(SrcA[27]),
        .I3(SrcB[27]),
        .O(\q_reg[30]_0 [1]));
  LUT4 #(
    .INIT(16'h2F02)) 
    sltuOut_carry__2_i_4
       (.I0(SrcB[24]),
        .I1(SrcA[24]),
        .I2(SrcA[25]),
        .I3(SrcB[25]),
        .O(\q_reg[30]_0 [0]));
  LUT6 #(
    .INIT(64'h00000000B8884777)) 
    sltuOut_carry__2_i_6
       (.I0(sum_carry__6[0]),
        .I1(\addressM[28] ),
        .I2(rd11),
        .I3(rd10[28]),
        .I4(SrcB[28]),
        .I5(\alu/xorOut__31 [29]),
        .O(\q_reg[28]_1 [2]));
  LUT6 #(
    .INIT(64'h00000000B8884777)) 
    sltuOut_carry__2_i_7
       (.I0(\addressM[27]_1 [2]),
        .I1(\addressM[28] ),
        .I2(rd11),
        .I3(rd10[26]),
        .I4(SrcB[26]),
        .I5(\alu/xorOut__31 [27]),
        .O(\q_reg[28]_1 [1]));
  LUT6 #(
    .INIT(64'h00000000B8884777)) 
    sltuOut_carry__2_i_8
       (.I0(\addressM[27]_1 [0]),
        .I1(\addressM[28] ),
        .I2(rd11),
        .I3(rd10[24]),
        .I4(SrcB[24]),
        .I5(\alu/xorOut__31 [25]),
        .O(\q_reg[28]_1 [0]));
  LUT6 #(
    .INIT(64'h6A556A6A6AAA6A6A)) 
    sltuOut_carry__2_i_9
       (.I0(\q_reg[5] [14]),
        .I1(rd10[29]),
        .I2(rd11),
        .I3(Instr[2]),
        .I4(Instr[0]),
        .I5(sum_carry__6[1]),
        .O(\alu/xorOut__31 [29]));
  LUT4 #(
    .INIT(16'h2F02)) 
    sltuOut_carry_i_1
       (.I0(\q_reg[5] [6]),
        .I1(SrcA[6]),
        .I2(SrcA[7]),
        .I3(\q_reg[5] [7]),
        .O(DI[3]));
  LUT6 #(
    .INIT(64'hF707F7F708F80808)) 
    sltuOut_carry_i_10
       (.I0(clk_0[0]),
        .I1(rd21),
        .I2(ALUSrc),
        .I3(\ALUResult[30]_INST_0_i_2 ),
        .I4(Instr[19]),
        .I5(SrcA[5]),
        .O(\alu/xorOut__31 [5]));
  LUT4 #(
    .INIT(16'h2F02)) 
    sltuOut_carry_i_2
       (.I0(\q_reg[5] [4]),
        .I1(SrcA[4]),
        .I2(SrcA[5]),
        .I3(\q_reg[5] [5]),
        .O(DI[2]));
  LUT4 #(
    .INIT(16'h2F02)) 
    sltuOut_carry_i_3
       (.I0(\q_reg[5] [2]),
        .I1(SrcA[2]),
        .I2(SrcA[3]),
        .I3(\q_reg[5] [3]),
        .O(DI[1]));
  LUT4 #(
    .INIT(16'h2F02)) 
    sltuOut_carry_i_4
       (.I0(\q_reg[5] [0]),
        .I1(SrcA[0]),
        .I2(SrcA[1]),
        .I3(\q_reg[5] [1]),
        .O(DI[0]));
  LUT6 #(
    .INIT(64'h00000000B8884777)) 
    sltuOut_carry_i_5
       (.I0(sum_carry__0[2]),
        .I1(\addressM[28] ),
        .I2(rd11),
        .I3(rd10[6]),
        .I4(\q_reg[5] [6]),
        .I5(\alu/xorOut__31 [7]),
        .O(\q_reg[6] [1]));
  LUT6 #(
    .INIT(64'h00000000B8884777)) 
    sltuOut_carry_i_6
       (.I0(sum_carry__0[0]),
        .I1(\addressM[28] ),
        .I2(rd11),
        .I3(rd10[4]),
        .I4(\q_reg[5] [4]),
        .I5(\alu/xorOut__31 [5]),
        .O(\q_reg[6] [0]));
  LUT6 #(
    .INIT(64'hF707F7F708F80808)) 
    sltuOut_carry_i_9
       (.I0(clk_0[2]),
        .I1(rd21),
        .I2(ALUSrc),
        .I3(\ALUResult[30]_INST_0_i_2 ),
        .I4(Instr[21]),
        .I5(SrcA[7]),
        .O(\alu/xorOut__31 [7]));
  LUT6 #(
    .INIT(64'hF80807F707F7F808)) 
    sum_carry__0_i_5
       (.I0(rd10[7]),
        .I1(rd11),
        .I2(\addressM[28] ),
        .I3(sum_carry__0[3]),
        .I4(\q_reg[5] [7]),
        .I5(ALUControl__0),
        .O(\q_reg[7] [3]));
  LUT6 #(
    .INIT(64'hF80807F707F7F808)) 
    sum_carry__0_i_6
       (.I0(rd10[6]),
        .I1(rd11),
        .I2(\addressM[28] ),
        .I3(sum_carry__0[2]),
        .I4(\q_reg[5] [6]),
        .I5(ALUControl__0),
        .O(\q_reg[7] [2]));
  LUT6 #(
    .INIT(64'hF80807F707F7F808)) 
    sum_carry__0_i_7
       (.I0(rd10[5]),
        .I1(rd11),
        .I2(\addressM[28] ),
        .I3(sum_carry__0[1]),
        .I4(\q_reg[5] [5]),
        .I5(ALUControl__0),
        .O(\q_reg[7] [1]));
  LUT6 #(
    .INIT(64'hF80807F707F7F808)) 
    sum_carry__0_i_8
       (.I0(rd10[4]),
        .I1(rd11),
        .I2(\addressM[28] ),
        .I3(sum_carry__0[0]),
        .I4(\q_reg[5] [4]),
        .I5(ALUControl__0),
        .O(\q_reg[7] [0]));
  LUT6 #(
    .INIT(64'hF80807F707F7F808)) 
    sum_carry__1_i_5
       (.I0(rd10[11]),
        .I1(rd11),
        .I2(\addressM[28] ),
        .I3(\addressM[11] [3]),
        .I4(\q_reg[5] [9]),
        .I5(ALUControl__0),
        .O(\q_reg[11]_0 [3]));
  LUT6 #(
    .INIT(64'hF80807F707F7F808)) 
    sum_carry__1_i_6
       (.I0(rd10[10]),
        .I1(rd11),
        .I2(\addressM[28] ),
        .I3(\addressM[11] [2]),
        .I4(\q_reg[5] [8]),
        .I5(ALUControl__0),
        .O(\q_reg[11]_0 [2]));
  LUT6 #(
    .INIT(64'hF80807F707F7F808)) 
    sum_carry__1_i_7
       (.I0(rd10[9]),
        .I1(rd11),
        .I2(\addressM[28] ),
        .I3(\addressM[11] [1]),
        .I4(SrcB[9]),
        .I5(ALUControl__0),
        .O(\q_reg[11]_0 [1]));
  LUT6 #(
    .INIT(64'hF80807F707F7F808)) 
    sum_carry__1_i_8
       (.I0(rd10[8]),
        .I1(rd11),
        .I2(\addressM[28] ),
        .I3(\addressM[11] [0]),
        .I4(SrcB[8]),
        .I5(ALUControl__0),
        .O(\q_reg[11]_0 [0]));
  LUT6 #(
    .INIT(64'hF80807F707F7F808)) 
    sum_carry__2_i_5
       (.I0(rd10[15]),
        .I1(rd11),
        .I2(\addressM[28] ),
        .I3(sum_carry__2[3]),
        .I4(\q_reg[5] [13]),
        .I5(ALUControl__0),
        .O(\q_reg[15] [3]));
  LUT6 #(
    .INIT(64'hF80807F707F7F808)) 
    sum_carry__2_i_6
       (.I0(rd10[14]),
        .I1(rd11),
        .I2(\addressM[28] ),
        .I3(sum_carry__2[2]),
        .I4(\q_reg[5] [12]),
        .I5(ALUControl__0),
        .O(\q_reg[15] [2]));
  LUT6 #(
    .INIT(64'hF80807F707F7F808)) 
    sum_carry__2_i_7
       (.I0(rd10[13]),
        .I1(rd11),
        .I2(\addressM[28] ),
        .I3(sum_carry__2[1]),
        .I4(\q_reg[5] [11]),
        .I5(ALUControl__0),
        .O(\q_reg[15] [1]));
  LUT6 #(
    .INIT(64'hF80807F707F7F808)) 
    sum_carry__2_i_8
       (.I0(rd10[12]),
        .I1(rd11),
        .I2(\addressM[28] ),
        .I3(sum_carry__2[0]),
        .I4(\q_reg[5] [10]),
        .I5(ALUControl__0),
        .O(\q_reg[15] [0]));
  LUT4 #(
    .INIT(16'hB888)) 
    sum_carry__3_i_10
       (.I0(immext[6]),
        .I1(ALUSrc),
        .I2(rd21),
        .I3(rd20[18]),
        .O(SrcB[18]));
  LUT4 #(
    .INIT(16'hB888)) 
    sum_carry__3_i_11
       (.I0(immext[5]),
        .I1(ALUSrc),
        .I2(rd21),
        .I3(rd20[17]),
        .O(SrcB[17]));
  LUT4 #(
    .INIT(16'hB888)) 
    sum_carry__3_i_12
       (.I0(immext[4]),
        .I1(ALUSrc),
        .I2(rd21),
        .I3(rd20[16]),
        .O(SrcB[16]));
  LUT6 #(
    .INIT(64'hF80807F707F7F808)) 
    sum_carry__3_i_5
       (.I0(rd10[19]),
        .I1(rd11),
        .I2(\addressM[28] ),
        .I3(sum_carry__3[3]),
        .I4(SrcB[19]),
        .I5(ALUControl__0),
        .O(\q_reg[19] [3]));
  LUT6 #(
    .INIT(64'hF80807F707F7F808)) 
    sum_carry__3_i_6
       (.I0(rd10[18]),
        .I1(rd11),
        .I2(\addressM[28] ),
        .I3(sum_carry__3[2]),
        .I4(SrcB[18]),
        .I5(ALUControl__0),
        .O(\q_reg[19] [2]));
  LUT6 #(
    .INIT(64'hF80807F707F7F808)) 
    sum_carry__3_i_7
       (.I0(rd10[17]),
        .I1(rd11),
        .I2(\addressM[28] ),
        .I3(sum_carry__3[1]),
        .I4(SrcB[17]),
        .I5(ALUControl__0),
        .O(\q_reg[19] [1]));
  LUT6 #(
    .INIT(64'hF80807F707F7F808)) 
    sum_carry__3_i_8
       (.I0(rd10[16]),
        .I1(rd11),
        .I2(\addressM[28] ),
        .I3(sum_carry__3[0]),
        .I4(SrcB[16]),
        .I5(ALUControl__0),
        .O(\q_reg[19] [0]));
  LUT4 #(
    .INIT(16'hB888)) 
    sum_carry__3_i_9
       (.I0(immext[7]),
        .I1(ALUSrc),
        .I2(rd21),
        .I3(rd20[19]),
        .O(SrcB[19]));
  LUT6 #(
    .INIT(64'hF80807F707F7F808)) 
    sum_carry__4_i_5
       (.I0(rd10[23]),
        .I1(rd11),
        .I2(\addressM[28] ),
        .I3(\addressM[23]_2 [3]),
        .I4(SrcB[23]),
        .I5(ALUControl__0),
        .O(\q_reg[23] [3]));
  LUT6 #(
    .INIT(64'hF80807F707F7F808)) 
    sum_carry__4_i_6
       (.I0(rd10[22]),
        .I1(rd11),
        .I2(\addressM[28] ),
        .I3(\addressM[23]_2 [2]),
        .I4(SrcB[22]),
        .I5(ALUControl__0),
        .O(\q_reg[23] [2]));
  LUT6 #(
    .INIT(64'hF80807F707F7F808)) 
    sum_carry__4_i_7
       (.I0(rd10[21]),
        .I1(rd11),
        .I2(\addressM[28] ),
        .I3(\addressM[23]_2 [1]),
        .I4(SrcB[21]),
        .I5(ALUControl__0),
        .O(\q_reg[23] [1]));
  LUT6 #(
    .INIT(64'hF80807F707F7F808)) 
    sum_carry__4_i_8
       (.I0(rd10[20]),
        .I1(rd11),
        .I2(\addressM[28] ),
        .I3(\addressM[23]_2 [0]),
        .I4(SrcB[20]),
        .I5(ALUControl__0),
        .O(\q_reg[23] [0]));
  LUT6 #(
    .INIT(64'hF80807F707F7F808)) 
    sum_carry__5_i_5
       (.I0(rd10[27]),
        .I1(rd11),
        .I2(\addressM[28] ),
        .I3(\addressM[27]_1 [3]),
        .I4(SrcB[27]),
        .I5(ALUControl__0),
        .O(\q_reg[27]_1 [3]));
  LUT6 #(
    .INIT(64'hF80807F707F7F808)) 
    sum_carry__5_i_6
       (.I0(rd10[26]),
        .I1(rd11),
        .I2(\addressM[28] ),
        .I3(\addressM[27]_1 [2]),
        .I4(SrcB[26]),
        .I5(ALUControl__0),
        .O(\q_reg[27]_1 [2]));
  LUT6 #(
    .INIT(64'hF80807F707F7F808)) 
    sum_carry__5_i_7
       (.I0(rd10[25]),
        .I1(rd11),
        .I2(\addressM[28] ),
        .I3(\addressM[27]_1 [1]),
        .I4(SrcB[25]),
        .I5(ALUControl__0),
        .O(\q_reg[27]_1 [1]));
  LUT6 #(
    .INIT(64'hF80807F707F7F808)) 
    sum_carry__5_i_8
       (.I0(rd10[24]),
        .I1(rd11),
        .I2(\addressM[28] ),
        .I3(\addressM[27]_1 [0]),
        .I4(SrcB[24]),
        .I5(ALUControl__0),
        .O(\q_reg[27]_1 [0]));
  LUT6 #(
    .INIT(64'hF80807F707F7F808)) 
    sum_carry__6_i_5
       (.I0(rd10[30]),
        .I1(rd11),
        .I2(\addressM[28] ),
        .I3(sum_carry__6[2]),
        .I4(\q_reg[5] [15]),
        .I5(ALUControl__0),
        .O(\q_reg[30]_1 [2]));
  LUT6 #(
    .INIT(64'hF80807F707F7F808)) 
    sum_carry__6_i_6
       (.I0(rd10[29]),
        .I1(rd11),
        .I2(\addressM[28] ),
        .I3(sum_carry__6[1]),
        .I4(\q_reg[5] [14]),
        .I5(ALUControl__0),
        .O(\q_reg[30]_1 [1]));
  LUT6 #(
    .INIT(64'hF80807F707F7F808)) 
    sum_carry__6_i_7
       (.I0(rd10[28]),
        .I1(rd11),
        .I2(\addressM[28] ),
        .I3(sum_carry__6[0]),
        .I4(SrcB[28]),
        .I5(ALUControl__0),
        .O(\q_reg[30]_1 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    sum_carry_i_1
       (.I0(ALUControl__0),
        .I1(\q_reg[5] [0]),
        .O(\ALUResult[22]_INST_0_i_7_0 ));
  LUT6 #(
    .INIT(64'hF80807F707F7F808)) 
    sum_carry_i_6
       (.I0(rd10[3]),
        .I1(rd11),
        .I2(\addressM[28] ),
        .I3(sum_carry[3]),
        .I4(\q_reg[5] [3]),
        .I5(ALUControl__0),
        .O(S[3]));
  LUT6 #(
    .INIT(64'hF80807F707F7F808)) 
    sum_carry_i_7
       (.I0(rd10[2]),
        .I1(rd11),
        .I2(\addressM[28] ),
        .I3(sum_carry[2]),
        .I4(\q_reg[5] [2]),
        .I5(ALUControl__0),
        .O(S[2]));
  LUT6 #(
    .INIT(64'hF80807F707F7F808)) 
    sum_carry_i_8
       (.I0(rd10[1]),
        .I1(rd11),
        .I2(\addressM[28] ),
        .I3(sum_carry[1]),
        .I4(\q_reg[5] [1]),
        .I5(ALUControl__0),
        .O(S[1]));
  LUT6 #(
    .INIT(64'h70777F778F888088)) 
    sum_carry_i_9
       (.I0(rd10[0]),
        .I1(rd11),
        .I2(Instr[2]),
        .I3(Instr[0]),
        .I4(sum_carry[0]),
        .I5(ALUControl__0),
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

  wire [31:0]ALUResult;
  wire [31:0]Instr;
  wire MemStrobe;
  wire MemWrite;
  wire [31:0]PC;
  wire PCReady;
  wire [31:0]ReadData;
  wire [31:0]WriteData;
  wire clk;
  wire reset;

  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h1)) 
    MemStrobe_INST_0
       (.I0(Instr[4]),
        .I1(Instr[6]),
        .O(MemStrobe));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
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
        .PCReady(PCReady),
        .ReadData(ReadData),
        .WriteData(WriteData),
        .clk(clk),
        .\q_reg[0] (PC[0]),
        .\q_reg[10] (PC[10]),
        .\q_reg[11] (PC[11]),
        .\q_reg[12] (PC[12]),
        .\q_reg[13] (PC[13]),
        .\q_reg[14] (PC[14]),
        .\q_reg[15] (PC[15]),
        .\q_reg[16] (PC[16]),
        .\q_reg[17] (PC[17]),
        .\q_reg[18] (PC[18]),
        .\q_reg[19] (PC[19]),
        .\q_reg[1] (PC[1]),
        .\q_reg[20] (PC[20]),
        .\q_reg[21] (PC[21]),
        .\q_reg[22] (PC[22]),
        .\q_reg[23] (PC[23]),
        .\q_reg[24] (PC[24]),
        .\q_reg[25] (PC[25]),
        .\q_reg[26] (PC[26]),
        .\q_reg[27] (PC[27]),
        .\q_reg[28] (PC[28]),
        .\q_reg[29] (PC[29]),
        .\q_reg[2] (PC[2]),
        .\q_reg[30] (PC[30]),
        .\q_reg[31] (PC[31]),
        .\q_reg[3] (PC[3]),
        .\q_reg[4] (PC[4]),
        .\q_reg[5] (PC[5]),
        .\q_reg[6] (PC[6]),
        .\q_reg[7] (PC[7]),
        .\q_reg[8] (PC[8]),
        .\q_reg[9] (PC[9]),
        .reset(reset));
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
  (* MARK_DEBUG *) wire PCReady;
  (* MARK_DEBUG *) wire [31:0]addressM;
  wire clk;
  wire doneM;
  (* MARK_DEBUG *) wire [31:0]readDataM;
  (* MARK_DEBUG *) wire reset;
  (* MARK_DEBUG *) wire [31:0]writeDataM;
  wire [1:0]NLW_imem_rd_UNCONNECTED;

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
  (* KEEP_HIERARCHY = "soft" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_imem imem
       (.a({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,PC[5:2],1'b0,1'b0}),
        .rd({Instr[31:2],NLW_imem_rd_UNCONNECTED[1:0]}));
  (* KEEP_HIERARCHY = "soft" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MemControl memcontrol
       (.AXIstart(AXIStart),
        .DRW(DRW),
        .Done(PCReady),
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
        .PC(PC),
        .PCReady(PCReady),
        .ReadData(readDataM),
        .WriteData(writeDataM),
        .clk(clk),
        .reset(reset));
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
