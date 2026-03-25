// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Wed Mar 25 15:10:45 2026
// Host        : CEAT-ENDV350-05 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/zafranc/Desktop/ECEN4243-Lab2/Lab2_Vivado/lab2/lab2.srcs/sources_1/bd/design_1/ip/design_1_top_0_0/design_1_top_0_0_sim_netlist.v
// Design      : design_1_top_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_top_0_0,top,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "top,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module design_1_top_0_0
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
  design_1_top_0_0_top inst
       (.AXIStart(AXIStart),
        .DRW(DRW),
        .addressM(addressM),
        .clk(clk),
        .doneM(doneM),
        .readDataM(readDataM),
        .reset(reset),
        .writeDataM(writeDataM));
endmodule

(* ORIG_REF_NAME = "MemControl" *) 
module design_1_top_0_0_MemControl
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

  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'h06)) 
    AXIstart_INST_0
       (.I0(state[2]),
        .I1(state[0]),
        .I2(state[1]),
        .O(AXIstart));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'h15)) 
    DRW_INST_0
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[0]),
        .O(DRW));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
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

(* ORIG_REF_NAME = "adder" *) 
module design_1_top_0_0_adder
   (PCPlus4,
    Result,
    \q_reg[10] ,
    Q,
    Instr,
    rf_reg_r1_0_31_12_17,
    rf_reg_r1_0_31_12_17_0,
    rf_reg_r1_0_31_12_17_1,
    rf_reg_r1_0_31_0_5_i_4_0,
    rf_reg_r1_0_31_6_11,
    rf_reg_r1_0_31_6_11_0,
    rf_reg_r1_0_31_6_11_i_1,
    rf_reg_r1_0_31_6_11_1,
    rf_reg_r1_0_31_6_11_2,
    rf_reg_r1_0_31_0_5_i_6_0,
    rf_reg_r1_0_31_6_11_i_2_0,
    rf_reg_r1_0_31_0_5_i_7_0,
    ResultSrc,
    rf_reg_r2_0_31_30_31__0,
    rf_reg_r1_0_31_18_23,
    rf_reg_r1_0_31_18_23_0,
    rf_reg_r1_0_31_18_23_1,
    rf_reg_r1_0_31_18_23_2,
    rf_reg_r1_0_31_18_23_3,
    rf_reg_r1_0_31_18_23_4,
    rf_reg_r1_0_31_18_23_5,
    rf_reg_r1_0_31_18_23_6,
    rf_reg_r1_0_31_12_17_2,
    rf_reg_r1_0_31_12_17_3,
    rf_reg_r1_0_31_12_17_4,
    rf_reg_r1_0_31_12_17_5,
    rf_reg_r1_0_31_24_29,
    rf_reg_r1_0_31_24_29_0,
    rf_reg_r1_0_31_24_29_1,
    rf_reg_r1_0_31_24_29_2,
    rf_reg_r1_0_31_24_29_3,
    rf_reg_r1_0_31_24_29_4,
    rf_reg_r1_0_31_24_29_5,
    rf_reg_r1_0_31_24_29_6,
    rf_reg_r1_0_31_24_29_7,
    rf_reg_r1_0_31_24_29_8,
    rf_reg_r1_0_31_24_29_9,
    rf_reg_r1_0_31_24_29_10,
    rf_reg_r2_0_31_30_31,
    rf_reg_r2_0_31_30_31_0,
    rf_reg_r2_0_31_30_31__0_0,
    rf_reg_r2_0_31_30_31__0_1,
    rf_reg_r1_0_31_0_5,
    ReadData,
    rf_reg_r1_0_31_6_11_3,
    rf_reg_r1_0_31_0_5_0,
    rf_reg_r1_0_31_0_5_1,
    rf_reg_r1_0_31_6_11_4);
  output [28:0]PCPlus4;
  output [24:0]Result;
  output \q_reg[10] ;
  input [29:0]Q;
  input [4:0]Instr;
  input rf_reg_r1_0_31_12_17;
  input rf_reg_r1_0_31_12_17_0;
  input rf_reg_r1_0_31_12_17_1;
  input rf_reg_r1_0_31_0_5_i_4_0;
  input rf_reg_r1_0_31_6_11;
  input rf_reg_r1_0_31_6_11_0;
  input rf_reg_r1_0_31_6_11_i_1;
  input rf_reg_r1_0_31_6_11_1;
  input rf_reg_r1_0_31_6_11_2;
  input rf_reg_r1_0_31_0_5_i_6_0;
  input rf_reg_r1_0_31_6_11_i_2_0;
  input rf_reg_r1_0_31_0_5_i_7_0;
  input [1:0]ResultSrc;
  input rf_reg_r2_0_31_30_31__0;
  input rf_reg_r1_0_31_18_23;
  input rf_reg_r1_0_31_18_23_0;
  input rf_reg_r1_0_31_18_23_1;
  input rf_reg_r1_0_31_18_23_2;
  input rf_reg_r1_0_31_18_23_3;
  input rf_reg_r1_0_31_18_23_4;
  input rf_reg_r1_0_31_18_23_5;
  input rf_reg_r1_0_31_18_23_6;
  input rf_reg_r1_0_31_12_17_2;
  input rf_reg_r1_0_31_12_17_3;
  input rf_reg_r1_0_31_12_17_4;
  input rf_reg_r1_0_31_12_17_5;
  input rf_reg_r1_0_31_24_29;
  input rf_reg_r1_0_31_24_29_0;
  input rf_reg_r1_0_31_24_29_1;
  input rf_reg_r1_0_31_24_29_2;
  input rf_reg_r1_0_31_24_29_3;
  input rf_reg_r1_0_31_24_29_4;
  input rf_reg_r1_0_31_24_29_5;
  input rf_reg_r1_0_31_24_29_6;
  input rf_reg_r1_0_31_24_29_7;
  input rf_reg_r1_0_31_24_29_8;
  input rf_reg_r1_0_31_24_29_9;
  input rf_reg_r1_0_31_24_29_10;
  input rf_reg_r2_0_31_30_31;
  input rf_reg_r2_0_31_30_31_0;
  input rf_reg_r2_0_31_30_31__0_0;
  input rf_reg_r2_0_31_30_31__0_1;
  input rf_reg_r1_0_31_0_5;
  input [3:0]ReadData;
  input rf_reg_r1_0_31_6_11_3;
  input rf_reg_r1_0_31_0_5_0;
  input rf_reg_r1_0_31_0_5_1;
  input rf_reg_r1_0_31_6_11_4;

  wire [4:0]Instr;
  wire [28:0]PCPlus4;
  wire [29:0]Q;
  wire [3:0]ReadData;
  wire [24:0]Result;
  wire [1:0]ResultSrc;
  wire \q_reg[10] ;
  wire rf_reg_r1_0_31_0_5;
  wire rf_reg_r1_0_31_0_5_0;
  wire rf_reg_r1_0_31_0_5_1;
  wire rf_reg_r1_0_31_0_5_i_14_n_0;
  wire rf_reg_r1_0_31_0_5_i_18_n_0;
  wire rf_reg_r1_0_31_0_5_i_20_n_0;
  wire rf_reg_r1_0_31_0_5_i_4_0;
  wire rf_reg_r1_0_31_0_5_i_6_0;
  wire rf_reg_r1_0_31_0_5_i_7_0;
  wire rf_reg_r1_0_31_12_17;
  wire rf_reg_r1_0_31_12_17_0;
  wire rf_reg_r1_0_31_12_17_1;
  wire rf_reg_r1_0_31_12_17_2;
  wire rf_reg_r1_0_31_12_17_3;
  wire rf_reg_r1_0_31_12_17_4;
  wire rf_reg_r1_0_31_12_17_5;
  wire rf_reg_r1_0_31_18_23;
  wire rf_reg_r1_0_31_18_23_0;
  wire rf_reg_r1_0_31_18_23_1;
  wire rf_reg_r1_0_31_18_23_2;
  wire rf_reg_r1_0_31_18_23_3;
  wire rf_reg_r1_0_31_18_23_4;
  wire rf_reg_r1_0_31_18_23_5;
  wire rf_reg_r1_0_31_18_23_6;
  wire rf_reg_r1_0_31_24_29;
  wire rf_reg_r1_0_31_24_29_0;
  wire rf_reg_r1_0_31_24_29_1;
  wire rf_reg_r1_0_31_24_29_10;
  wire rf_reg_r1_0_31_24_29_2;
  wire rf_reg_r1_0_31_24_29_3;
  wire rf_reg_r1_0_31_24_29_4;
  wire rf_reg_r1_0_31_24_29_5;
  wire rf_reg_r1_0_31_24_29_6;
  wire rf_reg_r1_0_31_24_29_7;
  wire rf_reg_r1_0_31_24_29_8;
  wire rf_reg_r1_0_31_24_29_9;
  wire rf_reg_r1_0_31_6_11;
  wire rf_reg_r1_0_31_6_11_0;
  wire rf_reg_r1_0_31_6_11_1;
  wire rf_reg_r1_0_31_6_11_2;
  wire rf_reg_r1_0_31_6_11_3;
  wire rf_reg_r1_0_31_6_11_4;
  wire rf_reg_r1_0_31_6_11_i_1;
  wire rf_reg_r1_0_31_6_11_i_2_0;
  wire rf_reg_r1_0_31_6_11_i_9_n_0;
  wire rf_reg_r2_0_31_30_31;
  wire rf_reg_r2_0_31_30_31_0;
  wire rf_reg_r2_0_31_30_31__0;
  wire rf_reg_r2_0_31_30_31__0_0;
  wire rf_reg_r2_0_31_30_31__0_1;
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
  wire y_carry_n_0;
  wire y_carry_n_1;
  wire y_carry_n_2;
  wire y_carry_n_3;
  wire [3:0]NLW_y_carry__6_CO_UNCONNECTED;
  wire [3:1]NLW_y_carry__6_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'hAAA0CCC0CCC0CCC0)) 
    rf_reg_r1_0_31_0_5_i_14
       (.I0(PCPlus4[0]),
        .I1(rf_reg_r1_0_31_0_5_i_4_0),
        .I2(Instr[2]),
        .I3(Instr[1]),
        .I4(Instr[3]),
        .I5(Instr[0]),
        .O(rf_reg_r1_0_31_0_5_i_14_n_0));
  LUT6 #(
    .INIT(64'hAAA0CCC0CCC0CCC0)) 
    rf_reg_r1_0_31_0_5_i_18
       (.I0(PCPlus4[2]),
        .I1(rf_reg_r1_0_31_0_5_i_6_0),
        .I2(Instr[2]),
        .I3(Instr[1]),
        .I4(Instr[3]),
        .I5(Instr[0]),
        .O(rf_reg_r1_0_31_0_5_i_18_n_0));
  LUT6 #(
    .INIT(64'hAAA0CCC0CCC0CCC0)) 
    rf_reg_r1_0_31_0_5_i_20
       (.I0(PCPlus4[1]),
        .I1(rf_reg_r1_0_31_0_5_i_7_0),
        .I2(Instr[2]),
        .I3(Instr[1]),
        .I4(Instr[3]),
        .I5(Instr[0]),
        .O(rf_reg_r1_0_31_0_5_i_20_n_0));
  LUT5 #(
    .INIT(32'hFEAEAAAA)) 
    rf_reg_r1_0_31_0_5_i_4
       (.I0(rf_reg_r1_0_31_0_5_i_14_n_0),
        .I1(rf_reg_r1_0_31_0_5),
        .I2(Instr[4]),
        .I3(ReadData[0]),
        .I4(rf_reg_r1_0_31_6_11_3),
        .O(Result[0]));
  LUT5 #(
    .INIT(32'hFEAEAAAA)) 
    rf_reg_r1_0_31_0_5_i_6
       (.I0(rf_reg_r1_0_31_0_5_i_18_n_0),
        .I1(rf_reg_r1_0_31_0_5_0),
        .I2(Instr[4]),
        .I3(ReadData[2]),
        .I4(rf_reg_r1_0_31_6_11_3),
        .O(Result[2]));
  LUT5 #(
    .INIT(32'hFEAEAAAA)) 
    rf_reg_r1_0_31_0_5_i_7
       (.I0(rf_reg_r1_0_31_0_5_i_20_n_0),
        .I1(rf_reg_r1_0_31_0_5_1),
        .I2(Instr[4]),
        .I3(ReadData[1]),
        .I4(rf_reg_r1_0_31_6_11_3),
        .O(Result[1]));
  LUT6 #(
    .INIT(64'hA8FFFFFFA8000000)) 
    rf_reg_r1_0_31_12_17_i_1
       (.I0(PCPlus4[10]),
        .I1(Instr[2]),
        .I2(Instr[1]),
        .I3(Instr[0]),
        .I4(Instr[3]),
        .I5(rf_reg_r1_0_31_12_17_1),
        .O(Result[9]));
  LUT6 #(
    .INIT(64'hA8FFFFFFA8000000)) 
    rf_reg_r1_0_31_12_17_i_2
       (.I0(PCPlus4[9]),
        .I1(Instr[2]),
        .I2(Instr[1]),
        .I3(Instr[0]),
        .I4(Instr[3]),
        .I5(rf_reg_r1_0_31_12_17_0),
        .O(Result[8]));
  LUT6 #(
    .INIT(64'hA8FFFFFFA8000000)) 
    rf_reg_r1_0_31_12_17_i_4
       (.I0(PCPlus4[11]),
        .I1(Instr[2]),
        .I2(Instr[1]),
        .I3(Instr[0]),
        .I4(Instr[3]),
        .I5(rf_reg_r1_0_31_12_17),
        .O(Result[10]));
  LUT6 #(
    .INIT(64'h3333BBBB3030BBB8)) 
    rf_reg_r1_0_31_12_17_i_5
       (.I0(PCPlus4[14]),
        .I1(ResultSrc[1]),
        .I2(rf_reg_r2_0_31_30_31__0),
        .I3(rf_reg_r1_0_31_12_17_4),
        .I4(ResultSrc[0]),
        .I5(rf_reg_r1_0_31_12_17_5),
        .O(Result[12]));
  LUT6 #(
    .INIT(64'h3333BBBB3030BBB8)) 
    rf_reg_r1_0_31_12_17_i_6
       (.I0(PCPlus4[13]),
        .I1(ResultSrc[1]),
        .I2(rf_reg_r2_0_31_30_31__0),
        .I3(rf_reg_r1_0_31_12_17_2),
        .I4(ResultSrc[0]),
        .I5(rf_reg_r1_0_31_12_17_3),
        .O(Result[11]));
  LUT6 #(
    .INIT(64'h3333BBBB3030BBB8)) 
    rf_reg_r1_0_31_18_23_i_2
       (.I0(PCPlus4[15]),
        .I1(ResultSrc[1]),
        .I2(rf_reg_r2_0_31_30_31__0),
        .I3(rf_reg_r1_0_31_18_23_5),
        .I4(ResultSrc[0]),
        .I5(rf_reg_r1_0_31_18_23_6),
        .O(Result[13]));
  LUT6 #(
    .INIT(64'h3333BBBB3030BBB8)) 
    rf_reg_r1_0_31_18_23_i_3
       (.I0(PCPlus4[18]),
        .I1(ResultSrc[1]),
        .I2(rf_reg_r2_0_31_30_31__0),
        .I3(rf_reg_r1_0_31_18_23),
        .I4(ResultSrc[0]),
        .I5(rf_reg_r1_0_31_18_23_0),
        .O(Result[14]));
  LUT6 #(
    .INIT(64'h3333BBBB3030BBB8)) 
    rf_reg_r1_0_31_18_23_i_5
       (.I0(PCPlus4[20]),
        .I1(ResultSrc[1]),
        .I2(rf_reg_r2_0_31_30_31__0),
        .I3(rf_reg_r1_0_31_18_23_3),
        .I4(ResultSrc[0]),
        .I5(rf_reg_r1_0_31_18_23_4),
        .O(Result[16]));
  LUT6 #(
    .INIT(64'h3333BBBB3030BBB8)) 
    rf_reg_r1_0_31_18_23_i_6
       (.I0(PCPlus4[19]),
        .I1(ResultSrc[1]),
        .I2(rf_reg_r2_0_31_30_31__0),
        .I3(rf_reg_r1_0_31_18_23_1),
        .I4(ResultSrc[0]),
        .I5(rf_reg_r1_0_31_18_23_2),
        .O(Result[15]));
  LUT6 #(
    .INIT(64'h3333BBBB3030BBB8)) 
    rf_reg_r1_0_31_24_29_i_1
       (.I0(PCPlus4[22]),
        .I1(ResultSrc[1]),
        .I2(rf_reg_r2_0_31_30_31__0),
        .I3(rf_reg_r1_0_31_24_29_1),
        .I4(ResultSrc[0]),
        .I5(rf_reg_r1_0_31_24_29_2),
        .O(Result[18]));
  LUT6 #(
    .INIT(64'h3333BBBB3030BBB8)) 
    rf_reg_r1_0_31_24_29_i_2
       (.I0(PCPlus4[21]),
        .I1(ResultSrc[1]),
        .I2(rf_reg_r2_0_31_30_31__0),
        .I3(rf_reg_r1_0_31_24_29),
        .I4(ResultSrc[0]),
        .I5(rf_reg_r1_0_31_24_29_0),
        .O(Result[17]));
  LUT6 #(
    .INIT(64'h3333BBBB3030BBB8)) 
    rf_reg_r1_0_31_24_29_i_3
       (.I0(PCPlus4[24]),
        .I1(ResultSrc[1]),
        .I2(rf_reg_r2_0_31_30_31__0),
        .I3(rf_reg_r1_0_31_24_29_5),
        .I4(ResultSrc[0]),
        .I5(rf_reg_r1_0_31_24_29_6),
        .O(Result[20]));
  LUT6 #(
    .INIT(64'h3333BBBB3030BBB8)) 
    rf_reg_r1_0_31_24_29_i_4
       (.I0(PCPlus4[23]),
        .I1(ResultSrc[1]),
        .I2(rf_reg_r2_0_31_30_31__0),
        .I3(rf_reg_r1_0_31_24_29_3),
        .I4(ResultSrc[0]),
        .I5(rf_reg_r1_0_31_24_29_4),
        .O(Result[19]));
  LUT6 #(
    .INIT(64'h3333BBBB3030BBB8)) 
    rf_reg_r1_0_31_24_29_i_5
       (.I0(PCPlus4[26]),
        .I1(ResultSrc[1]),
        .I2(rf_reg_r2_0_31_30_31__0),
        .I3(rf_reg_r1_0_31_24_29_9),
        .I4(ResultSrc[0]),
        .I5(rf_reg_r1_0_31_24_29_10),
        .O(Result[22]));
  LUT6 #(
    .INIT(64'h3333BBBB3030BBB8)) 
    rf_reg_r1_0_31_24_29_i_6
       (.I0(PCPlus4[25]),
        .I1(ResultSrc[1]),
        .I2(rf_reg_r2_0_31_30_31__0),
        .I3(rf_reg_r1_0_31_24_29_7),
        .I4(ResultSrc[0]),
        .I5(rf_reg_r1_0_31_24_29_8),
        .O(Result[21]));
  LUT6 #(
    .INIT(64'h3330BBBB3330BBB8)) 
    rf_reg_r1_0_31_30_31_i_1
       (.I0(PCPlus4[27]),
        .I1(ResultSrc[1]),
        .I2(rf_reg_r2_0_31_30_31__0),
        .I3(rf_reg_r2_0_31_30_31),
        .I4(ResultSrc[0]),
        .I5(rf_reg_r2_0_31_30_31_0),
        .O(Result[23]));
  LUT6 #(
    .INIT(64'h3330BBBB3330BBB8)) 
    rf_reg_r1_0_31_30_31_i_1__0
       (.I0(PCPlus4[28]),
        .I1(ResultSrc[1]),
        .I2(rf_reg_r2_0_31_30_31__0),
        .I3(rf_reg_r2_0_31_30_31__0_0),
        .I4(ResultSrc[0]),
        .I5(rf_reg_r2_0_31_30_31__0_1),
        .O(Result[24]));
  LUT5 #(
    .INIT(32'hFEAEAAAA)) 
    rf_reg_r1_0_31_6_11_i_2
       (.I0(rf_reg_r1_0_31_6_11_i_9_n_0),
        .I1(rf_reg_r1_0_31_6_11_4),
        .I2(Instr[4]),
        .I3(ReadData[3]),
        .I4(rf_reg_r1_0_31_6_11_3),
        .O(Result[3]));
  LUT6 #(
    .INIT(64'hA8FFFFFFA8000000)) 
    rf_reg_r1_0_31_6_11_i_3
       (.I0(PCPlus4[6]),
        .I1(Instr[2]),
        .I2(Instr[1]),
        .I3(Instr[0]),
        .I4(Instr[3]),
        .I5(rf_reg_r1_0_31_6_11_2),
        .O(Result[5]));
  LUT6 #(
    .INIT(64'hA8FFFFFFA8000000)) 
    rf_reg_r1_0_31_6_11_i_4
       (.I0(PCPlus4[5]),
        .I1(Instr[2]),
        .I2(Instr[1]),
        .I3(Instr[0]),
        .I4(Instr[3]),
        .I5(rf_reg_r1_0_31_6_11_1),
        .O(Result[4]));
  LUT6 #(
    .INIT(64'hA8FFFFFFA8000000)) 
    rf_reg_r1_0_31_6_11_i_5
       (.I0(PCPlus4[8]),
        .I1(Instr[2]),
        .I2(Instr[1]),
        .I3(Instr[0]),
        .I4(Instr[3]),
        .I5(rf_reg_r1_0_31_6_11_0),
        .O(Result[7]));
  LUT6 #(
    .INIT(64'hA8FFFFFFA8000000)) 
    rf_reg_r1_0_31_6_11_i_6
       (.I0(PCPlus4[7]),
        .I1(Instr[2]),
        .I2(Instr[1]),
        .I3(Instr[0]),
        .I4(Instr[3]),
        .I5(rf_reg_r1_0_31_6_11),
        .O(Result[6]));
  LUT6 #(
    .INIT(64'hAAA0CCC0CCC0CCC0)) 
    rf_reg_r1_0_31_6_11_i_7
       (.I0(PCPlus4[4]),
        .I1(rf_reg_r1_0_31_6_11_i_1),
        .I2(Instr[2]),
        .I3(Instr[1]),
        .I4(Instr[3]),
        .I5(Instr[0]),
        .O(\q_reg[10] ));
  LUT6 #(
    .INIT(64'hAAA0CCC0CCC0CCC0)) 
    rf_reg_r1_0_31_6_11_i_9
       (.I0(PCPlus4[3]),
        .I1(rf_reg_r1_0_31_6_11_i_2_0),
        .I2(Instr[2]),
        .I3(Instr[1]),
        .I4(Instr[3]),
        .I5(Instr[0]),
        .O(rf_reg_r1_0_31_6_11_i_9_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 y_carry
       (.CI(1'b0),
        .CO({y_carry_n_0,y_carry_n_1,y_carry_n_2,y_carry_n_3}),
        .CYINIT(Q[0]),
        .DI(Q[4:1]),
        .O(PCPlus4[3:0]),
        .S(Q[4:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 y_carry__0
       (.CI(y_carry_n_0),
        .CO({y_carry__0_n_0,y_carry__0_n_1,y_carry__0_n_2,y_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(Q[8:5]),
        .O(PCPlus4[7:4]),
        .S(Q[8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 y_carry__1
       (.CI(y_carry__0_n_0),
        .CO({y_carry__1_n_0,y_carry__1_n_1,y_carry__1_n_2,y_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(Q[12:9]),
        .O(PCPlus4[11:8]),
        .S(Q[12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 y_carry__2
       (.CI(y_carry__1_n_0),
        .CO({y_carry__2_n_0,y_carry__2_n_1,y_carry__2_n_2,y_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(Q[16:13]),
        .O(PCPlus4[15:12]),
        .S(Q[16:13]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 y_carry__3
       (.CI(y_carry__2_n_0),
        .CO({y_carry__3_n_0,y_carry__3_n_1,y_carry__3_n_2,y_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(Q[20:17]),
        .O(PCPlus4[19:16]),
        .S(Q[20:17]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 y_carry__4
       (.CI(y_carry__3_n_0),
        .CO({y_carry__4_n_0,y_carry__4_n_1,y_carry__4_n_2,y_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI(Q[24:21]),
        .O(PCPlus4[23:20]),
        .S(Q[24:21]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 y_carry__5
       (.CI(y_carry__4_n_0),
        .CO({y_carry__5_n_0,y_carry__5_n_1,y_carry__5_n_2,y_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI(Q[28:25]),
        .O(PCPlus4[27:24]),
        .S(Q[28:25]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 y_carry__6
       (.CI(y_carry__5_n_0),
        .CO(NLW_y_carry__6_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_y_carry__6_O_UNCONNECTED[3:1],PCPlus4[28]}),
        .S({1'b0,1'b0,1'b0,Q[29]}));
endmodule

(* ORIG_REF_NAME = "adder" *) 
module design_1_top_0_0_adder_0
   (PCTarget,
    Q,
    S,
    \q_reg[7] ,
    \q_reg[11] ,
    \q_reg[15] ,
    \q_reg[19] ,
    \q_reg[23] ,
    \q_reg[27] ,
    \q_reg[31] );
  output [31:0]PCTarget;
  input [30:0]Q;
  input [3:0]S;
  input [3:0]\q_reg[7] ;
  input [3:0]\q_reg[11] ;
  input [3:0]\q_reg[15] ;
  input [3:0]\q_reg[19] ;
  input [3:0]\q_reg[23] ;
  input [3:0]\q_reg[27] ;
  input [3:0]\q_reg[31] ;

  wire [31:0]PCTarget;
  wire [30:0]Q;
  wire [3:0]S;
  wire [3:0]\q_reg[11] ;
  wire [3:0]\q_reg[15] ;
  wire [3:0]\q_reg[19] ;
  wire [3:0]\q_reg[23] ;
  wire [3:0]\q_reg[27] ;
  wire [3:0]\q_reg[31] ;
  wire [3:0]\q_reg[7] ;
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
        .DI(Q[3:0]),
        .O(PCTarget[3:0]),
        .S(S));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 y_carry__0
       (.CI(y_carry_n_0),
        .CO({y_carry__0_n_0,y_carry__0_n_1,y_carry__0_n_2,y_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(Q[7:4]),
        .O(PCTarget[7:4]),
        .S(\q_reg[7] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 y_carry__1
       (.CI(y_carry__0_n_0),
        .CO({y_carry__1_n_0,y_carry__1_n_1,y_carry__1_n_2,y_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(Q[11:8]),
        .O(PCTarget[11:8]),
        .S(\q_reg[11] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 y_carry__2
       (.CI(y_carry__1_n_0),
        .CO({y_carry__2_n_0,y_carry__2_n_1,y_carry__2_n_2,y_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(Q[15:12]),
        .O(PCTarget[15:12]),
        .S(\q_reg[15] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 y_carry__3
       (.CI(y_carry__2_n_0),
        .CO({y_carry__3_n_0,y_carry__3_n_1,y_carry__3_n_2,y_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(Q[19:16]),
        .O(PCTarget[19:16]),
        .S(\q_reg[19] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 y_carry__4
       (.CI(y_carry__3_n_0),
        .CO({y_carry__4_n_0,y_carry__4_n_1,y_carry__4_n_2,y_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI(Q[23:20]),
        .O(PCTarget[23:20]),
        .S(\q_reg[23] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 y_carry__5
       (.CI(y_carry__4_n_0),
        .CO({y_carry__5_n_0,y_carry__5_n_1,y_carry__5_n_2,y_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI(Q[27:24]),
        .O(PCTarget[27:24]),
        .S(\q_reg[27] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 y_carry__6
       (.CI(y_carry__5_n_0),
        .CO({NLW_y_carry__6_CO_UNCONNECTED[3],y_carry__6_n_1,y_carry__6_n_2,y_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,Q[30:28]}),
        .O(PCTarget[31:28]),
        .S(\q_reg[31] ));
endmodule

(* ORIG_REF_NAME = "alu" *) 
module design_1_top_0_0_alu
   (CO,
    \q_reg[30] ,
    \ALUResult[31]_INST_0_i_5 ,
    \ALUResult[31]_INST_0_i_5_0 ,
    \ALUResult[31]_INST_0_i_5_1 ,
    \q_reg[1] ,
    \ALUResult[30]_INST_0_i_8 ,
    ALUControl__0,
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
    \q_reg[26] ,
    \q_reg[28] ,
    \q_reg[29] ,
    \q_reg[0] ,
    \q_reg[31] ,
    ALUSrc,
    \q_reg[5]_0 ,
    ImmSrc,
    rd21__3,
    \q_reg[5]_1 ,
    \q_reg[5]_2 ,
    \q_reg[5]_3 ,
    DI,
    S,
    ltu_carry__1_0,
    lt_carry__1_0,
    ltu_carry__2_0,
    lt_carry__2_0,
    \q[31]_i_6 ,
    \q[31]_i_6_0 ,
    ltu_carry__0_0,
    ltu_carry__1_1,
    ltu_carry__2_1,
    \q[31]_i_6_1 ,
    \q[31]_i_6_2 ,
    \ALUResult[0]_INST_0_i_3_0 ,
    SrcA,
    \ALUResult[0]_INST_0_i_3_1 ,
    \ALUResult[4]_INST_0_i_4_0 ,
    \ALUResult[8]_INST_0_i_2_0 ,
    \ALUResult[12]_INST_0_i_2_0 ,
    \ALUResult[16]_INST_0_i_2_0 ,
    \ALUResult[20]_INST_0_i_2_0 ,
    \ALUResult[24]_INST_0_i_2_0 ,
    \ALUResult[28]_INST_0_i_2_0 ,
    \addressM[25] ,
    \addressM[25]_0 ,
    \addressM[25]_1 ,
    \addressM[25]_2 ,
    \addressM[27] ,
    \addressM[27]_0 ,
    \addressM[30] ,
    \addressM[30]_0 ,
    \addressM[1] ,
    SrcB,
    \addressM[1]_0 ,
    ALUControl,
    \ALUResult[0]_INST_0_i_4 ,
    \ALUResult[0]_INST_0_i_4_0 ,
    SrcA__0,
    Instr);
  output [0:0]CO;
  output [0:0]\q_reg[30] ;
  output \ALUResult[31]_INST_0_i_5 ;
  output \ALUResult[31]_INST_0_i_5_0 ;
  output \ALUResult[31]_INST_0_i_5_1 ;
  output \q_reg[1] ;
  output \ALUResult[30]_INST_0_i_8 ;
  output [0:0]ALUControl__0;
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
  output \q_reg[26] ;
  output \q_reg[28] ;
  output \q_reg[29] ;
  output \q_reg[0] ;
  output \q_reg[31] ;
  output ALUSrc;
  output \q_reg[5]_0 ;
  output [2:0]ImmSrc;
  output rd21__3;
  output \q_reg[5]_1 ;
  output \q_reg[5]_2 ;
  output \q_reg[5]_3 ;
  input [3:0]DI;
  input [3:0]S;
  input [3:0]ltu_carry__1_0;
  input [3:0]lt_carry__1_0;
  input [3:0]ltu_carry__2_0;
  input [3:0]lt_carry__2_0;
  input [3:0]\q[31]_i_6 ;
  input [3:0]\q[31]_i_6_0 ;
  input [3:0]ltu_carry__0_0;
  input [3:0]ltu_carry__1_1;
  input [3:0]ltu_carry__2_1;
  input [0:0]\q[31]_i_6_1 ;
  input [3:0]\q[31]_i_6_2 ;
  input \ALUResult[0]_INST_0_i_3_0 ;
  input [30:0]SrcA;
  input [3:0]\ALUResult[0]_INST_0_i_3_1 ;
  input [3:0]\ALUResult[4]_INST_0_i_4_0 ;
  input [3:0]\ALUResult[8]_INST_0_i_2_0 ;
  input [3:0]\ALUResult[12]_INST_0_i_2_0 ;
  input [3:0]\ALUResult[16]_INST_0_i_2_0 ;
  input [3:0]\ALUResult[20]_INST_0_i_2_0 ;
  input [3:0]\ALUResult[24]_INST_0_i_2_0 ;
  input [3:0]\ALUResult[28]_INST_0_i_2_0 ;
  input \addressM[25] ;
  input \addressM[25]_0 ;
  input \addressM[25]_1 ;
  input \addressM[25]_2 ;
  input \addressM[27] ;
  input \addressM[27]_0 ;
  input \addressM[30] ;
  input \addressM[30]_0 ;
  input \addressM[1] ;
  input [31:0]SrcB;
  input \addressM[1]_0 ;
  input [0:0]ALUControl;
  input \ALUResult[0]_INST_0_i_4 ;
  input \ALUResult[0]_INST_0_i_4_0 ;
  input [0:0]SrcA__0;
  input [20:0]Instr;

  wire [0:0]ALUControl;
  wire [0:0]ALUControl__0;
  wire \ALUResult[0]_INST_0_i_3_0 ;
  wire [3:0]\ALUResult[0]_INST_0_i_3_1 ;
  wire \ALUResult[0]_INST_0_i_4 ;
  wire \ALUResult[0]_INST_0_i_4_0 ;
  wire [3:0]\ALUResult[12]_INST_0_i_2_0 ;
  wire [3:0]\ALUResult[16]_INST_0_i_2_0 ;
  wire [3:0]\ALUResult[20]_INST_0_i_2_0 ;
  wire [3:0]\ALUResult[24]_INST_0_i_2_0 ;
  wire \ALUResult[25]_INST_0_i_2_n_0 ;
  wire \ALUResult[27]_INST_0_i_2_n_0 ;
  wire [3:0]\ALUResult[28]_INST_0_i_2_0 ;
  wire \ALUResult[30]_INST_0_i_2_n_0 ;
  wire \ALUResult[30]_INST_0_i_8 ;
  wire \ALUResult[31]_INST_0_i_5 ;
  wire \ALUResult[31]_INST_0_i_5_0 ;
  wire \ALUResult[31]_INST_0_i_5_1 ;
  wire [3:0]\ALUResult[4]_INST_0_i_4_0 ;
  wire [3:0]\ALUResult[8]_INST_0_i_2_0 ;
  wire ALUSrc;
  wire [0:0]CO;
  wire [3:0]DI;
  wire [2:0]ImmSrc;
  wire [20:0]Instr;
  wire [3:0]S;
  wire [30:0]SrcA;
  wire [0:0]SrcA__0;
  wire [31:0]SrcB;
  wire \addressM[1] ;
  wire \addressM[1]_0 ;
  wire \addressM[25] ;
  wire \addressM[25]_0 ;
  wire \addressM[25]_1 ;
  wire \addressM[25]_2 ;
  wire \addressM[27] ;
  wire \addressM[27]_0 ;
  wire \addressM[30] ;
  wire \addressM[30]_0 ;
  wire lt_carry__0_n_0;
  wire lt_carry__0_n_1;
  wire lt_carry__0_n_2;
  wire lt_carry__0_n_3;
  wire [3:0]lt_carry__1_0;
  wire lt_carry__1_n_0;
  wire lt_carry__1_n_1;
  wire lt_carry__1_n_2;
  wire lt_carry__1_n_3;
  wire [3:0]lt_carry__2_0;
  wire lt_carry__2_n_1;
  wire lt_carry__2_n_2;
  wire lt_carry__2_n_3;
  wire lt_carry_n_0;
  wire lt_carry_n_1;
  wire lt_carry_n_2;
  wire lt_carry_n_3;
  wire [3:0]ltu_carry__0_0;
  wire ltu_carry__0_n_0;
  wire ltu_carry__0_n_1;
  wire ltu_carry__0_n_2;
  wire ltu_carry__0_n_3;
  wire [3:0]ltu_carry__1_0;
  wire [3:0]ltu_carry__1_1;
  wire ltu_carry__1_n_0;
  wire ltu_carry__1_n_1;
  wire ltu_carry__1_n_2;
  wire ltu_carry__1_n_3;
  wire [3:0]ltu_carry__2_0;
  wire [3:0]ltu_carry__2_1;
  wire ltu_carry__2_n_1;
  wire ltu_carry__2_n_2;
  wire ltu_carry__2_n_3;
  wire ltu_carry_n_0;
  wire ltu_carry_n_1;
  wire ltu_carry_n_2;
  wire ltu_carry_n_3;
  wire [3:0]\q[31]_i_6 ;
  wire [3:0]\q[31]_i_6_0 ;
  wire [0:0]\q[31]_i_6_1 ;
  wire [3:0]\q[31]_i_6_2 ;
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
  wire \q_reg[26] ;
  wire \q_reg[28] ;
  wire \q_reg[29] ;
  wire \q_reg[2] ;
  wire [0:0]\q_reg[30] ;
  wire \q_reg[31] ;
  wire \q_reg[3] ;
  wire \q_reg[4] ;
  wire \q_reg[5] ;
  wire \q_reg[5]_0 ;
  wire \q_reg[5]_1 ;
  wire \q_reg[5]_2 ;
  wire \q_reg[5]_3 ;
  wire \q_reg[6] ;
  wire \q_reg[7] ;
  wire \q_reg[8] ;
  wire \q_reg[9] ;
  wire rd21__3;
  wire [31:0]sum;
  wire sum__0_carry__0_n_0;
  wire sum__0_carry__0_n_1;
  wire sum__0_carry__0_n_2;
  wire sum__0_carry__0_n_3;
  wire sum__0_carry__1_n_0;
  wire sum__0_carry__1_n_1;
  wire sum__0_carry__1_n_2;
  wire sum__0_carry__1_n_3;
  wire sum__0_carry__2_n_0;
  wire sum__0_carry__2_n_1;
  wire sum__0_carry__2_n_2;
  wire sum__0_carry__2_n_3;
  wire sum__0_carry__3_n_0;
  wire sum__0_carry__3_n_1;
  wire sum__0_carry__3_n_2;
  wire sum__0_carry__3_n_3;
  wire sum__0_carry__4_n_0;
  wire sum__0_carry__4_n_1;
  wire sum__0_carry__4_n_2;
  wire sum__0_carry__4_n_3;
  wire sum__0_carry__5_n_0;
  wire sum__0_carry__5_n_1;
  wire sum__0_carry__5_n_2;
  wire sum__0_carry__5_n_3;
  wire sum__0_carry__6_n_1;
  wire sum__0_carry__6_n_2;
  wire sum__0_carry__6_n_3;
  wire sum__0_carry_i_12_n_0;
  wire sum__0_carry_n_0;
  wire sum__0_carry_n_1;
  wire sum__0_carry_n_2;
  wire sum__0_carry_n_3;
  wire [3:0]NLW_lt_carry_O_UNCONNECTED;
  wire [3:0]NLW_lt_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_lt_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_lt_carry__2_O_UNCONNECTED;
  wire [3:0]NLW_ltu_carry_O_UNCONNECTED;
  wire [3:0]NLW_ltu_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_ltu_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_ltu_carry__2_O_UNCONNECTED;
  wire [3:3]NLW_sum__0_carry__6_CO_UNCONNECTED;

  LUT5 #(
    .INIT(32'h3330B888)) 
    \ALUResult[0]_INST_0_i_3 
       (.I0(sum[0]),
        .I1(\addressM[1] ),
        .I2(SrcB[0]),
        .I3(SrcA[0]),
        .I4(\addressM[1]_0 ),
        .O(\q_reg[0] ));
  LUT6 #(
    .INIT(64'hFFFF0E040E040E04)) 
    \ALUResult[0]_INST_0_i_8 
       (.I0(ALUControl),
        .I1(CO),
        .I2(ALUControl__0),
        .I3(\q_reg[30] ),
        .I4(\ALUResult[0]_INST_0_i_4 ),
        .I5(\ALUResult[0]_INST_0_i_4_0 ),
        .O(\ALUResult[30]_INST_0_i_8 ));
  LUT5 #(
    .INIT(32'h3B383808)) 
    \ALUResult[10]_INST_0_i_2 
       (.I0(sum[10]),
        .I1(\addressM[1] ),
        .I2(\addressM[1]_0 ),
        .I3(SrcB[10]),
        .I4(SrcA[10]),
        .O(\q_reg[10] ));
  LUT5 #(
    .INIT(32'h3B383808)) 
    \ALUResult[11]_INST_0_i_2 
       (.I0(sum[11]),
        .I1(\addressM[1] ),
        .I2(\addressM[1]_0 ),
        .I3(SrcB[11]),
        .I4(SrcA[11]),
        .O(\q_reg[11] ));
  LUT5 #(
    .INIT(32'h3B383808)) 
    \ALUResult[12]_INST_0_i_2 
       (.I0(sum[12]),
        .I1(\addressM[1] ),
        .I2(\addressM[1]_0 ),
        .I3(SrcB[12]),
        .I4(SrcA[12]),
        .O(\q_reg[12] ));
  LUT5 #(
    .INIT(32'h3B383808)) 
    \ALUResult[13]_INST_0_i_2 
       (.I0(sum[13]),
        .I1(\addressM[1] ),
        .I2(\addressM[1]_0 ),
        .I3(SrcB[13]),
        .I4(SrcA[13]),
        .O(\q_reg[13] ));
  LUT5 #(
    .INIT(32'h3B383808)) 
    \ALUResult[14]_INST_0_i_2 
       (.I0(sum[14]),
        .I1(\addressM[1] ),
        .I2(\addressM[1]_0 ),
        .I3(SrcB[14]),
        .I4(SrcA[14]),
        .O(\q_reg[14] ));
  LUT5 #(
    .INIT(32'h3B383808)) 
    \ALUResult[15]_INST_0_i_2 
       (.I0(sum[15]),
        .I1(\addressM[1] ),
        .I2(\addressM[1]_0 ),
        .I3(SrcB[15]),
        .I4(SrcA[15]),
        .O(\q_reg[15] ));
  LUT5 #(
    .INIT(32'h3B383808)) 
    \ALUResult[16]_INST_0_i_2 
       (.I0(sum[16]),
        .I1(\addressM[1] ),
        .I2(\addressM[1]_0 ),
        .I3(SrcB[16]),
        .I4(SrcA[16]),
        .O(\q_reg[16] ));
  LUT5 #(
    .INIT(32'h3B383808)) 
    \ALUResult[17]_INST_0_i_2 
       (.I0(sum[17]),
        .I1(\addressM[1] ),
        .I2(\addressM[1]_0 ),
        .I3(SrcB[17]),
        .I4(SrcA[17]),
        .O(\q_reg[17] ));
  LUT5 #(
    .INIT(32'h3B383808)) 
    \ALUResult[18]_INST_0_i_2 
       (.I0(sum[18]),
        .I1(\addressM[1] ),
        .I2(\addressM[1]_0 ),
        .I3(SrcB[18]),
        .I4(SrcA[18]),
        .O(\q_reg[18] ));
  LUT5 #(
    .INIT(32'h3B383808)) 
    \ALUResult[19]_INST_0_i_2 
       (.I0(sum[19]),
        .I1(\addressM[1] ),
        .I2(\addressM[1]_0 ),
        .I3(SrcB[19]),
        .I4(SrcA[19]),
        .O(\q_reg[19] ));
  LUT5 #(
    .INIT(32'h3330B888)) 
    \ALUResult[1]_INST_0_i_3 
       (.I0(sum[1]),
        .I1(\addressM[1] ),
        .I2(SrcB[1]),
        .I3(SrcA[1]),
        .I4(\addressM[1]_0 ),
        .O(\q_reg[1] ));
  LUT5 #(
    .INIT(32'h3B383808)) 
    \ALUResult[20]_INST_0_i_2 
       (.I0(sum[20]),
        .I1(\addressM[1] ),
        .I2(\addressM[1]_0 ),
        .I3(SrcB[20]),
        .I4(SrcA[20]),
        .O(\q_reg[20] ));
  LUT5 #(
    .INIT(32'h3B383808)) 
    \ALUResult[21]_INST_0_i_2 
       (.I0(sum[21]),
        .I1(\addressM[1] ),
        .I2(\addressM[1]_0 ),
        .I3(SrcB[21]),
        .I4(SrcA[21]),
        .O(\q_reg[21] ));
  LUT5 #(
    .INIT(32'h3B383808)) 
    \ALUResult[22]_INST_0_i_2 
       (.I0(sum[22]),
        .I1(\addressM[1] ),
        .I2(\addressM[1]_0 ),
        .I3(SrcB[22]),
        .I4(SrcA[22]),
        .O(\q_reg[22] ));
  LUT5 #(
    .INIT(32'h3B383808)) 
    \ALUResult[23]_INST_0_i_2 
       (.I0(sum[23]),
        .I1(\addressM[1] ),
        .I2(\addressM[1]_0 ),
        .I3(SrcB[23]),
        .I4(SrcA[23]),
        .O(\q_reg[23] ));
  LUT5 #(
    .INIT(32'h3B383808)) 
    \ALUResult[24]_INST_0_i_2 
       (.I0(sum[24]),
        .I1(\addressM[1] ),
        .I2(\addressM[1]_0 ),
        .I3(SrcB[24]),
        .I4(SrcA[24]),
        .O(\q_reg[24] ));
  LUT5 #(
    .INIT(32'hFEEEAAAA)) 
    \ALUResult[25]_INST_0 
       (.I0(\addressM[25] ),
        .I1(\ALUResult[25]_INST_0_i_2_n_0 ),
        .I2(\addressM[25]_0 ),
        .I3(\addressM[25]_1 ),
        .I4(\addressM[25]_2 ),
        .O(\ALUResult[31]_INST_0_i_5 ));
  LUT5 #(
    .INIT(32'h3B383808)) 
    \ALUResult[25]_INST_0_i_2 
       (.I0(sum[25]),
        .I1(\addressM[1] ),
        .I2(\addressM[1]_0 ),
        .I3(SrcB[25]),
        .I4(SrcA[25]),
        .O(\ALUResult[25]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h3B383808)) 
    \ALUResult[26]_INST_0_i_2 
       (.I0(sum[26]),
        .I1(\addressM[1] ),
        .I2(\addressM[1]_0 ),
        .I3(SrcB[26]),
        .I4(SrcA[26]),
        .O(\q_reg[26] ));
  LUT5 #(
    .INIT(32'hFEEEAAAA)) 
    \ALUResult[27]_INST_0 
       (.I0(\addressM[27] ),
        .I1(\ALUResult[27]_INST_0_i_2_n_0 ),
        .I2(\addressM[27]_0 ),
        .I3(\addressM[25]_1 ),
        .I4(\addressM[25]_2 ),
        .O(\ALUResult[31]_INST_0_i_5_0 ));
  LUT5 #(
    .INIT(32'h3B383808)) 
    \ALUResult[27]_INST_0_i_2 
       (.I0(sum[27]),
        .I1(\addressM[1] ),
        .I2(\addressM[1]_0 ),
        .I3(SrcB[27]),
        .I4(SrcA[27]),
        .O(\ALUResult[27]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h3B383808)) 
    \ALUResult[28]_INST_0_i_2 
       (.I0(sum[28]),
        .I1(\addressM[1] ),
        .I2(\addressM[1]_0 ),
        .I3(SrcB[28]),
        .I4(SrcA[28]),
        .O(\q_reg[28] ));
  LUT5 #(
    .INIT(32'h3B383808)) 
    \ALUResult[29]_INST_0_i_2 
       (.I0(sum[29]),
        .I1(\addressM[1] ),
        .I2(\addressM[1]_0 ),
        .I3(SrcB[29]),
        .I4(SrcA[29]),
        .O(\q_reg[29] ));
  LUT5 #(
    .INIT(32'h3B383808)) 
    \ALUResult[2]_INST_0_i_3 
       (.I0(sum[2]),
        .I1(\addressM[1] ),
        .I2(\addressM[1]_0 ),
        .I3(SrcB[2]),
        .I4(SrcA[2]),
        .O(\q_reg[2] ));
  LUT5 #(
    .INIT(32'hFEEEAAAA)) 
    \ALUResult[30]_INST_0 
       (.I0(\addressM[30] ),
        .I1(\ALUResult[30]_INST_0_i_2_n_0 ),
        .I2(\addressM[30]_0 ),
        .I3(\addressM[25]_1 ),
        .I4(\addressM[25]_2 ),
        .O(\ALUResult[31]_INST_0_i_5_1 ));
  LUT5 #(
    .INIT(32'h3B383808)) 
    \ALUResult[30]_INST_0_i_2 
       (.I0(sum[30]),
        .I1(\addressM[1] ),
        .I2(\addressM[1]_0 ),
        .I3(SrcA[30]),
        .I4(SrcB[30]),
        .O(\ALUResult[30]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hAABF)) 
    \ALUResult[31]_INST_0_i_19 
       (.I0(Instr[0]),
        .I1(Instr[2]),
        .I2(Instr[3]),
        .I3(Instr[4]),
        .O(ALUSrc));
  LUT5 #(
    .INIT(32'h3B383808)) 
    \ALUResult[31]_INST_0_i_2 
       (.I0(sum[31]),
        .I1(\addressM[1] ),
        .I2(\addressM[1]_0 ),
        .I3(SrcA__0),
        .I4(SrcB[31]),
        .O(\q_reg[31] ));
  LUT5 #(
    .INIT(32'h3B383808)) 
    \ALUResult[3]_INST_0_i_3 
       (.I0(sum[3]),
        .I1(\addressM[1] ),
        .I2(\addressM[1]_0 ),
        .I3(SrcB[3]),
        .I4(SrcA[3]),
        .O(\q_reg[3] ));
  LUT5 #(
    .INIT(32'h3B383808)) 
    \ALUResult[4]_INST_0_i_4 
       (.I0(sum[4]),
        .I1(\addressM[1] ),
        .I2(\addressM[1]_0 ),
        .I3(SrcB[4]),
        .I4(SrcA[4]),
        .O(\q_reg[4] ));
  LUT5 #(
    .INIT(32'h3B383808)) 
    \ALUResult[5]_INST_0_i_2 
       (.I0(sum[5]),
        .I1(\addressM[1] ),
        .I2(\addressM[1]_0 ),
        .I3(SrcB[5]),
        .I4(SrcA[5]),
        .O(\q_reg[5] ));
  LUT5 #(
    .INIT(32'h3B383808)) 
    \ALUResult[6]_INST_0_i_2 
       (.I0(sum[6]),
        .I1(\addressM[1] ),
        .I2(\addressM[1]_0 ),
        .I3(SrcB[6]),
        .I4(SrcA[6]),
        .O(\q_reg[6] ));
  LUT5 #(
    .INIT(32'h3B383808)) 
    \ALUResult[7]_INST_0_i_2 
       (.I0(sum[7]),
        .I1(\addressM[1] ),
        .I2(\addressM[1]_0 ),
        .I3(SrcB[7]),
        .I4(SrcA[7]),
        .O(\q_reg[7] ));
  LUT5 #(
    .INIT(32'h3B383808)) 
    \ALUResult[8]_INST_0_i_2 
       (.I0(sum[8]),
        .I1(\addressM[1] ),
        .I2(\addressM[1]_0 ),
        .I3(SrcB[8]),
        .I4(SrcA[8]),
        .O(\q_reg[8] ));
  LUT5 #(
    .INIT(32'h3B383808)) 
    \ALUResult[9]_INST_0_i_2 
       (.I0(sum[9]),
        .I1(\addressM[1] ),
        .I2(\addressM[1]_0 ),
        .I3(SrcB[9]),
        .I4(SrcA[9]),
        .O(\q_reg[9] ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \WriteData[7]_INST_0_i_1 
       (.I0(Instr[18]),
        .I1(Instr[14]),
        .I2(Instr[15]),
        .I3(Instr[16]),
        .I4(Instr[17]),
        .O(rd21__3));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 lt_carry
       (.CI(1'b0),
        .CO({lt_carry_n_0,lt_carry_n_1,lt_carry_n_2,lt_carry_n_3}),
        .CYINIT(1'b0),
        .DI(DI),
        .O(NLW_lt_carry_O_UNCONNECTED[3:0]),
        .S(S));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 lt_carry__0
       (.CI(lt_carry_n_0),
        .CO({lt_carry__0_n_0,lt_carry__0_n_1,lt_carry__0_n_2,lt_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(ltu_carry__1_0),
        .O(NLW_lt_carry__0_O_UNCONNECTED[3:0]),
        .S(lt_carry__1_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 lt_carry__1
       (.CI(lt_carry__0_n_0),
        .CO({lt_carry__1_n_0,lt_carry__1_n_1,lt_carry__1_n_2,lt_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(ltu_carry__2_0),
        .O(NLW_lt_carry__1_O_UNCONNECTED[3:0]),
        .S(lt_carry__2_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 lt_carry__2
       (.CI(lt_carry__1_n_0),
        .CO({CO,lt_carry__2_n_1,lt_carry__2_n_2,lt_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(\q[31]_i_6 ),
        .O(NLW_lt_carry__2_O_UNCONNECTED[3:0]),
        .S(\q[31]_i_6_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    lt_carry_i_10
       (.I0(Instr[3]),
        .I1(Instr[0]),
        .O(\q_reg[5]_1 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    lt_carry_i_9
       (.I0(Instr[12]),
        .I1(Instr[11]),
        .I2(Instr[10]),
        .I3(Instr[9]),
        .I4(Instr[13]),
        .I5(\q_reg[5]_1 ),
        .O(\q_reg[5]_3 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 ltu_carry
       (.CI(1'b0),
        .CO({ltu_carry_n_0,ltu_carry_n_1,ltu_carry_n_2,ltu_carry_n_3}),
        .CYINIT(1'b0),
        .DI(DI),
        .O(NLW_ltu_carry_O_UNCONNECTED[3:0]),
        .S(ltu_carry__0_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 ltu_carry__0
       (.CI(ltu_carry_n_0),
        .CO({ltu_carry__0_n_0,ltu_carry__0_n_1,ltu_carry__0_n_2,ltu_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(ltu_carry__1_0),
        .O(NLW_ltu_carry__0_O_UNCONNECTED[3:0]),
        .S(ltu_carry__1_1));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 ltu_carry__1
       (.CI(ltu_carry__0_n_0),
        .CO({ltu_carry__1_n_0,ltu_carry__1_n_1,ltu_carry__1_n_2,ltu_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(ltu_carry__2_0),
        .O(NLW_ltu_carry__1_O_UNCONNECTED[3:0]),
        .S(ltu_carry__2_1));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 ltu_carry__2
       (.CI(ltu_carry__1_n_0),
        .CO({\q_reg[30] ,ltu_carry__2_n_1,ltu_carry__2_n_2,ltu_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({\q[31]_i_6_1 ,\q[31]_i_6 [2:0]}),
        .O(NLW_ltu_carry__2_O_UNCONNECTED[3:0]),
        .S(\q[31]_i_6_2 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sum__0_carry
       (.CI(1'b0),
        .CO({sum__0_carry_n_0,sum__0_carry_n_1,sum__0_carry_n_2,sum__0_carry_n_3}),
        .CYINIT(\ALUResult[0]_INST_0_i_3_0 ),
        .DI(SrcA[3:0]),
        .O(sum[3:0]),
        .S(\ALUResult[0]_INST_0_i_3_1 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sum__0_carry__0
       (.CI(sum__0_carry_n_0),
        .CO({sum__0_carry__0_n_0,sum__0_carry__0_n_1,sum__0_carry__0_n_2,sum__0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(SrcA[7:4]),
        .O(sum[7:4]),
        .S(\ALUResult[4]_INST_0_i_4_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sum__0_carry__1
       (.CI(sum__0_carry__0_n_0),
        .CO({sum__0_carry__1_n_0,sum__0_carry__1_n_1,sum__0_carry__1_n_2,sum__0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(SrcA[11:8]),
        .O(sum[11:8]),
        .S(\ALUResult[8]_INST_0_i_2_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sum__0_carry__2
       (.CI(sum__0_carry__1_n_0),
        .CO({sum__0_carry__2_n_0,sum__0_carry__2_n_1,sum__0_carry__2_n_2,sum__0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(SrcA[15:12]),
        .O(sum[15:12]),
        .S(\ALUResult[12]_INST_0_i_2_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sum__0_carry__3
       (.CI(sum__0_carry__2_n_0),
        .CO({sum__0_carry__3_n_0,sum__0_carry__3_n_1,sum__0_carry__3_n_2,sum__0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(SrcA[19:16]),
        .O(sum[19:16]),
        .S(\ALUResult[16]_INST_0_i_2_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sum__0_carry__4
       (.CI(sum__0_carry__3_n_0),
        .CO({sum__0_carry__4_n_0,sum__0_carry__4_n_1,sum__0_carry__4_n_2,sum__0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI(SrcA[23:20]),
        .O(sum[23:20]),
        .S(\ALUResult[20]_INST_0_i_2_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sum__0_carry__5
       (.CI(sum__0_carry__4_n_0),
        .CO({sum__0_carry__5_n_0,sum__0_carry__5_n_1,sum__0_carry__5_n_2,sum__0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI(SrcA[27:24]),
        .O(sum[27:24]),
        .S(\ALUResult[24]_INST_0_i_2_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sum__0_carry__6
       (.CI(sum__0_carry__5_n_0),
        .CO({NLW_sum__0_carry__6_CO_UNCONNECTED[3],sum__0_carry__6_n_1,sum__0_carry__6_n_2,sum__0_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,SrcA[30:28]}),
        .O(sum[31:28]),
        .S(\ALUResult[28]_INST_0_i_2_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h803322C0)) 
    sum__0_carry_i_10
       (.I0(sum__0_carry_i_12_n_0),
        .I1(Instr[0]),
        .I2(Instr[3]),
        .I3(Instr[2]),
        .I4(Instr[4]),
        .O(ALUControl__0));
  LUT5 #(
    .INIT(32'h0FF000F8)) 
    sum__0_carry_i_12
       (.I0(Instr[19]),
        .I1(Instr[3]),
        .I2(Instr[6]),
        .I3(Instr[7]),
        .I4(Instr[8]),
        .O(sum__0_carry_i_12_n_0));
  LUT5 #(
    .INIT(32'hFCAA0CAA)) 
    y_carry__1_i_5
       (.I0(Instr[20]),
        .I1(Instr[5]),
        .I2(ImmSrc[0]),
        .I3(ImmSrc[1]),
        .I4(Instr[14]),
        .O(\q_reg[5]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h1F)) 
    y_carry__2_i_5
       (.I0(Instr[4]),
        .I1(Instr[0]),
        .I2(Instr[1]),
        .O(\q_reg[5]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFF02)) 
    y_carry_i_6
       (.I0(Instr[3]),
        .I1(Instr[4]),
        .I2(Instr[2]),
        .I3(Instr[1]),
        .O(ImmSrc[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    y_carry_i_7
       (.I0(Instr[1]),
        .I1(Instr[0]),
        .I2(Instr[4]),
        .O(ImmSrc[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    y_carry_i_8
       (.I0(Instr[0]),
        .I1(Instr[4]),
        .O(ImmSrc[2]));
endmodule

(* ORIG_REF_NAME = "datapath" *) 
module design_1_top_0_0_datapath
   (Q,
    \ALUResult[31]_INST_0_i_5 ,
    \ALUResult[31]_INST_0_i_5_0 ,
    \ALUResult[31]_INST_0_i_5_1 ,
    \ALUResult[31]_INST_0_i_5_2 ,
    \ALUResult[31]_INST_0_i_5_3 ,
    \ALUResult[31]_INST_0_i_5_4 ,
    \ALUResult[31]_INST_0_i_5_5 ,
    \ALUResult[31]_INST_0_i_5_6 ,
    \ALUResult[31]_INST_0_i_5_7 ,
    \ALUResult[31]_INST_0_i_5_8 ,
    \ALUResult[31]_INST_0_i_5_9 ,
    \ALUResult[31]_INST_0_i_5_10 ,
    \ALUResult[31]_INST_0_i_5_11 ,
    \ALUResult[31]_INST_0_i_5_12 ,
    \ALUResult[31]_INST_0_i_5_13 ,
    \ALUResult[31]_INST_0_i_5_14 ,
    \ALUResult[31]_INST_0_i_5_15 ,
    \ALUResult[31]_INST_0_i_5_16 ,
    \ALUResult[31]_INST_0_i_5_17 ,
    \ALUResult[31]_INST_0_i_5_18 ,
    \ALUResult[31]_INST_0_i_5_19 ,
    \ALUResult[31]_INST_0_i_5_20 ,
    \ALUResult[31]_INST_0_i_5_21 ,
    \ALUResult[31]_INST_0_i_5_22 ,
    \ALUResult[31]_INST_0_i_5_23 ,
    \ALUResult[31]_INST_0_i_5_24 ,
    \ALUResult[31]_INST_0_i_5_25 ,
    \ALUResult[31]_INST_0_i_5_26 ,
    \ALUResult[31]_INST_0_i_5_27 ,
    \ALUResult[31]_INST_0_i_5_28 ,
    \ALUResult[31]_INST_0_i_5_29 ,
    \ALUResult[31]_INST_0_i_5_30 ,
    WriteData,
    clk,
    Instr,
    ReadData,
    PCReady,
    reset);
  output [31:0]Q;
  output \ALUResult[31]_INST_0_i_5 ;
  output \ALUResult[31]_INST_0_i_5_0 ;
  output \ALUResult[31]_INST_0_i_5_1 ;
  output \ALUResult[31]_INST_0_i_5_2 ;
  output \ALUResult[31]_INST_0_i_5_3 ;
  output \ALUResult[31]_INST_0_i_5_4 ;
  output \ALUResult[31]_INST_0_i_5_5 ;
  output \ALUResult[31]_INST_0_i_5_6 ;
  output \ALUResult[31]_INST_0_i_5_7 ;
  output \ALUResult[31]_INST_0_i_5_8 ;
  output \ALUResult[31]_INST_0_i_5_9 ;
  output \ALUResult[31]_INST_0_i_5_10 ;
  output \ALUResult[31]_INST_0_i_5_11 ;
  output \ALUResult[31]_INST_0_i_5_12 ;
  output \ALUResult[31]_INST_0_i_5_13 ;
  output \ALUResult[31]_INST_0_i_5_14 ;
  output \ALUResult[31]_INST_0_i_5_15 ;
  output \ALUResult[31]_INST_0_i_5_16 ;
  output \ALUResult[31]_INST_0_i_5_17 ;
  output \ALUResult[31]_INST_0_i_5_18 ;
  output \ALUResult[31]_INST_0_i_5_19 ;
  output \ALUResult[31]_INST_0_i_5_20 ;
  output \ALUResult[31]_INST_0_i_5_21 ;
  output \ALUResult[31]_INST_0_i_5_22 ;
  output \ALUResult[31]_INST_0_i_5_23 ;
  output \ALUResult[31]_INST_0_i_5_24 ;
  output \ALUResult[31]_INST_0_i_5_25 ;
  output \ALUResult[31]_INST_0_i_5_26 ;
  output \ALUResult[31]_INST_0_i_5_27 ;
  output \ALUResult[31]_INST_0_i_5_28 ;
  output \ALUResult[31]_INST_0_i_5_29 ;
  output \ALUResult[31]_INST_0_i_5_30 ;
  output [31:0]WriteData;
  input clk;
  input [31:0]Instr;
  input [31:0]ReadData;
  input PCReady;
  input reset;

  wire [1:1]ALUControl;
  wire [0:0]ALUControl__0;
  wire \ALUResult[31]_INST_0_i_5 ;
  wire \ALUResult[31]_INST_0_i_5_0 ;
  wire \ALUResult[31]_INST_0_i_5_1 ;
  wire \ALUResult[31]_INST_0_i_5_10 ;
  wire \ALUResult[31]_INST_0_i_5_11 ;
  wire \ALUResult[31]_INST_0_i_5_12 ;
  wire \ALUResult[31]_INST_0_i_5_13 ;
  wire \ALUResult[31]_INST_0_i_5_14 ;
  wire \ALUResult[31]_INST_0_i_5_15 ;
  wire \ALUResult[31]_INST_0_i_5_16 ;
  wire \ALUResult[31]_INST_0_i_5_17 ;
  wire \ALUResult[31]_INST_0_i_5_18 ;
  wire \ALUResult[31]_INST_0_i_5_19 ;
  wire \ALUResult[31]_INST_0_i_5_2 ;
  wire \ALUResult[31]_INST_0_i_5_20 ;
  wire \ALUResult[31]_INST_0_i_5_21 ;
  wire \ALUResult[31]_INST_0_i_5_22 ;
  wire \ALUResult[31]_INST_0_i_5_23 ;
  wire \ALUResult[31]_INST_0_i_5_24 ;
  wire \ALUResult[31]_INST_0_i_5_25 ;
  wire \ALUResult[31]_INST_0_i_5_26 ;
  wire \ALUResult[31]_INST_0_i_5_27 ;
  wire \ALUResult[31]_INST_0_i_5_28 ;
  wire \ALUResult[31]_INST_0_i_5_29 ;
  wire \ALUResult[31]_INST_0_i_5_3 ;
  wire \ALUResult[31]_INST_0_i_5_30 ;
  wire \ALUResult[31]_INST_0_i_5_4 ;
  wire \ALUResult[31]_INST_0_i_5_5 ;
  wire \ALUResult[31]_INST_0_i_5_6 ;
  wire \ALUResult[31]_INST_0_i_5_7 ;
  wire \ALUResult[31]_INST_0_i_5_8 ;
  wire \ALUResult[31]_INST_0_i_5_9 ;
  wire ALUSrc;
  wire [2:0]ImmSrc;
  wire [31:0]Instr;
  wire [31:3]PCNext;
  wire [31:3]PCPlus4;
  wire PCReady;
  wire [31:0]PCTarget;
  wire [31:0]Q;
  wire [31:0]ReadData;
  wire [31:0]Result;
  wire [1:0]ResultSrc;
  wire [30:0]SrcA;
  wire [31:31]SrcA__0;
  wire [31:0]SrcB;
  wire [31:0]WriteData;
  wire \c/PCSrc10_out ;
  wire clk;
  wire [7:7]data6;
  wire lt;
  wire ltu;
  wire main_alu_n_10;
  wire main_alu_n_11;
  wire main_alu_n_12;
  wire main_alu_n_13;
  wire main_alu_n_14;
  wire main_alu_n_15;
  wire main_alu_n_16;
  wire main_alu_n_17;
  wire main_alu_n_18;
  wire main_alu_n_19;
  wire main_alu_n_20;
  wire main_alu_n_21;
  wire main_alu_n_22;
  wire main_alu_n_23;
  wire main_alu_n_24;
  wire main_alu_n_25;
  wire main_alu_n_26;
  wire main_alu_n_27;
  wire main_alu_n_28;
  wire main_alu_n_29;
  wire main_alu_n_30;
  wire main_alu_n_31;
  wire main_alu_n_32;
  wire main_alu_n_33;
  wire main_alu_n_34;
  wire main_alu_n_35;
  wire main_alu_n_37;
  wire main_alu_n_42;
  wire main_alu_n_43;
  wire main_alu_n_44;
  wire main_alu_n_5;
  wire main_alu_n_6;
  wire main_alu_n_8;
  wire main_alu_n_9;
  wire pcadd4_n_54;
  wire pcreg_n_0;
  wire pcreg_n_1;
  wire pcreg_n_105;
  wire pcreg_n_106;
  wire pcreg_n_107;
  wire pcreg_n_108;
  wire pcreg_n_109;
  wire pcreg_n_110;
  wire pcreg_n_111;
  wire pcreg_n_112;
  wire pcreg_n_114;
  wire pcreg_n_115;
  wire pcreg_n_116;
  wire pcreg_n_117;
  wire pcreg_n_118;
  wire pcreg_n_120;
  wire pcreg_n_121;
  wire pcreg_n_122;
  wire pcreg_n_124;
  wire pcreg_n_125;
  wire pcreg_n_126;
  wire pcreg_n_127;
  wire pcreg_n_128;
  wire pcreg_n_129;
  wire pcreg_n_131;
  wire pcreg_n_132;
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
  wire pcreg_n_188;
  wire pcreg_n_189;
  wire pcreg_n_190;
  wire pcreg_n_191;
  wire pcreg_n_192;
  wire pcreg_n_193;
  wire pcreg_n_195;
  wire pcreg_n_196;
  wire pcreg_n_197;
  wire pcreg_n_198;
  wire pcreg_n_199;
  wire pcreg_n_2;
  wire pcreg_n_200;
  wire pcreg_n_201;
  wire pcreg_n_202;
  wire pcreg_n_203;
  wire pcreg_n_204;
  wire pcreg_n_205;
  wire pcreg_n_206;
  wire pcreg_n_207;
  wire pcreg_n_208;
  wire pcreg_n_209;
  wire pcreg_n_210;
  wire pcreg_n_211;
  wire pcreg_n_212;
  wire pcreg_n_213;
  wire pcreg_n_214;
  wire pcreg_n_215;
  wire pcreg_n_216;
  wire pcreg_n_217;
  wire pcreg_n_218;
  wire pcreg_n_219;
  wire pcreg_n_220;
  wire pcreg_n_221;
  wire pcreg_n_222;
  wire pcreg_n_223;
  wire pcreg_n_224;
  wire pcreg_n_225;
  wire pcreg_n_226;
  wire pcreg_n_227;
  wire pcreg_n_228;
  wire pcreg_n_229;
  wire pcreg_n_230;
  wire pcreg_n_231;
  wire pcreg_n_232;
  wire pcreg_n_233;
  wire pcreg_n_234;
  wire pcreg_n_235;
  wire pcreg_n_3;
  wire pcreg_n_41;
  wire pcreg_n_47;
  wire pcreg_n_48;
  wire pcreg_n_49;
  wire pcreg_n_57;
  wire pcreg_n_58;
  wire pcreg_n_59;
  wire pcreg_n_60;
  wire pcreg_n_61;
  wire pcreg_n_62;
  wire pcreg_n_63;
  wire pcreg_n_64;
  wire pcreg_n_65;
  wire pcreg_n_66;
  wire pcreg_n_67;
  wire pcreg_n_68;
  wire pcreg_n_70;
  wire pcreg_n_72;
  wire pcreg_n_73;
  wire [31:0]rd10;
  wire [15:0]rd2;
  wire [7:0]rd20;
  wire rd21__3;
  wire reset;
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
  wire rf_n_169;
  wire rf_n_170;
  wire rf_n_171;
  wire rf_n_172;
  wire rf_n_173;
  wire rf_n_174;
  wire rf_n_175;
  wire rf_n_176;
  wire rf_n_177;
  wire rf_n_178;
  wire rf_n_179;
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
  wire rf_n_252;
  wire rf_n_253;
  wire rf_n_254;
  wire rf_n_255;
  wire rf_n_256;
  wire rf_n_257;
  wire rf_n_258;
  wire rf_n_259;
  wire rf_n_260;
  wire rf_n_261;
  wire rf_n_262;
  wire rf_n_263;
  wire rf_n_264;
  wire rf_n_265;
  wire rf_n_69;
  wire rf_n_86;

  design_1_top_0_0_alu main_alu
       (.ALUControl(ALUControl),
        .ALUControl__0(ALUControl__0),
        .\ALUResult[0]_INST_0_i_3_0 (rf_n_265),
        .\ALUResult[0]_INST_0_i_3_1 ({rf_n_237,rf_n_238,rf_n_239,rf_n_240}),
        .\ALUResult[0]_INST_0_i_4 (rf_n_145),
        .\ALUResult[0]_INST_0_i_4_0 (rf_n_127),
        .\ALUResult[12]_INST_0_i_2_0 ({rf_n_249,rf_n_250,rf_n_251,rf_n_252}),
        .\ALUResult[16]_INST_0_i_2_0 ({rf_n_253,rf_n_254,rf_n_255,rf_n_256}),
        .\ALUResult[20]_INST_0_i_2_0 ({rf_n_257,rf_n_258,rf_n_259,rf_n_260}),
        .\ALUResult[24]_INST_0_i_2_0 ({rf_n_261,rf_n_262,rf_n_263,rf_n_264}),
        .\ALUResult[28]_INST_0_i_2_0 ({rf_n_198,rf_n_199,rf_n_200,rf_n_201}),
        .\ALUResult[30]_INST_0_i_8 (main_alu_n_6),
        .\ALUResult[31]_INST_0_i_5 (\ALUResult[31]_INST_0_i_5_24 ),
        .\ALUResult[31]_INST_0_i_5_0 (\ALUResult[31]_INST_0_i_5_26 ),
        .\ALUResult[31]_INST_0_i_5_1 (\ALUResult[31]_INST_0_i_5_29 ),
        .\ALUResult[4]_INST_0_i_4_0 ({rf_n_241,rf_n_242,rf_n_243,rf_n_244}),
        .\ALUResult[8]_INST_0_i_2_0 ({rf_n_245,rf_n_246,rf_n_247,rf_n_248}),
        .ALUSrc(ALUSrc),
        .CO(lt),
        .DI({pcreg_n_191,rf_n_146,rf_n_147,rf_n_148}),
        .ImmSrc(ImmSrc),
        .Instr({Instr[31:30],Instr[24:12],Instr[7:2]}),
        .S({rf_n_221,rf_n_222,rf_n_223,rf_n_224}),
        .SrcA(SrcA),
        .SrcA__0(SrcA__0),
        .SrcB(SrcB),
        .\addressM[1] (pcreg_n_197),
        .\addressM[1]_0 (pcreg_n_198),
        .\addressM[25] (rf_n_136),
        .\addressM[25]_0 (rf_n_135),
        .\addressM[25]_1 (pcreg_n_48),
        .\addressM[25]_2 (pcreg_n_49),
        .\addressM[27] (rf_n_138),
        .\addressM[27]_0 (rf_n_137),
        .\addressM[30] (rf_n_143),
        .\addressM[30]_0 (rf_n_139),
        .lt_carry__1_0({rf_n_225,rf_n_226,rf_n_227,rf_n_228}),
        .lt_carry__2_0({rf_n_229,rf_n_230,rf_n_231,rf_n_232}),
        .ltu_carry__0_0({rf_n_149,rf_n_150,rf_n_151,rf_n_152}),
        .ltu_carry__1_0({rf_n_172,rf_n_173,rf_n_174,rf_n_175}),
        .ltu_carry__1_1({rf_n_176,rf_n_177,rf_n_178,rf_n_179}),
        .ltu_carry__2_0({rf_n_180,rf_n_181,rf_n_182,rf_n_183}),
        .ltu_carry__2_1({rf_n_184,rf_n_185,rf_n_186,rf_n_187}),
        .\q[31]_i_6 ({rf_n_188,rf_n_189,rf_n_190,rf_n_191}),
        .\q[31]_i_6_0 ({rf_n_233,rf_n_234,rf_n_235,rf_n_236}),
        .\q[31]_i_6_1 (rf_n_197),
        .\q[31]_i_6_2 ({rf_n_192,rf_n_193,rf_n_194,rf_n_195}),
        .\q_reg[0] (main_alu_n_34),
        .\q_reg[10] (main_alu_n_16),
        .\q_reg[11] (main_alu_n_17),
        .\q_reg[12] (main_alu_n_18),
        .\q_reg[13] (main_alu_n_19),
        .\q_reg[14] (main_alu_n_20),
        .\q_reg[15] (main_alu_n_21),
        .\q_reg[16] (main_alu_n_22),
        .\q_reg[17] (main_alu_n_23),
        .\q_reg[18] (main_alu_n_24),
        .\q_reg[19] (main_alu_n_25),
        .\q_reg[1] (main_alu_n_5),
        .\q_reg[20] (main_alu_n_26),
        .\q_reg[21] (main_alu_n_27),
        .\q_reg[22] (main_alu_n_28),
        .\q_reg[23] (main_alu_n_29),
        .\q_reg[24] (main_alu_n_30),
        .\q_reg[26] (main_alu_n_31),
        .\q_reg[28] (main_alu_n_32),
        .\q_reg[29] (main_alu_n_33),
        .\q_reg[2] (main_alu_n_8),
        .\q_reg[30] (ltu),
        .\q_reg[31] (main_alu_n_35),
        .\q_reg[3] (main_alu_n_9),
        .\q_reg[4] (main_alu_n_10),
        .\q_reg[5] (main_alu_n_11),
        .\q_reg[5]_0 (main_alu_n_37),
        .\q_reg[5]_1 (main_alu_n_42),
        .\q_reg[5]_2 (main_alu_n_43),
        .\q_reg[5]_3 (main_alu_n_44),
        .\q_reg[6] (main_alu_n_12),
        .\q_reg[7] (main_alu_n_13),
        .\q_reg[8] (main_alu_n_14),
        .\q_reg[9] (main_alu_n_15),
        .rd21__3(rd21__3));
  design_1_top_0_0_adder pcadd4
       (.Instr({Instr[13],Instr[6:4],Instr[2]}),
        .PCPlus4(PCPlus4),
        .Q(Q[31:2]),
        .ReadData(ReadData[6:3]),
        .Result({Result[31:21],Result[18:16],Result[14:8],Result[6:3]}),
        .ResultSrc(ResultSrc),
        .\q_reg[10] (pcadd4_n_54),
        .rf_reg_r1_0_31_0_5(pcreg_n_235),
        .rf_reg_r1_0_31_0_5_0(pcreg_n_233),
        .rf_reg_r1_0_31_0_5_1(pcreg_n_234),
        .rf_reg_r1_0_31_0_5_i_4_0(\ALUResult[31]_INST_0_i_5_2 ),
        .rf_reg_r1_0_31_0_5_i_6_0(\ALUResult[31]_INST_0_i_5_4 ),
        .rf_reg_r1_0_31_0_5_i_7_0(\ALUResult[31]_INST_0_i_5_3 ),
        .rf_reg_r1_0_31_12_17(pcreg_n_47),
        .rf_reg_r1_0_31_12_17_0(pcreg_n_64),
        .rf_reg_r1_0_31_12_17_1(pcreg_n_65),
        .rf_reg_r1_0_31_12_17_2(\ALUResult[31]_INST_0_i_5_15 ),
        .rf_reg_r1_0_31_12_17_3(rf_n_203),
        .rf_reg_r1_0_31_12_17_4(\ALUResult[31]_INST_0_i_5_16 ),
        .rf_reg_r1_0_31_12_17_5(rf_n_204),
        .rf_reg_r1_0_31_18_23(\ALUResult[31]_INST_0_i_5_20 ),
        .rf_reg_r1_0_31_18_23_0(rf_n_208),
        .rf_reg_r1_0_31_18_23_1(\ALUResult[31]_INST_0_i_5_21 ),
        .rf_reg_r1_0_31_18_23_2(rf_n_209),
        .rf_reg_r1_0_31_18_23_3(\ALUResult[31]_INST_0_i_5_22 ),
        .rf_reg_r1_0_31_18_23_4(rf_n_210),
        .rf_reg_r1_0_31_18_23_5(\ALUResult[31]_INST_0_i_5_17 ),
        .rf_reg_r1_0_31_18_23_6(rf_n_205),
        .rf_reg_r1_0_31_24_29(\ALUResult[31]_INST_0_i_5_23 ),
        .rf_reg_r1_0_31_24_29_0(rf_n_211),
        .rf_reg_r1_0_31_24_29_1(\ALUResult[31]_INST_0_i_5_24 ),
        .rf_reg_r1_0_31_24_29_10(rf_n_216),
        .rf_reg_r1_0_31_24_29_2(rf_n_212),
        .rf_reg_r1_0_31_24_29_3(\ALUResult[31]_INST_0_i_5_25 ),
        .rf_reg_r1_0_31_24_29_4(rf_n_213),
        .rf_reg_r1_0_31_24_29_5(\ALUResult[31]_INST_0_i_5_26 ),
        .rf_reg_r1_0_31_24_29_6(rf_n_214),
        .rf_reg_r1_0_31_24_29_7(\ALUResult[31]_INST_0_i_5_27 ),
        .rf_reg_r1_0_31_24_29_8(rf_n_215),
        .rf_reg_r1_0_31_24_29_9(\ALUResult[31]_INST_0_i_5_28 ),
        .rf_reg_r1_0_31_6_11(rf_n_123),
        .rf_reg_r1_0_31_6_11_0(rf_n_124),
        .rf_reg_r1_0_31_6_11_1(rf_n_129),
        .rf_reg_r1_0_31_6_11_2(pcreg_n_112),
        .rf_reg_r1_0_31_6_11_3(rf_n_202),
        .rf_reg_r1_0_31_6_11_4(pcreg_n_232),
        .rf_reg_r1_0_31_6_11_i_1(\ALUResult[31]_INST_0_i_5_6 ),
        .rf_reg_r1_0_31_6_11_i_2_0(\ALUResult[31]_INST_0_i_5_5 ),
        .rf_reg_r2_0_31_30_31(rf_n_217),
        .rf_reg_r2_0_31_30_31_0(\ALUResult[31]_INST_0_i_5_29 ),
        .rf_reg_r2_0_31_30_31__0(pcreg_n_122),
        .rf_reg_r2_0_31_30_31__0_0(rf_n_218),
        .rf_reg_r2_0_31_30_31__0_1(\ALUResult[31]_INST_0_i_5_30 ));
  design_1_top_0_0_adder_0 pcaddbranch
       (.PCTarget(PCTarget),
        .Q(Q[30:0]),
        .S({pcreg_n_202,pcreg_n_203,pcreg_n_204,pcreg_n_205}),
        .\q_reg[11] ({pcreg_n_210,pcreg_n_211,pcreg_n_212,pcreg_n_213}),
        .\q_reg[15] ({pcreg_n_214,pcreg_n_215,pcreg_n_216,pcreg_n_217}),
        .\q_reg[19] ({pcreg_n_218,pcreg_n_219,pcreg_n_220,pcreg_n_221}),
        .\q_reg[23] ({pcreg_n_222,pcreg_n_223,pcreg_n_224,pcreg_n_225}),
        .\q_reg[27] ({pcreg_n_226,pcreg_n_227,pcreg_n_228,pcreg_n_229}),
        .\q_reg[31] ({pcreg_n_0,pcreg_n_1,pcreg_n_2,pcreg_n_3}),
        .\q_reg[7] ({pcreg_n_206,pcreg_n_207,pcreg_n_208,pcreg_n_209}));
  design_1_top_0_0_flopenr pcreg
       (.ALUControl__0(ALUControl__0),
        .\ALUResult[10]_INST_0_i_9_0 (pcreg_n_115),
        .\ALUResult[12]_INST_0_i_1 (rf_n_125),
        .\ALUResult[12]_INST_0_i_9_0 (pcreg_n_67),
        .\ALUResult[13]_INST_0_i_9_0 (pcreg_n_66),
        .\ALUResult[14]_INST_0_i_9_0 (pcreg_n_58),
        .\ALUResult[15]_INST_0_i_9_0 (pcreg_n_59),
        .\ALUResult[16]_INST_0_i_10_0 (pcreg_n_60),
        .\ALUResult[18]_INST_0_i_10_0 (pcreg_n_135),
        .\ALUResult[19]_INST_0_i_11_0 (pcreg_n_132),
        .\ALUResult[19]_INST_0_i_7_0 (pcreg_n_134),
        .\ALUResult[20]_INST_0_i_7_0 (pcreg_n_133),
        .\ALUResult[24]_INST_0_i_8_0 (pcreg_n_139),
        .\ALUResult[25]_INST_0_i_10_0 (pcreg_n_131),
        .\ALUResult[27]_INST_0_i_8_0 (pcreg_n_124),
        .\ALUResult[28]_INST_0_i_8_0 (pcreg_n_128),
        .\ALUResult[29]_INST_0_i_10_0 (pcreg_n_129),
        .\ALUResult[30]_INST_0_i_10_0 (pcreg_n_140),
        .\ALUResult[30]_INST_0_i_11_0 (pcreg_n_143),
        .\ALUResult[30]_INST_0_i_12_0 (pcreg_n_150),
        .\ALUResult[30]_INST_0_i_12_1 (pcreg_n_188),
        .\ALUResult[30]_INST_0_i_8 (pcreg_n_117),
        .\ALUResult[30]_INST_0_i_8_0 (pcreg_n_137),
        .\ALUResult[30]_INST_0_i_8_1 (pcreg_n_138),
        .\ALUResult[30]_INST_0_i_8_2 (pcreg_n_230),
        .\ALUResult[30]_INST_0_i_8_3 (pcreg_n_231),
        .\ALUResult[31]_INST_0_i_10_0 (pcreg_n_49),
        .\ALUResult[31]_INST_0_i_24_0 (pcreg_n_73),
        .\ALUResult[31]_INST_0_i_24_1 (pcreg_n_105),
        .\ALUResult[31]_INST_0_i_25_0 (pcreg_n_195),
        .\ALUResult[31]_INST_0_i_28_0 (pcreg_n_146),
        .\ALUResult[31]_INST_0_i_30_0 (pcreg_n_141),
        .\ALUResult[31]_INST_0_i_31_0 (pcreg_n_148),
        .\ALUResult[31]_INST_0_i_33_0 (pcreg_n_144),
        .\ALUResult[31]_INST_0_i_4_0 (main_alu_n_42),
        .\ALUResult[31]_INST_0_i_5_0 (\ALUResult[31]_INST_0_i_5 ),
        .\ALUResult[31]_INST_0_i_5_1 (\ALUResult[31]_INST_0_i_5_0 ),
        .\ALUResult[31]_INST_0_i_5_10 (\ALUResult[31]_INST_0_i_5_3 ),
        .\ALUResult[31]_INST_0_i_5_11 (\ALUResult[31]_INST_0_i_5_19 ),
        .\ALUResult[31]_INST_0_i_5_12 (\ALUResult[31]_INST_0_i_5_18 ),
        .\ALUResult[31]_INST_0_i_5_2 (\ALUResult[31]_INST_0_i_5_1 ),
        .\ALUResult[31]_INST_0_i_5_3 (\ALUResult[31]_INST_0_i_5_6 ),
        .\ALUResult[31]_INST_0_i_5_4 (\ALUResult[31]_INST_0_i_5_14 ),
        .\ALUResult[31]_INST_0_i_5_5 (\ALUResult[31]_INST_0_i_5_13 ),
        .\ALUResult[31]_INST_0_i_5_6 (\ALUResult[31]_INST_0_i_5_12 ),
        .\ALUResult[31]_INST_0_i_5_7 (\ALUResult[31]_INST_0_i_5_11 ),
        .\ALUResult[31]_INST_0_i_5_8 (\ALUResult[31]_INST_0_i_5_2 ),
        .\ALUResult[31]_INST_0_i_5_9 (\ALUResult[31]_INST_0_i_5_8 ),
        .\ALUResult[31]_INST_0_i_9_0 (pcreg_n_70),
        .\ALUResult[5]_INST_0_i_3_0 (rf_n_130),
        .\ALUResult[5]_INST_0_i_9_0 (pcreg_n_120),
        .\ALUResult[6]_INST_0_i_10_0 (pcreg_n_107),
        .\ALUResult[6]_INST_0_i_6_0 (data6),
        .\ALUResult[8]_INST_0_i_9_0 (pcreg_n_106),
        .\ALUResult[9]_INST_0_i_6_0 (pcreg_n_108),
        .\ALUResult[9]_INST_0_i_9_0 (pcreg_n_109),
        .D(PCNext),
        .DI(pcreg_n_191),
        .ImmSrc(ImmSrc),
        .Instr(Instr),
        .PCPlus4({PCPlus4[20:19],PCPlus4[15]}),
        .PCReady(PCReady),
        .PCSrc10_out(\c/PCSrc10_out ),
        .PCTarget(PCTarget[2:0]),
        .Q(Q),
        .ReadData(ReadData),
        .ResultSrc(ResultSrc[1]),
        .S({pcreg_n_202,pcreg_n_203,pcreg_n_204,pcreg_n_205}),
        .SrcA(SrcA),
        .SrcA__0(SrcA__0),
        .SrcB({SrcB[20],SrcB[7:6],SrcB[4:0]}),
        .WriteData(WriteData[15:0]),
        .\addressM[0] (rf_n_196),
        .\addressM[0]_0 (main_alu_n_34),
        .\addressM[0]_1 (main_alu_n_6),
        .\addressM[12] (rf_n_121),
        .\addressM[12]_0 (main_alu_n_18),
        .\addressM[13] (rf_n_120),
        .\addressM[13]_0 (main_alu_n_19),
        .\addressM[14] (rf_n_86),
        .\addressM[14]_0 (main_alu_n_20),
        .\addressM[14]_1 (rf_n_128),
        .\addressM[14]_2 (rf_n_127),
        .\addressM[15] (rf_n_119),
        .\addressM[15]_0 (main_alu_n_21),
        .\addressM[19] (rf_n_134),
        .\addressM[19]_0 (main_alu_n_25),
        .\addressM[1] (rf_n_142),
        .\addressM[1]_0 (main_alu_n_5),
        .\addressM[1]_1 (rf_n_144),
        .\addressM[20] (main_alu_n_26),
        .\addressM[2] (rf_n_169),
        .\addressM[2]_0 (main_alu_n_8),
        .\addressM[2]_1 (rf_n_140),
        .\addressM[3] (rf_n_170),
        .\addressM[3]_0 (main_alu_n_9),
        .\addressM[3]_1 (rf_n_141),
        .\addressM[4] (rf_n_171),
        .\addressM[4]_0 (main_alu_n_10),
        .\addressM[4]_1 (rf_n_133),
        .\addressM[7] (main_alu_n_13),
        .\addressM[7]_0 (rf_n_126),
        .\addressM[9] (rf_n_131),
        .\addressM[9]_0 (main_alu_n_15),
        .clk(clk),
        .\q[31]_i_14 (pcreg_n_41),
        .\q[31]_i_2 (rf_n_122),
        .\q[31]_i_2_0 (rf_n_132),
        .\q_reg[0]_0 (rf_n_69),
        .\q_reg[11]_0 ({pcreg_n_210,pcreg_n_211,pcreg_n_212,pcreg_n_213}),
        .\q_reg[15]_0 ({pcreg_n_214,pcreg_n_215,pcreg_n_216,pcreg_n_217}),
        .\q_reg[16]_0 (pcreg_n_111),
        .\q_reg[18]_0 (pcreg_n_110),
        .\q_reg[19]_0 (pcreg_n_116),
        .\q_reg[19]_1 ({pcreg_n_218,pcreg_n_219,pcreg_n_220,pcreg_n_221}),
        .\q_reg[20]_0 (pcreg_n_72),
        .\q_reg[21]_0 (pcreg_n_68),
        .\q_reg[23]_0 (pcreg_n_63),
        .\q_reg[23]_1 ({pcreg_n_222,pcreg_n_223,pcreg_n_224,pcreg_n_225}),
        .\q_reg[24]_0 (pcreg_n_142),
        .\q_reg[25]_0 (pcreg_n_126),
        .\q_reg[26]_0 (pcreg_n_127),
        .\q_reg[26]_1 (pcreg_n_145),
        .\q_reg[27]_0 (pcreg_n_62),
        .\q_reg[27]_1 (pcreg_n_125),
        .\q_reg[27]_2 (pcreg_n_147),
        .\q_reg[27]_3 ({pcreg_n_226,pcreg_n_227,pcreg_n_228,pcreg_n_229}),
        .\q_reg[28]_0 (pcreg_n_149),
        .\q_reg[29]_0 (pcreg_n_61),
        .\q_reg[2]_0 (pcreg_n_114),
        .\q_reg[2]_1 (pcreg_n_193),
        .\q_reg[30]_0 (pcreg_n_190),
        .\q_reg[31]_0 ({pcreg_n_0,pcreg_n_1,pcreg_n_2,pcreg_n_3}),
        .\q_reg[31]_1 (pcreg_n_136),
        .\q_reg[31]_2 (pcreg_n_189),
        .\q_reg[3]_0 (pcreg_n_118),
        .\q_reg[5]_0 (pcreg_n_48),
        .\q_reg[5]_1 (pcreg_n_122),
        .\q_reg[5]_10 (pcreg_n_201),
        .\q_reg[5]_2 (pcreg_n_167),
        .\q_reg[5]_3 (pcreg_n_192),
        .\q_reg[5]_4 (ALUControl),
        .\q_reg[5]_5 (pcreg_n_196),
        .\q_reg[5]_6 (pcreg_n_197),
        .\q_reg[5]_7 (pcreg_n_198),
        .\q_reg[5]_8 (pcreg_n_199),
        .\q_reg[5]_9 (pcreg_n_200),
        .\q_reg[6]_0 (pcreg_n_121),
        .\q_reg[7]_0 ({pcreg_n_206,pcreg_n_207,pcreg_n_208,pcreg_n_209}),
        .rd10(rd10),
        .rd2(rd2),
        .rd20(rd20),
        .rd21__3(rd21__3),
        .\readDataM[10] (pcreg_n_185),
        .\readDataM[11] (pcreg_n_186),
        .\readDataM[12] (pcreg_n_64),
        .\readDataM[13] (pcreg_n_65),
        .\readDataM[14] (pcreg_n_47),
        .\readDataM[16] (pcreg_n_168),
        .\readDataM[17] (pcreg_n_169),
        .\readDataM[18] (pcreg_n_170),
        .\readDataM[19] (pcreg_n_171),
        .\readDataM[19]_0 (pcreg_n_235),
        .\readDataM[20] (pcreg_n_172),
        .\readDataM[20]_0 (pcreg_n_234),
        .\readDataM[21] (pcreg_n_173),
        .\readDataM[21]_0 (pcreg_n_233),
        .\readDataM[22] (pcreg_n_174),
        .\readDataM[22]_0 (pcreg_n_232),
        .\readDataM[23] (pcreg_n_175),
        .\readDataM[24] (pcreg_n_176),
        .\readDataM[25] (pcreg_n_177),
        .\readDataM[26] (pcreg_n_178),
        .\readDataM[27] (pcreg_n_179),
        .\readDataM[28] (pcreg_n_180),
        .\readDataM[29] (pcreg_n_181),
        .\readDataM[30] (pcreg_n_182),
        .\readDataM[31] (pcreg_n_183),
        .\readDataM[8] (pcreg_n_184),
        .\readDataM[9] (pcreg_n_112),
        .reset(reset),
        .rf_reg_r1_0_31_18_23(ResultSrc[0]),
        .rf_reg_r1_0_31_18_23_0(rf_n_207),
        .rf_reg_r1_0_31_18_23_1(rf_n_206),
        .rf_reg_r1_0_31_30_31_i_1__0(rf_n_219),
        .rf_reg_r1_0_31_6_11(rf_n_202),
        .rf_reg_r1_0_31_6_11_0(pcadd4_n_54),
        .sum__0_carry_i_10(pcreg_n_57),
        .wd3({Result[20:19],Result[15],Result[7],Result[2:0]}),
        .y_carry__1(main_alu_n_37),
        .y_carry__3(main_alu_n_43));
  design_1_top_0_0_regfile rf
       (.ALUControl__0(ALUControl__0),
        .\ALUResult[0]_INST_0_i_3 (pcreg_n_193),
        .\ALUResult[0]_INST_0_i_8 (ALUControl),
        .\ALUResult[11]_INST_0_i_1_0 (pcreg_n_68),
        .\ALUResult[11]_INST_0_i_1_1 (pcreg_n_63),
        .\ALUResult[11]_INST_0_i_1_2 (pcreg_n_116),
        .\ALUResult[11]_INST_0_i_2 (main_alu_n_37),
        .\ALUResult[16]_INST_0_i_1_0 (pcreg_n_136),
        .\ALUResult[16]_INST_0_i_1_1 (pcreg_n_62),
        .\ALUResult[16]_INST_0_i_1_2 (pcreg_n_61),
        .\ALUResult[19]_INST_0_i_2 (main_alu_n_43),
        .\ALUResult[21]_INST_0_i_3_0 (pcreg_n_126),
        .\ALUResult[22]_INST_0_i_3_0 (pcreg_n_127),
        .\ALUResult[23]_INST_0_i_3_0 (pcreg_n_125),
        .\ALUResult[30]_INST_0_i_3_0 (pcreg_n_142),
        .\ALUResult[30]_INST_0_i_3_1 (pcreg_n_149),
        .\ALUResult[30]_INST_0_i_3_2 (pcreg_n_190),
        .\ALUResult[30]_INST_0_i_3_3 (pcreg_n_145),
        .\ALUResult[30]_INST_0_i_8_0 (rf_n_141),
        .\ALUResult[31]_INST_0_i_11_0 (rf_n_127),
        .\ALUResult[31]_INST_0_i_11_1 (rf_n_128),
        .\ALUResult[31]_INST_0_i_11_2 (rf_n_265),
        .\ALUResult[31]_INST_0_i_15 (rf_n_126),
        .\ALUResult[31]_INST_0_i_15_0 (rf_n_135),
        .\ALUResult[31]_INST_0_i_15_1 (rf_n_137),
        .\ALUResult[31]_INST_0_i_15_2 (rf_n_139),
        .\ALUResult[31]_INST_0_i_3_0 (pcreg_n_188),
        .\ALUResult[31]_INST_0_i_3_1 (pcreg_n_147),
        .\ALUResult[31]_INST_0_i_3_2 (pcreg_n_189),
        .\ALUResult[31]_INST_0_i_5 (\ALUResult[31]_INST_0_i_5_4 ),
        .\ALUResult[31]_INST_0_i_5_0 (\ALUResult[31]_INST_0_i_5_5 ),
        .\ALUResult[31]_INST_0_i_5_1 (\ALUResult[31]_INST_0_i_5_7 ),
        .\ALUResult[31]_INST_0_i_5_10 (\ALUResult[31]_INST_0_i_5_23 ),
        .\ALUResult[31]_INST_0_i_5_11 (\ALUResult[31]_INST_0_i_5_25 ),
        .\ALUResult[31]_INST_0_i_5_12 (\ALUResult[31]_INST_0_i_5_27 ),
        .\ALUResult[31]_INST_0_i_5_13 (\ALUResult[31]_INST_0_i_5_28 ),
        .\ALUResult[31]_INST_0_i_5_14 (\ALUResult[31]_INST_0_i_5_30 ),
        .\ALUResult[31]_INST_0_i_5_2 (\ALUResult[31]_INST_0_i_5_9 ),
        .\ALUResult[31]_INST_0_i_5_3 (\ALUResult[31]_INST_0_i_5_10 ),
        .\ALUResult[31]_INST_0_i_5_4 (\ALUResult[31]_INST_0_i_5_15 ),
        .\ALUResult[31]_INST_0_i_5_5 (\ALUResult[31]_INST_0_i_5_16 ),
        .\ALUResult[31]_INST_0_i_5_6 (\ALUResult[31]_INST_0_i_5_17 ),
        .\ALUResult[31]_INST_0_i_5_7 (\ALUResult[31]_INST_0_i_5_20 ),
        .\ALUResult[31]_INST_0_i_5_8 (\ALUResult[31]_INST_0_i_5_21 ),
        .\ALUResult[31]_INST_0_i_5_9 (\ALUResult[31]_INST_0_i_5_22 ),
        .\ALUResult[4]_INST_0 (rf_n_132),
        .\ALUResult[4]_INST_0_i_1 (rf_n_86),
        .\ALUResult[4]_INST_0_i_1_0 (rf_n_119),
        .\ALUResult[4]_INST_0_i_1_1 (rf_n_120),
        .\ALUResult[4]_INST_0_i_1_2 (rf_n_121),
        .\ALUResult[4]_INST_0_i_1_3 (rf_n_131),
        .\ALUResult[4]_INST_0_i_1_4 (rf_n_134),
        .\ALUResult[4]_INST_0_i_4 (pcreg_n_192),
        .\ALUResult[4]_INST_0_i_7_0 (rf_n_130),
        .\ALUResult[6]_INST_0_i_1_0 (pcreg_n_72),
        .\ALUResult[6]_INST_0_i_1_1 (pcreg_n_111),
        .\ALUResult[6]_INST_0_i_1_2 (pcreg_n_110),
        .\ALUResult[6]_INST_0_i_1_3 (pcreg_n_121),
        .\ALUResult[8]_INST_0_0 (rf_n_122),
        .ALUSrc(ALUSrc),
        .CO(lt),
        .D(PCNext),
        .DI({rf_n_146,rf_n_147,rf_n_148}),
        .ImmSrc(ImmSrc[2]),
        .Instr(Instr),
        .PCPlus4(PCPlus4),
        .PCSrc10_out(\c/PCSrc10_out ),
        .PCTarget(PCTarget[31:3]),
        .Q(Q),
        .ReadData({ReadData[31:16],ReadData[11:10],ReadData[8]}),
        .Result(Result),
        .ResultSrc(ResultSrc[1]),
        .S({rf_n_221,rf_n_222,rf_n_223,rf_n_224}),
        .SrcA(SrcA),
        .SrcA__0(SrcA__0),
        .SrcB(SrcB),
        .WriteData(WriteData[31:16]),
        .\addressM[10] (main_alu_n_16),
        .\addressM[10]_0 (pcreg_n_231),
        .\addressM[10]_1 (pcreg_n_48),
        .\addressM[10]_2 (pcreg_n_49),
        .\addressM[10]_3 (pcreg_n_115),
        .\addressM[11] (main_alu_n_17),
        .\addressM[11]_0 (pcreg_n_230),
        .\addressM[11]_1 (pcreg_n_57),
        .\addressM[12] (pcreg_n_67),
        .\addressM[13] (pcreg_n_66),
        .\addressM[14] (pcreg_n_59),
        .\addressM[14]_0 (pcreg_n_58),
        .\addressM[14]_1 (pcreg_n_70),
        .\addressM[15] (pcreg_n_60),
        .\addressM[16] (main_alu_n_22),
        .\addressM[16]_0 (pcreg_n_137),
        .\addressM[17] (main_alu_n_23),
        .\addressM[17]_0 (pcreg_n_138),
        .\addressM[18] (main_alu_n_24),
        .\addressM[18]_0 (pcreg_n_134),
        .\addressM[18]_1 (pcreg_n_139),
        .\addressM[18]_2 (pcreg_n_131),
        .\addressM[18]_3 (pcreg_n_135),
        .\addressM[19] (pcreg_n_133),
        .\addressM[19]_0 (pcreg_n_132),
        .\addressM[21] (main_alu_n_27),
        .\addressM[21]_0 (pcreg_n_128),
        .\addressM[21]_1 (pcreg_n_124),
        .\addressM[21]_2 (pcreg_n_73),
        .\addressM[21]_3 (pcreg_n_105),
        .\addressM[22] (main_alu_n_28),
        .\addressM[22]_0 (pcreg_n_129),
        .\addressM[23] (main_alu_n_29),
        .\addressM[23]_0 (pcreg_n_140),
        .\addressM[24] (main_alu_n_30),
        .\addressM[24]_0 (pcreg_n_141),
        .\addressM[25] (pcreg_n_143),
        .\addressM[26] (main_alu_n_31),
        .\addressM[26]_0 (pcreg_n_144),
        .\addressM[27] (pcreg_n_146),
        .\addressM[28] (main_alu_n_32),
        .\addressM[28]_0 (pcreg_n_148),
        .\addressM[29] (main_alu_n_33),
        .\addressM[29]_0 (pcreg_n_150),
        .\addressM[31] (main_alu_n_35),
        .\addressM[31]_0 (pcreg_n_196),
        .\addressM[31]_1 (pcreg_n_195),
        .\addressM[5] (main_alu_n_11),
        .\addressM[5]_0 (pcreg_n_117),
        .\addressM[5]_1 (pcreg_n_120),
        .\addressM[6] (main_alu_n_12),
        .\addressM[6]_0 (pcreg_n_118),
        .\addressM[6]_1 (pcreg_n_107),
        .\addressM[7] (data6),
        .\addressM[8] (main_alu_n_14),
        .\addressM[8]_0 (pcreg_n_108),
        .\addressM[8]_1 (pcreg_n_114),
        .\addressM[8]_2 (pcreg_n_109),
        .\addressM[8]_3 (pcreg_n_106),
        .clk(clk),
        .lt_carry__2(main_alu_n_42),
        .lt_carry__2_0(main_alu_n_44),
        .\q[31]_i_10 (rf_n_69),
        .\q[31]_i_2_0 (ltu),
        .\q_reg[0] (rf_n_144),
        .\q_reg[0]_0 (rf_n_145),
        .\q_reg[0]_1 (rf_n_196),
        .\q_reg[11] ({rf_n_245,rf_n_246,rf_n_247,rf_n_248}),
        .\q_reg[12] (\ALUResult[31]_INST_0_i_5_11 ),
        .\q_reg[13] (\ALUResult[31]_INST_0_i_5_12 ),
        .\q_reg[14] ({rf_n_172,rf_n_173,rf_n_174,rf_n_175}),
        .\q_reg[14]_0 ({rf_n_176,rf_n_177,rf_n_178,rf_n_179}),
        .\q_reg[14]_1 ({rf_n_225,rf_n_226,rf_n_227,rf_n_228}),
        .\q_reg[14]_2 (\ALUResult[31]_INST_0_i_5_13 ),
        .\q_reg[15] ({rf_n_249,rf_n_250,rf_n_251,rf_n_252}),
        .\q_reg[15]_0 (\ALUResult[31]_INST_0_i_5_14 ),
        .\q_reg[19] ({rf_n_253,rf_n_254,rf_n_255,rf_n_256}),
        .\q_reg[19]_0 (\ALUResult[31]_INST_0_i_5_18 ),
        .\q_reg[1] (rf_n_140),
        .\q_reg[1]_0 (rf_n_142),
        .\q_reg[20] (\ALUResult[31]_INST_0_i_5_19 ),
        .\q_reg[22] ({rf_n_180,rf_n_181,rf_n_182,rf_n_183}),
        .\q_reg[22]_0 ({rf_n_184,rf_n_185,rf_n_186,rf_n_187}),
        .\q_reg[22]_1 ({rf_n_229,rf_n_230,rf_n_231,rf_n_232}),
        .\q_reg[23] ({rf_n_257,rf_n_258,rf_n_259,rf_n_260}),
        .\q_reg[25] (rf_n_125),
        .\q_reg[25]_0 (rf_n_136),
        .\q_reg[25]_1 (\ALUResult[31]_INST_0_i_5_24 ),
        .\q_reg[27] (rf_n_138),
        .\q_reg[27]_0 ({rf_n_261,rf_n_262,rf_n_263,rf_n_264}),
        .\q_reg[27]_1 (\ALUResult[31]_INST_0_i_5_26 ),
        .\q_reg[2] (rf_n_133),
        .\q_reg[2]_0 (rf_n_169),
        .\q_reg[30] (rf_n_143),
        .\q_reg[30]_0 ({rf_n_188,rf_n_189,rf_n_190,rf_n_191}),
        .\q_reg[30]_1 ({rf_n_192,rf_n_193,rf_n_194,rf_n_195}),
        .\q_reg[30]_2 (rf_n_197),
        .\q_reg[30]_3 ({rf_n_233,rf_n_234,rf_n_235,rf_n_236}),
        .\q_reg[30]_4 (\ALUResult[31]_INST_0_i_5_29 ),
        .\q_reg[31] ({rf_n_198,rf_n_199,rf_n_200,rf_n_201}),
        .\q_reg[3] (rf_n_170),
        .\q_reg[3]_0 ({rf_n_237,rf_n_238,rf_n_239,rf_n_240}),
        .\q_reg[3]_1 (\ALUResult[31]_INST_0_i_5_2 ),
        .\q_reg[3]_2 (pcreg_n_199),
        .\q_reg[3]_3 (pcreg_n_41),
        .\q_reg[3]_4 (pcreg_n_201),
        .\q_reg[3]_5 (pcreg_n_200),
        .\q_reg[4] (rf_n_171),
        .\q_reg[4]_0 (\ALUResult[31]_INST_0_i_5_3 ),
        .\q_reg[5] (rd2),
        .\q_reg[5]_0 (rf_n_202),
        .\q_reg[5]_1 (rf_n_219),
        .\q_reg[5]_2 (ResultSrc[0]),
        .\q_reg[6] ({rf_n_149,rf_n_150,rf_n_151,rf_n_152}),
        .\q_reg[7] ({rf_n_241,rf_n_242,rf_n_243,rf_n_244}),
        .\q_reg[7]_0 (\ALUResult[31]_INST_0_i_5_6 ),
        .\q_reg[9] (\ALUResult[31]_INST_0_i_5_8 ),
        .rd10(rd10),
        .rd20(rd20),
        .rd21__3(rd21__3),
        .\readDataM[10] (rf_n_123),
        .\readDataM[11] (rf_n_124),
        .\readDataM[16] (rf_n_203),
        .\readDataM[17] (rf_n_204),
        .\readDataM[18] (rf_n_205),
        .\readDataM[19] (rf_n_206),
        .\readDataM[20] (rf_n_207),
        .\readDataM[21] (rf_n_208),
        .\readDataM[22] (rf_n_209),
        .\readDataM[23] (rf_n_210),
        .\readDataM[24] (rf_n_211),
        .\readDataM[25] (rf_n_212),
        .\readDataM[26] (rf_n_213),
        .\readDataM[27] (rf_n_214),
        .\readDataM[28] (rf_n_215),
        .\readDataM[29] (rf_n_216),
        .\readDataM[30] (rf_n_217),
        .\readDataM[31] (rf_n_218),
        .\readDataM[8] (rf_n_129),
        .rf_reg_r1_0_31_6_11_i_4(pcreg_n_184),
        .rf_reg_r1_0_31_6_11_i_5(pcreg_n_186),
        .rf_reg_r1_0_31_6_11_i_6(pcreg_n_185),
        .\writeDataM[16] (pcreg_n_168),
        .\writeDataM[17] (pcreg_n_169),
        .\writeDataM[18] (pcreg_n_170),
        .\writeDataM[19] (pcreg_n_171),
        .\writeDataM[20] (pcreg_n_172),
        .\writeDataM[21] (pcreg_n_173),
        .\writeDataM[22] (pcreg_n_174),
        .\writeDataM[23] (pcreg_n_175),
        .\writeDataM[24] (pcreg_n_176),
        .\writeDataM[25] (pcreg_n_177),
        .\writeDataM[26] (pcreg_n_178),
        .\writeDataM[27] (pcreg_n_179),
        .\writeDataM[28] (pcreg_n_180),
        .\writeDataM[29] (pcreg_n_181),
        .\writeDataM[30] (pcreg_n_182),
        .\writeDataM[31] (pcreg_n_167),
        .\writeDataM[31]_0 (pcreg_n_183));
endmodule

(* ORIG_REF_NAME = "flopenr" *) 
module design_1_top_0_0_flopenr
   (\q_reg[31]_0 ,
    Q,
    ResultSrc,
    \ALUResult[31]_INST_0_i_5_0 ,
    PCSrc10_out,
    \ALUResult[31]_INST_0_i_5_1 ,
    \ALUResult[31]_INST_0_i_5_2 ,
    \q[31]_i_14 ,
    \ALUResult[31]_INST_0_i_5_3 ,
    \ALUResult[31]_INST_0_i_5_4 ,
    \ALUResult[31]_INST_0_i_5_5 ,
    \ALUResult[31]_INST_0_i_5_6 ,
    \ALUResult[31]_INST_0_i_5_7 ,
    \readDataM[14] ,
    \q_reg[5]_0 ,
    \ALUResult[31]_INST_0_i_10_0 ,
    wd3,
    sum__0_carry_i_10,
    \ALUResult[14]_INST_0_i_9_0 ,
    \ALUResult[15]_INST_0_i_9_0 ,
    \ALUResult[16]_INST_0_i_10_0 ,
    \q_reg[29]_0 ,
    \q_reg[27]_0 ,
    \q_reg[23]_0 ,
    \readDataM[12] ,
    \readDataM[13] ,
    \ALUResult[13]_INST_0_i_9_0 ,
    \ALUResult[12]_INST_0_i_9_0 ,
    \q_reg[21]_0 ,
    \ALUResult[31]_INST_0_i_5_8 ,
    \ALUResult[31]_INST_0_i_9_0 ,
    \ALUResult[6]_INST_0_i_6_0 ,
    \q_reg[20]_0 ,
    \ALUResult[31]_INST_0_i_24_0 ,
    SrcA,
    \ALUResult[31]_INST_0_i_24_1 ,
    \ALUResult[8]_INST_0_i_9_0 ,
    \ALUResult[6]_INST_0_i_10_0 ,
    \ALUResult[9]_INST_0_i_6_0 ,
    \ALUResult[9]_INST_0_i_9_0 ,
    \q_reg[18]_0 ,
    \q_reg[16]_0 ,
    \readDataM[9] ,
    \ALUResult[31]_INST_0_i_5_9 ,
    \q_reg[2]_0 ,
    \ALUResult[10]_INST_0_i_9_0 ,
    \q_reg[19]_0 ,
    \ALUResult[30]_INST_0_i_8 ,
    \q_reg[3]_0 ,
    \ALUResult[31]_INST_0_i_5_10 ,
    \ALUResult[5]_INST_0_i_9_0 ,
    \q_reg[6]_0 ,
    \q_reg[5]_1 ,
    \ALUResult[31]_INST_0_i_5_11 ,
    \ALUResult[27]_INST_0_i_8_0 ,
    \q_reg[27]_1 ,
    \q_reg[25]_0 ,
    \q_reg[26]_0 ,
    \ALUResult[28]_INST_0_i_8_0 ,
    \ALUResult[29]_INST_0_i_10_0 ,
    \ALUResult[31]_INST_0_i_5_12 ,
    \ALUResult[25]_INST_0_i_10_0 ,
    \ALUResult[19]_INST_0_i_11_0 ,
    \ALUResult[20]_INST_0_i_7_0 ,
    \ALUResult[19]_INST_0_i_7_0 ,
    \ALUResult[18]_INST_0_i_10_0 ,
    \q_reg[31]_1 ,
    \ALUResult[30]_INST_0_i_8_0 ,
    \ALUResult[30]_INST_0_i_8_1 ,
    \ALUResult[24]_INST_0_i_8_0 ,
    \ALUResult[30]_INST_0_i_10_0 ,
    \ALUResult[31]_INST_0_i_30_0 ,
    \q_reg[24]_0 ,
    \ALUResult[30]_INST_0_i_11_0 ,
    \ALUResult[31]_INST_0_i_33_0 ,
    \q_reg[26]_1 ,
    \ALUResult[31]_INST_0_i_28_0 ,
    \q_reg[27]_2 ,
    \ALUResult[31]_INST_0_i_31_0 ,
    \q_reg[28]_0 ,
    \ALUResult[30]_INST_0_i_12_0 ,
    WriteData,
    \q_reg[5]_2 ,
    \readDataM[16] ,
    \readDataM[17] ,
    \readDataM[18] ,
    \readDataM[19] ,
    \readDataM[20] ,
    \readDataM[21] ,
    \readDataM[22] ,
    \readDataM[23] ,
    \readDataM[24] ,
    \readDataM[25] ,
    \readDataM[26] ,
    \readDataM[27] ,
    \readDataM[28] ,
    \readDataM[29] ,
    \readDataM[30] ,
    \readDataM[31] ,
    \readDataM[8] ,
    \readDataM[10] ,
    \readDataM[11] ,
    SrcA__0,
    \ALUResult[30]_INST_0_i_12_1 ,
    \q_reg[31]_2 ,
    \q_reg[30]_0 ,
    DI,
    \q_reg[5]_3 ,
    \q_reg[2]_1 ,
    \q_reg[5]_4 ,
    \ALUResult[31]_INST_0_i_25_0 ,
    \q_reg[5]_5 ,
    \q_reg[5]_6 ,
    \q_reg[5]_7 ,
    \q_reg[5]_8 ,
    \q_reg[5]_9 ,
    \q_reg[5]_10 ,
    S,
    \q_reg[7]_0 ,
    \q_reg[11]_0 ,
    \q_reg[15]_0 ,
    \q_reg[19]_1 ,
    \q_reg[23]_1 ,
    \q_reg[27]_3 ,
    \ALUResult[30]_INST_0_i_8_2 ,
    \ALUResult[30]_INST_0_i_8_3 ,
    \readDataM[22]_0 ,
    \readDataM[21]_0 ,
    \readDataM[20]_0 ,
    \readDataM[19]_0 ,
    Instr,
    D,
    \q_reg[0]_0 ,
    PCTarget,
    \q[31]_i_2 ,
    \q[31]_i_2_0 ,
    ReadData,
    \addressM[14] ,
    \addressM[14]_0 ,
    \addressM[14]_1 ,
    \addressM[14]_2 ,
    PCPlus4,
    rf_reg_r1_0_31_18_23,
    \addressM[15] ,
    \addressM[15]_0 ,
    SrcB,
    \ALUResult[12]_INST_0_i_1 ,
    \addressM[12] ,
    \addressM[12]_0 ,
    \addressM[13] ,
    \addressM[13]_0 ,
    \addressM[2] ,
    \addressM[2]_0 ,
    \addressM[2]_1 ,
    \addressM[3] ,
    \addressM[3]_0 ,
    \addressM[3]_1 ,
    \addressM[7] ,
    \addressM[7]_0 ,
    \addressM[9] ,
    \addressM[9]_0 ,
    \ALUResult[5]_INST_0_i_3_0 ,
    \addressM[4] ,
    \addressM[4]_0 ,
    \addressM[4]_1 ,
    rf_reg_r1_0_31_18_23_0,
    \addressM[20] ,
    rf_reg_r1_0_31_18_23_1,
    \addressM[19] ,
    \addressM[19]_0 ,
    rd21__3,
    rd20,
    rd2,
    rf_reg_r1_0_31_30_31_i_1__0,
    \addressM[0] ,
    \addressM[0]_0 ,
    \addressM[0]_1 ,
    \addressM[1] ,
    \addressM[1]_0 ,
    \addressM[1]_1 ,
    rd10,
    ALUControl__0,
    \ALUResult[31]_INST_0_i_4_0 ,
    rf_reg_r1_0_31_6_11,
    rf_reg_r1_0_31_6_11_0,
    ImmSrc,
    y_carry__1,
    y_carry__3,
    PCReady,
    clk,
    reset);
  output [3:0]\q_reg[31]_0 ;
  output [31:0]Q;
  output [0:0]ResultSrc;
  output \ALUResult[31]_INST_0_i_5_0 ;
  output PCSrc10_out;
  output \ALUResult[31]_INST_0_i_5_1 ;
  output \ALUResult[31]_INST_0_i_5_2 ;
  output \q[31]_i_14 ;
  output \ALUResult[31]_INST_0_i_5_3 ;
  output \ALUResult[31]_INST_0_i_5_4 ;
  output \ALUResult[31]_INST_0_i_5_5 ;
  output \ALUResult[31]_INST_0_i_5_6 ;
  output \ALUResult[31]_INST_0_i_5_7 ;
  output \readDataM[14] ;
  output \q_reg[5]_0 ;
  output \ALUResult[31]_INST_0_i_10_0 ;
  output [6:0]wd3;
  output sum__0_carry_i_10;
  output \ALUResult[14]_INST_0_i_9_0 ;
  output \ALUResult[15]_INST_0_i_9_0 ;
  output \ALUResult[16]_INST_0_i_10_0 ;
  output \q_reg[29]_0 ;
  output \q_reg[27]_0 ;
  output \q_reg[23]_0 ;
  output \readDataM[12] ;
  output \readDataM[13] ;
  output \ALUResult[13]_INST_0_i_9_0 ;
  output \ALUResult[12]_INST_0_i_9_0 ;
  output \q_reg[21]_0 ;
  output \ALUResult[31]_INST_0_i_5_8 ;
  output \ALUResult[31]_INST_0_i_9_0 ;
  output [0:0]\ALUResult[6]_INST_0_i_6_0 ;
  output \q_reg[20]_0 ;
  output \ALUResult[31]_INST_0_i_24_0 ;
  output [30:0]SrcA;
  output \ALUResult[31]_INST_0_i_24_1 ;
  output \ALUResult[8]_INST_0_i_9_0 ;
  output \ALUResult[6]_INST_0_i_10_0 ;
  output \ALUResult[9]_INST_0_i_6_0 ;
  output \ALUResult[9]_INST_0_i_9_0 ;
  output \q_reg[18]_0 ;
  output \q_reg[16]_0 ;
  output \readDataM[9] ;
  output \ALUResult[31]_INST_0_i_5_9 ;
  output \q_reg[2]_0 ;
  output \ALUResult[10]_INST_0_i_9_0 ;
  output \q_reg[19]_0 ;
  output \ALUResult[30]_INST_0_i_8 ;
  output \q_reg[3]_0 ;
  output \ALUResult[31]_INST_0_i_5_10 ;
  output \ALUResult[5]_INST_0_i_9_0 ;
  output \q_reg[6]_0 ;
  output \q_reg[5]_1 ;
  output \ALUResult[31]_INST_0_i_5_11 ;
  output \ALUResult[27]_INST_0_i_8_0 ;
  output \q_reg[27]_1 ;
  output \q_reg[25]_0 ;
  output \q_reg[26]_0 ;
  output \ALUResult[28]_INST_0_i_8_0 ;
  output \ALUResult[29]_INST_0_i_10_0 ;
  output \ALUResult[31]_INST_0_i_5_12 ;
  output \ALUResult[25]_INST_0_i_10_0 ;
  output \ALUResult[19]_INST_0_i_11_0 ;
  output \ALUResult[20]_INST_0_i_7_0 ;
  output \ALUResult[19]_INST_0_i_7_0 ;
  output \ALUResult[18]_INST_0_i_10_0 ;
  output \q_reg[31]_1 ;
  output \ALUResult[30]_INST_0_i_8_0 ;
  output \ALUResult[30]_INST_0_i_8_1 ;
  output \ALUResult[24]_INST_0_i_8_0 ;
  output \ALUResult[30]_INST_0_i_10_0 ;
  output \ALUResult[31]_INST_0_i_30_0 ;
  output \q_reg[24]_0 ;
  output \ALUResult[30]_INST_0_i_11_0 ;
  output \ALUResult[31]_INST_0_i_33_0 ;
  output \q_reg[26]_1 ;
  output \ALUResult[31]_INST_0_i_28_0 ;
  output \q_reg[27]_2 ;
  output \ALUResult[31]_INST_0_i_31_0 ;
  output \q_reg[28]_0 ;
  output \ALUResult[30]_INST_0_i_12_0 ;
  output [15:0]WriteData;
  output \q_reg[5]_2 ;
  output \readDataM[16] ;
  output \readDataM[17] ;
  output \readDataM[18] ;
  output \readDataM[19] ;
  output \readDataM[20] ;
  output \readDataM[21] ;
  output \readDataM[22] ;
  output \readDataM[23] ;
  output \readDataM[24] ;
  output \readDataM[25] ;
  output \readDataM[26] ;
  output \readDataM[27] ;
  output \readDataM[28] ;
  output \readDataM[29] ;
  output \readDataM[30] ;
  output \readDataM[31] ;
  output \readDataM[8] ;
  output \readDataM[10] ;
  output \readDataM[11] ;
  output [0:0]SrcA__0;
  output \ALUResult[30]_INST_0_i_12_1 ;
  output \q_reg[31]_2 ;
  output \q_reg[30]_0 ;
  output [0:0]DI;
  output \q_reg[5]_3 ;
  output \q_reg[2]_1 ;
  output [0:0]\q_reg[5]_4 ;
  output \ALUResult[31]_INST_0_i_25_0 ;
  output \q_reg[5]_5 ;
  output \q_reg[5]_6 ;
  output \q_reg[5]_7 ;
  output \q_reg[5]_8 ;
  output \q_reg[5]_9 ;
  output \q_reg[5]_10 ;
  output [3:0]S;
  output [3:0]\q_reg[7]_0 ;
  output [3:0]\q_reg[11]_0 ;
  output [3:0]\q_reg[15]_0 ;
  output [3:0]\q_reg[19]_1 ;
  output [3:0]\q_reg[23]_1 ;
  output [3:0]\q_reg[27]_3 ;
  output \ALUResult[30]_INST_0_i_8_2 ;
  output \ALUResult[30]_INST_0_i_8_3 ;
  output \readDataM[22]_0 ;
  output \readDataM[21]_0 ;
  output \readDataM[20]_0 ;
  output \readDataM[19]_0 ;
  input [31:0]Instr;
  input [28:0]D;
  input \q_reg[0]_0 ;
  input [2:0]PCTarget;
  input \q[31]_i_2 ;
  input \q[31]_i_2_0 ;
  input [31:0]ReadData;
  input \addressM[14] ;
  input \addressM[14]_0 ;
  input \addressM[14]_1 ;
  input \addressM[14]_2 ;
  input [2:0]PCPlus4;
  input [0:0]rf_reg_r1_0_31_18_23;
  input \addressM[15] ;
  input \addressM[15]_0 ;
  input [7:0]SrcB;
  input \ALUResult[12]_INST_0_i_1 ;
  input \addressM[12] ;
  input \addressM[12]_0 ;
  input \addressM[13] ;
  input \addressM[13]_0 ;
  input \addressM[2] ;
  input \addressM[2]_0 ;
  input \addressM[2]_1 ;
  input \addressM[3] ;
  input \addressM[3]_0 ;
  input \addressM[3]_1 ;
  input \addressM[7] ;
  input \addressM[7]_0 ;
  input \addressM[9] ;
  input \addressM[9]_0 ;
  input \ALUResult[5]_INST_0_i_3_0 ;
  input \addressM[4] ;
  input \addressM[4]_0 ;
  input \addressM[4]_1 ;
  input rf_reg_r1_0_31_18_23_0;
  input \addressM[20] ;
  input rf_reg_r1_0_31_18_23_1;
  input \addressM[19] ;
  input \addressM[19]_0 ;
  input rd21__3;
  input [7:0]rd20;
  input [15:0]rd2;
  input rf_reg_r1_0_31_30_31_i_1__0;
  input \addressM[0] ;
  input \addressM[0]_0 ;
  input \addressM[0]_1 ;
  input \addressM[1] ;
  input \addressM[1]_0 ;
  input \addressM[1]_1 ;
  input [31:0]rd10;
  input [0:0]ALUControl__0;
  input \ALUResult[31]_INST_0_i_4_0 ;
  input rf_reg_r1_0_31_6_11;
  input rf_reg_r1_0_31_6_11_0;
  input [2:0]ImmSrc;
  input y_carry__1;
  input y_carry__3;
  input PCReady;
  input clk;
  input reset;

  wire [3:3]ALUControl;
  wire [0:0]ALUControl__0;
  wire \ALUResult[0]_INST_0_i_4_n_0 ;
  wire \ALUResult[0]_INST_0_i_5_n_0 ;
  wire \ALUResult[0]_INST_0_i_6_n_0 ;
  wire \ALUResult[0]_INST_0_i_7_n_0 ;
  wire \ALUResult[0]_INST_0_i_9_n_0 ;
  wire \ALUResult[10]_INST_0_i_8_n_0 ;
  wire \ALUResult[10]_INST_0_i_9_0 ;
  wire \ALUResult[11]_INST_0_i_10_n_0 ;
  wire \ALUResult[11]_INST_0_i_8_n_0 ;
  wire \ALUResult[12]_INST_0_i_1 ;
  wire \ALUResult[12]_INST_0_i_10_n_0 ;
  wire \ALUResult[12]_INST_0_i_3_n_0 ;
  wire \ALUResult[12]_INST_0_i_4_n_0 ;
  wire \ALUResult[12]_INST_0_i_8_n_0 ;
  wire \ALUResult[12]_INST_0_i_9_0 ;
  wire \ALUResult[13]_INST_0_i_3_n_0 ;
  wire \ALUResult[13]_INST_0_i_4_n_0 ;
  wire \ALUResult[13]_INST_0_i_8_n_0 ;
  wire \ALUResult[13]_INST_0_i_9_0 ;
  wire \ALUResult[14]_INST_0_i_10_n_0 ;
  wire \ALUResult[14]_INST_0_i_3_n_0 ;
  wire \ALUResult[14]_INST_0_i_4_n_0 ;
  wire \ALUResult[14]_INST_0_i_8_n_0 ;
  wire \ALUResult[14]_INST_0_i_9_0 ;
  wire \ALUResult[14]_INST_0_i_9_n_0 ;
  wire \ALUResult[15]_INST_0_i_10_n_0 ;
  wire \ALUResult[15]_INST_0_i_3_n_0 ;
  wire \ALUResult[15]_INST_0_i_4_n_0 ;
  wire \ALUResult[15]_INST_0_i_8_n_0 ;
  wire \ALUResult[15]_INST_0_i_9_0 ;
  wire \ALUResult[16]_INST_0_i_10_0 ;
  wire \ALUResult[16]_INST_0_i_10_n_0 ;
  wire \ALUResult[16]_INST_0_i_11_n_0 ;
  wire \ALUResult[16]_INST_0_i_8_n_0 ;
  wire \ALUResult[16]_INST_0_i_9_n_0 ;
  wire \ALUResult[17]_INST_0_i_11_n_0 ;
  wire \ALUResult[17]_INST_0_i_8_n_0 ;
  wire \ALUResult[18]_INST_0_i_10_0 ;
  wire \ALUResult[18]_INST_0_i_10_n_0 ;
  wire \ALUResult[18]_INST_0_i_11_n_0 ;
  wire \ALUResult[18]_INST_0_i_9_n_0 ;
  wire \ALUResult[19]_INST_0_i_11_0 ;
  wire \ALUResult[19]_INST_0_i_12_n_0 ;
  wire \ALUResult[19]_INST_0_i_3_n_0 ;
  wire \ALUResult[19]_INST_0_i_4_n_0 ;
  wire \ALUResult[19]_INST_0_i_7_0 ;
  wire \ALUResult[1]_INST_0_i_4_n_0 ;
  wire \ALUResult[1]_INST_0_i_5_n_0 ;
  wire \ALUResult[1]_INST_0_i_7_n_0 ;
  wire \ALUResult[20]_INST_0_i_1_n_0 ;
  wire \ALUResult[20]_INST_0_i_3_n_0 ;
  wire \ALUResult[20]_INST_0_i_6_n_0 ;
  wire \ALUResult[20]_INST_0_i_7_0 ;
  wire \ALUResult[20]_INST_0_i_7_n_0 ;
  wire \ALUResult[20]_INST_0_i_8_n_0 ;
  wire \ALUResult[21]_INST_0_i_8_n_0 ;
  wire \ALUResult[22]_INST_0_i_8_n_0 ;
  wire \ALUResult[23]_INST_0_i_8_n_0 ;
  wire \ALUResult[24]_INST_0_i_8_0 ;
  wire \ALUResult[24]_INST_0_i_8_n_0 ;
  wire \ALUResult[25]_INST_0_i_10_0 ;
  wire \ALUResult[25]_INST_0_i_10_n_0 ;
  wire \ALUResult[26]_INST_0_i_11_n_0 ;
  wire \ALUResult[27]_INST_0_i_8_0 ;
  wire \ALUResult[27]_INST_0_i_8_n_0 ;
  wire \ALUResult[28]_INST_0_i_8_0 ;
  wire \ALUResult[28]_INST_0_i_8_n_0 ;
  wire \ALUResult[29]_INST_0_i_10_0 ;
  wire \ALUResult[29]_INST_0_i_10_n_0 ;
  wire \ALUResult[2]_INST_0_i_4_n_0 ;
  wire \ALUResult[2]_INST_0_i_5_n_0 ;
  wire \ALUResult[2]_INST_0_i_8_n_0 ;
  wire \ALUResult[30]_INST_0_i_10_0 ;
  wire \ALUResult[30]_INST_0_i_10_n_0 ;
  wire \ALUResult[30]_INST_0_i_11_0 ;
  wire \ALUResult[30]_INST_0_i_11_n_0 ;
  wire \ALUResult[30]_INST_0_i_12_0 ;
  wire \ALUResult[30]_INST_0_i_12_1 ;
  wire \ALUResult[30]_INST_0_i_12_n_0 ;
  wire \ALUResult[30]_INST_0_i_8 ;
  wire \ALUResult[30]_INST_0_i_8_0 ;
  wire \ALUResult[30]_INST_0_i_8_1 ;
  wire \ALUResult[30]_INST_0_i_8_2 ;
  wire \ALUResult[30]_INST_0_i_8_3 ;
  wire \ALUResult[31]_INST_0_i_10_0 ;
  wire \ALUResult[31]_INST_0_i_18_n_0 ;
  wire \ALUResult[31]_INST_0_i_24_0 ;
  wire \ALUResult[31]_INST_0_i_24_1 ;
  wire \ALUResult[31]_INST_0_i_25_0 ;
  wire \ALUResult[31]_INST_0_i_28_0 ;
  wire \ALUResult[31]_INST_0_i_30_0 ;
  wire \ALUResult[31]_INST_0_i_31_0 ;
  wire \ALUResult[31]_INST_0_i_33_0 ;
  wire \ALUResult[31]_INST_0_i_4_0 ;
  wire \ALUResult[31]_INST_0_i_5_0 ;
  wire \ALUResult[31]_INST_0_i_5_1 ;
  wire \ALUResult[31]_INST_0_i_5_10 ;
  wire \ALUResult[31]_INST_0_i_5_11 ;
  wire \ALUResult[31]_INST_0_i_5_12 ;
  wire \ALUResult[31]_INST_0_i_5_2 ;
  wire \ALUResult[31]_INST_0_i_5_3 ;
  wire \ALUResult[31]_INST_0_i_5_4 ;
  wire \ALUResult[31]_INST_0_i_5_5 ;
  wire \ALUResult[31]_INST_0_i_5_6 ;
  wire \ALUResult[31]_INST_0_i_5_7 ;
  wire \ALUResult[31]_INST_0_i_5_8 ;
  wire \ALUResult[31]_INST_0_i_5_9 ;
  wire \ALUResult[31]_INST_0_i_9_0 ;
  wire \ALUResult[3]_INST_0_i_4_n_0 ;
  wire \ALUResult[3]_INST_0_i_5_n_0 ;
  wire \ALUResult[3]_INST_0_i_8_n_0 ;
  wire \ALUResult[4]_INST_0_i_5_n_0 ;
  wire \ALUResult[4]_INST_0_i_6_n_0 ;
  wire \ALUResult[4]_INST_0_i_9_n_0 ;
  wire \ALUResult[5]_INST_0_i_3_0 ;
  wire \ALUResult[5]_INST_0_i_8_n_0 ;
  wire \ALUResult[5]_INST_0_i_9_0 ;
  wire \ALUResult[5]_INST_0_i_9_n_0 ;
  wire \ALUResult[6]_INST_0_i_10_0 ;
  wire \ALUResult[6]_INST_0_i_10_n_0 ;
  wire [0:0]\ALUResult[6]_INST_0_i_6_0 ;
  wire \ALUResult[7]_INST_0_i_1_n_0 ;
  wire \ALUResult[8]_INST_0_i_9_0 ;
  wire \ALUResult[9]_INST_0_i_3_n_0 ;
  wire \ALUResult[9]_INST_0_i_4_n_0 ;
  wire \ALUResult[9]_INST_0_i_6_0 ;
  wire \ALUResult[9]_INST_0_i_9_0 ;
  wire \ALUResult[9]_INST_0_i_9_n_0 ;
  wire [28:0]D;
  wire [0:0]DI;
  wire [2:0]ImmSrc;
  wire [31:0]Instr;
  wire [2:0]PCNext;
  wire [2:0]PCPlus4;
  wire PCReady;
  wire PCSrc10_out;
  wire [2:0]PCTarget;
  wire [31:0]Q;
  wire [31:0]ReadData;
  wire [0:0]ResultSrc;
  wire [3:0]S;
  wire [30:0]SrcA;
  wire [0:0]SrcA__0;
  wire [7:0]SrcB;
  wire [15:0]WriteData;
  wire \WriteData[0]_INST_0_i_1_n_0 ;
  wire \WriteData[10]_INST_0_i_1_n_0 ;
  wire \WriteData[11]_INST_0_i_1_n_0 ;
  wire \WriteData[12]_INST_0_i_1_n_0 ;
  wire \WriteData[13]_INST_0_i_1_n_0 ;
  wire \WriteData[14]_INST_0_i_1_n_0 ;
  wire \WriteData[15]_INST_0_i_1_n_0 ;
  wire \WriteData[15]_INST_0_i_2_n_0 ;
  wire \WriteData[15]_INST_0_i_3_n_0 ;
  wire \WriteData[15]_INST_0_i_4_n_0 ;
  wire \WriteData[1]_INST_0_i_1_n_0 ;
  wire \WriteData[23]_INST_0_i_4_n_0 ;
  wire \WriteData[23]_INST_0_i_5_n_0 ;
  wire \WriteData[2]_INST_0_i_1_n_0 ;
  wire \WriteData[31]_INST_0_i_5_n_0 ;
  wire \WriteData[31]_INST_0_i_6_n_0 ;
  wire \WriteData[31]_INST_0_i_7_n_0 ;
  wire \WriteData[31]_INST_0_i_8_n_0 ;
  wire \WriteData[3]_INST_0_i_1_n_0 ;
  wire \WriteData[4]_INST_0_i_1_n_0 ;
  wire \WriteData[5]_INST_0_i_1_n_0 ;
  wire \WriteData[6]_INST_0_i_1_n_0 ;
  wire \WriteData[7]_INST_0_i_2_n_0 ;
  wire \WriteData[7]_INST_0_i_3_n_0 ;
  wire \WriteData[7]_INST_0_i_4_n_0 ;
  wire \WriteData[8]_INST_0_i_1_n_0 ;
  wire \WriteData[9]_INST_0_i_1_n_0 ;
  wire \addressM[0] ;
  wire \addressM[0]_0 ;
  wire \addressM[0]_1 ;
  wire \addressM[12] ;
  wire \addressM[12]_0 ;
  wire \addressM[13] ;
  wire \addressM[13]_0 ;
  wire \addressM[14] ;
  wire \addressM[14]_0 ;
  wire \addressM[14]_1 ;
  wire \addressM[14]_2 ;
  wire \addressM[15] ;
  wire \addressM[15]_0 ;
  wire \addressM[19] ;
  wire \addressM[19]_0 ;
  wire \addressM[1] ;
  wire \addressM[1]_0 ;
  wire \addressM[1]_1 ;
  wire \addressM[20] ;
  wire \addressM[2] ;
  wire \addressM[2]_0 ;
  wire \addressM[2]_1 ;
  wire \addressM[3] ;
  wire \addressM[3]_0 ;
  wire \addressM[3]_1 ;
  wire \addressM[4] ;
  wire \addressM[4]_0 ;
  wire \addressM[4]_1 ;
  wire \addressM[7] ;
  wire \addressM[7]_0 ;
  wire \addressM[9] ;
  wire \addressM[9]_0 ;
  wire [1:0]\c/ALUOp ;
  wire clk;
  wire [31:31]data0;
  wire [20:0]\main_alu/data6 ;
  wire \q[31]_i_12_n_0 ;
  wire \q[31]_i_13_n_0 ;
  wire \q[31]_i_14 ;
  wire \q[31]_i_2 ;
  wire \q[31]_i_2_0 ;
  wire \q_reg[0]_0 ;
  wire [3:0]\q_reg[11]_0 ;
  wire [3:0]\q_reg[15]_0 ;
  wire \q_reg[16]_0 ;
  wire \q_reg[18]_0 ;
  wire \q_reg[19]_0 ;
  wire [3:0]\q_reg[19]_1 ;
  wire \q_reg[20]_0 ;
  wire \q_reg[21]_0 ;
  wire \q_reg[23]_0 ;
  wire [3:0]\q_reg[23]_1 ;
  wire \q_reg[24]_0 ;
  wire \q_reg[25]_0 ;
  wire \q_reg[26]_0 ;
  wire \q_reg[26]_1 ;
  wire \q_reg[27]_0 ;
  wire \q_reg[27]_1 ;
  wire \q_reg[27]_2 ;
  wire [3:0]\q_reg[27]_3 ;
  wire \q_reg[28]_0 ;
  wire \q_reg[29]_0 ;
  wire \q_reg[2]_0 ;
  wire \q_reg[2]_1 ;
  wire \q_reg[30]_0 ;
  wire [3:0]\q_reg[31]_0 ;
  wire \q_reg[31]_1 ;
  wire \q_reg[31]_2 ;
  wire \q_reg[3]_0 ;
  wire \q_reg[5]_0 ;
  wire \q_reg[5]_1 ;
  wire \q_reg[5]_10 ;
  wire \q_reg[5]_2 ;
  wire \q_reg[5]_3 ;
  wire [0:0]\q_reg[5]_4 ;
  wire \q_reg[5]_5 ;
  wire \q_reg[5]_6 ;
  wire \q_reg[5]_7 ;
  wire \q_reg[5]_8 ;
  wire \q_reg[5]_9 ;
  wire \q_reg[6]_0 ;
  wire [3:0]\q_reg[7]_0 ;
  wire [31:0]rd10;
  wire [15:0]rd2;
  wire [7:0]rd20;
  wire rd21__3;
  wire \readDataM[10] ;
  wire \readDataM[11] ;
  wire \readDataM[12] ;
  wire \readDataM[13] ;
  wire \readDataM[14] ;
  wire \readDataM[16] ;
  wire \readDataM[17] ;
  wire \readDataM[18] ;
  wire \readDataM[19] ;
  wire \readDataM[19]_0 ;
  wire \readDataM[20] ;
  wire \readDataM[20]_0 ;
  wire \readDataM[21] ;
  wire \readDataM[21]_0 ;
  wire \readDataM[22] ;
  wire \readDataM[22]_0 ;
  wire \readDataM[23] ;
  wire \readDataM[24] ;
  wire \readDataM[25] ;
  wire \readDataM[26] ;
  wire \readDataM[27] ;
  wire \readDataM[28] ;
  wire \readDataM[29] ;
  wire \readDataM[30] ;
  wire \readDataM[31] ;
  wire \readDataM[8] ;
  wire \readDataM[9] ;
  wire reset;
  wire \rf/rd11__3 ;
  wire rf_reg_r1_0_31_0_5_i_10_n_0;
  wire rf_reg_r1_0_31_0_5_i_12_n_0;
  wire rf_reg_r1_0_31_0_5_i_13_n_0;
  wire rf_reg_r1_0_31_0_5_i_16_n_0;
  wire rf_reg_r1_0_31_0_5_i_17_n_0;
  wire rf_reg_r1_0_31_0_5_i_22_n_0;
  wire rf_reg_r1_0_31_0_5_i_23_n_0;
  wire rf_reg_r1_0_31_0_5_i_24_n_0;
  wire rf_reg_r1_0_31_0_5_i_25_n_0;
  wire rf_reg_r1_0_31_0_5_i_26_n_0;
  wire rf_reg_r1_0_31_0_5_i_27_n_0;
  wire rf_reg_r1_0_31_0_5_i_28_n_0;
  wire rf_reg_r1_0_31_0_5_i_29_n_0;
  wire rf_reg_r1_0_31_0_5_i_30_n_0;
  wire rf_reg_r1_0_31_0_5_i_31_n_0;
  wire rf_reg_r1_0_31_0_5_i_32_n_0;
  wire rf_reg_r1_0_31_0_5_i_33_n_0;
  wire rf_reg_r1_0_31_0_5_i_9_n_0;
  wire rf_reg_r1_0_31_12_17_i_10_n_0;
  wire rf_reg_r1_0_31_12_17_i_16_n_0;
  wire rf_reg_r1_0_31_12_17_i_17_n_0;
  wire rf_reg_r1_0_31_12_17_i_19_n_0;
  wire rf_reg_r1_0_31_12_17_i_21_n_0;
  wire rf_reg_r1_0_31_12_17_i_22_n_0;
  wire rf_reg_r1_0_31_12_17_i_9_n_0;
  wire [0:0]rf_reg_r1_0_31_18_23;
  wire rf_reg_r1_0_31_18_23_0;
  wire rf_reg_r1_0_31_18_23_1;
  wire rf_reg_r1_0_31_30_31_i_1__0;
  wire rf_reg_r1_0_31_6_11;
  wire rf_reg_r1_0_31_6_11_0;
  wire rf_reg_r1_0_31_6_11_i_15_n_0;
  wire rf_reg_r1_0_31_6_11_i_16_n_0;
  wire rf_reg_r1_0_31_6_11_i_17_n_0;
  wire rf_reg_r1_0_31_6_11_i_18_n_0;
  wire rf_reg_r1_0_31_6_11_i_19_n_0;
  wire rf_reg_r1_0_31_6_11_i_8_n_0;
  wire sum__0_carry_i_10;
  wire [6:0]wd3;
  wire y_carry__1;
  wire y_carry__3;

  LUT6 #(
    .INIT(64'hFFFFFFF8F8F8F8F8)) 
    \ALUResult[0]_INST_0 
       (.I0(\ALUResult[31]_INST_0_i_9_0 ),
        .I1(\main_alu/data6 [0]),
        .I2(\addressM[0] ),
        .I3(\addressM[0]_0 ),
        .I4(\ALUResult[0]_INST_0_i_4_n_0 ),
        .I5(\ALUResult[31]_INST_0_i_10_0 ),
        .O(\ALUResult[31]_INST_0_i_5_0 ));
  LUT5 #(
    .INIT(32'hBBB8B8B8)) 
    \ALUResult[0]_INST_0_i_1 
       (.I0(\ALUResult[1]_INST_0_i_5_n_0 ),
        .I1(SrcB[0]),
        .I2(\ALUResult[0]_INST_0_i_5_n_0 ),
        .I3(SrcB[1]),
        .I4(\ALUResult[0]_INST_0_i_6_n_0 ),
        .O(\main_alu/data6 [0]));
  LUT6 #(
    .INIT(64'hAAAAAAAA88800080)) 
    \ALUResult[0]_INST_0_i_4 
       (.I0(\q_reg[5]_0 ),
        .I1(sum__0_carry_i_10),
        .I2(\ALUResult[0]_INST_0_i_7_n_0 ),
        .I3(SrcB[0]),
        .I4(\ALUResult[1]_INST_0_i_5_n_0 ),
        .I5(\addressM[0]_1 ),
        .O(\ALUResult[0]_INST_0_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h0A0C)) 
    \ALUResult[0]_INST_0_i_5 
       (.I0(\ALUResult[4]_INST_0_i_9_n_0 ),
        .I1(\ALUResult[0]_INST_0_i_9_n_0 ),
        .I2(SrcB[1]),
        .I3(SrcB[2]),
        .O(\ALUResult[0]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult[0]_INST_0_i_6 
       (.I0(\q_reg[6]_0 ),
        .I1(SrcB[2]),
        .I2(\ALUResult[2]_INST_0_i_8_n_0 ),
        .O(\ALUResult[0]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \ALUResult[0]_INST_0_i_7 
       (.I0(\ALUResult[0]_INST_0_i_9_n_0 ),
        .I1(\ALUResult[4]_INST_0_i_9_n_0 ),
        .I2(SrcB[1]),
        .I3(\q_reg[6]_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[2]_INST_0_i_8_n_0 ),
        .O(\ALUResult[0]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \ALUResult[0]_INST_0_i_9 
       (.I0(SrcA[0]),
        .I1(SrcA[16]),
        .I2(SrcB[3]),
        .I3(SrcA[24]),
        .I4(SrcB[4]),
        .I5(SrcA[8]),
        .O(\ALUResult[0]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFB8B8B8FF000000)) 
    \ALUResult[10]_INST_0_i_3 
       (.I0(\ALUResult[11]_INST_0_i_8_n_0 ),
        .I1(SrcB[1]),
        .I2(\ALUResult[11]_INST_0_i_10_n_0 ),
        .I3(\ALUResult[10]_INST_0_i_8_n_0 ),
        .I4(\addressM[14]_1 ),
        .I5(\addressM[14]_2 ),
        .O(\ALUResult[30]_INST_0_i_8_3 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[10]_INST_0_i_6 
       (.I0(\ALUResult[16]_INST_0_i_10_n_0 ),
        .I1(\q_reg[20]_0 ),
        .I2(SrcB[1]),
        .I3(\ALUResult[14]_INST_0_i_9_n_0 ),
        .I4(SrcB[2]),
        .I5(\q_reg[18]_0 ),
        .O(\ALUResult[10]_INST_0_i_9_0 ));
  LUT6 #(
    .INIT(64'hB080FFFFB0800000)) 
    \ALUResult[10]_INST_0_i_8 
       (.I0(SrcA[3]),
        .I1(SrcB[2]),
        .I2(\ALUResult[5]_INST_0_i_3_0 ),
        .I3(SrcA[7]),
        .I4(SrcB[1]),
        .I5(\ALUResult[12]_INST_0_i_10_n_0 ),
        .O(\ALUResult[10]_INST_0_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \ALUResult[10]_INST_0_i_9 
       (.I0(SrcA[18]),
        .I1(SrcB[3]),
        .I2(SrcA[26]),
        .I3(SrcB[4]),
        .I4(SrcA[10]),
        .O(\q_reg[18]_0 ));
  LUT6 #(
    .INIT(64'h000000003030BB88)) 
    \ALUResult[11]_INST_0_i_10 
       (.I0(SrcA[6]),
        .I1(SrcB[2]),
        .I2(SrcA[2]),
        .I3(SrcA[10]),
        .I4(SrcB[3]),
        .I5(SrcB[4]),
        .O(\ALUResult[11]_INST_0_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \ALUResult[11]_INST_0_i_11 
       (.I0(SrcA[19]),
        .I1(SrcB[3]),
        .I2(SrcA[27]),
        .I3(SrcB[4]),
        .I4(SrcA[11]),
        .O(\q_reg[19]_0 ));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \ALUResult[11]_INST_0_i_3 
       (.I0(\ALUResult[11]_INST_0_i_8_n_0 ),
        .I1(SrcB[1]),
        .I2(\ALUResult[11]_INST_0_i_10_n_0 ),
        .I3(\addressM[14]_1 ),
        .I4(\ALUResult[12]_INST_0_i_8_n_0 ),
        .I5(\addressM[14]_2 ),
        .O(\ALUResult[30]_INST_0_i_8_2 ));
  LUT6 #(
    .INIT(64'h000000003030BB88)) 
    \ALUResult[11]_INST_0_i_8 
       (.I0(SrcA[4]),
        .I1(SrcB[2]),
        .I2(SrcA[0]),
        .I3(SrcA[8]),
        .I4(SrcB[3]),
        .I5(SrcB[4]),
        .O(\ALUResult[11]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEEEEEAAAAAAAA)) 
    \ALUResult[12]_INST_0 
       (.I0(\addressM[12] ),
        .I1(\addressM[12]_0 ),
        .I2(\ALUResult[12]_INST_0_i_3_n_0 ),
        .I3(\ALUResult[12]_INST_0_i_4_n_0 ),
        .I4(\q_reg[5]_0 ),
        .I5(\ALUResult[31]_INST_0_i_10_0 ),
        .O(\ALUResult[31]_INST_0_i_5_7 ));
  LUT6 #(
    .INIT(64'h000000003030BB88)) 
    \ALUResult[12]_INST_0_i_10 
       (.I0(SrcA[5]),
        .I1(SrcB[2]),
        .I2(SrcA[1]),
        .I3(SrcA[9]),
        .I4(SrcB[3]),
        .I5(SrcB[4]),
        .O(\ALUResult[12]_INST_0_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \ALUResult[12]_INST_0_i_3 
       (.I0(\ALUResult[12]_INST_0_i_8_n_0 ),
        .I1(\addressM[14]_1 ),
        .I2(\ALUResult[13]_INST_0_i_8_n_0 ),
        .I3(\addressM[14]_2 ),
        .O(\ALUResult[12]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \ALUResult[12]_INST_0_i_4 
       (.I0(sum__0_carry_i_10),
        .I1(\ALUResult[12]_INST_0_i_9_0 ),
        .I2(SrcB[0]),
        .I3(\ALUResult[13]_INST_0_i_9_0 ),
        .O(\ALUResult[12]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[12]_INST_0_i_6 
       (.I0(\ALUResult[18]_INST_0_i_10_n_0 ),
        .I1(\ALUResult[14]_INST_0_i_9_n_0 ),
        .I2(SrcB[1]),
        .I3(\ALUResult[16]_INST_0_i_10_n_0 ),
        .I4(SrcB[2]),
        .I5(\q_reg[20]_0 ),
        .O(\ALUResult[12]_INST_0_i_9_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult[12]_INST_0_i_8 
       (.I0(\ALUResult[12]_INST_0_i_10_n_0 ),
        .I1(SrcB[1]),
        .I2(\ALUResult[14]_INST_0_i_10_n_0 ),
        .O(\ALUResult[12]_INST_0_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \ALUResult[12]_INST_0_i_9 
       (.I0(SrcA[20]),
        .I1(SrcB[3]),
        .I2(SrcA[28]),
        .I3(SrcB[4]),
        .I4(SrcA[12]),
        .O(\q_reg[20]_0 ));
  LUT6 #(
    .INIT(64'hFFFEEEEEAAAAAAAA)) 
    \ALUResult[13]_INST_0 
       (.I0(\addressM[13] ),
        .I1(\addressM[13]_0 ),
        .I2(\ALUResult[13]_INST_0_i_3_n_0 ),
        .I3(\ALUResult[13]_INST_0_i_4_n_0 ),
        .I4(\q_reg[5]_0 ),
        .I5(\ALUResult[31]_INST_0_i_10_0 ),
        .O(\ALUResult[31]_INST_0_i_5_6 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \ALUResult[13]_INST_0_i_3 
       (.I0(\ALUResult[13]_INST_0_i_8_n_0 ),
        .I1(\addressM[14]_1 ),
        .I2(\ALUResult[14]_INST_0_i_8_n_0 ),
        .I3(\addressM[14]_2 ),
        .O(\ALUResult[13]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'hA808)) 
    \ALUResult[13]_INST_0_i_4 
       (.I0(sum__0_carry_i_10),
        .I1(\ALUResult[13]_INST_0_i_9_0 ),
        .I2(SrcB[0]),
        .I3(\ALUResult[14]_INST_0_i_9_0 ),
        .O(\ALUResult[13]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[13]_INST_0_i_6 
       (.I0(\q_reg[27]_0 ),
        .I1(\q_reg[23]_0 ),
        .I2(SrcB[1]),
        .I3(\ALUResult[12]_INST_0_i_1 ),
        .I4(SrcB[2]),
        .I5(\q_reg[21]_0 ),
        .O(\ALUResult[13]_INST_0_i_9_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \ALUResult[13]_INST_0_i_8 
       (.I0(\ALUResult[11]_INST_0_i_10_n_0 ),
        .I1(SrcB[1]),
        .I2(\ALUResult[15]_INST_0_i_10_n_0 ),
        .I3(SrcB[2]),
        .I4(\ALUResult[19]_INST_0_i_12_n_0 ),
        .O(\ALUResult[13]_INST_0_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \ALUResult[13]_INST_0_i_9 
       (.I0(SrcA[21]),
        .I1(SrcB[3]),
        .I2(SrcA[29]),
        .I3(SrcB[4]),
        .I4(SrcA[13]),
        .O(\q_reg[21]_0 ));
  LUT6 #(
    .INIT(64'hFFFEEEEEAAAAAAAA)) 
    \ALUResult[14]_INST_0 
       (.I0(\addressM[14] ),
        .I1(\addressM[14]_0 ),
        .I2(\ALUResult[14]_INST_0_i_3_n_0 ),
        .I3(\ALUResult[14]_INST_0_i_4_n_0 ),
        .I4(\q_reg[5]_0 ),
        .I5(\ALUResult[31]_INST_0_i_10_0 ),
        .O(\ALUResult[31]_INST_0_i_5_5 ));
  LUT6 #(
    .INIT(64'h000000003030BB88)) 
    \ALUResult[14]_INST_0_i_10 
       (.I0(SrcA[7]),
        .I1(SrcB[2]),
        .I2(SrcA[3]),
        .I3(SrcA[11]),
        .I4(SrcB[3]),
        .I5(SrcB[4]),
        .O(\ALUResult[14]_INST_0_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \ALUResult[14]_INST_0_i_3 
       (.I0(\ALUResult[14]_INST_0_i_8_n_0 ),
        .I1(\addressM[14]_1 ),
        .I2(\ALUResult[15]_INST_0_i_8_n_0 ),
        .I3(\addressM[14]_2 ),
        .O(\ALUResult[14]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'hA808)) 
    \ALUResult[14]_INST_0_i_4 
       (.I0(sum__0_carry_i_10),
        .I1(\ALUResult[14]_INST_0_i_9_0 ),
        .I2(SrcB[0]),
        .I3(\ALUResult[15]_INST_0_i_9_0 ),
        .O(\ALUResult[14]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[14]_INST_0_i_6 
       (.I0(\ALUResult[16]_INST_0_i_9_n_0 ),
        .I1(\ALUResult[16]_INST_0_i_10_n_0 ),
        .I2(SrcB[1]),
        .I3(\ALUResult[18]_INST_0_i_10_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[14]_INST_0_i_9_n_0 ),
        .O(\ALUResult[14]_INST_0_i_9_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \ALUResult[14]_INST_0_i_8 
       (.I0(\ALUResult[14]_INST_0_i_10_n_0 ),
        .I1(SrcB[1]),
        .I2(\ALUResult[16]_INST_0_i_11_n_0 ),
        .I3(SrcB[2]),
        .I4(\ALUResult[20]_INST_0_i_8_n_0 ),
        .O(\ALUResult[14]_INST_0_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \ALUResult[14]_INST_0_i_9 
       (.I0(SrcA[22]),
        .I1(SrcB[3]),
        .I2(SrcA[30]),
        .I3(SrcB[4]),
        .I4(SrcA[14]),
        .O(\ALUResult[14]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEEEEEAAAAAAAA)) 
    \ALUResult[15]_INST_0 
       (.I0(\addressM[15] ),
        .I1(\addressM[15]_0 ),
        .I2(\ALUResult[15]_INST_0_i_3_n_0 ),
        .I3(\ALUResult[15]_INST_0_i_4_n_0 ),
        .I4(\q_reg[5]_0 ),
        .I5(\ALUResult[31]_INST_0_i_10_0 ),
        .O(\ALUResult[31]_INST_0_i_5_4 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h00AC)) 
    \ALUResult[15]_INST_0_i_10 
       (.I0(SrcA[0]),
        .I1(SrcA[8]),
        .I2(SrcB[3]),
        .I3(SrcB[4]),
        .O(\ALUResult[15]_INST_0_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \ALUResult[15]_INST_0_i_3 
       (.I0(\ALUResult[15]_INST_0_i_8_n_0 ),
        .I1(\addressM[14]_1 ),
        .I2(\ALUResult[16]_INST_0_i_8_n_0 ),
        .I3(\addressM[14]_2 ),
        .O(\ALUResult[15]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \ALUResult[15]_INST_0_i_4 
       (.I0(sum__0_carry_i_10),
        .I1(\ALUResult[15]_INST_0_i_9_0 ),
        .I2(SrcB[0]),
        .I3(\ALUResult[16]_INST_0_i_10_0 ),
        .O(\ALUResult[15]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[15]_INST_0_i_6 
       (.I0(\q_reg[29]_0 ),
        .I1(\ALUResult[12]_INST_0_i_1 ),
        .I2(SrcB[1]),
        .I3(\q_reg[27]_0 ),
        .I4(SrcB[2]),
        .I5(\q_reg[23]_0 ),
        .O(\ALUResult[15]_INST_0_i_9_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[15]_INST_0_i_8 
       (.I0(\ALUResult[15]_INST_0_i_10_n_0 ),
        .I1(\ALUResult[19]_INST_0_i_12_n_0 ),
        .I2(SrcB[1]),
        .I3(\ALUResult[17]_INST_0_i_11_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[21]_INST_0_i_8_n_0 ),
        .O(\ALUResult[15]_INST_0_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \ALUResult[15]_INST_0_i_9 
       (.I0(SrcA[23]),
        .I1(SrcB[3]),
        .I2(SrcA__0),
        .I3(SrcB[4]),
        .I4(SrcA[15]),
        .O(\q_reg[23]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h00AC)) 
    \ALUResult[16]_INST_0_i_10 
       (.I0(SrcA[24]),
        .I1(SrcA[16]),
        .I2(SrcB[3]),
        .I3(SrcB[4]),
        .O(\ALUResult[16]_INST_0_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h00AC)) 
    \ALUResult[16]_INST_0_i_11 
       (.I0(SrcA[1]),
        .I1(SrcA[9]),
        .I2(SrcB[3]),
        .I3(SrcB[4]),
        .O(\ALUResult[16]_INST_0_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \ALUResult[16]_INST_0_i_3 
       (.I0(\ALUResult[16]_INST_0_i_8_n_0 ),
        .I1(\addressM[14]_1 ),
        .I2(\ALUResult[17]_INST_0_i_8_n_0 ),
        .I3(\addressM[14]_2 ),
        .O(\ALUResult[30]_INST_0_i_8_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[16]_INST_0_i_6 
       (.I0(\ALUResult[18]_INST_0_i_9_n_0 ),
        .I1(\ALUResult[18]_INST_0_i_10_n_0 ),
        .I2(SrcB[1]),
        .I3(\ALUResult[16]_INST_0_i_9_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[16]_INST_0_i_10_n_0 ),
        .O(\ALUResult[16]_INST_0_i_10_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[16]_INST_0_i_8 
       (.I0(\ALUResult[16]_INST_0_i_11_n_0 ),
        .I1(\ALUResult[20]_INST_0_i_8_n_0 ),
        .I2(SrcB[1]),
        .I3(\ALUResult[18]_INST_0_i_11_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[22]_INST_0_i_8_n_0 ),
        .O(\ALUResult[16]_INST_0_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h00AC)) 
    \ALUResult[16]_INST_0_i_9 
       (.I0(SrcA[28]),
        .I1(SrcA[20]),
        .I2(SrcB[3]),
        .I3(SrcB[4]),
        .O(\ALUResult[16]_INST_0_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h00AC)) 
    \ALUResult[17]_INST_0_i_11 
       (.I0(SrcA[2]),
        .I1(SrcA[10]),
        .I2(SrcB[3]),
        .I3(SrcB[4]),
        .O(\ALUResult[17]_INST_0_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \ALUResult[17]_INST_0_i_3 
       (.I0(\ALUResult[17]_INST_0_i_8_n_0 ),
        .I1(\addressM[14]_1 ),
        .I2(\ALUResult[24]_INST_0_i_8_0 ),
        .I3(\addressM[14]_2 ),
        .O(\ALUResult[30]_INST_0_i_8_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[17]_INST_0_i_8 
       (.I0(\ALUResult[17]_INST_0_i_11_n_0 ),
        .I1(\ALUResult[21]_INST_0_i_8_n_0 ),
        .I2(SrcB[1]),
        .I3(\ALUResult[19]_INST_0_i_12_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[23]_INST_0_i_8_n_0 ),
        .O(\ALUResult[17]_INST_0_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h00AC)) 
    \ALUResult[17]_INST_0_i_9 
       (.I0(SrcA[29]),
        .I1(SrcA[21]),
        .I2(SrcB[3]),
        .I3(SrcB[4]),
        .O(\q_reg[29]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h00AC)) 
    \ALUResult[18]_INST_0_i_10 
       (.I0(SrcA[26]),
        .I1(SrcA[18]),
        .I2(SrcB[3]),
        .I3(SrcB[4]),
        .O(\ALUResult[18]_INST_0_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h00AC)) 
    \ALUResult[18]_INST_0_i_11 
       (.I0(SrcA[3]),
        .I1(SrcA[11]),
        .I2(SrcB[3]),
        .I3(SrcB[4]),
        .O(\ALUResult[18]_INST_0_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'hA808)) 
    \ALUResult[18]_INST_0_i_4 
       (.I0(sum__0_carry_i_10),
        .I1(\ALUResult[18]_INST_0_i_10_0 ),
        .I2(SrcB[0]),
        .I3(\ALUResult[19]_INST_0_i_11_0 ),
        .O(\ALUResult[19]_INST_0_i_7_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \ALUResult[18]_INST_0_i_6 
       (.I0(\ALUResult[20]_INST_0_i_7_n_0 ),
        .I1(SrcB[1]),
        .I2(\ALUResult[18]_INST_0_i_9_n_0 ),
        .I3(SrcB[2]),
        .I4(\ALUResult[18]_INST_0_i_10_n_0 ),
        .O(\ALUResult[18]_INST_0_i_10_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[18]_INST_0_i_8 
       (.I0(\ALUResult[18]_INST_0_i_11_n_0 ),
        .I1(\ALUResult[22]_INST_0_i_8_n_0 ),
        .I2(SrcB[1]),
        .I3(\ALUResult[20]_INST_0_i_8_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[24]_INST_0_i_8_n_0 ),
        .O(\ALUResult[24]_INST_0_i_8_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h00AC)) 
    \ALUResult[18]_INST_0_i_9 
       (.I0(SrcA[30]),
        .I1(SrcA[22]),
        .I2(SrcB[3]),
        .I3(SrcB[4]),
        .O(\ALUResult[18]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEEEEEAAAAAAAA)) 
    \ALUResult[19]_INST_0 
       (.I0(\addressM[19] ),
        .I1(\addressM[19]_0 ),
        .I2(\ALUResult[19]_INST_0_i_3_n_0 ),
        .I3(\ALUResult[19]_INST_0_i_4_n_0 ),
        .I4(\q_reg[5]_0 ),
        .I5(\ALUResult[31]_INST_0_i_10_0 ),
        .O(\ALUResult[31]_INST_0_i_5_12 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h00AC)) 
    \ALUResult[19]_INST_0_i_10 
       (.I0(SrcA__0),
        .I1(SrcA[23]),
        .I2(SrcB[3]),
        .I3(SrcB[4]),
        .O(\q_reg[31]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h00AC)) 
    \ALUResult[19]_INST_0_i_11 
       (.I0(SrcA[27]),
        .I1(SrcA[19]),
        .I2(SrcB[3]),
        .I3(SrcB[4]),
        .O(\q_reg[27]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h00AC)) 
    \ALUResult[19]_INST_0_i_12 
       (.I0(SrcA[4]),
        .I1(SrcA[12]),
        .I2(SrcB[3]),
        .I3(SrcB[4]),
        .O(\ALUResult[19]_INST_0_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \ALUResult[19]_INST_0_i_3 
       (.I0(\ALUResult[25]_INST_0_i_10_0 ),
        .I1(\addressM[14]_1 ),
        .I2(\ALUResult[20]_INST_0_i_6_n_0 ),
        .I3(\addressM[14]_2 ),
        .O(\ALUResult[19]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'hA808)) 
    \ALUResult[19]_INST_0_i_4 
       (.I0(sum__0_carry_i_10),
        .I1(\ALUResult[19]_INST_0_i_11_0 ),
        .I2(SrcB[0]),
        .I3(\ALUResult[20]_INST_0_i_7_0 ),
        .O(\ALUResult[19]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult[19]_INST_0_i_6 
       (.I0(\q_reg[26]_0 ),
        .I1(SrcB[1]),
        .I2(\ALUResult[20]_INST_0_i_7_n_0 ),
        .O(\ALUResult[20]_INST_0_i_7_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \ALUResult[19]_INST_0_i_7 
       (.I0(\q_reg[25]_0 ),
        .I1(SrcB[1]),
        .I2(\q_reg[31]_1 ),
        .I3(SrcB[2]),
        .I4(\q_reg[27]_0 ),
        .O(\ALUResult[19]_INST_0_i_11_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[19]_INST_0_i_9 
       (.I0(\ALUResult[19]_INST_0_i_12_n_0 ),
        .I1(\ALUResult[23]_INST_0_i_8_n_0 ),
        .I2(SrcB[1]),
        .I3(\ALUResult[21]_INST_0_i_8_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[25]_INST_0_i_10_n_0 ),
        .O(\ALUResult[25]_INST_0_i_10_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF8F8F8F8F8)) 
    \ALUResult[1]_INST_0 
       (.I0(\ALUResult[31]_INST_0_i_9_0 ),
        .I1(\main_alu/data6 [1]),
        .I2(\addressM[1] ),
        .I3(\addressM[1]_0 ),
        .I4(\ALUResult[1]_INST_0_i_4_n_0 ),
        .I5(\ALUResult[31]_INST_0_i_10_0 ),
        .O(\ALUResult[31]_INST_0_i_5_1 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult[1]_INST_0_i_1 
       (.I0(\ALUResult[2]_INST_0_i_5_n_0 ),
        .I1(SrcB[0]),
        .I2(\ALUResult[1]_INST_0_i_5_n_0 ),
        .O(\main_alu/data6 [1]));
  LUT6 #(
    .INIT(64'hAAAAAAAA88800080)) 
    \ALUResult[1]_INST_0_i_4 
       (.I0(\q_reg[5]_0 ),
        .I1(sum__0_carry_i_10),
        .I2(\ALUResult[1]_INST_0_i_5_n_0 ),
        .I3(SrcB[0]),
        .I4(\ALUResult[2]_INST_0_i_5_n_0 ),
        .I5(\addressM[1]_1 ),
        .O(\ALUResult[1]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \ALUResult[1]_INST_0_i_5 
       (.I0(\ALUResult[1]_INST_0_i_7_n_0 ),
        .I1(\ALUResult[5]_INST_0_i_9_n_0 ),
        .I2(SrcB[1]),
        .I3(\ALUResult[6]_INST_0_i_10_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[3]_INST_0_i_8_n_0 ),
        .O(\ALUResult[1]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \ALUResult[1]_INST_0_i_7 
       (.I0(SrcA[1]),
        .I1(SrcA[17]),
        .I2(SrcB[3]),
        .I3(SrcA[25]),
        .I4(SrcB[4]),
        .I5(SrcA[9]),
        .O(\ALUResult[1]_INST_0_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFEEEAAAA)) 
    \ALUResult[20]_INST_0 
       (.I0(\ALUResult[20]_INST_0_i_1_n_0 ),
        .I1(\addressM[20] ),
        .I2(\ALUResult[20]_INST_0_i_3_n_0 ),
        .I3(\q_reg[5]_0 ),
        .I4(\ALUResult[31]_INST_0_i_10_0 ),
        .O(\ALUResult[31]_INST_0_i_5_11 ));
  LUT6 #(
    .INIT(64'hFFFFF828F828F828)) 
    \ALUResult[20]_INST_0_i_1 
       (.I0(\ALUResult[31]_INST_0_i_24_0 ),
        .I1(SrcA[20]),
        .I2(SrcB[7]),
        .I3(\ALUResult[31]_INST_0_i_24_1 ),
        .I4(\main_alu/data6 [20]),
        .I5(\ALUResult[31]_INST_0_i_9_0 ),
        .O(\ALUResult[20]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \ALUResult[20]_INST_0_i_3 
       (.I0(\addressM[14]_2 ),
        .I1(\ALUResult[27]_INST_0_i_8_0 ),
        .I2(\addressM[14]_1 ),
        .I3(\ALUResult[20]_INST_0_i_6_n_0 ),
        .I4(\main_alu/data6 [20]),
        .I5(sum__0_carry_i_10),
        .O(\ALUResult[20]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[20]_INST_0_i_5 
       (.I0(\q_reg[27]_1 ),
        .I1(\q_reg[25]_0 ),
        .I2(SrcB[0]),
        .I3(\q_reg[26]_0 ),
        .I4(SrcB[1]),
        .I5(\ALUResult[20]_INST_0_i_7_n_0 ),
        .O(\main_alu/data6 [20]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[20]_INST_0_i_6 
       (.I0(\ALUResult[20]_INST_0_i_8_n_0 ),
        .I1(\ALUResult[24]_INST_0_i_8_n_0 ),
        .I2(SrcB[1]),
        .I3(\ALUResult[22]_INST_0_i_8_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[26]_INST_0_i_11_n_0 ),
        .O(\ALUResult[20]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h000000003030BB88)) 
    \ALUResult[20]_INST_0_i_7 
       (.I0(SrcA[24]),
        .I1(SrcB[2]),
        .I2(SrcA[28]),
        .I3(SrcA[20]),
        .I4(SrcB[3]),
        .I5(SrcB[4]),
        .O(\ALUResult[20]_INST_0_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h00AC)) 
    \ALUResult[20]_INST_0_i_8 
       (.I0(SrcA[5]),
        .I1(SrcA[13]),
        .I2(SrcB[3]),
        .I3(SrcB[4]),
        .O(\ALUResult[20]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[21]_INST_0_i_6 
       (.I0(\ALUResult[21]_INST_0_i_8_n_0 ),
        .I1(\ALUResult[25]_INST_0_i_10_n_0 ),
        .I2(SrcB[1]),
        .I3(\ALUResult[23]_INST_0_i_8_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[27]_INST_0_i_8_n_0 ),
        .O(\ALUResult[27]_INST_0_i_8_0 ));
  LUT6 #(
    .INIT(64'h000000003030BB88)) 
    \ALUResult[21]_INST_0_i_7 
       (.I0(SrcA[25]),
        .I1(SrcB[2]),
        .I2(SrcA[29]),
        .I3(SrcA[21]),
        .I4(SrcB[3]),
        .I5(SrcB[4]),
        .O(\q_reg[25]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h00AC)) 
    \ALUResult[21]_INST_0_i_8 
       (.I0(SrcA[6]),
        .I1(SrcA[14]),
        .I2(SrcB[3]),
        .I3(SrcB[4]),
        .O(\ALUResult[21]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[22]_INST_0_i_6 
       (.I0(\ALUResult[22]_INST_0_i_8_n_0 ),
        .I1(\ALUResult[26]_INST_0_i_11_n_0 ),
        .I2(SrcB[1]),
        .I3(\ALUResult[24]_INST_0_i_8_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[28]_INST_0_i_8_n_0 ),
        .O(\ALUResult[28]_INST_0_i_8_0 ));
  LUT6 #(
    .INIT(64'h000000003030BB88)) 
    \ALUResult[22]_INST_0_i_7 
       (.I0(SrcA[26]),
        .I1(SrcB[2]),
        .I2(SrcA[30]),
        .I3(SrcA[22]),
        .I4(SrcB[3]),
        .I5(SrcB[4]),
        .O(\q_reg[26]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h00AC)) 
    \ALUResult[22]_INST_0_i_8 
       (.I0(SrcA[7]),
        .I1(SrcA[15]),
        .I2(SrcB[3]),
        .I3(SrcB[4]),
        .O(\ALUResult[22]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[23]_INST_0_i_6 
       (.I0(\ALUResult[23]_INST_0_i_8_n_0 ),
        .I1(\ALUResult[27]_INST_0_i_8_n_0 ),
        .I2(SrcB[1]),
        .I3(\ALUResult[25]_INST_0_i_10_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[29]_INST_0_i_10_n_0 ),
        .O(\ALUResult[29]_INST_0_i_10_0 ));
  LUT6 #(
    .INIT(64'h000000003030BB88)) 
    \ALUResult[23]_INST_0_i_7 
       (.I0(SrcA[27]),
        .I1(SrcB[2]),
        .I2(SrcA__0),
        .I3(SrcA[23]),
        .I4(SrcB[3]),
        .I5(SrcB[4]),
        .O(\q_reg[27]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \ALUResult[23]_INST_0_i_8 
       (.I0(SrcA[8]),
        .I1(SrcB[3]),
        .I2(SrcA[0]),
        .I3(SrcB[4]),
        .I4(SrcA[16]),
        .O(\ALUResult[23]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[24]_INST_0_i_6 
       (.I0(\ALUResult[24]_INST_0_i_8_n_0 ),
        .I1(\ALUResult[28]_INST_0_i_8_n_0 ),
        .I2(SrcB[1]),
        .I3(\ALUResult[26]_INST_0_i_11_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[30]_INST_0_i_10_n_0 ),
        .O(\ALUResult[30]_INST_0_i_10_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \ALUResult[24]_INST_0_i_8 
       (.I0(SrcA[9]),
        .I1(SrcB[3]),
        .I2(SrcA[1]),
        .I3(SrcB[4]),
        .I4(SrcA[17]),
        .O(\ALUResult[24]_INST_0_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \ALUResult[25]_INST_0_i_10 
       (.I0(SrcA[10]),
        .I1(SrcB[3]),
        .I2(SrcA[2]),
        .I3(SrcB[4]),
        .I4(SrcA[18]),
        .O(\ALUResult[25]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[25]_INST_0_i_6 
       (.I0(\ALUResult[25]_INST_0_i_10_n_0 ),
        .I1(\ALUResult[29]_INST_0_i_10_n_0 ),
        .I2(SrcB[1]),
        .I3(\ALUResult[27]_INST_0_i_8_n_0 ),
        .I4(SrcB[2]),
        .I5(\q_reg[24]_0 ),
        .O(\ALUResult[31]_INST_0_i_30_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \ALUResult[26]_INST_0_i_11 
       (.I0(SrcA[11]),
        .I1(SrcB[3]),
        .I2(SrcA[3]),
        .I3(SrcB[4]),
        .I4(SrcA[19]),
        .O(\ALUResult[26]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[26]_INST_0_i_6 
       (.I0(\ALUResult[26]_INST_0_i_11_n_0 ),
        .I1(\ALUResult[30]_INST_0_i_10_n_0 ),
        .I2(SrcB[1]),
        .I3(\ALUResult[28]_INST_0_i_8_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[30]_INST_0_i_11_n_0 ),
        .O(\ALUResult[30]_INST_0_i_11_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[27]_INST_0_i_6 
       (.I0(\ALUResult[27]_INST_0_i_8_n_0 ),
        .I1(\q_reg[24]_0 ),
        .I2(SrcB[1]),
        .I3(\ALUResult[29]_INST_0_i_10_n_0 ),
        .I4(SrcB[2]),
        .I5(\q_reg[26]_1 ),
        .O(\ALUResult[31]_INST_0_i_33_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \ALUResult[27]_INST_0_i_8 
       (.I0(SrcA[12]),
        .I1(SrcB[3]),
        .I2(SrcA[4]),
        .I3(SrcB[4]),
        .I4(SrcA[20]),
        .O(\ALUResult[27]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[28]_INST_0_i_6 
       (.I0(\ALUResult[28]_INST_0_i_8_n_0 ),
        .I1(\ALUResult[30]_INST_0_i_11_n_0 ),
        .I2(SrcB[1]),
        .I3(\ALUResult[30]_INST_0_i_10_n_0 ),
        .I4(SrcB[2]),
        .I5(\q_reg[27]_2 ),
        .O(\ALUResult[31]_INST_0_i_28_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \ALUResult[28]_INST_0_i_8 
       (.I0(SrcA[13]),
        .I1(SrcB[3]),
        .I2(SrcA[5]),
        .I3(SrcB[4]),
        .I4(SrcA[21]),
        .O(\ALUResult[28]_INST_0_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \ALUResult[29]_INST_0_i_10 
       (.I0(SrcA[14]),
        .I1(SrcB[3]),
        .I2(SrcA[6]),
        .I3(SrcB[4]),
        .I4(SrcA[22]),
        .O(\ALUResult[29]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[29]_INST_0_i_6 
       (.I0(\ALUResult[29]_INST_0_i_10_n_0 ),
        .I1(\q_reg[26]_1 ),
        .I2(SrcB[1]),
        .I3(\q_reg[24]_0 ),
        .I4(SrcB[2]),
        .I5(\q_reg[28]_0 ),
        .O(\ALUResult[31]_INST_0_i_31_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF8F8F8F8F8)) 
    \ALUResult[2]_INST_0 
       (.I0(\ALUResult[31]_INST_0_i_9_0 ),
        .I1(\main_alu/data6 [2]),
        .I2(\addressM[2] ),
        .I3(\addressM[2]_0 ),
        .I4(\ALUResult[2]_INST_0_i_4_n_0 ),
        .I5(\ALUResult[31]_INST_0_i_10_0 ),
        .O(\ALUResult[31]_INST_0_i_5_2 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult[2]_INST_0_i_1 
       (.I0(\ALUResult[3]_INST_0_i_5_n_0 ),
        .I1(SrcB[0]),
        .I2(\ALUResult[2]_INST_0_i_5_n_0 ),
        .O(\main_alu/data6 [2]));
  LUT6 #(
    .INIT(64'hAAAAAAAA88800080)) 
    \ALUResult[2]_INST_0_i_4 
       (.I0(\q_reg[5]_0 ),
        .I1(sum__0_carry_i_10),
        .I2(\ALUResult[2]_INST_0_i_5_n_0 ),
        .I3(SrcB[0]),
        .I4(\ALUResult[3]_INST_0_i_5_n_0 ),
        .I5(\addressM[2]_1 ),
        .O(\ALUResult[2]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[2]_INST_0_i_5 
       (.I0(\q_reg[16]_0 ),
        .I1(\ALUResult[4]_INST_0_i_9_n_0 ),
        .I2(SrcB[1]),
        .I3(\q_reg[6]_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[2]_INST_0_i_8_n_0 ),
        .O(\ALUResult[2]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \ALUResult[2]_INST_0_i_8 
       (.I0(SrcA[2]),
        .I1(SrcA[18]),
        .I2(SrcB[3]),
        .I3(SrcA[26]),
        .I4(SrcB[4]),
        .I5(SrcA[10]),
        .O(\ALUResult[2]_INST_0_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \ALUResult[30]_INST_0_i_10 
       (.I0(SrcA[15]),
        .I1(SrcB[3]),
        .I2(SrcA[7]),
        .I3(SrcB[4]),
        .I4(SrcA[23]),
        .O(\ALUResult[30]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \ALUResult[30]_INST_0_i_11 
       (.I0(SrcA[25]),
        .I1(SrcA[9]),
        .I2(SrcB[3]),
        .I3(SrcA[1]),
        .I4(SrcB[4]),
        .I5(SrcA[17]),
        .O(\ALUResult[30]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \ALUResult[30]_INST_0_i_12 
       (.I0(SrcA[29]),
        .I1(SrcA[13]),
        .I2(SrcB[3]),
        .I3(SrcA[5]),
        .I4(SrcB[4]),
        .I5(SrcA[21]),
        .O(\ALUResult[30]_INST_0_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \ALUResult[30]_INST_0_i_4 
       (.I0(ALUControl),
        .I1(ALUControl__0),
        .I2(\q_reg[5]_4 ),
        .O(\ALUResult[31]_INST_0_i_24_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \ALUResult[30]_INST_0_i_6 
       (.I0(ALUControl),
        .I1(\q_reg[5]_4 ),
        .O(\ALUResult[31]_INST_0_i_24_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[30]_INST_0_i_9 
       (.I0(\ALUResult[30]_INST_0_i_10_n_0 ),
        .I1(\q_reg[27]_2 ),
        .I2(SrcB[1]),
        .I3(\ALUResult[30]_INST_0_i_11_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[30]_INST_0_i_12_n_0 ),
        .O(\ALUResult[30]_INST_0_i_12_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h4F)) 
    \ALUResult[31]_INST_0_i_10 
       (.I0(\q_reg[5]_4 ),
        .I1(ALUControl__0),
        .I2(ALUControl),
        .O(\ALUResult[31]_INST_0_i_25_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'h15FF)) 
    \ALUResult[31]_INST_0_i_12 
       (.I0(\c/ALUOp [0]),
        .I1(Instr[13]),
        .I2(Instr[14]),
        .I3(\c/ALUOp [1]),
        .O(\q_reg[5]_6 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'hFFFF00A7)) 
    \ALUResult[31]_INST_0_i_13 
       (.I0(Instr[2]),
        .I1(Instr[5]),
        .I2(Instr[6]),
        .I3(\ALUResult[31]_INST_0_i_18_n_0 ),
        .I4(sum__0_carry_i_10),
        .O(\q_reg[5]_7 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \ALUResult[31]_INST_0_i_15 
       (.I0(\q_reg[5]_4 ),
        .I1(ALUControl__0),
        .O(sum__0_carry_i_10));
  LUT6 #(
    .INIT(64'hAFFF8FFFAFFFFFFF)) 
    \ALUResult[31]_INST_0_i_18 
       (.I0(Instr[14]),
        .I1(Instr[30]),
        .I2(\ALUResult[31]_INST_0_i_4_0 ),
        .I3(Instr[4]),
        .I4(Instr[13]),
        .I5(Instr[12]),
        .O(\ALUResult[31]_INST_0_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hD0)) 
    \ALUResult[31]_INST_0_i_22 
       (.I0(Instr[2]),
        .I1(Instr[5]),
        .I2(Instr[4]),
        .O(\c/ALUOp [1]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h58)) 
    \ALUResult[31]_INST_0_i_23 
       (.I0(Instr[2]),
        .I1(Instr[5]),
        .I2(Instr[6]),
        .O(\c/ALUOp [0]));
  LUT6 #(
    .INIT(64'hAAA0AAA8AA80AA80)) 
    \ALUResult[31]_INST_0_i_24 
       (.I0(\c/ALUOp [1]),
        .I1(Instr[14]),
        .I2(Instr[13]),
        .I3(\c/ALUOp [0]),
        .I4(Instr[30]),
        .I5(Instr[12]),
        .O(\q_reg[5]_4 ));
  LUT6 #(
    .INIT(64'hFFFF00A200000000)) 
    \ALUResult[31]_INST_0_i_25 
       (.I0(Instr[14]),
        .I1(Instr[12]),
        .I2(Instr[30]),
        .I3(Instr[13]),
        .I4(\c/ALUOp [0]),
        .I5(\c/ALUOp [1]),
        .O(ALUControl));
  LUT6 #(
    .INIT(64'hAAAAFFFBAAAA0008)) 
    \ALUResult[31]_INST_0_i_26 
       (.I0(Instr[7]),
        .I1(Instr[5]),
        .I2(Instr[6]),
        .I3(Instr[4]),
        .I4(Instr[3]),
        .I5(Instr[20]),
        .O(\q_reg[2]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult[31]_INST_0_i_27 
       (.I0(\ALUResult[30]_INST_0_i_11_n_0 ),
        .I1(SrcB[2]),
        .I2(\ALUResult[30]_INST_0_i_12_n_0 ),
        .O(\ALUResult[30]_INST_0_i_12_1 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \ALUResult[31]_INST_0_i_28 
       (.I0(SrcA[27]),
        .I1(SrcA[11]),
        .I2(SrcB[3]),
        .I3(SrcA[3]),
        .I4(SrcB[4]),
        .I5(SrcA[19]),
        .O(\q_reg[27]_2 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \ALUResult[31]_INST_0_i_29 
       (.I0(SrcA__0),
        .I1(SrcA[15]),
        .I2(SrcB[3]),
        .I3(SrcA[7]),
        .I4(SrcB[4]),
        .I5(SrcA[23]),
        .O(\q_reg[31]_2 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \ALUResult[31]_INST_0_i_30 
       (.I0(SrcA[24]),
        .I1(SrcA[8]),
        .I2(SrcB[3]),
        .I3(SrcA[0]),
        .I4(SrcB[4]),
        .I5(SrcA[16]),
        .O(\q_reg[24]_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \ALUResult[31]_INST_0_i_31 
       (.I0(SrcA[28]),
        .I1(SrcA[12]),
        .I2(SrcB[3]),
        .I3(SrcA[4]),
        .I4(SrcB[4]),
        .I5(SrcA[20]),
        .O(\q_reg[28]_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \ALUResult[31]_INST_0_i_32 
       (.I0(SrcA[30]),
        .I1(SrcA[14]),
        .I2(SrcB[3]),
        .I3(SrcA[6]),
        .I4(SrcB[4]),
        .I5(SrcA[22]),
        .O(\q_reg[30]_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \ALUResult[31]_INST_0_i_33 
       (.I0(SrcA[26]),
        .I1(SrcA[10]),
        .I2(SrcB[3]),
        .I3(SrcA[2]),
        .I4(SrcB[4]),
        .I5(SrcA[18]),
        .O(\q_reg[26]_1 ));
  LUT6 #(
    .INIT(64'h8A888A8A888A888A)) 
    \ALUResult[31]_INST_0_i_4 
       (.I0(\q_reg[5]_6 ),
        .I1(sum__0_carry_i_10),
        .I2(\ALUResult[31]_INST_0_i_18_n_0 ),
        .I3(Instr[6]),
        .I4(Instr[5]),
        .I5(Instr[2]),
        .O(\q_reg[5]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \ALUResult[31]_INST_0_i_5 
       (.I0(\q_reg[5]_5 ),
        .I1(\ALUResult[31]_INST_0_i_25_0 ),
        .O(\ALUResult[31]_INST_0_i_10_0 ));
  LUT5 #(
    .INIT(32'hC0C0AAC0)) 
    \ALUResult[31]_INST_0_i_7 
       (.I0(Q[31]),
        .I1(rd10[31]),
        .I2(\rf/rd11__3 ),
        .I3(Instr[2]),
        .I4(Instr[5]),
        .O(SrcA__0));
  LUT6 #(
    .INIT(64'hFDFFFDFDFFFFFFFF)) 
    \ALUResult[31]_INST_0_i_9 
       (.I0(\c/ALUOp [1]),
        .I1(\c/ALUOp [0]),
        .I2(Instr[13]),
        .I3(Instr[30]),
        .I4(Instr[12]),
        .I5(Instr[14]),
        .O(\q_reg[5]_5 ));
  LUT6 #(
    .INIT(64'hFFFFFFF8F8F8F8F8)) 
    \ALUResult[3]_INST_0 
       (.I0(\ALUResult[31]_INST_0_i_9_0 ),
        .I1(\main_alu/data6 [3]),
        .I2(\addressM[3] ),
        .I3(\addressM[3]_0 ),
        .I4(\ALUResult[3]_INST_0_i_4_n_0 ),
        .I5(\ALUResult[31]_INST_0_i_10_0 ),
        .O(\ALUResult[31]_INST_0_i_5_8 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult[3]_INST_0_i_1 
       (.I0(\ALUResult[4]_INST_0_i_6_n_0 ),
        .I1(SrcB[0]),
        .I2(\ALUResult[3]_INST_0_i_5_n_0 ),
        .O(\main_alu/data6 [3]));
  LUT6 #(
    .INIT(64'hAAAAAAAA88800080)) 
    \ALUResult[3]_INST_0_i_4 
       (.I0(\q_reg[5]_0 ),
        .I1(sum__0_carry_i_10),
        .I2(\ALUResult[3]_INST_0_i_5_n_0 ),
        .I3(SrcB[0]),
        .I4(\ALUResult[4]_INST_0_i_6_n_0 ),
        .I5(\addressM[3]_1 ),
        .O(\ALUResult[3]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[3]_INST_0_i_5 
       (.I0(\ALUResult[9]_INST_0_i_9_n_0 ),
        .I1(\ALUResult[5]_INST_0_i_9_n_0 ),
        .I2(SrcB[1]),
        .I3(\ALUResult[6]_INST_0_i_10_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[3]_INST_0_i_8_n_0 ),
        .O(\ALUResult[3]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \ALUResult[3]_INST_0_i_8 
       (.I0(SrcA[3]),
        .I1(SrcA[19]),
        .I2(SrcB[3]),
        .I3(SrcA[27]),
        .I4(SrcB[4]),
        .I5(SrcA[11]),
        .O(\ALUResult[3]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF8F8F8F8F8)) 
    \ALUResult[4]_INST_0 
       (.I0(\ALUResult[31]_INST_0_i_9_0 ),
        .I1(\main_alu/data6 [4]),
        .I2(\addressM[4] ),
        .I3(\addressM[4]_0 ),
        .I4(\ALUResult[4]_INST_0_i_5_n_0 ),
        .I5(\ALUResult[31]_INST_0_i_10_0 ),
        .O(\ALUResult[31]_INST_0_i_5_10 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ALUResult[4]_INST_0_i_1 
       (.I0(\ALUResult[31]_INST_0_i_25_0 ),
        .I1(\q_reg[5]_5 ),
        .O(\ALUResult[31]_INST_0_i_9_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult[4]_INST_0_i_2 
       (.I0(\ALUResult[5]_INST_0_i_9_0 ),
        .I1(SrcB[0]),
        .I2(\ALUResult[4]_INST_0_i_6_n_0 ),
        .O(\main_alu/data6 [4]));
  LUT6 #(
    .INIT(64'hAAAAAAAA88800080)) 
    \ALUResult[4]_INST_0_i_5 
       (.I0(\q_reg[5]_0 ),
        .I1(sum__0_carry_i_10),
        .I2(\ALUResult[4]_INST_0_i_6_n_0 ),
        .I3(SrcB[0]),
        .I4(\ALUResult[5]_INST_0_i_9_0 ),
        .I5(\addressM[4]_1 ),
        .O(\ALUResult[4]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[4]_INST_0_i_6 
       (.I0(\q_reg[18]_0 ),
        .I1(\q_reg[6]_0 ),
        .I2(SrcB[1]),
        .I3(\q_reg[16]_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[4]_INST_0_i_9_n_0 ),
        .O(\ALUResult[4]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \ALUResult[4]_INST_0_i_9 
       (.I0(SrcA[4]),
        .I1(SrcA[20]),
        .I2(SrcB[3]),
        .I3(SrcA[28]),
        .I4(SrcB[4]),
        .I5(SrcA[12]),
        .O(\ALUResult[4]_INST_0_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \ALUResult[5]_INST_0_i_3 
       (.I0(\ALUResult[5]_INST_0_i_8_n_0 ),
        .I1(\addressM[14]_1 ),
        .I2(\q_reg[3]_0 ),
        .I3(\addressM[14]_2 ),
        .O(\ALUResult[30]_INST_0_i_8 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[5]_INST_0_i_6 
       (.I0(\q_reg[19]_0 ),
        .I1(\ALUResult[6]_INST_0_i_10_n_0 ),
        .I2(SrcB[1]),
        .I3(\ALUResult[9]_INST_0_i_9_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[5]_INST_0_i_9_n_0 ),
        .O(\ALUResult[5]_INST_0_i_9_0 ));
  LUT6 #(
    .INIT(64'h30BB000030880000)) 
    \ALUResult[5]_INST_0_i_8 
       (.I0(SrcA[2]),
        .I1(SrcB[1]),
        .I2(SrcA[0]),
        .I3(SrcB[2]),
        .I4(\ALUResult[5]_INST_0_i_3_0 ),
        .I5(SrcA[4]),
        .O(\ALUResult[5]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \ALUResult[5]_INST_0_i_9 
       (.I0(SrcA[5]),
        .I1(SrcA[21]),
        .I2(SrcB[3]),
        .I3(SrcA[29]),
        .I4(SrcB[4]),
        .I5(SrcA[13]),
        .O(\ALUResult[5]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \ALUResult[6]_INST_0_i_10 
       (.I0(SrcA[7]),
        .I1(SrcA[23]),
        .I2(SrcB[3]),
        .I3(SrcA__0),
        .I4(SrcB[4]),
        .I5(SrcA[15]),
        .O(\ALUResult[6]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \ALUResult[6]_INST_0_i_11 
       (.I0(SrcA[6]),
        .I1(SrcA[22]),
        .I2(SrcB[3]),
        .I3(SrcA[30]),
        .I4(SrcB[4]),
        .I5(SrcA[14]),
        .O(\q_reg[6]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[6]_INST_0_i_6 
       (.I0(\q_reg[21]_0 ),
        .I1(\ALUResult[9]_INST_0_i_9_n_0 ),
        .I2(SrcB[1]),
        .I3(\q_reg[19]_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[6]_INST_0_i_10_n_0 ),
        .O(\ALUResult[6]_INST_0_i_10_0 ));
  LUT6 #(
    .INIT(64'h30BB000030880000)) 
    \ALUResult[6]_INST_0_i_9 
       (.I0(SrcA[3]),
        .I1(SrcB[1]),
        .I2(SrcA[1]),
        .I3(SrcB[2]),
        .I4(\ALUResult[5]_INST_0_i_3_0 ),
        .I5(SrcA[5]),
        .O(\q_reg[3]_0 ));
  LUT5 #(
    .INIT(32'hFEEEAAAA)) 
    \ALUResult[7]_INST_0 
       (.I0(\ALUResult[7]_INST_0_i_1_n_0 ),
        .I1(\addressM[7] ),
        .I2(\addressM[7]_0 ),
        .I3(\q_reg[5]_0 ),
        .I4(\ALUResult[31]_INST_0_i_10_0 ),
        .O(\ALUResult[31]_INST_0_i_5_3 ));
  LUT6 #(
    .INIT(64'hFFFFF828F828F828)) 
    \ALUResult[7]_INST_0_i_1 
       (.I0(\ALUResult[31]_INST_0_i_24_0 ),
        .I1(SrcA[7]),
        .I2(SrcB[6]),
        .I3(\ALUResult[31]_INST_0_i_24_1 ),
        .I4(\ALUResult[6]_INST_0_i_6_0 ),
        .I5(\ALUResult[31]_INST_0_i_9_0 ),
        .O(\ALUResult[7]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult[7]_INST_0_i_5 
       (.I0(\ALUResult[8]_INST_0_i_9_0 ),
        .I1(SrcB[0]),
        .I2(\ALUResult[6]_INST_0_i_10_0 ),
        .O(\ALUResult[6]_INST_0_i_6_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'hA808)) 
    \ALUResult[8]_INST_0_i_4 
       (.I0(sum__0_carry_i_10),
        .I1(\ALUResult[8]_INST_0_i_9_0 ),
        .I2(SrcB[0]),
        .I3(\ALUResult[9]_INST_0_i_9_0 ),
        .O(\ALUResult[9]_INST_0_i_6_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[8]_INST_0_i_6 
       (.I0(\ALUResult[14]_INST_0_i_9_n_0 ),
        .I1(\q_reg[18]_0 ),
        .I2(SrcB[1]),
        .I3(\q_reg[20]_0 ),
        .I4(SrcB[2]),
        .I5(\q_reg[16]_0 ),
        .O(\ALUResult[8]_INST_0_i_9_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \ALUResult[8]_INST_0_i_9 
       (.I0(SrcA[16]),
        .I1(SrcB[3]),
        .I2(SrcA[24]),
        .I3(SrcB[4]),
        .I4(SrcA[8]),
        .O(\q_reg[16]_0 ));
  LUT6 #(
    .INIT(64'hFFFEEEEEAAAAAAAA)) 
    \ALUResult[9]_INST_0 
       (.I0(\addressM[9] ),
        .I1(\addressM[9]_0 ),
        .I2(\ALUResult[9]_INST_0_i_3_n_0 ),
        .I3(\ALUResult[9]_INST_0_i_4_n_0 ),
        .I4(\q_reg[5]_0 ),
        .I5(\ALUResult[31]_INST_0_i_10_0 ),
        .O(\ALUResult[31]_INST_0_i_5_9 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \ALUResult[9]_INST_0_i_3 
       (.I0(\q_reg[2]_0 ),
        .I1(\addressM[14]_1 ),
        .I2(\ALUResult[10]_INST_0_i_8_n_0 ),
        .I3(\addressM[14]_2 ),
        .O(\ALUResult[9]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'hA808)) 
    \ALUResult[9]_INST_0_i_4 
       (.I0(sum__0_carry_i_10),
        .I1(\ALUResult[9]_INST_0_i_9_0 ),
        .I2(SrcB[0]),
        .I3(\ALUResult[10]_INST_0_i_9_0 ),
        .O(\ALUResult[9]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[9]_INST_0_i_6 
       (.I0(\q_reg[23]_0 ),
        .I1(\q_reg[19]_0 ),
        .I2(SrcB[1]),
        .I3(\q_reg[21]_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[9]_INST_0_i_9_n_0 ),
        .O(\ALUResult[9]_INST_0_i_9_0 ));
  LUT6 #(
    .INIT(64'hB080FFFFB0800000)) 
    \ALUResult[9]_INST_0_i_8 
       (.I0(SrcA[2]),
        .I1(SrcB[2]),
        .I2(\ALUResult[5]_INST_0_i_3_0 ),
        .I3(SrcA[6]),
        .I4(SrcB[1]),
        .I5(\ALUResult[11]_INST_0_i_8_n_0 ),
        .O(\q_reg[2]_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \ALUResult[9]_INST_0_i_9 
       (.I0(SrcA[17]),
        .I1(SrcB[3]),
        .I2(SrcA[25]),
        .I3(SrcB[4]),
        .I4(SrcA[9]),
        .O(\ALUResult[9]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h8F8F8F808F808F80)) 
    \WriteData[0]_INST_0 
       (.I0(rd21__3),
        .I1(rd20[0]),
        .I2(Instr[14]),
        .I3(\WriteData[0]_INST_0_i_1_n_0 ),
        .I4(ReadData[0]),
        .I5(\q_reg[5]_2 ),
        .O(WriteData[0]));
  LUT6 #(
    .INIT(64'hEEEEC000EAAAC000)) 
    \WriteData[0]_INST_0_i_1 
       (.I0(\WriteData[15]_INST_0_i_2_n_0 ),
        .I1(\WriteData[31]_INST_0_i_6_n_0 ),
        .I2(ReadData[0]),
        .I3(\WriteData[7]_INST_0_i_3_n_0 ),
        .I4(rd2[0]),
        .I5(\WriteData[7]_INST_0_i_4_n_0 ),
        .O(\WriteData[0]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF55FE44FE44FE44)) 
    \WriteData[10]_INST_0 
       (.I0(Instr[14]),
        .I1(\WriteData[10]_INST_0_i_1_n_0 ),
        .I2(\WriteData[15]_INST_0_i_2_n_0 ),
        .I3(rd2[10]),
        .I4(ReadData[10]),
        .I5(\q_reg[5]_2 ),
        .O(WriteData[10]));
  LUT6 #(
    .INIT(64'hF888888800000000)) 
    \WriteData[10]_INST_0_i_1 
       (.I0(\WriteData[15]_INST_0_i_3_n_0 ),
        .I1(ReadData[10]),
        .I2(\WriteData[15]_INST_0_i_4_n_0 ),
        .I3(rd20[2]),
        .I4(rd21__3),
        .I5(\WriteData[31]_INST_0_i_6_n_0 ),
        .O(\WriteData[10]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF55FE44FE44FE44)) 
    \WriteData[11]_INST_0 
       (.I0(Instr[14]),
        .I1(\WriteData[11]_INST_0_i_1_n_0 ),
        .I2(\WriteData[15]_INST_0_i_2_n_0 ),
        .I3(rd2[11]),
        .I4(ReadData[11]),
        .I5(\q_reg[5]_2 ),
        .O(WriteData[11]));
  LUT6 #(
    .INIT(64'hF888888800000000)) 
    \WriteData[11]_INST_0_i_1 
       (.I0(\WriteData[15]_INST_0_i_3_n_0 ),
        .I1(ReadData[11]),
        .I2(\WriteData[15]_INST_0_i_4_n_0 ),
        .I3(rd20[3]),
        .I4(rd21__3),
        .I5(\WriteData[31]_INST_0_i_6_n_0 ),
        .O(\WriteData[11]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF55FE44FE44FE44)) 
    \WriteData[12]_INST_0 
       (.I0(Instr[14]),
        .I1(\WriteData[12]_INST_0_i_1_n_0 ),
        .I2(\WriteData[15]_INST_0_i_2_n_0 ),
        .I3(rd2[12]),
        .I4(ReadData[12]),
        .I5(\q_reg[5]_2 ),
        .O(WriteData[12]));
  LUT6 #(
    .INIT(64'hF888888800000000)) 
    \WriteData[12]_INST_0_i_1 
       (.I0(\WriteData[15]_INST_0_i_3_n_0 ),
        .I1(ReadData[12]),
        .I2(\WriteData[15]_INST_0_i_4_n_0 ),
        .I3(rd20[4]),
        .I4(rd21__3),
        .I5(\WriteData[31]_INST_0_i_6_n_0 ),
        .O(\WriteData[12]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF55FE44FE44FE44)) 
    \WriteData[13]_INST_0 
       (.I0(Instr[14]),
        .I1(\WriteData[13]_INST_0_i_1_n_0 ),
        .I2(\WriteData[15]_INST_0_i_2_n_0 ),
        .I3(rd2[13]),
        .I4(ReadData[13]),
        .I5(\q_reg[5]_2 ),
        .O(WriteData[13]));
  LUT6 #(
    .INIT(64'hF888888800000000)) 
    \WriteData[13]_INST_0_i_1 
       (.I0(\WriteData[15]_INST_0_i_3_n_0 ),
        .I1(ReadData[13]),
        .I2(\WriteData[15]_INST_0_i_4_n_0 ),
        .I3(rd20[5]),
        .I4(rd21__3),
        .I5(\WriteData[31]_INST_0_i_6_n_0 ),
        .O(\WriteData[13]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF55FE44FE44FE44)) 
    \WriteData[14]_INST_0 
       (.I0(Instr[14]),
        .I1(\WriteData[14]_INST_0_i_1_n_0 ),
        .I2(\WriteData[15]_INST_0_i_2_n_0 ),
        .I3(rd2[14]),
        .I4(ReadData[14]),
        .I5(\q_reg[5]_2 ),
        .O(WriteData[14]));
  LUT6 #(
    .INIT(64'hF888888800000000)) 
    \WriteData[14]_INST_0_i_1 
       (.I0(\WriteData[15]_INST_0_i_3_n_0 ),
        .I1(ReadData[14]),
        .I2(\WriteData[15]_INST_0_i_4_n_0 ),
        .I3(rd20[6]),
        .I4(rd21__3),
        .I5(\WriteData[31]_INST_0_i_6_n_0 ),
        .O(\WriteData[14]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF55FE44FE44FE44)) 
    \WriteData[15]_INST_0 
       (.I0(Instr[14]),
        .I1(\WriteData[15]_INST_0_i_1_n_0 ),
        .I2(\WriteData[15]_INST_0_i_2_n_0 ),
        .I3(rd2[15]),
        .I4(ReadData[15]),
        .I5(\q_reg[5]_2 ),
        .O(WriteData[15]));
  LUT6 #(
    .INIT(64'hF888888800000000)) 
    \WriteData[15]_INST_0_i_1 
       (.I0(\WriteData[15]_INST_0_i_3_n_0 ),
        .I1(ReadData[15]),
        .I2(\WriteData[15]_INST_0_i_4_n_0 ),
        .I3(rd20[7]),
        .I4(rd21__3),
        .I5(\WriteData[31]_INST_0_i_6_n_0 ),
        .O(\WriteData[15]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \WriteData[15]_INST_0_i_2 
       (.I0(\WriteData[31]_INST_0_i_5_n_0 ),
        .I1(Instr[13]),
        .O(\WriteData[15]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \WriteData[15]_INST_0_i_3 
       (.I0(\WriteData[23]_INST_0_i_5_n_0 ),
        .I1(\WriteData[31]_INST_0_i_7_n_0 ),
        .I2(\WriteData[7]_INST_0_i_4_n_0 ),
        .O(\WriteData[15]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \WriteData[15]_INST_0_i_4 
       (.I0(\ALUResult[31]_INST_0_i_5_0 ),
        .I1(\ALUResult[31]_INST_0_i_5_1 ),
        .O(\WriteData[15]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hECECE0A0E0A0E0A0)) 
    \WriteData[16]_INST_0_i_3 
       (.I0(\WriteData[31]_INST_0_i_5_n_0 ),
        .I1(\WriteData[31]_INST_0_i_6_n_0 ),
        .I2(ReadData[16]),
        .I3(\WriteData[23]_INST_0_i_4_n_0 ),
        .I4(rd2[0]),
        .I5(\WriteData[23]_INST_0_i_5_n_0 ),
        .O(\readDataM[16] ));
  LUT6 #(
    .INIT(64'hECECE0A0E0A0E0A0)) 
    \WriteData[17]_INST_0_i_3 
       (.I0(\WriteData[31]_INST_0_i_5_n_0 ),
        .I1(\WriteData[31]_INST_0_i_6_n_0 ),
        .I2(ReadData[17]),
        .I3(\WriteData[23]_INST_0_i_4_n_0 ),
        .I4(rd2[1]),
        .I5(\WriteData[23]_INST_0_i_5_n_0 ),
        .O(\readDataM[17] ));
  LUT6 #(
    .INIT(64'hECECE0A0E0A0E0A0)) 
    \WriteData[18]_INST_0_i_3 
       (.I0(\WriteData[31]_INST_0_i_5_n_0 ),
        .I1(\WriteData[31]_INST_0_i_6_n_0 ),
        .I2(ReadData[18]),
        .I3(\WriteData[23]_INST_0_i_4_n_0 ),
        .I4(rd2[2]),
        .I5(\WriteData[23]_INST_0_i_5_n_0 ),
        .O(\readDataM[18] ));
  LUT6 #(
    .INIT(64'hECECE0A0E0A0E0A0)) 
    \WriteData[19]_INST_0_i_3 
       (.I0(\WriteData[31]_INST_0_i_5_n_0 ),
        .I1(\WriteData[31]_INST_0_i_6_n_0 ),
        .I2(ReadData[19]),
        .I3(\WriteData[23]_INST_0_i_4_n_0 ),
        .I4(rd2[3]),
        .I5(\WriteData[23]_INST_0_i_5_n_0 ),
        .O(\readDataM[19] ));
  LUT6 #(
    .INIT(64'h8F8F8F808F808F80)) 
    \WriteData[1]_INST_0 
       (.I0(rd21__3),
        .I1(rd20[1]),
        .I2(Instr[14]),
        .I3(\WriteData[1]_INST_0_i_1_n_0 ),
        .I4(ReadData[1]),
        .I5(\q_reg[5]_2 ),
        .O(WriteData[1]));
  LUT6 #(
    .INIT(64'hEEEEC000EAAAC000)) 
    \WriteData[1]_INST_0_i_1 
       (.I0(\WriteData[15]_INST_0_i_2_n_0 ),
        .I1(\WriteData[31]_INST_0_i_6_n_0 ),
        .I2(ReadData[1]),
        .I3(\WriteData[7]_INST_0_i_3_n_0 ),
        .I4(rd2[1]),
        .I5(\WriteData[7]_INST_0_i_4_n_0 ),
        .O(\WriteData[1]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hECECE0A0E0A0E0A0)) 
    \WriteData[20]_INST_0_i_3 
       (.I0(\WriteData[31]_INST_0_i_5_n_0 ),
        .I1(\WriteData[31]_INST_0_i_6_n_0 ),
        .I2(ReadData[20]),
        .I3(\WriteData[23]_INST_0_i_4_n_0 ),
        .I4(rd2[4]),
        .I5(\WriteData[23]_INST_0_i_5_n_0 ),
        .O(\readDataM[20] ));
  LUT6 #(
    .INIT(64'hECECE0A0E0A0E0A0)) 
    \WriteData[21]_INST_0_i_3 
       (.I0(\WriteData[31]_INST_0_i_5_n_0 ),
        .I1(\WriteData[31]_INST_0_i_6_n_0 ),
        .I2(ReadData[21]),
        .I3(\WriteData[23]_INST_0_i_4_n_0 ),
        .I4(rd2[5]),
        .I5(\WriteData[23]_INST_0_i_5_n_0 ),
        .O(\readDataM[21] ));
  LUT6 #(
    .INIT(64'hECECE0A0E0A0E0A0)) 
    \WriteData[22]_INST_0_i_3 
       (.I0(\WriteData[31]_INST_0_i_5_n_0 ),
        .I1(\WriteData[31]_INST_0_i_6_n_0 ),
        .I2(ReadData[22]),
        .I3(\WriteData[23]_INST_0_i_4_n_0 ),
        .I4(rd2[6]),
        .I5(\WriteData[23]_INST_0_i_5_n_0 ),
        .O(\readDataM[22] ));
  LUT6 #(
    .INIT(64'hECECE0A0E0A0E0A0)) 
    \WriteData[23]_INST_0_i_3 
       (.I0(\WriteData[31]_INST_0_i_5_n_0 ),
        .I1(\WriteData[31]_INST_0_i_6_n_0 ),
        .I2(ReadData[23]),
        .I3(\WriteData[23]_INST_0_i_4_n_0 ),
        .I4(rd2[7]),
        .I5(\WriteData[23]_INST_0_i_5_n_0 ),
        .O(\readDataM[23] ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \WriteData[23]_INST_0_i_4 
       (.I0(\WriteData[7]_INST_0_i_4_n_0 ),
        .I1(\WriteData[15]_INST_0_i_4_n_0 ),
        .I2(\WriteData[31]_INST_0_i_7_n_0 ),
        .O(\WriteData[23]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \WriteData[23]_INST_0_i_5 
       (.I0(\ALUResult[31]_INST_0_i_5_1 ),
        .I1(\ALUResult[31]_INST_0_i_5_0 ),
        .O(\WriteData[23]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEC000EAAAC000)) 
    \WriteData[24]_INST_0_i_3 
       (.I0(\WriteData[31]_INST_0_i_5_n_0 ),
        .I1(\WriteData[31]_INST_0_i_6_n_0 ),
        .I2(rd2[0]),
        .I3(\WriteData[31]_INST_0_i_7_n_0 ),
        .I4(ReadData[24]),
        .I5(\WriteData[31]_INST_0_i_8_n_0 ),
        .O(\readDataM[24] ));
  LUT6 #(
    .INIT(64'hEEEEC000EAAAC000)) 
    \WriteData[25]_INST_0_i_3 
       (.I0(\WriteData[31]_INST_0_i_5_n_0 ),
        .I1(\WriteData[31]_INST_0_i_6_n_0 ),
        .I2(rd2[1]),
        .I3(\WriteData[31]_INST_0_i_7_n_0 ),
        .I4(ReadData[25]),
        .I5(\WriteData[31]_INST_0_i_8_n_0 ),
        .O(\readDataM[25] ));
  LUT6 #(
    .INIT(64'hEEEEC000EAAAC000)) 
    \WriteData[26]_INST_0_i_3 
       (.I0(\WriteData[31]_INST_0_i_5_n_0 ),
        .I1(\WriteData[31]_INST_0_i_6_n_0 ),
        .I2(rd2[2]),
        .I3(\WriteData[31]_INST_0_i_7_n_0 ),
        .I4(ReadData[26]),
        .I5(\WriteData[31]_INST_0_i_8_n_0 ),
        .O(\readDataM[26] ));
  LUT6 #(
    .INIT(64'hEEEEC000EAAAC000)) 
    \WriteData[27]_INST_0_i_3 
       (.I0(\WriteData[31]_INST_0_i_5_n_0 ),
        .I1(\WriteData[31]_INST_0_i_6_n_0 ),
        .I2(rd2[3]),
        .I3(\WriteData[31]_INST_0_i_7_n_0 ),
        .I4(ReadData[27]),
        .I5(\WriteData[31]_INST_0_i_8_n_0 ),
        .O(\readDataM[27] ));
  LUT6 #(
    .INIT(64'hEEEEC000EAAAC000)) 
    \WriteData[28]_INST_0_i_3 
       (.I0(\WriteData[31]_INST_0_i_5_n_0 ),
        .I1(\WriteData[31]_INST_0_i_6_n_0 ),
        .I2(rd2[4]),
        .I3(\WriteData[31]_INST_0_i_7_n_0 ),
        .I4(ReadData[28]),
        .I5(\WriteData[31]_INST_0_i_8_n_0 ),
        .O(\readDataM[28] ));
  LUT6 #(
    .INIT(64'hEEEEC000EAAAC000)) 
    \WriteData[29]_INST_0_i_3 
       (.I0(\WriteData[31]_INST_0_i_5_n_0 ),
        .I1(\WriteData[31]_INST_0_i_6_n_0 ),
        .I2(rd2[5]),
        .I3(\WriteData[31]_INST_0_i_7_n_0 ),
        .I4(ReadData[29]),
        .I5(\WriteData[31]_INST_0_i_8_n_0 ),
        .O(\readDataM[29] ));
  LUT6 #(
    .INIT(64'h8F8F8F808F808F80)) 
    \WriteData[2]_INST_0 
       (.I0(rd21__3),
        .I1(rd20[2]),
        .I2(Instr[14]),
        .I3(\WriteData[2]_INST_0_i_1_n_0 ),
        .I4(ReadData[2]),
        .I5(\q_reg[5]_2 ),
        .O(WriteData[2]));
  LUT6 #(
    .INIT(64'hEEEEC000EAAAC000)) 
    \WriteData[2]_INST_0_i_1 
       (.I0(\WriteData[15]_INST_0_i_2_n_0 ),
        .I1(\WriteData[31]_INST_0_i_6_n_0 ),
        .I2(ReadData[2]),
        .I3(\WriteData[7]_INST_0_i_3_n_0 ),
        .I4(rd2[2]),
        .I5(\WriteData[7]_INST_0_i_4_n_0 ),
        .O(\WriteData[2]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEC000EAAAC000)) 
    \WriteData[30]_INST_0_i_3 
       (.I0(\WriteData[31]_INST_0_i_5_n_0 ),
        .I1(\WriteData[31]_INST_0_i_6_n_0 ),
        .I2(rd2[6]),
        .I3(\WriteData[31]_INST_0_i_7_n_0 ),
        .I4(ReadData[30]),
        .I5(\WriteData[31]_INST_0_i_8_n_0 ),
        .O(\readDataM[30] ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \WriteData[31]_INST_0_i_2 
       (.I0(Instr[13]),
        .I1(Instr[12]),
        .I2(\ALUResult[31]_INST_0_i_5_1 ),
        .O(\q_reg[5]_2 ));
  LUT6 #(
    .INIT(64'hEEEEC000EAAAC000)) 
    \WriteData[31]_INST_0_i_4 
       (.I0(\WriteData[31]_INST_0_i_5_n_0 ),
        .I1(\WriteData[31]_INST_0_i_6_n_0 ),
        .I2(rd2[7]),
        .I3(\WriteData[31]_INST_0_i_7_n_0 ),
        .I4(ReadData[31]),
        .I5(\WriteData[31]_INST_0_i_8_n_0 ),
        .O(\readDataM[31] ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \WriteData[31]_INST_0_i_5 
       (.I0(Instr[13]),
        .I1(Instr[12]),
        .I2(\ALUResult[31]_INST_0_i_5_1 ),
        .O(\WriteData[31]_INST_0_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \WriteData[31]_INST_0_i_6 
       (.I0(Instr[12]),
        .I1(Instr[13]),
        .O(\WriteData[31]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \WriteData[31]_INST_0_i_7 
       (.I0(\ALUResult[31]_INST_0_i_5_0 ),
        .I1(\ALUResult[31]_INST_0_i_5_1 ),
        .O(\WriteData[31]_INST_0_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \WriteData[31]_INST_0_i_8 
       (.I0(\WriteData[7]_INST_0_i_4_n_0 ),
        .I1(\WriteData[15]_INST_0_i_4_n_0 ),
        .I2(\WriteData[23]_INST_0_i_5_n_0 ),
        .O(\WriteData[31]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h8F8F8F808F808F80)) 
    \WriteData[3]_INST_0 
       (.I0(rd21__3),
        .I1(rd20[3]),
        .I2(Instr[14]),
        .I3(\WriteData[3]_INST_0_i_1_n_0 ),
        .I4(ReadData[3]),
        .I5(\q_reg[5]_2 ),
        .O(WriteData[3]));
  LUT6 #(
    .INIT(64'hEEEEC000EAAAC000)) 
    \WriteData[3]_INST_0_i_1 
       (.I0(\WriteData[15]_INST_0_i_2_n_0 ),
        .I1(\WriteData[31]_INST_0_i_6_n_0 ),
        .I2(ReadData[3]),
        .I3(\WriteData[7]_INST_0_i_3_n_0 ),
        .I4(rd2[3]),
        .I5(\WriteData[7]_INST_0_i_4_n_0 ),
        .O(\WriteData[3]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8F8F8F808F808F80)) 
    \WriteData[4]_INST_0 
       (.I0(rd21__3),
        .I1(rd20[4]),
        .I2(Instr[14]),
        .I3(\WriteData[4]_INST_0_i_1_n_0 ),
        .I4(ReadData[4]),
        .I5(\q_reg[5]_2 ),
        .O(WriteData[4]));
  LUT6 #(
    .INIT(64'hEEEEC000EAAAC000)) 
    \WriteData[4]_INST_0_i_1 
       (.I0(\WriteData[15]_INST_0_i_2_n_0 ),
        .I1(\WriteData[31]_INST_0_i_6_n_0 ),
        .I2(ReadData[4]),
        .I3(\WriteData[7]_INST_0_i_3_n_0 ),
        .I4(rd2[4]),
        .I5(\WriteData[7]_INST_0_i_4_n_0 ),
        .O(\WriteData[4]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8F8F8F808F808F80)) 
    \WriteData[5]_INST_0 
       (.I0(rd21__3),
        .I1(rd20[5]),
        .I2(Instr[14]),
        .I3(\WriteData[5]_INST_0_i_1_n_0 ),
        .I4(ReadData[5]),
        .I5(\q_reg[5]_2 ),
        .O(WriteData[5]));
  LUT6 #(
    .INIT(64'hEEEEC000EAAAC000)) 
    \WriteData[5]_INST_0_i_1 
       (.I0(\WriteData[15]_INST_0_i_2_n_0 ),
        .I1(\WriteData[31]_INST_0_i_6_n_0 ),
        .I2(ReadData[5]),
        .I3(\WriteData[7]_INST_0_i_3_n_0 ),
        .I4(rd2[5]),
        .I5(\WriteData[7]_INST_0_i_4_n_0 ),
        .O(\WriteData[5]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8F8F8F808F808F80)) 
    \WriteData[6]_INST_0 
       (.I0(rd21__3),
        .I1(rd20[6]),
        .I2(Instr[14]),
        .I3(\WriteData[6]_INST_0_i_1_n_0 ),
        .I4(ReadData[6]),
        .I5(\q_reg[5]_2 ),
        .O(WriteData[6]));
  LUT6 #(
    .INIT(64'hEEEEC000EAAAC000)) 
    \WriteData[6]_INST_0_i_1 
       (.I0(\WriteData[15]_INST_0_i_2_n_0 ),
        .I1(\WriteData[31]_INST_0_i_6_n_0 ),
        .I2(ReadData[6]),
        .I3(\WriteData[7]_INST_0_i_3_n_0 ),
        .I4(rd2[6]),
        .I5(\WriteData[7]_INST_0_i_4_n_0 ),
        .O(\WriteData[6]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8F8F8F808F808F80)) 
    \WriteData[7]_INST_0 
       (.I0(rd21__3),
        .I1(rd20[7]),
        .I2(Instr[14]),
        .I3(\WriteData[7]_INST_0_i_2_n_0 ),
        .I4(ReadData[7]),
        .I5(\q_reg[5]_2 ),
        .O(WriteData[7]));
  LUT6 #(
    .INIT(64'hEEEEC000EAAAC000)) 
    \WriteData[7]_INST_0_i_2 
       (.I0(\WriteData[15]_INST_0_i_2_n_0 ),
        .I1(\WriteData[31]_INST_0_i_6_n_0 ),
        .I2(ReadData[7]),
        .I3(\WriteData[7]_INST_0_i_3_n_0 ),
        .I4(rd2[7]),
        .I5(\WriteData[7]_INST_0_i_4_n_0 ),
        .O(\WriteData[7]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \WriteData[7]_INST_0_i_3 
       (.I0(\WriteData[23]_INST_0_i_5_n_0 ),
        .I1(\WriteData[31]_INST_0_i_7_n_0 ),
        .I2(\WriteData[15]_INST_0_i_4_n_0 ),
        .O(\WriteData[7]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \WriteData[7]_INST_0_i_4 
       (.I0(\ALUResult[31]_INST_0_i_5_0 ),
        .I1(\ALUResult[31]_INST_0_i_5_1 ),
        .O(\WriteData[7]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFF55FE44FE44FE44)) 
    \WriteData[8]_INST_0 
       (.I0(Instr[14]),
        .I1(\WriteData[8]_INST_0_i_1_n_0 ),
        .I2(\WriteData[15]_INST_0_i_2_n_0 ),
        .I3(rd2[8]),
        .I4(ReadData[8]),
        .I5(\q_reg[5]_2 ),
        .O(WriteData[8]));
  LUT6 #(
    .INIT(64'hF888888800000000)) 
    \WriteData[8]_INST_0_i_1 
       (.I0(\WriteData[15]_INST_0_i_3_n_0 ),
        .I1(ReadData[8]),
        .I2(\WriteData[15]_INST_0_i_4_n_0 ),
        .I3(rd20[0]),
        .I4(rd21__3),
        .I5(\WriteData[31]_INST_0_i_6_n_0 ),
        .O(\WriteData[8]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF55FE44FE44FE44)) 
    \WriteData[9]_INST_0 
       (.I0(Instr[14]),
        .I1(\WriteData[9]_INST_0_i_1_n_0 ),
        .I2(\WriteData[15]_INST_0_i_2_n_0 ),
        .I3(rd2[9]),
        .I4(ReadData[9]),
        .I5(\q_reg[5]_2 ),
        .O(WriteData[9]));
  LUT6 #(
    .INIT(64'hF888888800000000)) 
    \WriteData[9]_INST_0_i_1 
       (.I0(\WriteData[15]_INST_0_i_3_n_0 ),
        .I1(ReadData[9]),
        .I2(\WriteData[15]_INST_0_i_4_n_0 ),
        .I3(rd20[1]),
        .I4(rd21__3),
        .I5(\WriteData[31]_INST_0_i_6_n_0 ),
        .O(\WriteData[9]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    lt_carry_i_1
       (.I0(SrcB[5]),
        .I1(SrcA[6]),
        .I2(SrcA[7]),
        .I3(SrcB[6]),
        .O(DI));
  LUT6 #(
    .INIT(64'hFFFF0000FE10FE10)) 
    \q[0]_i_1 
       (.I0(\q_reg[0]_0 ),
        .I1(ResultSrc),
        .I2(Q[0]),
        .I3(PCTarget[0]),
        .I4(\ALUResult[31]_INST_0_i_5_0 ),
        .I5(PCSrc10_out),
        .O(PCNext[0]));
  LUT6 #(
    .INIT(64'hFFFF0000FE10FE10)) 
    \q[1]_i_1 
       (.I0(\q_reg[0]_0 ),
        .I1(ResultSrc),
        .I2(Q[1]),
        .I3(PCTarget[1]),
        .I4(\ALUResult[31]_INST_0_i_5_1 ),
        .I5(PCSrc10_out),
        .O(PCNext[1]));
  LUT6 #(
    .INIT(64'hFFFF0000EF01EF01)) 
    \q[2]_i_1 
       (.I0(\q_reg[0]_0 ),
        .I1(ResultSrc),
        .I2(Q[2]),
        .I3(PCTarget[2]),
        .I4(\ALUResult[31]_INST_0_i_5_2 ),
        .I5(PCSrc10_out),
        .O(PCNext[2]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    \q[31]_i_10 
       (.I0(Instr[13]),
        .I1(Instr[12]),
        .I2(Instr[14]),
        .O(\q_reg[5]_9 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \q[31]_i_12 
       (.I0(\ALUResult[31]_INST_0_i_5_4 ),
        .I1(\ALUResult[31]_INST_0_i_5_5 ),
        .I2(\ALUResult[31]_INST_0_i_5_6 ),
        .I3(\ALUResult[31]_INST_0_i_5_7 ),
        .O(\q[31]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \q[31]_i_13 
       (.I0(\ALUResult[31]_INST_0_i_5_2 ),
        .I1(\ALUResult[31]_INST_0_i_5_8 ),
        .O(\q[31]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \q[31]_i_3 
       (.I0(Instr[2]),
        .I1(Instr[6]),
        .O(ResultSrc));
  LUT6 #(
    .INIT(64'h0000000020000000)) 
    \q[31]_i_4 
       (.I0(Instr[5]),
        .I1(Instr[4]),
        .I2(ResultSrc),
        .I3(Instr[0]),
        .I4(Instr[1]),
        .I5(Instr[3]),
        .O(PCSrc10_out));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \q[31]_i_5 
       (.I0(Instr[2]),
        .I1(Instr[6]),
        .I2(PCSrc10_out),
        .O(\q_reg[5]_8 ));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \q[31]_i_7 
       (.I0(\q[31]_i_2 ),
        .I1(\q[31]_i_12_n_0 ),
        .I2(\q[31]_i_13_n_0 ),
        .I3(\WriteData[7]_INST_0_i_4_n_0 ),
        .I4(\ALUResult[31]_INST_0_i_5_3 ),
        .I5(\q[31]_i_2_0 ),
        .O(\q[31]_i_14 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \q[31]_i_9 
       (.I0(Instr[13]),
        .I1(Instr[14]),
        .O(\q_reg[5]_10 ));
  FDCE \q_reg[0] 
       (.C(clk),
        .CE(PCReady),
        .CLR(reset),
        .D(PCNext[0]),
        .Q(Q[0]));
  FDCE \q_reg[10] 
       (.C(clk),
        .CE(PCReady),
        .CLR(reset),
        .D(D[7]),
        .Q(Q[10]));
  FDCE \q_reg[11] 
       (.C(clk),
        .CE(PCReady),
        .CLR(reset),
        .D(D[8]),
        .Q(Q[11]));
  FDCE \q_reg[12] 
       (.C(clk),
        .CE(PCReady),
        .CLR(reset),
        .D(D[9]),
        .Q(Q[12]));
  FDCE \q_reg[13] 
       (.C(clk),
        .CE(PCReady),
        .CLR(reset),
        .D(D[10]),
        .Q(Q[13]));
  FDCE \q_reg[14] 
       (.C(clk),
        .CE(PCReady),
        .CLR(reset),
        .D(D[11]),
        .Q(Q[14]));
  FDCE \q_reg[15] 
       (.C(clk),
        .CE(PCReady),
        .CLR(reset),
        .D(D[12]),
        .Q(Q[15]));
  FDCE \q_reg[16] 
       (.C(clk),
        .CE(PCReady),
        .CLR(reset),
        .D(D[13]),
        .Q(Q[16]));
  FDCE \q_reg[17] 
       (.C(clk),
        .CE(PCReady),
        .CLR(reset),
        .D(D[14]),
        .Q(Q[17]));
  FDCE \q_reg[18] 
       (.C(clk),
        .CE(PCReady),
        .CLR(reset),
        .D(D[15]),
        .Q(Q[18]));
  FDCE \q_reg[19] 
       (.C(clk),
        .CE(PCReady),
        .CLR(reset),
        .D(D[16]),
        .Q(Q[19]));
  FDCE \q_reg[1] 
       (.C(clk),
        .CE(PCReady),
        .CLR(reset),
        .D(PCNext[1]),
        .Q(Q[1]));
  FDCE \q_reg[20] 
       (.C(clk),
        .CE(PCReady),
        .CLR(reset),
        .D(D[17]),
        .Q(Q[20]));
  FDCE \q_reg[21] 
       (.C(clk),
        .CE(PCReady),
        .CLR(reset),
        .D(D[18]),
        .Q(Q[21]));
  FDCE \q_reg[22] 
       (.C(clk),
        .CE(PCReady),
        .CLR(reset),
        .D(D[19]),
        .Q(Q[22]));
  FDCE \q_reg[23] 
       (.C(clk),
        .CE(PCReady),
        .CLR(reset),
        .D(D[20]),
        .Q(Q[23]));
  FDCE \q_reg[24] 
       (.C(clk),
        .CE(PCReady),
        .CLR(reset),
        .D(D[21]),
        .Q(Q[24]));
  FDCE \q_reg[25] 
       (.C(clk),
        .CE(PCReady),
        .CLR(reset),
        .D(D[22]),
        .Q(Q[25]));
  FDCE \q_reg[26] 
       (.C(clk),
        .CE(PCReady),
        .CLR(reset),
        .D(D[23]),
        .Q(Q[26]));
  FDCE \q_reg[27] 
       (.C(clk),
        .CE(PCReady),
        .CLR(reset),
        .D(D[24]),
        .Q(Q[27]));
  FDCE \q_reg[28] 
       (.C(clk),
        .CE(PCReady),
        .CLR(reset),
        .D(D[25]),
        .Q(Q[28]));
  FDCE \q_reg[29] 
       (.C(clk),
        .CE(PCReady),
        .CLR(reset),
        .D(D[26]),
        .Q(Q[29]));
  FDCE \q_reg[2] 
       (.C(clk),
        .CE(PCReady),
        .CLR(reset),
        .D(PCNext[2]),
        .Q(Q[2]));
  FDCE \q_reg[30] 
       (.C(clk),
        .CE(PCReady),
        .CLR(reset),
        .D(D[27]),
        .Q(Q[30]));
  FDCE \q_reg[31] 
       (.C(clk),
        .CE(PCReady),
        .CLR(reset),
        .D(D[28]),
        .Q(Q[31]));
  FDCE \q_reg[3] 
       (.C(clk),
        .CE(PCReady),
        .CLR(reset),
        .D(D[0]),
        .Q(Q[3]));
  FDCE \q_reg[4] 
       (.C(clk),
        .CE(PCReady),
        .CLR(reset),
        .D(D[1]),
        .Q(Q[4]));
  FDCE \q_reg[5] 
       (.C(clk),
        .CE(PCReady),
        .CLR(reset),
        .D(D[2]),
        .Q(Q[5]));
  FDCE \q_reg[6] 
       (.C(clk),
        .CE(PCReady),
        .CLR(reset),
        .D(D[3]),
        .Q(Q[6]));
  FDCE \q_reg[7] 
       (.C(clk),
        .CE(PCReady),
        .CLR(reset),
        .D(D[4]),
        .Q(Q[7]));
  FDCE \q_reg[8] 
       (.C(clk),
        .CE(PCReady),
        .CLR(reset),
        .D(D[5]),
        .Q(Q[8]));
  FDCE \q_reg[9] 
       (.C(clk),
        .CE(PCReady),
        .CLR(reset),
        .D(D[6]),
        .Q(Q[9]));
  LUT6 #(
    .INIT(64'hF7B3F7B3F7B3C480)) 
    rf_reg_r1_0_31_0_5_i_10
       (.I0(\ALUResult[31]_INST_0_i_5_1 ),
        .I1(Instr[12]),
        .I2(ReadData[17]),
        .I3(ReadData[1]),
        .I4(rf_reg_r1_0_31_0_5_i_22_n_0),
        .I5(rf_reg_r1_0_31_0_5_i_23_n_0),
        .O(rf_reg_r1_0_31_0_5_i_10_n_0));
  LUT6 #(
    .INIT(64'hAAA0CCC0CCC0CCC0)) 
    rf_reg_r1_0_31_0_5_i_12
       (.I0(Q[0]),
        .I1(\ALUResult[31]_INST_0_i_5_0 ),
        .I2(Instr[5]),
        .I3(Instr[4]),
        .I4(Instr[6]),
        .I5(Instr[2]),
        .O(rf_reg_r1_0_31_0_5_i_12_n_0));
  LUT6 #(
    .INIT(64'hF7B3F7B3F7B3C480)) 
    rf_reg_r1_0_31_0_5_i_13
       (.I0(\ALUResult[31]_INST_0_i_5_1 ),
        .I1(Instr[12]),
        .I2(ReadData[16]),
        .I3(ReadData[0]),
        .I4(rf_reg_r1_0_31_0_5_i_24_n_0),
        .I5(rf_reg_r1_0_31_0_5_i_25_n_0),
        .O(rf_reg_r1_0_31_0_5_i_13_n_0));
  LUT6 #(
    .INIT(64'hF7B3F7B3F7B3C480)) 
    rf_reg_r1_0_31_0_5_i_15
       (.I0(\ALUResult[31]_INST_0_i_5_1 ),
        .I1(Instr[12]),
        .I2(ReadData[19]),
        .I3(ReadData[3]),
        .I4(rf_reg_r1_0_31_0_5_i_26_n_0),
        .I5(rf_reg_r1_0_31_0_5_i_27_n_0),
        .O(\readDataM[19]_0 ));
  LUT6 #(
    .INIT(64'h5550CCC0CCC0CCC0)) 
    rf_reg_r1_0_31_0_5_i_16
       (.I0(Q[2]),
        .I1(\ALUResult[31]_INST_0_i_5_2 ),
        .I2(Instr[5]),
        .I3(Instr[4]),
        .I4(Instr[6]),
        .I5(Instr[2]),
        .O(rf_reg_r1_0_31_0_5_i_16_n_0));
  LUT6 #(
    .INIT(64'hF7B3F7B3F7B3C480)) 
    rf_reg_r1_0_31_0_5_i_17
       (.I0(\ALUResult[31]_INST_0_i_5_1 ),
        .I1(Instr[12]),
        .I2(ReadData[18]),
        .I3(ReadData[2]),
        .I4(rf_reg_r1_0_31_0_5_i_28_n_0),
        .I5(rf_reg_r1_0_31_0_5_i_29_n_0),
        .O(rf_reg_r1_0_31_0_5_i_17_n_0));
  LUT6 #(
    .INIT(64'hF7B3F7B3F7B3C480)) 
    rf_reg_r1_0_31_0_5_i_19
       (.I0(\ALUResult[31]_INST_0_i_5_1 ),
        .I1(Instr[12]),
        .I2(ReadData[21]),
        .I3(ReadData[5]),
        .I4(rf_reg_r1_0_31_0_5_i_30_n_0),
        .I5(rf_reg_r1_0_31_0_5_i_31_n_0),
        .O(\readDataM[21]_0 ));
  LUT5 #(
    .INIT(32'hFEAEAAAA)) 
    rf_reg_r1_0_31_0_5_i_2
       (.I0(rf_reg_r1_0_31_0_5_i_9_n_0),
        .I1(rf_reg_r1_0_31_0_5_i_10_n_0),
        .I2(Instr[13]),
        .I3(ReadData[1]),
        .I4(rf_reg_r1_0_31_6_11),
        .O(wd3[1]));
  LUT6 #(
    .INIT(64'hF7B3F7B3F7B3C480)) 
    rf_reg_r1_0_31_0_5_i_21
       (.I0(\ALUResult[31]_INST_0_i_5_1 ),
        .I1(Instr[12]),
        .I2(ReadData[20]),
        .I3(ReadData[4]),
        .I4(rf_reg_r1_0_31_0_5_i_32_n_0),
        .I5(rf_reg_r1_0_31_0_5_i_33_n_0),
        .O(\readDataM[20]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    rf_reg_r1_0_31_0_5_i_22
       (.I0(\WriteData[15]_INST_0_i_4_n_0 ),
        .I1(ReadData[9]),
        .I2(\WriteData[7]_INST_0_i_4_n_0 ),
        .I3(ReadData[1]),
        .O(rf_reg_r1_0_31_0_5_i_22_n_0));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    rf_reg_r1_0_31_0_5_i_23
       (.I0(\WriteData[31]_INST_0_i_7_n_0 ),
        .I1(ReadData[25]),
        .I2(\WriteData[23]_INST_0_i_5_n_0 ),
        .I3(ReadData[17]),
        .O(rf_reg_r1_0_31_0_5_i_23_n_0));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    rf_reg_r1_0_31_0_5_i_24
       (.I0(\WriteData[15]_INST_0_i_4_n_0 ),
        .I1(ReadData[8]),
        .I2(\WriteData[7]_INST_0_i_4_n_0 ),
        .I3(ReadData[0]),
        .O(rf_reg_r1_0_31_0_5_i_24_n_0));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    rf_reg_r1_0_31_0_5_i_25
       (.I0(\WriteData[31]_INST_0_i_7_n_0 ),
        .I1(ReadData[24]),
        .I2(\WriteData[23]_INST_0_i_5_n_0 ),
        .I3(ReadData[16]),
        .O(rf_reg_r1_0_31_0_5_i_25_n_0));
  LUT4 #(
    .INIT(16'hF888)) 
    rf_reg_r1_0_31_0_5_i_26
       (.I0(\WriteData[15]_INST_0_i_4_n_0 ),
        .I1(ReadData[11]),
        .I2(\WriteData[7]_INST_0_i_4_n_0 ),
        .I3(ReadData[3]),
        .O(rf_reg_r1_0_31_0_5_i_26_n_0));
  LUT4 #(
    .INIT(16'hF888)) 
    rf_reg_r1_0_31_0_5_i_27
       (.I0(\WriteData[31]_INST_0_i_7_n_0 ),
        .I1(ReadData[27]),
        .I2(\WriteData[23]_INST_0_i_5_n_0 ),
        .I3(ReadData[19]),
        .O(rf_reg_r1_0_31_0_5_i_27_n_0));
  LUT4 #(
    .INIT(16'hF888)) 
    rf_reg_r1_0_31_0_5_i_28
       (.I0(\WriteData[15]_INST_0_i_4_n_0 ),
        .I1(ReadData[10]),
        .I2(\WriteData[7]_INST_0_i_4_n_0 ),
        .I3(ReadData[2]),
        .O(rf_reg_r1_0_31_0_5_i_28_n_0));
  LUT4 #(
    .INIT(16'hF888)) 
    rf_reg_r1_0_31_0_5_i_29
       (.I0(\WriteData[31]_INST_0_i_7_n_0 ),
        .I1(ReadData[26]),
        .I2(\WriteData[23]_INST_0_i_5_n_0 ),
        .I3(ReadData[18]),
        .O(rf_reg_r1_0_31_0_5_i_29_n_0));
  LUT5 #(
    .INIT(32'hFEAEAAAA)) 
    rf_reg_r1_0_31_0_5_i_3
       (.I0(rf_reg_r1_0_31_0_5_i_12_n_0),
        .I1(rf_reg_r1_0_31_0_5_i_13_n_0),
        .I2(Instr[13]),
        .I3(ReadData[0]),
        .I4(rf_reg_r1_0_31_6_11),
        .O(wd3[0]));
  LUT4 #(
    .INIT(16'hF888)) 
    rf_reg_r1_0_31_0_5_i_30
       (.I0(\WriteData[15]_INST_0_i_4_n_0 ),
        .I1(ReadData[13]),
        .I2(\WriteData[7]_INST_0_i_4_n_0 ),
        .I3(ReadData[5]),
        .O(rf_reg_r1_0_31_0_5_i_30_n_0));
  LUT4 #(
    .INIT(16'hF888)) 
    rf_reg_r1_0_31_0_5_i_31
       (.I0(\WriteData[31]_INST_0_i_7_n_0 ),
        .I1(ReadData[29]),
        .I2(\WriteData[23]_INST_0_i_5_n_0 ),
        .I3(ReadData[21]),
        .O(rf_reg_r1_0_31_0_5_i_31_n_0));
  LUT4 #(
    .INIT(16'hF888)) 
    rf_reg_r1_0_31_0_5_i_32
       (.I0(\WriteData[15]_INST_0_i_4_n_0 ),
        .I1(ReadData[12]),
        .I2(\WriteData[7]_INST_0_i_4_n_0 ),
        .I3(ReadData[4]),
        .O(rf_reg_r1_0_31_0_5_i_32_n_0));
  LUT4 #(
    .INIT(16'hF888)) 
    rf_reg_r1_0_31_0_5_i_33
       (.I0(\WriteData[31]_INST_0_i_7_n_0 ),
        .I1(ReadData[28]),
        .I2(\WriteData[23]_INST_0_i_5_n_0 ),
        .I3(ReadData[20]),
        .O(rf_reg_r1_0_31_0_5_i_33_n_0));
  LUT5 #(
    .INIT(32'hFEAEAAAA)) 
    rf_reg_r1_0_31_0_5_i_5
       (.I0(rf_reg_r1_0_31_0_5_i_16_n_0),
        .I1(rf_reg_r1_0_31_0_5_i_17_n_0),
        .I2(Instr[13]),
        .I3(ReadData[2]),
        .I4(rf_reg_r1_0_31_6_11),
        .O(wd3[2]));
  LUT6 #(
    .INIT(64'hAAA0CCC0CCC0CCC0)) 
    rf_reg_r1_0_31_0_5_i_9
       (.I0(Q[1]),
        .I1(\ALUResult[31]_INST_0_i_5_1 ),
        .I2(Instr[5]),
        .I3(Instr[4]),
        .I4(Instr[6]),
        .I5(Instr[2]),
        .O(rf_reg_r1_0_31_0_5_i_9_n_0));
  LUT6 #(
    .INIT(64'hF000AA00F0CCAACC)) 
    rf_reg_r1_0_31_12_17_i_10
       (.I0(ReadData[15]),
        .I1(data0),
        .I2(ReadData[31]),
        .I3(Instr[12]),
        .I4(\ALUResult[31]_INST_0_i_5_1 ),
        .I5(Instr[14]),
        .O(rf_reg_r1_0_31_12_17_i_10_n_0));
  LUT6 #(
    .INIT(64'hAAAAAACCAAAAAAF0)) 
    rf_reg_r1_0_31_12_17_i_12
       (.I0(\ALUResult[31]_INST_0_i_5_5 ),
        .I1(ReadData[14]),
        .I2(rf_reg_r1_0_31_12_17_i_19_n_0),
        .I3(Instr[5]),
        .I4(Instr[4]),
        .I5(Instr[13]),
        .O(\readDataM[14] ));
  LUT6 #(
    .INIT(64'h2222222222220020)) 
    rf_reg_r1_0_31_12_17_i_13
       (.I0(rf_reg_r1_0_31_30_31_i_1__0),
        .I1(Instr[14]),
        .I2(data0),
        .I3(Instr[12]),
        .I4(rf_reg_r1_0_31_12_17_i_21_n_0),
        .I5(rf_reg_r1_0_31_12_17_i_22_n_0),
        .O(\q_reg[5]_1 ));
  LUT6 #(
    .INIT(64'hF000AA00F0CCAACC)) 
    rf_reg_r1_0_31_12_17_i_16
       (.I0(ReadData[13]),
        .I1(data0),
        .I2(ReadData[29]),
        .I3(Instr[12]),
        .I4(\ALUResult[31]_INST_0_i_5_1 ),
        .I5(Instr[14]),
        .O(rf_reg_r1_0_31_12_17_i_16_n_0));
  LUT6 #(
    .INIT(64'hF000AA00F0CCAACC)) 
    rf_reg_r1_0_31_12_17_i_17
       (.I0(ReadData[12]),
        .I1(data0),
        .I2(ReadData[28]),
        .I3(Instr[12]),
        .I4(\ALUResult[31]_INST_0_i_5_1 ),
        .I5(Instr[14]),
        .O(rf_reg_r1_0_31_12_17_i_17_n_0));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    rf_reg_r1_0_31_12_17_i_18
       (.I0(ReadData[23]),
        .I1(ReadData[31]),
        .I2(ReadData[7]),
        .I3(\ALUResult[31]_INST_0_i_5_1 ),
        .I4(\ALUResult[31]_INST_0_i_5_0 ),
        .I5(ReadData[15]),
        .O(data0));
  LUT6 #(
    .INIT(64'hF000AA00F0CCAACC)) 
    rf_reg_r1_0_31_12_17_i_19
       (.I0(ReadData[14]),
        .I1(data0),
        .I2(ReadData[30]),
        .I3(Instr[12]),
        .I4(\ALUResult[31]_INST_0_i_5_1 ),
        .I5(Instr[14]),
        .O(rf_reg_r1_0_31_12_17_i_19_n_0));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'h20)) 
    rf_reg_r1_0_31_12_17_i_21
       (.I0(Instr[12]),
        .I1(\ALUResult[31]_INST_0_i_5_1 ),
        .I2(ReadData[15]),
        .O(rf_reg_r1_0_31_12_17_i_21_n_0));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'h80)) 
    rf_reg_r1_0_31_12_17_i_22
       (.I0(\ALUResult[31]_INST_0_i_5_1 ),
        .I1(Instr[12]),
        .I2(ReadData[31]),
        .O(rf_reg_r1_0_31_12_17_i_22_n_0));
  LUT6 #(
    .INIT(64'h3030B8B83330B8B8)) 
    rf_reg_r1_0_31_12_17_i_3
       (.I0(PCPlus4[0]),
        .I1(ResultSrc),
        .I2(rf_reg_r1_0_31_12_17_i_9_n_0),
        .I3(rf_reg_r1_0_31_12_17_i_10_n_0),
        .I4(rf_reg_r1_0_31_18_23),
        .I5(Instr[13]),
        .O(wd3[4]));
  LUT6 #(
    .INIT(64'hAAAAAACCAAAAAAF0)) 
    rf_reg_r1_0_31_12_17_i_7
       (.I0(\ALUResult[31]_INST_0_i_5_6 ),
        .I1(ReadData[13]),
        .I2(rf_reg_r1_0_31_12_17_i_16_n_0),
        .I3(Instr[5]),
        .I4(Instr[4]),
        .I5(Instr[13]),
        .O(\readDataM[13] ));
  LUT6 #(
    .INIT(64'hAAAAAACCAAAAAAF0)) 
    rf_reg_r1_0_31_12_17_i_8
       (.I0(\ALUResult[31]_INST_0_i_5_7 ),
        .I1(ReadData[12]),
        .I2(rf_reg_r1_0_31_12_17_i_17_n_0),
        .I3(Instr[5]),
        .I4(Instr[4]),
        .I5(Instr[13]),
        .O(\readDataM[12] ));
  LUT5 #(
    .INIT(32'hFFF80008)) 
    rf_reg_r1_0_31_12_17_i_9
       (.I0(ReadData[15]),
        .I1(Instr[13]),
        .I2(Instr[4]),
        .I3(Instr[5]),
        .I4(\ALUResult[31]_INST_0_i_5_4 ),
        .O(rf_reg_r1_0_31_12_17_i_9_n_0));
  LUT6 #(
    .INIT(64'h3333BBBB3030BBB8)) 
    rf_reg_r1_0_31_18_23_i_1
       (.I0(PCPlus4[1]),
        .I1(ResultSrc),
        .I2(\q_reg[5]_1 ),
        .I3(\ALUResult[31]_INST_0_i_5_12 ),
        .I4(rf_reg_r1_0_31_18_23),
        .I5(rf_reg_r1_0_31_18_23_1),
        .O(wd3[5]));
  LUT6 #(
    .INIT(64'h3333BBBB3030BBB8)) 
    rf_reg_r1_0_31_18_23_i_4
       (.I0(PCPlus4[2]),
        .I1(ResultSrc),
        .I2(\q_reg[5]_1 ),
        .I3(\ALUResult[31]_INST_0_i_5_11 ),
        .I4(rf_reg_r1_0_31_18_23),
        .I5(rf_reg_r1_0_31_18_23_0),
        .O(wd3[6]));
  LUT5 #(
    .INIT(32'hFEAEAAAA)) 
    rf_reg_r1_0_31_6_11_i_1
       (.I0(rf_reg_r1_0_31_6_11_0),
        .I1(rf_reg_r1_0_31_6_11_i_8_n_0),
        .I2(Instr[13]),
        .I3(ReadData[7]),
        .I4(rf_reg_r1_0_31_6_11),
        .O(wd3[3]));
  LUT6 #(
    .INIT(64'hF7B3F7B3F7B3C480)) 
    rf_reg_r1_0_31_6_11_i_10
       (.I0(\ALUResult[31]_INST_0_i_5_1 ),
        .I1(Instr[12]),
        .I2(ReadData[22]),
        .I3(ReadData[6]),
        .I4(rf_reg_r1_0_31_6_11_i_17_n_0),
        .I5(rf_reg_r1_0_31_6_11_i_18_n_0),
        .O(\readDataM[22]_0 ));
  LUT6 #(
    .INIT(64'hAAAAAACCAAAAAAF0)) 
    rf_reg_r1_0_31_6_11_i_11
       (.I0(\ALUResult[31]_INST_0_i_5_9 ),
        .I1(ReadData[9]),
        .I2(rf_reg_r1_0_31_6_11_i_19_n_0),
        .I3(Instr[5]),
        .I4(Instr[4]),
        .I5(Instr[13]),
        .O(\readDataM[9] ));
  LUT4 #(
    .INIT(16'hF888)) 
    rf_reg_r1_0_31_6_11_i_15
       (.I0(\WriteData[31]_INST_0_i_7_n_0 ),
        .I1(ReadData[31]),
        .I2(\WriteData[23]_INST_0_i_5_n_0 ),
        .I3(ReadData[23]),
        .O(rf_reg_r1_0_31_6_11_i_15_n_0));
  LUT4 #(
    .INIT(16'hF888)) 
    rf_reg_r1_0_31_6_11_i_16
       (.I0(\WriteData[15]_INST_0_i_4_n_0 ),
        .I1(ReadData[15]),
        .I2(\WriteData[7]_INST_0_i_4_n_0 ),
        .I3(ReadData[7]),
        .O(rf_reg_r1_0_31_6_11_i_16_n_0));
  LUT4 #(
    .INIT(16'hF888)) 
    rf_reg_r1_0_31_6_11_i_17
       (.I0(\WriteData[15]_INST_0_i_4_n_0 ),
        .I1(ReadData[14]),
        .I2(\WriteData[7]_INST_0_i_4_n_0 ),
        .I3(ReadData[6]),
        .O(rf_reg_r1_0_31_6_11_i_17_n_0));
  LUT4 #(
    .INIT(16'hF888)) 
    rf_reg_r1_0_31_6_11_i_18
       (.I0(\WriteData[31]_INST_0_i_7_n_0 ),
        .I1(ReadData[30]),
        .I2(\WriteData[23]_INST_0_i_5_n_0 ),
        .I3(ReadData[22]),
        .O(rf_reg_r1_0_31_6_11_i_18_n_0));
  LUT6 #(
    .INIT(64'hF000AA00F0CCAACC)) 
    rf_reg_r1_0_31_6_11_i_19
       (.I0(ReadData[9]),
        .I1(data0),
        .I2(ReadData[25]),
        .I3(Instr[12]),
        .I4(\ALUResult[31]_INST_0_i_5_1 ),
        .I5(Instr[14]),
        .O(rf_reg_r1_0_31_6_11_i_19_n_0));
  LUT6 #(
    .INIT(64'hF000AA00F0CCAACC)) 
    rf_reg_r1_0_31_6_11_i_20
       (.I0(ReadData[8]),
        .I1(data0),
        .I2(ReadData[24]),
        .I3(Instr[12]),
        .I4(\ALUResult[31]_INST_0_i_5_1 ),
        .I5(Instr[14]),
        .O(\readDataM[8] ));
  LUT6 #(
    .INIT(64'hF000AA00F0CCAACC)) 
    rf_reg_r1_0_31_6_11_i_21
       (.I0(ReadData[11]),
        .I1(data0),
        .I2(ReadData[27]),
        .I3(Instr[12]),
        .I4(\ALUResult[31]_INST_0_i_5_1 ),
        .I5(Instr[14]),
        .O(\readDataM[11] ));
  LUT6 #(
    .INIT(64'hF000AA00F0CCAACC)) 
    rf_reg_r1_0_31_6_11_i_22
       (.I0(ReadData[10]),
        .I1(data0),
        .I2(ReadData[26]),
        .I3(Instr[12]),
        .I4(\ALUResult[31]_INST_0_i_5_1 ),
        .I5(Instr[14]),
        .O(\readDataM[10] ));
  LUT6 #(
    .INIT(64'hF7D5F7D5F7D5A280)) 
    rf_reg_r1_0_31_6_11_i_8
       (.I0(Instr[12]),
        .I1(\ALUResult[31]_INST_0_i_5_1 ),
        .I2(ReadData[23]),
        .I3(ReadData[7]),
        .I4(rf_reg_r1_0_31_6_11_i_15_n_0),
        .I5(rf_reg_r1_0_31_6_11_i_16_n_0),
        .O(rf_reg_r1_0_31_6_11_i_8_n_0));
  LUT5 #(
    .INIT(32'hC0C0AAC0)) 
    sum__0_carry__0_i_1
       (.I0(Q[7]),
        .I1(rd10[7]),
        .I2(\rf/rd11__3 ),
        .I3(Instr[2]),
        .I4(Instr[5]),
        .O(SrcA[7]));
  LUT5 #(
    .INIT(32'hC0C0AAC0)) 
    sum__0_carry__0_i_2
       (.I0(Q[6]),
        .I1(rd10[6]),
        .I2(\rf/rd11__3 ),
        .I3(Instr[2]),
        .I4(Instr[5]),
        .O(SrcA[6]));
  LUT5 #(
    .INIT(32'hC0C0AAC0)) 
    sum__0_carry__0_i_3
       (.I0(Q[5]),
        .I1(rd10[5]),
        .I2(\rf/rd11__3 ),
        .I3(Instr[2]),
        .I4(Instr[5]),
        .O(SrcA[5]));
  LUT5 #(
    .INIT(32'hC0C0AAC0)) 
    sum__0_carry__0_i_4
       (.I0(Q[4]),
        .I1(rd10[4]),
        .I2(\rf/rd11__3 ),
        .I3(Instr[2]),
        .I4(Instr[5]),
        .O(SrcA[4]));
  LUT5 #(
    .INIT(32'hC0C0AAC0)) 
    sum__0_carry__1_i_1
       (.I0(Q[11]),
        .I1(rd10[11]),
        .I2(\rf/rd11__3 ),
        .I3(Instr[2]),
        .I4(Instr[5]),
        .O(SrcA[11]));
  LUT5 #(
    .INIT(32'hC0C0AAC0)) 
    sum__0_carry__1_i_2
       (.I0(Q[10]),
        .I1(rd10[10]),
        .I2(\rf/rd11__3 ),
        .I3(Instr[2]),
        .I4(Instr[5]),
        .O(SrcA[10]));
  LUT5 #(
    .INIT(32'hC0C0AAC0)) 
    sum__0_carry__1_i_3
       (.I0(Q[9]),
        .I1(rd10[9]),
        .I2(\rf/rd11__3 ),
        .I3(Instr[2]),
        .I4(Instr[5]),
        .O(SrcA[9]));
  LUT5 #(
    .INIT(32'hC0C0AAC0)) 
    sum__0_carry__1_i_4
       (.I0(Q[8]),
        .I1(rd10[8]),
        .I2(\rf/rd11__3 ),
        .I3(Instr[2]),
        .I4(Instr[5]),
        .O(SrcA[8]));
  LUT5 #(
    .INIT(32'hC0C0AAC0)) 
    sum__0_carry__2_i_1
       (.I0(Q[15]),
        .I1(rd10[15]),
        .I2(\rf/rd11__3 ),
        .I3(Instr[2]),
        .I4(Instr[5]),
        .O(SrcA[15]));
  LUT5 #(
    .INIT(32'hC0C0AAC0)) 
    sum__0_carry__2_i_2
       (.I0(Q[14]),
        .I1(rd10[14]),
        .I2(\rf/rd11__3 ),
        .I3(Instr[2]),
        .I4(Instr[5]),
        .O(SrcA[14]));
  LUT5 #(
    .INIT(32'hC0C0AAC0)) 
    sum__0_carry__2_i_3
       (.I0(Q[13]),
        .I1(rd10[13]),
        .I2(\rf/rd11__3 ),
        .I3(Instr[2]),
        .I4(Instr[5]),
        .O(SrcA[13]));
  LUT5 #(
    .INIT(32'hC0C0AAC0)) 
    sum__0_carry__2_i_4
       (.I0(Q[12]),
        .I1(rd10[12]),
        .I2(\rf/rd11__3 ),
        .I3(Instr[2]),
        .I4(Instr[5]),
        .O(SrcA[12]));
  LUT5 #(
    .INIT(32'hC0C0AAC0)) 
    sum__0_carry__3_i_1
       (.I0(Q[19]),
        .I1(rd10[19]),
        .I2(\rf/rd11__3 ),
        .I3(Instr[2]),
        .I4(Instr[5]),
        .O(SrcA[19]));
  LUT5 #(
    .INIT(32'hC0C0AAC0)) 
    sum__0_carry__3_i_2
       (.I0(Q[18]),
        .I1(rd10[18]),
        .I2(\rf/rd11__3 ),
        .I3(Instr[2]),
        .I4(Instr[5]),
        .O(SrcA[18]));
  LUT5 #(
    .INIT(32'hC0C0AAC0)) 
    sum__0_carry__3_i_3
       (.I0(Q[17]),
        .I1(rd10[17]),
        .I2(\rf/rd11__3 ),
        .I3(Instr[2]),
        .I4(Instr[5]),
        .O(SrcA[17]));
  LUT5 #(
    .INIT(32'hC0C0AAC0)) 
    sum__0_carry__3_i_4
       (.I0(Q[16]),
        .I1(rd10[16]),
        .I2(\rf/rd11__3 ),
        .I3(Instr[2]),
        .I4(Instr[5]),
        .O(SrcA[16]));
  LUT5 #(
    .INIT(32'hC0C0AAC0)) 
    sum__0_carry__4_i_1
       (.I0(Q[23]),
        .I1(rd10[23]),
        .I2(\rf/rd11__3 ),
        .I3(Instr[2]),
        .I4(Instr[5]),
        .O(SrcA[23]));
  LUT5 #(
    .INIT(32'hC0C0AAC0)) 
    sum__0_carry__4_i_2
       (.I0(Q[22]),
        .I1(rd10[22]),
        .I2(\rf/rd11__3 ),
        .I3(Instr[2]),
        .I4(Instr[5]),
        .O(SrcA[22]));
  LUT5 #(
    .INIT(32'hC0C0AAC0)) 
    sum__0_carry__4_i_3
       (.I0(Q[21]),
        .I1(rd10[21]),
        .I2(\rf/rd11__3 ),
        .I3(Instr[2]),
        .I4(Instr[5]),
        .O(SrcA[21]));
  LUT5 #(
    .INIT(32'hC0C0AAC0)) 
    sum__0_carry__4_i_4
       (.I0(Q[20]),
        .I1(rd10[20]),
        .I2(\rf/rd11__3 ),
        .I3(Instr[2]),
        .I4(Instr[5]),
        .O(SrcA[20]));
  LUT5 #(
    .INIT(32'hC0C0AAC0)) 
    sum__0_carry__5_i_1
       (.I0(Q[27]),
        .I1(rd10[27]),
        .I2(\rf/rd11__3 ),
        .I3(Instr[2]),
        .I4(Instr[5]),
        .O(SrcA[27]));
  LUT5 #(
    .INIT(32'hC0C0AAC0)) 
    sum__0_carry__5_i_2
       (.I0(Q[26]),
        .I1(rd10[26]),
        .I2(\rf/rd11__3 ),
        .I3(Instr[2]),
        .I4(Instr[5]),
        .O(SrcA[26]));
  LUT5 #(
    .INIT(32'hC0C0AAC0)) 
    sum__0_carry__5_i_3
       (.I0(Q[25]),
        .I1(rd10[25]),
        .I2(\rf/rd11__3 ),
        .I3(Instr[2]),
        .I4(Instr[5]),
        .O(SrcA[25]));
  LUT5 #(
    .INIT(32'hC0C0AAC0)) 
    sum__0_carry__5_i_4
       (.I0(Q[24]),
        .I1(rd10[24]),
        .I2(\rf/rd11__3 ),
        .I3(Instr[2]),
        .I4(Instr[5]),
        .O(SrcA[24]));
  LUT5 #(
    .INIT(32'hC0C0AAC0)) 
    sum__0_carry__6_i_1
       (.I0(Q[30]),
        .I1(rd10[30]),
        .I2(\rf/rd11__3 ),
        .I3(Instr[2]),
        .I4(Instr[5]),
        .O(SrcA[30]));
  LUT5 #(
    .INIT(32'hC0C0AAC0)) 
    sum__0_carry__6_i_2
       (.I0(Q[29]),
        .I1(rd10[29]),
        .I2(\rf/rd11__3 ),
        .I3(Instr[2]),
        .I4(Instr[5]),
        .O(SrcA[29]));
  LUT5 #(
    .INIT(32'hC0C0AAC0)) 
    sum__0_carry__6_i_3
       (.I0(Q[28]),
        .I1(rd10[28]),
        .I2(\rf/rd11__3 ),
        .I3(Instr[2]),
        .I4(Instr[5]),
        .O(SrcA[28]));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    sum__0_carry_i_11
       (.I0(Instr[19]),
        .I1(Instr[15]),
        .I2(Instr[16]),
        .I3(Instr[17]),
        .I4(Instr[18]),
        .O(\rf/rd11__3 ));
  LUT5 #(
    .INIT(32'hC0C0AAC0)) 
    sum__0_carry_i_2
       (.I0(Q[3]),
        .I1(rd10[3]),
        .I2(\rf/rd11__3 ),
        .I3(Instr[2]),
        .I4(Instr[5]),
        .O(SrcA[3]));
  LUT5 #(
    .INIT(32'hC0C0AAC0)) 
    sum__0_carry_i_3
       (.I0(Q[2]),
        .I1(rd10[2]),
        .I2(\rf/rd11__3 ),
        .I3(Instr[2]),
        .I4(Instr[5]),
        .O(SrcA[2]));
  LUT5 #(
    .INIT(32'hC0C0AAC0)) 
    sum__0_carry_i_4
       (.I0(Q[1]),
        .I1(rd10[1]),
        .I2(\rf/rd11__3 ),
        .I3(Instr[2]),
        .I4(Instr[5]),
        .O(SrcA[1]));
  LUT5 #(
    .INIT(32'hC0C0AAC0)) 
    sum__0_carry_i_5
       (.I0(Q[0]),
        .I1(rd10[0]),
        .I2(\rf/rd11__3 ),
        .I3(Instr[2]),
        .I4(Instr[5]),
        .O(SrcA[0]));
  LUT4 #(
    .INIT(16'h59AA)) 
    y_carry__0_i_1
       (.I0(Q[7]),
        .I1(Instr[2]),
        .I2(Instr[6]),
        .I3(Instr[27]),
        .O(\q_reg[7]_0 [3]));
  LUT4 #(
    .INIT(16'h59AA)) 
    y_carry__0_i_2
       (.I0(Q[6]),
        .I1(Instr[2]),
        .I2(Instr[6]),
        .I3(Instr[26]),
        .O(\q_reg[7]_0 [2]));
  LUT4 #(
    .INIT(16'h59AA)) 
    y_carry__0_i_3
       (.I0(Q[5]),
        .I1(Instr[2]),
        .I2(Instr[6]),
        .I3(Instr[25]),
        .O(\q_reg[7]_0 [1]));
  LUT6 #(
    .INIT(64'h59AA595959AAAAAA)) 
    y_carry__0_i_4
       (.I0(Q[4]),
        .I1(Instr[2]),
        .I2(Instr[6]),
        .I3(Instr[24]),
        .I4(\q_reg[5]_3 ),
        .I5(Instr[11]),
        .O(\q_reg[7]_0 [0]));
  LUT4 #(
    .INIT(16'h59AA)) 
    y_carry__1_i_1
       (.I0(Q[11]),
        .I1(Instr[2]),
        .I2(Instr[6]),
        .I3(y_carry__1),
        .O(\q_reg[11]_0 [3]));
  LUT4 #(
    .INIT(16'h59AA)) 
    y_carry__1_i_2
       (.I0(Q[10]),
        .I1(Instr[2]),
        .I2(Instr[6]),
        .I3(Instr[30]),
        .O(\q_reg[11]_0 [2]));
  LUT4 #(
    .INIT(16'h59AA)) 
    y_carry__1_i_3
       (.I0(Q[9]),
        .I1(Instr[2]),
        .I2(Instr[6]),
        .I3(Instr[29]),
        .O(\q_reg[11]_0 [1]));
  LUT4 #(
    .INIT(16'h59AA)) 
    y_carry__1_i_4
       (.I0(Q[8]),
        .I1(Instr[2]),
        .I2(Instr[6]),
        .I3(Instr[28]),
        .O(\q_reg[11]_0 [0]));
  LUT6 #(
    .INIT(64'h596A55AA596A596A)) 
    y_carry__2_i_1
       (.I0(Q[15]),
        .I1(y_carry__3),
        .I2(Instr[31]),
        .I3(Instr[15]),
        .I4(Instr[6]),
        .I5(Instr[2]),
        .O(\q_reg[15]_0 [3]));
  LUT6 #(
    .INIT(64'h596A55AA596A596A)) 
    y_carry__2_i_2
       (.I0(Q[14]),
        .I1(y_carry__3),
        .I2(Instr[31]),
        .I3(Instr[14]),
        .I4(Instr[6]),
        .I5(Instr[2]),
        .O(\q_reg[15]_0 [2]));
  LUT6 #(
    .INIT(64'h596A55AA596A596A)) 
    y_carry__2_i_3
       (.I0(Q[13]),
        .I1(y_carry__3),
        .I2(Instr[31]),
        .I3(Instr[13]),
        .I4(Instr[6]),
        .I5(Instr[2]),
        .O(\q_reg[15]_0 [1]));
  LUT6 #(
    .INIT(64'h596A55AA596A596A)) 
    y_carry__2_i_4
       (.I0(Q[12]),
        .I1(y_carry__3),
        .I2(Instr[31]),
        .I3(Instr[12]),
        .I4(Instr[6]),
        .I5(Instr[2]),
        .O(\q_reg[15]_0 [0]));
  LUT6 #(
    .INIT(64'h596A55AA596A596A)) 
    y_carry__3_i_1
       (.I0(Q[19]),
        .I1(y_carry__3),
        .I2(Instr[31]),
        .I3(Instr[19]),
        .I4(Instr[6]),
        .I5(Instr[2]),
        .O(\q_reg[19]_1 [3]));
  LUT6 #(
    .INIT(64'h596A55AA596A596A)) 
    y_carry__3_i_2
       (.I0(Q[18]),
        .I1(y_carry__3),
        .I2(Instr[31]),
        .I3(Instr[18]),
        .I4(Instr[6]),
        .I5(Instr[2]),
        .O(\q_reg[19]_1 [2]));
  LUT6 #(
    .INIT(64'h596A55AA596A596A)) 
    y_carry__3_i_3
       (.I0(Q[17]),
        .I1(y_carry__3),
        .I2(Instr[31]),
        .I3(Instr[17]),
        .I4(Instr[6]),
        .I5(Instr[2]),
        .O(\q_reg[19]_1 [1]));
  LUT6 #(
    .INIT(64'h596A55AA596A596A)) 
    y_carry__3_i_4
       (.I0(Q[16]),
        .I1(y_carry__3),
        .I2(Instr[31]),
        .I3(Instr[16]),
        .I4(Instr[6]),
        .I5(Instr[2]),
        .O(\q_reg[19]_1 [0]));
  LUT5 #(
    .INIT(32'h65666A66)) 
    y_carry__4_i_1
       (.I0(Q[23]),
        .I1(Instr[31]),
        .I2(Instr[6]),
        .I3(Instr[2]),
        .I4(Instr[23]),
        .O(\q_reg[23]_1 [3]));
  LUT5 #(
    .INIT(32'h65666A66)) 
    y_carry__4_i_2
       (.I0(Q[22]),
        .I1(Instr[31]),
        .I2(Instr[6]),
        .I3(Instr[2]),
        .I4(Instr[22]),
        .O(\q_reg[23]_1 [2]));
  LUT5 #(
    .INIT(32'h65666A66)) 
    y_carry__4_i_3
       (.I0(Q[21]),
        .I1(Instr[31]),
        .I2(Instr[6]),
        .I3(Instr[2]),
        .I4(Instr[21]),
        .O(\q_reg[23]_1 [1]));
  LUT5 #(
    .INIT(32'h65666A66)) 
    y_carry__4_i_4
       (.I0(Q[20]),
        .I1(Instr[31]),
        .I2(Instr[6]),
        .I3(Instr[2]),
        .I4(Instr[20]),
        .O(\q_reg[23]_1 [0]));
  LUT5 #(
    .INIT(32'h65666A66)) 
    y_carry__5_i_1
       (.I0(Q[27]),
        .I1(Instr[31]),
        .I2(Instr[6]),
        .I3(Instr[2]),
        .I4(Instr[27]),
        .O(\q_reg[27]_3 [3]));
  LUT5 #(
    .INIT(32'h65666A66)) 
    y_carry__5_i_2
       (.I0(Q[26]),
        .I1(Instr[31]),
        .I2(Instr[6]),
        .I3(Instr[2]),
        .I4(Instr[26]),
        .O(\q_reg[27]_3 [2]));
  LUT5 #(
    .INIT(32'h65666A66)) 
    y_carry__5_i_3
       (.I0(Q[25]),
        .I1(Instr[31]),
        .I2(Instr[6]),
        .I3(Instr[2]),
        .I4(Instr[25]),
        .O(\q_reg[27]_3 [1]));
  LUT5 #(
    .INIT(32'h65666A66)) 
    y_carry__5_i_4
       (.I0(Q[24]),
        .I1(Instr[31]),
        .I2(Instr[6]),
        .I3(Instr[2]),
        .I4(Instr[24]),
        .O(\q_reg[27]_3 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    y_carry__6_i_1
       (.I0(Q[31]),
        .I1(Instr[31]),
        .O(\q_reg[31]_0 [3]));
  LUT5 #(
    .INIT(32'h65666A66)) 
    y_carry__6_i_2
       (.I0(Q[30]),
        .I1(Instr[31]),
        .I2(Instr[6]),
        .I3(Instr[2]),
        .I4(Instr[30]),
        .O(\q_reg[31]_0 [2]));
  LUT5 #(
    .INIT(32'h65666A66)) 
    y_carry__6_i_3
       (.I0(Q[29]),
        .I1(Instr[31]),
        .I2(Instr[6]),
        .I3(Instr[2]),
        .I4(Instr[29]),
        .O(\q_reg[31]_0 [1]));
  LUT5 #(
    .INIT(32'h65666A66)) 
    y_carry__6_i_4
       (.I0(Q[28]),
        .I1(Instr[31]),
        .I2(Instr[6]),
        .I3(Instr[2]),
        .I4(Instr[28]),
        .O(\q_reg[31]_0 [0]));
  LUT6 #(
    .INIT(64'h59AA595959AAAAAA)) 
    y_carry_i_1
       (.I0(Q[3]),
        .I1(Instr[2]),
        .I2(Instr[6]),
        .I3(Instr[23]),
        .I4(\q_reg[5]_3 ),
        .I5(Instr[10]),
        .O(S[3]));
  LUT6 #(
    .INIT(64'h59AA595959AAAAAA)) 
    y_carry_i_2
       (.I0(Q[2]),
        .I1(Instr[2]),
        .I2(Instr[6]),
        .I3(Instr[22]),
        .I4(\q_reg[5]_3 ),
        .I5(Instr[9]),
        .O(S[2]));
  LUT6 #(
    .INIT(64'h59AA595959AAAAAA)) 
    y_carry_i_3
       (.I0(Q[1]),
        .I1(Instr[2]),
        .I2(Instr[6]),
        .I3(Instr[21]),
        .I4(\q_reg[5]_3 ),
        .I5(Instr[8]),
        .O(S[1]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAA656A)) 
    y_carry_i_4
       (.I0(Q[0]),
        .I1(Instr[7]),
        .I2(ImmSrc[0]),
        .I3(Instr[20]),
        .I4(ImmSrc[1]),
        .I5(ImmSrc[2]),
        .O(S[0]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'hFFF0FB0B)) 
    y_carry_i_5
       (.I0(Instr[4]),
        .I1(Instr[5]),
        .I2(Instr[6]),
        .I3(Instr[2]),
        .I4(Instr[3]),
        .O(\q_reg[5]_3 ));
endmodule

(* ORIG_REF_NAME = "imem" *) 
module design_1_top_0_0_imem
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
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT4 #(
    .INIT(16'h0230)) 
    \rd[25]_INST_0 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[2]),
        .I3(a[3]),
        .O(\^rd [25]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT4 #(
    .INIT(16'h0029)) 
    \rd[28]_INST_0 
       (.I0(a[5]),
        .I1(a[2]),
        .I2(a[3]),
        .I3(a[4]),
        .O(\^rd [28]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    \rd[2]_INST_0 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[2]),
        .I3(a[3]),
        .O(\^rd [14]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT4 #(
    .INIT(16'hCD77)) 
    \rd[4]_INST_0 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[2]),
        .I3(a[4]),
        .O(\^rd [4]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT4 #(
    .INIT(16'hAE48)) 
    \rd[5]_INST_0 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[2]),
        .I3(a[3]),
        .O(\^rd [5]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
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

(* ORIG_REF_NAME = "regfile" *) 
module design_1_top_0_0_regfile
   (rd10,
    rd20,
    D,
    \q[31]_i_10 ,
    \ALUResult[31]_INST_0_i_5 ,
    \ALUResult[31]_INST_0_i_5_0 ,
    \ALUResult[31]_INST_0_i_5_1 ,
    \ALUResult[31]_INST_0_i_5_2 ,
    \ALUResult[31]_INST_0_i_5_3 ,
    \ALUResult[31]_INST_0_i_5_4 ,
    \ALUResult[31]_INST_0_i_5_5 ,
    \ALUResult[31]_INST_0_i_5_6 ,
    \ALUResult[31]_INST_0_i_5_7 ,
    \ALUResult[31]_INST_0_i_5_8 ,
    \ALUResult[31]_INST_0_i_5_9 ,
    \ALUResult[31]_INST_0_i_5_10 ,
    \ALUResult[31]_INST_0_i_5_11 ,
    \ALUResult[31]_INST_0_i_5_12 ,
    \ALUResult[31]_INST_0_i_5_13 ,
    \ALUResult[31]_INST_0_i_5_14 ,
    \ALUResult[4]_INST_0_i_1 ,
    SrcB,
    \ALUResult[4]_INST_0_i_1_0 ,
    \ALUResult[4]_INST_0_i_1_1 ,
    \ALUResult[4]_INST_0_i_1_2 ,
    \ALUResult[8]_INST_0_0 ,
    \readDataM[10] ,
    \readDataM[11] ,
    \q_reg[25] ,
    \ALUResult[31]_INST_0_i_15 ,
    \ALUResult[31]_INST_0_i_11_0 ,
    \ALUResult[31]_INST_0_i_11_1 ,
    \readDataM[8] ,
    \ALUResult[4]_INST_0_i_7_0 ,
    \ALUResult[4]_INST_0_i_1_3 ,
    \ALUResult[4]_INST_0 ,
    \q_reg[2] ,
    \ALUResult[4]_INST_0_i_1_4 ,
    \ALUResult[31]_INST_0_i_15_0 ,
    \q_reg[25]_0 ,
    \ALUResult[31]_INST_0_i_15_1 ,
    \q_reg[27] ,
    \ALUResult[31]_INST_0_i_15_2 ,
    \q_reg[1] ,
    \ALUResult[30]_INST_0_i_8_0 ,
    \q_reg[1]_0 ,
    \q_reg[30] ,
    \q_reg[0] ,
    \q_reg[0]_0 ,
    DI,
    \q_reg[6] ,
    \q_reg[5] ,
    \q_reg[2]_0 ,
    \q_reg[3] ,
    \q_reg[4] ,
    \q_reg[14] ,
    \q_reg[14]_0 ,
    \q_reg[22] ,
    \q_reg[22]_0 ,
    \q_reg[30]_0 ,
    \q_reg[30]_1 ,
    \q_reg[0]_1 ,
    \q_reg[30]_2 ,
    \q_reg[31] ,
    \q_reg[5]_0 ,
    \readDataM[16] ,
    \readDataM[17] ,
    \readDataM[18] ,
    \readDataM[19] ,
    \readDataM[20] ,
    \readDataM[21] ,
    \readDataM[22] ,
    \readDataM[23] ,
    \readDataM[24] ,
    \readDataM[25] ,
    \readDataM[26] ,
    \readDataM[27] ,
    \readDataM[28] ,
    \readDataM[29] ,
    \readDataM[30] ,
    \readDataM[31] ,
    \q_reg[5]_1 ,
    \q_reg[5]_2 ,
    S,
    \q_reg[14]_1 ,
    \q_reg[22]_1 ,
    \q_reg[30]_3 ,
    \q_reg[3]_0 ,
    \q_reg[7] ,
    \q_reg[11] ,
    \q_reg[15] ,
    \q_reg[19] ,
    \q_reg[23] ,
    \q_reg[27]_0 ,
    \ALUResult[31]_INST_0_i_11_2 ,
    WriteData,
    clk,
    Result,
    Instr,
    ResultSrc,
    PCPlus4,
    PCTarget,
    \q_reg[3]_1 ,
    PCSrc10_out,
    \q_reg[4]_0 ,
    \q_reg[7]_0 ,
    \q_reg[9] ,
    \q_reg[12] ,
    \q_reg[13] ,
    \q_reg[14]_2 ,
    \q_reg[15]_0 ,
    \q_reg[19]_0 ,
    \q_reg[20] ,
    \q_reg[25]_1 ,
    \q_reg[27]_1 ,
    \q_reg[30]_4 ,
    \q_reg[3]_2 ,
    \q_reg[3]_3 ,
    \q_reg[3]_4 ,
    \q_reg[3]_5 ,
    \addressM[14] ,
    \addressM[14]_0 ,
    \addressM[14]_1 ,
    \addressM[15] ,
    \addressM[13] ,
    \addressM[12] ,
    ReadData,
    rf_reg_r1_0_31_6_11_i_6,
    \addressM[10] ,
    \addressM[10]_0 ,
    \addressM[10]_1 ,
    \addressM[10]_2 ,
    rf_reg_r1_0_31_6_11_i_5,
    \addressM[11] ,
    \addressM[11]_0 ,
    \addressM[11]_1 ,
    \addressM[10]_3 ,
    \ALUResult[11]_INST_0_i_1_0 ,
    \ALUResult[11]_INST_0_i_1_1 ,
    \ALUResult[11]_INST_0_i_1_2 ,
    \addressM[7] ,
    rf_reg_r1_0_31_6_11_i_4,
    \addressM[8] ,
    \addressM[8]_0 ,
    \addressM[8]_1 ,
    SrcA,
    \addressM[8]_2 ,
    \addressM[8]_3 ,
    \addressM[5] ,
    \addressM[5]_0 ,
    \addressM[6] ,
    \addressM[6]_0 ,
    \addressM[6]_1 ,
    \addressM[5]_1 ,
    \ALUResult[6]_INST_0_i_1_0 ,
    \ALUResult[6]_INST_0_i_1_1 ,
    \ALUResult[6]_INST_0_i_1_2 ,
    \ALUResult[6]_INST_0_i_1_3 ,
    \addressM[21] ,
    \addressM[21]_0 ,
    \addressM[21]_1 ,
    \addressM[21]_2 ,
    \addressM[21]_3 ,
    \ALUResult[22]_INST_0_i_3_0 ,
    \ALUResult[23]_INST_0_i_3_0 ,
    \ALUResult[21]_INST_0_i_3_0 ,
    \addressM[22] ,
    \addressM[22]_0 ,
    \addressM[23] ,
    \addressM[23]_0 ,
    \addressM[18] ,
    \addressM[18]_0 ,
    \addressM[18]_1 ,
    \addressM[18]_2 ,
    \addressM[19] ,
    \addressM[19]_0 ,
    \addressM[18]_3 ,
    \addressM[16] ,
    \addressM[16]_0 ,
    \addressM[17] ,
    \addressM[17]_0 ,
    \ALUResult[16]_INST_0_i_1_0 ,
    \ALUResult[16]_INST_0_i_1_1 ,
    \ALUResult[16]_INST_0_i_1_2 ,
    \addressM[24] ,
    \addressM[24]_0 ,
    \addressM[25] ,
    \addressM[26] ,
    \addressM[26]_0 ,
    \addressM[27] ,
    SrcA__0,
    \addressM[28] ,
    \addressM[28]_0 ,
    \addressM[29] ,
    \addressM[29]_0 ,
    \addressM[31] ,
    \ALUResult[31]_INST_0_i_3_0 ,
    \ALUResult[31]_INST_0_i_3_1 ,
    \ALUResult[31]_INST_0_i_3_2 ,
    \addressM[31]_0 ,
    \addressM[31]_1 ,
    lt_carry__2,
    Q,
    lt_carry__2_0,
    \ALUResult[4]_INST_0_i_4 ,
    ImmSrc,
    ALUSrc,
    rd21__3,
    \ALUResult[11]_INST_0_i_2 ,
    \ALUResult[19]_INST_0_i_2 ,
    \ALUResult[0]_INST_0_i_8 ,
    ALUControl__0,
    \ALUResult[0]_INST_0_i_3 ,
    CO,
    \q[31]_i_2_0 ,
    \ALUResult[30]_INST_0_i_3_0 ,
    \ALUResult[30]_INST_0_i_3_1 ,
    \ALUResult[30]_INST_0_i_3_2 ,
    \ALUResult[30]_INST_0_i_3_3 ,
    \writeDataM[31] ,
    \writeDataM[31]_0 ,
    \writeDataM[30] ,
    \writeDataM[29] ,
    \writeDataM[28] ,
    \writeDataM[27] ,
    \writeDataM[26] ,
    \writeDataM[25] ,
    \writeDataM[24] ,
    \writeDataM[23] ,
    \writeDataM[22] ,
    \writeDataM[21] ,
    \writeDataM[20] ,
    \writeDataM[19] ,
    \writeDataM[18] ,
    \writeDataM[17] ,
    \writeDataM[16] );
  output [31:0]rd10;
  output [7:0]rd20;
  output [28:0]D;
  output \q[31]_i_10 ;
  output \ALUResult[31]_INST_0_i_5 ;
  output \ALUResult[31]_INST_0_i_5_0 ;
  output \ALUResult[31]_INST_0_i_5_1 ;
  output \ALUResult[31]_INST_0_i_5_2 ;
  output \ALUResult[31]_INST_0_i_5_3 ;
  output \ALUResult[31]_INST_0_i_5_4 ;
  output \ALUResult[31]_INST_0_i_5_5 ;
  output \ALUResult[31]_INST_0_i_5_6 ;
  output \ALUResult[31]_INST_0_i_5_7 ;
  output \ALUResult[31]_INST_0_i_5_8 ;
  output \ALUResult[31]_INST_0_i_5_9 ;
  output \ALUResult[31]_INST_0_i_5_10 ;
  output \ALUResult[31]_INST_0_i_5_11 ;
  output \ALUResult[31]_INST_0_i_5_12 ;
  output \ALUResult[31]_INST_0_i_5_13 ;
  output \ALUResult[31]_INST_0_i_5_14 ;
  output \ALUResult[4]_INST_0_i_1 ;
  output [31:0]SrcB;
  output \ALUResult[4]_INST_0_i_1_0 ;
  output \ALUResult[4]_INST_0_i_1_1 ;
  output \ALUResult[4]_INST_0_i_1_2 ;
  output \ALUResult[8]_INST_0_0 ;
  output \readDataM[10] ;
  output \readDataM[11] ;
  output \q_reg[25] ;
  output \ALUResult[31]_INST_0_i_15 ;
  output \ALUResult[31]_INST_0_i_11_0 ;
  output \ALUResult[31]_INST_0_i_11_1 ;
  output \readDataM[8] ;
  output \ALUResult[4]_INST_0_i_7_0 ;
  output \ALUResult[4]_INST_0_i_1_3 ;
  output \ALUResult[4]_INST_0 ;
  output \q_reg[2] ;
  output \ALUResult[4]_INST_0_i_1_4 ;
  output \ALUResult[31]_INST_0_i_15_0 ;
  output \q_reg[25]_0 ;
  output \ALUResult[31]_INST_0_i_15_1 ;
  output \q_reg[27] ;
  output \ALUResult[31]_INST_0_i_15_2 ;
  output \q_reg[1] ;
  output \ALUResult[30]_INST_0_i_8_0 ;
  output \q_reg[1]_0 ;
  output \q_reg[30] ;
  output \q_reg[0] ;
  output \q_reg[0]_0 ;
  output [2:0]DI;
  output [3:0]\q_reg[6] ;
  output [15:0]\q_reg[5] ;
  output \q_reg[2]_0 ;
  output \q_reg[3] ;
  output \q_reg[4] ;
  output [3:0]\q_reg[14] ;
  output [3:0]\q_reg[14]_0 ;
  output [3:0]\q_reg[22] ;
  output [3:0]\q_reg[22]_0 ;
  output [3:0]\q_reg[30]_0 ;
  output [3:0]\q_reg[30]_1 ;
  output \q_reg[0]_1 ;
  output [0:0]\q_reg[30]_2 ;
  output [3:0]\q_reg[31] ;
  output \q_reg[5]_0 ;
  output \readDataM[16] ;
  output \readDataM[17] ;
  output \readDataM[18] ;
  output \readDataM[19] ;
  output \readDataM[20] ;
  output \readDataM[21] ;
  output \readDataM[22] ;
  output \readDataM[23] ;
  output \readDataM[24] ;
  output \readDataM[25] ;
  output \readDataM[26] ;
  output \readDataM[27] ;
  output \readDataM[28] ;
  output \readDataM[29] ;
  output \readDataM[30] ;
  output \readDataM[31] ;
  output \q_reg[5]_1 ;
  output [0:0]\q_reg[5]_2 ;
  output [3:0]S;
  output [3:0]\q_reg[14]_1 ;
  output [3:0]\q_reg[22]_1 ;
  output [3:0]\q_reg[30]_3 ;
  output [3:0]\q_reg[3]_0 ;
  output [3:0]\q_reg[7] ;
  output [3:0]\q_reg[11] ;
  output [3:0]\q_reg[15] ;
  output [3:0]\q_reg[19] ;
  output [3:0]\q_reg[23] ;
  output [3:0]\q_reg[27]_0 ;
  output \ALUResult[31]_INST_0_i_11_2 ;
  output [15:0]WriteData;
  input clk;
  input [31:0]Result;
  input [31:0]Instr;
  input [0:0]ResultSrc;
  input [28:0]PCPlus4;
  input [28:0]PCTarget;
  input \q_reg[3]_1 ;
  input PCSrc10_out;
  input \q_reg[4]_0 ;
  input \q_reg[7]_0 ;
  input \q_reg[9] ;
  input \q_reg[12] ;
  input \q_reg[13] ;
  input \q_reg[14]_2 ;
  input \q_reg[15]_0 ;
  input \q_reg[19]_0 ;
  input \q_reg[20] ;
  input \q_reg[25]_1 ;
  input \q_reg[27]_1 ;
  input \q_reg[30]_4 ;
  input \q_reg[3]_2 ;
  input \q_reg[3]_3 ;
  input \q_reg[3]_4 ;
  input \q_reg[3]_5 ;
  input \addressM[14] ;
  input \addressM[14]_0 ;
  input \addressM[14]_1 ;
  input \addressM[15] ;
  input \addressM[13] ;
  input \addressM[12] ;
  input [18:0]ReadData;
  input rf_reg_r1_0_31_6_11_i_6;
  input \addressM[10] ;
  input \addressM[10]_0 ;
  input \addressM[10]_1 ;
  input \addressM[10]_2 ;
  input rf_reg_r1_0_31_6_11_i_5;
  input \addressM[11] ;
  input \addressM[11]_0 ;
  input \addressM[11]_1 ;
  input \addressM[10]_3 ;
  input \ALUResult[11]_INST_0_i_1_0 ;
  input \ALUResult[11]_INST_0_i_1_1 ;
  input \ALUResult[11]_INST_0_i_1_2 ;
  input [0:0]\addressM[7] ;
  input rf_reg_r1_0_31_6_11_i_4;
  input \addressM[8] ;
  input \addressM[8]_0 ;
  input \addressM[8]_1 ;
  input [30:0]SrcA;
  input \addressM[8]_2 ;
  input \addressM[8]_3 ;
  input \addressM[5] ;
  input \addressM[5]_0 ;
  input \addressM[6] ;
  input \addressM[6]_0 ;
  input \addressM[6]_1 ;
  input \addressM[5]_1 ;
  input \ALUResult[6]_INST_0_i_1_0 ;
  input \ALUResult[6]_INST_0_i_1_1 ;
  input \ALUResult[6]_INST_0_i_1_2 ;
  input \ALUResult[6]_INST_0_i_1_3 ;
  input \addressM[21] ;
  input \addressM[21]_0 ;
  input \addressM[21]_1 ;
  input \addressM[21]_2 ;
  input \addressM[21]_3 ;
  input \ALUResult[22]_INST_0_i_3_0 ;
  input \ALUResult[23]_INST_0_i_3_0 ;
  input \ALUResult[21]_INST_0_i_3_0 ;
  input \addressM[22] ;
  input \addressM[22]_0 ;
  input \addressM[23] ;
  input \addressM[23]_0 ;
  input \addressM[18] ;
  input \addressM[18]_0 ;
  input \addressM[18]_1 ;
  input \addressM[18]_2 ;
  input \addressM[19] ;
  input \addressM[19]_0 ;
  input \addressM[18]_3 ;
  input \addressM[16] ;
  input \addressM[16]_0 ;
  input \addressM[17] ;
  input \addressM[17]_0 ;
  input \ALUResult[16]_INST_0_i_1_0 ;
  input \ALUResult[16]_INST_0_i_1_1 ;
  input \ALUResult[16]_INST_0_i_1_2 ;
  input \addressM[24] ;
  input \addressM[24]_0 ;
  input \addressM[25] ;
  input \addressM[26] ;
  input \addressM[26]_0 ;
  input \addressM[27] ;
  input [0:0]SrcA__0;
  input \addressM[28] ;
  input \addressM[28]_0 ;
  input \addressM[29] ;
  input \addressM[29]_0 ;
  input \addressM[31] ;
  input \ALUResult[31]_INST_0_i_3_0 ;
  input \ALUResult[31]_INST_0_i_3_1 ;
  input \ALUResult[31]_INST_0_i_3_2 ;
  input \addressM[31]_0 ;
  input \addressM[31]_1 ;
  input lt_carry__2;
  input [31:0]Q;
  input lt_carry__2_0;
  input \ALUResult[4]_INST_0_i_4 ;
  input [0:0]ImmSrc;
  input ALUSrc;
  input rd21__3;
  input \ALUResult[11]_INST_0_i_2 ;
  input \ALUResult[19]_INST_0_i_2 ;
  input [0:0]\ALUResult[0]_INST_0_i_8 ;
  input [0:0]ALUControl__0;
  input \ALUResult[0]_INST_0_i_3 ;
  input [0:0]CO;
  input [0:0]\q[31]_i_2_0 ;
  input \ALUResult[30]_INST_0_i_3_0 ;
  input \ALUResult[30]_INST_0_i_3_1 ;
  input \ALUResult[30]_INST_0_i_3_2 ;
  input \ALUResult[30]_INST_0_i_3_3 ;
  input \writeDataM[31] ;
  input \writeDataM[31]_0 ;
  input \writeDataM[30] ;
  input \writeDataM[29] ;
  input \writeDataM[28] ;
  input \writeDataM[27] ;
  input \writeDataM[26] ;
  input \writeDataM[25] ;
  input \writeDataM[24] ;
  input \writeDataM[23] ;
  input \writeDataM[22] ;
  input \writeDataM[21] ;
  input \writeDataM[20] ;
  input \writeDataM[19] ;
  input \writeDataM[18] ;
  input \writeDataM[17] ;
  input \writeDataM[16] ;

  wire [0:0]ALUControl__0;
  wire \ALUResult[0]_INST_0_i_3 ;
  wire [0:0]\ALUResult[0]_INST_0_i_8 ;
  wire \ALUResult[10]_INST_0_i_1_n_0 ;
  wire \ALUResult[10]_INST_0_i_4_n_0 ;
  wire \ALUResult[10]_INST_0_i_5_n_0 ;
  wire \ALUResult[11]_INST_0_i_1_0 ;
  wire \ALUResult[11]_INST_0_i_1_1 ;
  wire \ALUResult[11]_INST_0_i_1_2 ;
  wire \ALUResult[11]_INST_0_i_1_n_0 ;
  wire \ALUResult[11]_INST_0_i_2 ;
  wire \ALUResult[11]_INST_0_i_4_n_0 ;
  wire \ALUResult[11]_INST_0_i_5_n_0 ;
  wire \ALUResult[11]_INST_0_i_6_n_0 ;
  wire \ALUResult[12]_INST_0_i_5_n_0 ;
  wire \ALUResult[13]_INST_0_i_5_n_0 ;
  wire \ALUResult[14]_INST_0_i_5_n_0 ;
  wire \ALUResult[15]_INST_0_i_5_n_0 ;
  wire \ALUResult[16]_INST_0_i_1_0 ;
  wire \ALUResult[16]_INST_0_i_1_1 ;
  wire \ALUResult[16]_INST_0_i_1_2 ;
  wire \ALUResult[16]_INST_0_i_1_n_0 ;
  wire \ALUResult[16]_INST_0_i_4_n_0 ;
  wire \ALUResult[16]_INST_0_i_5_n_0 ;
  wire \ALUResult[17]_INST_0_i_1_n_0 ;
  wire \ALUResult[17]_INST_0_i_4_n_0 ;
  wire \ALUResult[17]_INST_0_i_5_n_0 ;
  wire \ALUResult[17]_INST_0_i_6_n_0 ;
  wire \ALUResult[18]_INST_0_i_1_n_0 ;
  wire \ALUResult[18]_INST_0_i_3_n_0 ;
  wire \ALUResult[18]_INST_0_i_5_n_0 ;
  wire \ALUResult[19]_INST_0_i_2 ;
  wire \ALUResult[19]_INST_0_i_5_n_0 ;
  wire \ALUResult[21]_INST_0_i_1_n_0 ;
  wire \ALUResult[21]_INST_0_i_3_0 ;
  wire \ALUResult[21]_INST_0_i_3_n_0 ;
  wire \ALUResult[22]_INST_0_i_1_n_0 ;
  wire \ALUResult[22]_INST_0_i_3_0 ;
  wire \ALUResult[22]_INST_0_i_3_n_0 ;
  wire \ALUResult[23]_INST_0_i_1_n_0 ;
  wire \ALUResult[23]_INST_0_i_3_0 ;
  wire \ALUResult[23]_INST_0_i_3_n_0 ;
  wire \ALUResult[24]_INST_0_i_1_n_0 ;
  wire \ALUResult[24]_INST_0_i_3_n_0 ;
  wire \ALUResult[24]_INST_0_i_7_n_0 ;
  wire \ALUResult[25]_INST_0_i_7_n_0 ;
  wire \ALUResult[25]_INST_0_i_8_n_0 ;
  wire \ALUResult[25]_INST_0_i_9_n_0 ;
  wire \ALUResult[26]_INST_0_i_10_n_0 ;
  wire \ALUResult[26]_INST_0_i_1_n_0 ;
  wire \ALUResult[26]_INST_0_i_3_n_0 ;
  wire \ALUResult[26]_INST_0_i_7_n_0 ;
  wire \ALUResult[26]_INST_0_i_8_n_0 ;
  wire \ALUResult[26]_INST_0_i_9_n_0 ;
  wire \ALUResult[27]_INST_0_i_7_n_0 ;
  wire \ALUResult[28]_INST_0_i_1_n_0 ;
  wire \ALUResult[28]_INST_0_i_3_n_0 ;
  wire \ALUResult[28]_INST_0_i_7_n_0 ;
  wire \ALUResult[29]_INST_0_i_1_n_0 ;
  wire \ALUResult[29]_INST_0_i_3_n_0 ;
  wire \ALUResult[29]_INST_0_i_7_n_0 ;
  wire \ALUResult[29]_INST_0_i_8_n_0 ;
  wire \ALUResult[29]_INST_0_i_9_n_0 ;
  wire \ALUResult[2]_INST_0_i_9_n_0 ;
  wire \ALUResult[30]_INST_0_i_3_0 ;
  wire \ALUResult[30]_INST_0_i_3_1 ;
  wire \ALUResult[30]_INST_0_i_3_2 ;
  wire \ALUResult[30]_INST_0_i_3_3 ;
  wire \ALUResult[30]_INST_0_i_8_0 ;
  wire \ALUResult[31]_INST_0_i_11_0 ;
  wire \ALUResult[31]_INST_0_i_11_1 ;
  wire \ALUResult[31]_INST_0_i_11_2 ;
  wire \ALUResult[31]_INST_0_i_14_n_0 ;
  wire \ALUResult[31]_INST_0_i_15 ;
  wire \ALUResult[31]_INST_0_i_15_0 ;
  wire \ALUResult[31]_INST_0_i_15_1 ;
  wire \ALUResult[31]_INST_0_i_15_2 ;
  wire \ALUResult[31]_INST_0_i_16_n_0 ;
  wire \ALUResult[31]_INST_0_i_1_n_0 ;
  wire \ALUResult[31]_INST_0_i_20_n_0 ;
  wire \ALUResult[31]_INST_0_i_3_0 ;
  wire \ALUResult[31]_INST_0_i_3_1 ;
  wire \ALUResult[31]_INST_0_i_3_2 ;
  wire \ALUResult[31]_INST_0_i_3_n_0 ;
  wire \ALUResult[31]_INST_0_i_5 ;
  wire \ALUResult[31]_INST_0_i_5_0 ;
  wire \ALUResult[31]_INST_0_i_5_1 ;
  wire \ALUResult[31]_INST_0_i_5_10 ;
  wire \ALUResult[31]_INST_0_i_5_11 ;
  wire \ALUResult[31]_INST_0_i_5_12 ;
  wire \ALUResult[31]_INST_0_i_5_13 ;
  wire \ALUResult[31]_INST_0_i_5_14 ;
  wire \ALUResult[31]_INST_0_i_5_2 ;
  wire \ALUResult[31]_INST_0_i_5_3 ;
  wire \ALUResult[31]_INST_0_i_5_4 ;
  wire \ALUResult[31]_INST_0_i_5_5 ;
  wire \ALUResult[31]_INST_0_i_5_6 ;
  wire \ALUResult[31]_INST_0_i_5_7 ;
  wire \ALUResult[31]_INST_0_i_5_8 ;
  wire \ALUResult[31]_INST_0_i_5_9 ;
  wire \ALUResult[31]_INST_0_i_8_n_0 ;
  wire \ALUResult[3]_INST_0_i_9_n_0 ;
  wire \ALUResult[4]_INST_0 ;
  wire \ALUResult[4]_INST_0_i_1 ;
  wire \ALUResult[4]_INST_0_i_10_n_0 ;
  wire \ALUResult[4]_INST_0_i_11_n_0 ;
  wire \ALUResult[4]_INST_0_i_12_n_0 ;
  wire \ALUResult[4]_INST_0_i_1_0 ;
  wire \ALUResult[4]_INST_0_i_1_1 ;
  wire \ALUResult[4]_INST_0_i_1_2 ;
  wire \ALUResult[4]_INST_0_i_1_3 ;
  wire \ALUResult[4]_INST_0_i_1_4 ;
  wire \ALUResult[4]_INST_0_i_4 ;
  wire \ALUResult[4]_INST_0_i_7_0 ;
  wire \ALUResult[5]_INST_0_i_1_n_0 ;
  wire \ALUResult[5]_INST_0_i_4_n_0 ;
  wire \ALUResult[5]_INST_0_i_5_n_0 ;
  wire \ALUResult[6]_INST_0_i_1_0 ;
  wire \ALUResult[6]_INST_0_i_1_1 ;
  wire \ALUResult[6]_INST_0_i_1_2 ;
  wire \ALUResult[6]_INST_0_i_1_3 ;
  wire \ALUResult[6]_INST_0_i_1_n_0 ;
  wire \ALUResult[6]_INST_0_i_3_n_0 ;
  wire \ALUResult[6]_INST_0_i_4_n_0 ;
  wire \ALUResult[6]_INST_0_i_5_n_0 ;
  wire \ALUResult[6]_INST_0_i_7_n_0 ;
  wire \ALUResult[7]_INST_0_i_6_n_0 ;
  wire \ALUResult[7]_INST_0_i_7_n_0 ;
  wire \ALUResult[8]_INST_0_0 ;
  wire \ALUResult[8]_INST_0_i_10_n_0 ;
  wire \ALUResult[8]_INST_0_i_1_n_0 ;
  wire \ALUResult[8]_INST_0_i_3_n_0 ;
  wire \ALUResult[8]_INST_0_i_5_n_0 ;
  wire \ALUResult[8]_INST_0_i_8_n_0 ;
  wire \ALUResult[9]_INST_0_i_5_n_0 ;
  wire ALUSrc;
  wire [0:0]CO;
  wire [28:0]D;
  wire [2:0]DI;
  wire [0:0]ImmSrc;
  wire [31:0]Instr;
  wire [28:0]PCPlus4;
  wire PCSrc10_out;
  wire [28:0]PCTarget;
  wire [31:0]Q;
  wire [18:0]ReadData;
  wire RegWrite;
  wire [31:0]Result;
  wire [0:0]ResultSrc;
  wire [3:0]S;
  wire [30:0]SrcA;
  wire [0:0]SrcA__0;
  wire [31:0]SrcB;
  wire [15:0]WriteData;
  wire \addressM[10] ;
  wire \addressM[10]_0 ;
  wire \addressM[10]_1 ;
  wire \addressM[10]_2 ;
  wire \addressM[10]_3 ;
  wire \addressM[11] ;
  wire \addressM[11]_0 ;
  wire \addressM[11]_1 ;
  wire \addressM[12] ;
  wire \addressM[13] ;
  wire \addressM[14] ;
  wire \addressM[14]_0 ;
  wire \addressM[14]_1 ;
  wire \addressM[15] ;
  wire \addressM[16] ;
  wire \addressM[16]_0 ;
  wire \addressM[17] ;
  wire \addressM[17]_0 ;
  wire \addressM[18] ;
  wire \addressM[18]_0 ;
  wire \addressM[18]_1 ;
  wire \addressM[18]_2 ;
  wire \addressM[18]_3 ;
  wire \addressM[19] ;
  wire \addressM[19]_0 ;
  wire \addressM[21] ;
  wire \addressM[21]_0 ;
  wire \addressM[21]_1 ;
  wire \addressM[21]_2 ;
  wire \addressM[21]_3 ;
  wire \addressM[22] ;
  wire \addressM[22]_0 ;
  wire \addressM[23] ;
  wire \addressM[23]_0 ;
  wire \addressM[24] ;
  wire \addressM[24]_0 ;
  wire \addressM[25] ;
  wire \addressM[26] ;
  wire \addressM[26]_0 ;
  wire \addressM[27] ;
  wire \addressM[28] ;
  wire \addressM[28]_0 ;
  wire \addressM[29] ;
  wire \addressM[29]_0 ;
  wire \addressM[31] ;
  wire \addressM[31]_0 ;
  wire \addressM[31]_1 ;
  wire \addressM[5] ;
  wire \addressM[5]_0 ;
  wire \addressM[5]_1 ;
  wire \addressM[6] ;
  wire \addressM[6]_0 ;
  wire \addressM[6]_1 ;
  wire [0:0]\addressM[7] ;
  wire \addressM[8] ;
  wire \addressM[8]_0 ;
  wire \addressM[8]_1 ;
  wire \addressM[8]_2 ;
  wire \addressM[8]_3 ;
  wire clk;
  wire lt_carry__0_i_10_n_0;
  wire lt_carry__0_i_11_n_0;
  wire lt_carry__0_i_12_n_0;
  wire lt_carry__0_i_9_n_0;
  wire lt_carry__1_i_10_n_0;
  wire lt_carry__1_i_11_n_0;
  wire lt_carry__1_i_12_n_0;
  wire lt_carry__1_i_9_n_0;
  wire lt_carry__2;
  wire lt_carry__2_0;
  wire lt_carry__2_i_10_n_0;
  wire lt_carry__2_i_11_n_0;
  wire lt_carry__2_i_12_n_0;
  wire lt_carry__2_i_9_n_0;
  wire lt_carry_i_11_n_0;
  wire lt_carry_i_12_n_0;
  wire lt_carry_i_13_n_0;
  wire lt_carry_i_14_n_0;
  wire [30:21]\main_alu/data6 ;
  wire \q[31]_i_10 ;
  wire \q[31]_i_15_n_0 ;
  wire \q[31]_i_16_n_0 ;
  wire \q[31]_i_17_n_0 ;
  wire [0:0]\q[31]_i_2_0 ;
  wire \q[31]_i_6_n_0 ;
  wire \q[31]_i_8_n_0 ;
  wire \q_reg[0] ;
  wire \q_reg[0]_0 ;
  wire \q_reg[0]_1 ;
  wire [3:0]\q_reg[11] ;
  wire \q_reg[12] ;
  wire \q_reg[13] ;
  wire [3:0]\q_reg[14] ;
  wire [3:0]\q_reg[14]_0 ;
  wire [3:0]\q_reg[14]_1 ;
  wire \q_reg[14]_2 ;
  wire [3:0]\q_reg[15] ;
  wire \q_reg[15]_0 ;
  wire [3:0]\q_reg[19] ;
  wire \q_reg[19]_0 ;
  wire \q_reg[1] ;
  wire \q_reg[1]_0 ;
  wire \q_reg[20] ;
  wire [3:0]\q_reg[22] ;
  wire [3:0]\q_reg[22]_0 ;
  wire [3:0]\q_reg[22]_1 ;
  wire [3:0]\q_reg[23] ;
  wire \q_reg[25] ;
  wire \q_reg[25]_0 ;
  wire \q_reg[25]_1 ;
  wire \q_reg[27] ;
  wire [3:0]\q_reg[27]_0 ;
  wire \q_reg[27]_1 ;
  wire \q_reg[2] ;
  wire \q_reg[2]_0 ;
  wire \q_reg[30] ;
  wire [3:0]\q_reg[30]_0 ;
  wire [3:0]\q_reg[30]_1 ;
  wire [0:0]\q_reg[30]_2 ;
  wire [3:0]\q_reg[30]_3 ;
  wire \q_reg[30]_4 ;
  wire [3:0]\q_reg[31] ;
  wire \q_reg[3] ;
  wire [3:0]\q_reg[3]_0 ;
  wire \q_reg[3]_1 ;
  wire \q_reg[3]_2 ;
  wire \q_reg[3]_3 ;
  wire \q_reg[3]_4 ;
  wire \q_reg[3]_5 ;
  wire \q_reg[4] ;
  wire \q_reg[4]_0 ;
  wire [15:0]\q_reg[5] ;
  wire \q_reg[5]_0 ;
  wire \q_reg[5]_1 ;
  wire [0:0]\q_reg[5]_2 ;
  wire [3:0]\q_reg[6] ;
  wire [3:0]\q_reg[7] ;
  wire \q_reg[7]_0 ;
  wire \q_reg[9] ;
  wire [31:0]rd10;
  wire [31:16]rd2;
  wire [7:0]rd20;
  wire [31:8]rd20_0;
  wire rd21__3;
  wire \readDataM[10] ;
  wire \readDataM[11] ;
  wire \readDataM[16] ;
  wire \readDataM[17] ;
  wire \readDataM[18] ;
  wire \readDataM[19] ;
  wire \readDataM[20] ;
  wire \readDataM[21] ;
  wire \readDataM[22] ;
  wire \readDataM[23] ;
  wire \readDataM[24] ;
  wire \readDataM[25] ;
  wire \readDataM[26] ;
  wire \readDataM[27] ;
  wire \readDataM[28] ;
  wire \readDataM[29] ;
  wire \readDataM[30] ;
  wire \readDataM[31] ;
  wire \readDataM[8] ;
  wire rf_reg_r1_0_31_0_5_i_8_n_0;
  wire rf_reg_r1_0_31_6_11_i_4;
  wire rf_reg_r1_0_31_6_11_i_5;
  wire rf_reg_r1_0_31_6_11_i_6;
  wire \writeDataM[16] ;
  wire \writeDataM[17] ;
  wire \writeDataM[18] ;
  wire \writeDataM[19] ;
  wire \writeDataM[20] ;
  wire \writeDataM[21] ;
  wire \writeDataM[22] ;
  wire \writeDataM[23] ;
  wire \writeDataM[24] ;
  wire \writeDataM[25] ;
  wire \writeDataM[26] ;
  wire \writeDataM[27] ;
  wire \writeDataM[28] ;
  wire \writeDataM[29] ;
  wire \writeDataM[30] ;
  wire \writeDataM[31] ;
  wire \writeDataM[31]_0 ;
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

  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT5 #(
    .INIT(32'h00000010)) 
    \ALUResult[0]_INST_0_i_10 
       (.I0(SrcB[2]),
        .I1(SrcB[1]),
        .I2(SrcA[0]),
        .I3(SrcB[3]),
        .I4(SrcB[4]),
        .O(\q_reg[0]_0 ));
  LUT4 #(
    .INIT(16'hBC88)) 
    \ALUResult[0]_INST_0_i_2 
       (.I0(\addressM[21]_3 ),
        .I1(SrcB[0]),
        .I2(SrcA[0]),
        .I3(\addressM[21]_2 ),
        .O(\q_reg[0]_1 ));
  LUT6 #(
    .INIT(64'hFFFEEEEEAAAAAAAA)) 
    \ALUResult[10]_INST_0 
       (.I0(\ALUResult[10]_INST_0_i_1_n_0 ),
        .I1(\addressM[10] ),
        .I2(\addressM[10]_0 ),
        .I3(\ALUResult[10]_INST_0_i_4_n_0 ),
        .I4(\addressM[10]_1 ),
        .I5(\addressM[10]_2 ),
        .O(\ALUResult[31]_INST_0_i_5_2 ));
  LUT5 #(
    .INIT(32'hEFEAAAAA)) 
    \ALUResult[10]_INST_0_i_1 
       (.I0(\ALUResult[10]_INST_0_i_5_n_0 ),
        .I1(\ALUResult[11]_INST_0_i_6_n_0 ),
        .I2(SrcB[0]),
        .I3(\addressM[10]_3 ),
        .I4(\addressM[14]_1 ),
        .O(\ALUResult[10]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT4 #(
    .INIT(16'hA808)) 
    \ALUResult[10]_INST_0_i_4 
       (.I0(\addressM[11]_1 ),
        .I1(\addressM[10]_3 ),
        .I2(SrcB[0]),
        .I3(\ALUResult[11]_INST_0_i_6_n_0 ),
        .O(\ALUResult[10]_INST_0_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hBC88)) 
    \ALUResult[10]_INST_0_i_5 
       (.I0(\addressM[21]_3 ),
        .I1(SrcB[10]),
        .I2(SrcA[10]),
        .I3(\addressM[21]_2 ),
        .O(\ALUResult[10]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h8AFF8A008A008A00)) 
    \ALUResult[10]_INST_0_i_7 
       (.I0(Instr[30]),
        .I1(Instr[6]),
        .I2(Instr[2]),
        .I3(ALUSrc),
        .I4(rd21__3),
        .I5(rd20_0[10]),
        .O(SrcB[10]));
  LUT6 #(
    .INIT(64'hFFFEEEEEAAAAAAAA)) 
    \ALUResult[11]_INST_0 
       (.I0(\ALUResult[11]_INST_0_i_1_n_0 ),
        .I1(\addressM[11] ),
        .I2(\addressM[11]_0 ),
        .I3(\ALUResult[11]_INST_0_i_4_n_0 ),
        .I4(\addressM[10]_1 ),
        .I5(\addressM[10]_2 ),
        .O(\ALUResult[31]_INST_0_i_5_3 ));
  LUT5 #(
    .INIT(32'hEFEAAAAA)) 
    \ALUResult[11]_INST_0_i_1 
       (.I0(\ALUResult[11]_INST_0_i_5_n_0 ),
        .I1(\addressM[12] ),
        .I2(SrcB[0]),
        .I3(\ALUResult[11]_INST_0_i_6_n_0 ),
        .I4(\addressM[14]_1 ),
        .O(\ALUResult[11]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT4 #(
    .INIT(16'hA808)) 
    \ALUResult[11]_INST_0_i_4 
       (.I0(\addressM[11]_1 ),
        .I1(\ALUResult[11]_INST_0_i_6_n_0 ),
        .I2(SrcB[0]),
        .I3(\addressM[12] ),
        .O(\ALUResult[11]_INST_0_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hBC88)) 
    \ALUResult[11]_INST_0_i_5 
       (.I0(\addressM[21]_3 ),
        .I1(SrcB[11]),
        .I2(SrcA[11]),
        .I3(\addressM[21]_2 ),
        .O(\ALUResult[11]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[11]_INST_0_i_6 
       (.I0(\q_reg[25] ),
        .I1(\ALUResult[11]_INST_0_i_1_0 ),
        .I2(SrcB[1]),
        .I3(\ALUResult[11]_INST_0_i_1_1 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[11]_INST_0_i_1_2 ),
        .O(\ALUResult[11]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h8AFF8A008A008A00)) 
    \ALUResult[11]_INST_0_i_7 
       (.I0(\ALUResult[11]_INST_0_i_2 ),
        .I1(Instr[6]),
        .I2(Instr[2]),
        .I3(ALUSrc),
        .I4(rd21__3),
        .I5(rd20_0[11]),
        .O(SrcB[11]));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \ALUResult[11]_INST_0_i_9 
       (.I0(Instr[21]),
        .I1(\ALUResult[4]_INST_0_i_4 ),
        .I2(Instr[8]),
        .I3(ImmSrc),
        .I4(ALUSrc),
        .I5(\q_reg[5] [1]),
        .O(SrcB[1]));
  LUT5 #(
    .INIT(32'hEFEAAAAA)) 
    \ALUResult[12]_INST_0_i_1 
       (.I0(\ALUResult[12]_INST_0_i_5_n_0 ),
        .I1(\addressM[13] ),
        .I2(SrcB[0]),
        .I3(\addressM[12] ),
        .I4(\addressM[14]_1 ),
        .O(\ALUResult[4]_INST_0_i_1_2 ));
  LUT4 #(
    .INIT(16'hBC88)) 
    \ALUResult[12]_INST_0_i_5 
       (.I0(\addressM[21]_3 ),
        .I1(SrcB[12]),
        .I2(SrcA[12]),
        .I3(\addressM[21]_2 ),
        .O(\ALUResult[12]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hD8CCFFFFD8CC0000)) 
    \ALUResult[12]_INST_0_i_7 
       (.I0(ImmSrc),
        .I1(Instr[12]),
        .I2(Instr[31]),
        .I3(\ALUResult[19]_INST_0_i_2 ),
        .I4(ALUSrc),
        .I5(\q_reg[5] [12]),
        .O(SrcB[12]));
  LUT5 #(
    .INIT(32'hEFEAAAAA)) 
    \ALUResult[13]_INST_0_i_1 
       (.I0(\ALUResult[13]_INST_0_i_5_n_0 ),
        .I1(\addressM[14]_0 ),
        .I2(SrcB[0]),
        .I3(\addressM[13] ),
        .I4(\addressM[14]_1 ),
        .O(\ALUResult[4]_INST_0_i_1_1 ));
  LUT4 #(
    .INIT(16'hBC88)) 
    \ALUResult[13]_INST_0_i_5 
       (.I0(\addressM[21]_3 ),
        .I1(SrcB[13]),
        .I2(SrcA[13]),
        .I3(\addressM[21]_2 ),
        .O(\ALUResult[13]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hD8CCFFFFD8CC0000)) 
    \ALUResult[13]_INST_0_i_7 
       (.I0(ImmSrc),
        .I1(Instr[13]),
        .I2(Instr[31]),
        .I3(\ALUResult[19]_INST_0_i_2 ),
        .I4(ALUSrc),
        .I5(\q_reg[5] [13]),
        .O(SrcB[13]));
  LUT5 #(
    .INIT(32'hEFEAAAAA)) 
    \ALUResult[14]_INST_0_i_1 
       (.I0(\ALUResult[14]_INST_0_i_5_n_0 ),
        .I1(\addressM[14] ),
        .I2(SrcB[0]),
        .I3(\addressM[14]_0 ),
        .I4(\addressM[14]_1 ),
        .O(\ALUResult[4]_INST_0_i_1 ));
  LUT4 #(
    .INIT(16'hBC88)) 
    \ALUResult[14]_INST_0_i_5 
       (.I0(\addressM[21]_3 ),
        .I1(SrcB[14]),
        .I2(SrcA[14]),
        .I3(\addressM[21]_2 ),
        .O(\ALUResult[14]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hD8CCFFFFD8CC0000)) 
    \ALUResult[14]_INST_0_i_7 
       (.I0(ImmSrc),
        .I1(Instr[14]),
        .I2(Instr[31]),
        .I3(\ALUResult[19]_INST_0_i_2 ),
        .I4(ALUSrc),
        .I5(\q_reg[5] [14]),
        .O(SrcB[14]));
  LUT5 #(
    .INIT(32'hEFEAAAAA)) 
    \ALUResult[15]_INST_0_i_1 
       (.I0(\ALUResult[15]_INST_0_i_5_n_0 ),
        .I1(\addressM[15] ),
        .I2(SrcB[0]),
        .I3(\addressM[14] ),
        .I4(\addressM[14]_1 ),
        .O(\ALUResult[4]_INST_0_i_1_0 ));
  LUT4 #(
    .INIT(16'hBC88)) 
    \ALUResult[15]_INST_0_i_5 
       (.I0(\addressM[21]_3 ),
        .I1(SrcB[15]),
        .I2(SrcA[15]),
        .I3(\addressM[21]_2 ),
        .O(\ALUResult[15]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hD8CCFFFFD8CC0000)) 
    \ALUResult[15]_INST_0_i_7 
       (.I0(ImmSrc),
        .I1(Instr[15]),
        .I2(Instr[31]),
        .I3(\ALUResult[19]_INST_0_i_2 ),
        .I4(ALUSrc),
        .I5(\q_reg[5] [15]),
        .O(SrcB[15]));
  LUT6 #(
    .INIT(64'hFFFEEEEEAAAAAAAA)) 
    \ALUResult[16]_INST_0 
       (.I0(\ALUResult[16]_INST_0_i_1_n_0 ),
        .I1(\addressM[16] ),
        .I2(\addressM[16]_0 ),
        .I3(\ALUResult[16]_INST_0_i_4_n_0 ),
        .I4(\addressM[10]_1 ),
        .I5(\addressM[10]_2 ),
        .O(\ALUResult[31]_INST_0_i_5_4 ));
  LUT5 #(
    .INIT(32'hEFEAAAAA)) 
    \ALUResult[16]_INST_0_i_1 
       (.I0(\ALUResult[16]_INST_0_i_5_n_0 ),
        .I1(\ALUResult[17]_INST_0_i_6_n_0 ),
        .I2(SrcB[0]),
        .I3(\addressM[15] ),
        .I4(\addressM[14]_1 ),
        .O(\ALUResult[16]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT4 #(
    .INIT(16'hA808)) 
    \ALUResult[16]_INST_0_i_4 
       (.I0(\addressM[11]_1 ),
        .I1(\addressM[15] ),
        .I2(SrcB[0]),
        .I3(\ALUResult[17]_INST_0_i_6_n_0 ),
        .O(\ALUResult[16]_INST_0_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hBC88)) 
    \ALUResult[16]_INST_0_i_5 
       (.I0(\addressM[21]_3 ),
        .I1(SrcB[16]),
        .I2(SrcA[16]),
        .I3(\addressM[21]_2 ),
        .O(\ALUResult[16]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hD8CCFFFFD8CC0000)) 
    \ALUResult[16]_INST_0_i_7 
       (.I0(ImmSrc),
        .I1(Instr[16]),
        .I2(Instr[31]),
        .I3(\ALUResult[19]_INST_0_i_2 ),
        .I4(ALUSrc),
        .I5(rd2[16]),
        .O(SrcB[16]));
  LUT6 #(
    .INIT(64'hFFFEEEEEAAAAAAAA)) 
    \ALUResult[17]_INST_0 
       (.I0(\ALUResult[17]_INST_0_i_1_n_0 ),
        .I1(\addressM[17] ),
        .I2(\addressM[17]_0 ),
        .I3(\ALUResult[17]_INST_0_i_4_n_0 ),
        .I4(\addressM[10]_1 ),
        .I5(\addressM[10]_2 ),
        .O(\ALUResult[31]_INST_0_i_5_5 ));
  LUT5 #(
    .INIT(32'hEFEAAAAA)) 
    \ALUResult[17]_INST_0_i_1 
       (.I0(\ALUResult[17]_INST_0_i_5_n_0 ),
        .I1(\addressM[18]_3 ),
        .I2(SrcB[0]),
        .I3(\ALUResult[17]_INST_0_i_6_n_0 ),
        .I4(\addressM[14]_1 ),
        .O(\ALUResult[17]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00AC)) 
    \ALUResult[17]_INST_0_i_10 
       (.I0(SrcA[25]),
        .I1(SrcA[17]),
        .I2(SrcB[3]),
        .I3(SrcB[4]),
        .O(\q_reg[25] ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT4 #(
    .INIT(16'hA808)) 
    \ALUResult[17]_INST_0_i_4 
       (.I0(\addressM[11]_1 ),
        .I1(\ALUResult[17]_INST_0_i_6_n_0 ),
        .I2(SrcB[0]),
        .I3(\addressM[18]_3 ),
        .O(\ALUResult[17]_INST_0_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hBC88)) 
    \ALUResult[17]_INST_0_i_5 
       (.I0(\addressM[21]_3 ),
        .I1(SrcB[17]),
        .I2(SrcA[17]),
        .I3(\addressM[21]_2 ),
        .O(\ALUResult[17]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[17]_INST_0_i_6 
       (.I0(\ALUResult[16]_INST_0_i_1_0 ),
        .I1(\ALUResult[16]_INST_0_i_1_1 ),
        .I2(SrcB[1]),
        .I3(\ALUResult[16]_INST_0_i_1_2 ),
        .I4(SrcB[2]),
        .I5(\q_reg[25] ),
        .O(\ALUResult[17]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hD8CCFFFFD8CC0000)) 
    \ALUResult[17]_INST_0_i_7 
       (.I0(ImmSrc),
        .I1(Instr[17]),
        .I2(Instr[31]),
        .I3(\ALUResult[19]_INST_0_i_2 ),
        .I4(ALUSrc),
        .I5(rd2[17]),
        .O(SrcB[17]));
  LUT6 #(
    .INIT(64'hFFFEEEEEAAAAAAAA)) 
    \ALUResult[18]_INST_0 
       (.I0(\ALUResult[18]_INST_0_i_1_n_0 ),
        .I1(\addressM[18] ),
        .I2(\ALUResult[18]_INST_0_i_3_n_0 ),
        .I3(\addressM[18]_0 ),
        .I4(\addressM[10]_1 ),
        .I5(\addressM[10]_2 ),
        .O(\ALUResult[31]_INST_0_i_5_6 ));
  LUT5 #(
    .INIT(32'hEFEAAAAA)) 
    \ALUResult[18]_INST_0_i_1 
       (.I0(\ALUResult[18]_INST_0_i_5_n_0 ),
        .I1(\addressM[19]_0 ),
        .I2(SrcB[0]),
        .I3(\addressM[18]_3 ),
        .I4(\addressM[14]_1 ),
        .O(\ALUResult[18]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \ALUResult[18]_INST_0_i_3 
       (.I0(\addressM[18]_1 ),
        .I1(\ALUResult[31]_INST_0_i_11_1 ),
        .I2(\addressM[18]_2 ),
        .I3(\ALUResult[31]_INST_0_i_11_0 ),
        .O(\ALUResult[18]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hBC88)) 
    \ALUResult[18]_INST_0_i_5 
       (.I0(\addressM[21]_3 ),
        .I1(SrcB[18]),
        .I2(SrcA[18]),
        .I3(\addressM[21]_2 ),
        .O(\ALUResult[18]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hD8CCFFFFD8CC0000)) 
    \ALUResult[18]_INST_0_i_7 
       (.I0(ImmSrc),
        .I1(Instr[18]),
        .I2(Instr[31]),
        .I3(\ALUResult[19]_INST_0_i_2 ),
        .I4(ALUSrc),
        .I5(rd2[18]),
        .O(SrcB[18]));
  LUT5 #(
    .INIT(32'hEFEAAAAA)) 
    \ALUResult[19]_INST_0_i_1 
       (.I0(\ALUResult[19]_INST_0_i_5_n_0 ),
        .I1(\addressM[19] ),
        .I2(SrcB[0]),
        .I3(\addressM[19]_0 ),
        .I4(\addressM[14]_1 ),
        .O(\ALUResult[4]_INST_0_i_1_4 ));
  LUT4 #(
    .INIT(16'hBC88)) 
    \ALUResult[19]_INST_0_i_5 
       (.I0(\addressM[21]_3 ),
        .I1(SrcB[19]),
        .I2(SrcA[19]),
        .I3(\addressM[21]_2 ),
        .O(\ALUResult[19]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hD8CCFFFFD8CC0000)) 
    \ALUResult[19]_INST_0_i_8 
       (.I0(ImmSrc),
        .I1(Instr[19]),
        .I2(Instr[31]),
        .I3(\ALUResult[19]_INST_0_i_2 ),
        .I4(ALUSrc),
        .I5(rd2[19]),
        .O(SrcB[19]));
  LUT4 #(
    .INIT(16'hBC88)) 
    \ALUResult[1]_INST_0_i_2 
       (.I0(\addressM[21]_3 ),
        .I1(SrcB[1]),
        .I2(SrcA[1]),
        .I3(\addressM[21]_2 ),
        .O(\q_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hF080000080800000)) 
    \ALUResult[1]_INST_0_i_6 
       (.I0(SrcA[0]),
        .I1(\ALUResult[31]_INST_0_i_11_1 ),
        .I2(\ALUResult[31]_INST_0_i_20_n_0 ),
        .I3(SrcA[1]),
        .I4(\ALUResult[4]_INST_0_i_7_0 ),
        .I5(\ALUResult[31]_INST_0_i_11_0 ),
        .O(\q_reg[0] ));
  LUT6 #(
    .INIT(64'hB8FFB800B800B800)) 
    \ALUResult[20]_INST_0_i_4 
       (.I0(Instr[20]),
        .I1(ImmSrc),
        .I2(Instr[31]),
        .I3(ALUSrc),
        .I4(rd21__3),
        .I5(rd20_0[20]),
        .O(SrcB[20]));
  LUT5 #(
    .INIT(32'hFEEEAAAA)) 
    \ALUResult[21]_INST_0 
       (.I0(\ALUResult[21]_INST_0_i_1_n_0 ),
        .I1(\addressM[21] ),
        .I2(\ALUResult[21]_INST_0_i_3_n_0 ),
        .I3(\addressM[10]_1 ),
        .I4(\addressM[10]_2 ),
        .O(\ALUResult[31]_INST_0_i_5_7 ));
  LUT6 #(
    .INIT(64'hFFFFF828F828F828)) 
    \ALUResult[21]_INST_0_i_1 
       (.I0(\addressM[21]_2 ),
        .I1(SrcA[21]),
        .I2(SrcB[21]),
        .I3(\addressM[21]_3 ),
        .I4(\main_alu/data6 [21]),
        .I5(\addressM[14]_1 ),
        .O(\ALUResult[21]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \ALUResult[21]_INST_0_i_3 
       (.I0(\ALUResult[31]_INST_0_i_11_0 ),
        .I1(\addressM[21]_0 ),
        .I2(\ALUResult[31]_INST_0_i_11_1 ),
        .I3(\addressM[21]_1 ),
        .I4(\main_alu/data6 [21]),
        .I5(\addressM[11]_1 ),
        .O(\ALUResult[21]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFB800B800B800)) 
    \ALUResult[21]_INST_0_i_4 
       (.I0(Instr[21]),
        .I1(ImmSrc),
        .I2(Instr[31]),
        .I3(ALUSrc),
        .I4(rd21__3),
        .I5(rd20_0[21]),
        .O(SrcB[21]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[21]_INST_0_i_5 
       (.I0(\ALUResult[24]_INST_0_i_7_n_0 ),
        .I1(\ALUResult[22]_INST_0_i_3_0 ),
        .I2(SrcB[0]),
        .I3(\ALUResult[23]_INST_0_i_3_0 ),
        .I4(SrcB[1]),
        .I5(\ALUResult[21]_INST_0_i_3_0 ),
        .O(\main_alu/data6 [21]));
  LUT5 #(
    .INIT(32'hFEEEAAAA)) 
    \ALUResult[22]_INST_0 
       (.I0(\ALUResult[22]_INST_0_i_1_n_0 ),
        .I1(\addressM[22] ),
        .I2(\ALUResult[22]_INST_0_i_3_n_0 ),
        .I3(\addressM[10]_1 ),
        .I4(\addressM[10]_2 ),
        .O(\ALUResult[31]_INST_0_i_5_8 ));
  LUT6 #(
    .INIT(64'hFFFFF828F828F828)) 
    \ALUResult[22]_INST_0_i_1 
       (.I0(\addressM[21]_2 ),
        .I1(SrcA[22]),
        .I2(SrcB[22]),
        .I3(\addressM[21]_3 ),
        .I4(\main_alu/data6 [22]),
        .I5(\addressM[14]_1 ),
        .O(\ALUResult[22]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \ALUResult[22]_INST_0_i_3 
       (.I0(\ALUResult[31]_INST_0_i_11_0 ),
        .I1(\addressM[22]_0 ),
        .I2(\ALUResult[31]_INST_0_i_11_1 ),
        .I3(\addressM[21]_0 ),
        .I4(\main_alu/data6 [22]),
        .I5(\addressM[11]_1 ),
        .O(\ALUResult[22]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFB800B800B800)) 
    \ALUResult[22]_INST_0_i_4 
       (.I0(Instr[22]),
        .I1(ImmSrc),
        .I2(Instr[31]),
        .I3(ALUSrc),
        .I4(rd21__3),
        .I5(rd20_0[22]),
        .O(SrcB[22]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[22]_INST_0_i_5 
       (.I0(\ALUResult[25]_INST_0_i_9_n_0 ),
        .I1(\ALUResult[23]_INST_0_i_3_0 ),
        .I2(SrcB[0]),
        .I3(\ALUResult[24]_INST_0_i_7_n_0 ),
        .I4(SrcB[1]),
        .I5(\ALUResult[22]_INST_0_i_3_0 ),
        .O(\main_alu/data6 [22]));
  LUT5 #(
    .INIT(32'hFEEEAAAA)) 
    \ALUResult[23]_INST_0 
       (.I0(\ALUResult[23]_INST_0_i_1_n_0 ),
        .I1(\addressM[23] ),
        .I2(\ALUResult[23]_INST_0_i_3_n_0 ),
        .I3(\addressM[10]_1 ),
        .I4(\addressM[10]_2 ),
        .O(\ALUResult[31]_INST_0_i_5_9 ));
  LUT6 #(
    .INIT(64'hFFFFF828F828F828)) 
    \ALUResult[23]_INST_0_i_1 
       (.I0(\addressM[21]_2 ),
        .I1(SrcA[23]),
        .I2(SrcB[23]),
        .I3(\addressM[21]_3 ),
        .I4(\main_alu/data6 [23]),
        .I5(\addressM[14]_1 ),
        .O(\ALUResult[23]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \ALUResult[23]_INST_0_i_3 
       (.I0(\ALUResult[31]_INST_0_i_11_0 ),
        .I1(\addressM[23]_0 ),
        .I2(\ALUResult[31]_INST_0_i_11_1 ),
        .I3(\addressM[22]_0 ),
        .I4(\main_alu/data6 [23]),
        .I5(\addressM[11]_1 ),
        .O(\ALUResult[23]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFB800B800B800)) 
    \ALUResult[23]_INST_0_i_4 
       (.I0(Instr[23]),
        .I1(ImmSrc),
        .I2(Instr[31]),
        .I3(ALUSrc),
        .I4(rd21__3),
        .I5(rd20_0[23]),
        .O(SrcB[23]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[23]_INST_0_i_5 
       (.I0(\ALUResult[25]_INST_0_i_8_n_0 ),
        .I1(\ALUResult[24]_INST_0_i_7_n_0 ),
        .I2(SrcB[0]),
        .I3(\ALUResult[25]_INST_0_i_9_n_0 ),
        .I4(SrcB[1]),
        .I5(\ALUResult[23]_INST_0_i_3_0 ),
        .O(\main_alu/data6 [23]));
  LUT5 #(
    .INIT(32'hFEEEAAAA)) 
    \ALUResult[24]_INST_0 
       (.I0(\ALUResult[24]_INST_0_i_1_n_0 ),
        .I1(\addressM[24] ),
        .I2(\ALUResult[24]_INST_0_i_3_n_0 ),
        .I3(\addressM[10]_1 ),
        .I4(\addressM[10]_2 ),
        .O(\ALUResult[31]_INST_0_i_5_10 ));
  LUT6 #(
    .INIT(64'hFFFFF828F828F828)) 
    \ALUResult[24]_INST_0_i_1 
       (.I0(\addressM[21]_2 ),
        .I1(SrcA[24]),
        .I2(SrcB[24]),
        .I3(\addressM[21]_3 ),
        .I4(\main_alu/data6 [24]),
        .I5(\addressM[14]_1 ),
        .O(\ALUResult[24]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \ALUResult[24]_INST_0_i_3 
       (.I0(\ALUResult[31]_INST_0_i_11_0 ),
        .I1(\addressM[24]_0 ),
        .I2(\ALUResult[31]_INST_0_i_11_1 ),
        .I3(\addressM[23]_0 ),
        .I4(\main_alu/data6 [24]),
        .I5(\addressM[11]_1 ),
        .O(\ALUResult[24]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFB800B800B800)) 
    \ALUResult[24]_INST_0_i_4 
       (.I0(Instr[24]),
        .I1(ImmSrc),
        .I2(Instr[31]),
        .I3(ALUSrc),
        .I4(rd21__3),
        .I5(rd20_0[24]),
        .O(SrcB[24]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[24]_INST_0_i_5 
       (.I0(\ALUResult[27]_INST_0_i_7_n_0 ),
        .I1(\ALUResult[25]_INST_0_i_9_n_0 ),
        .I2(SrcB[0]),
        .I3(\ALUResult[25]_INST_0_i_8_n_0 ),
        .I4(SrcB[1]),
        .I5(\ALUResult[24]_INST_0_i_7_n_0 ),
        .O(\main_alu/data6 [24]));
  LUT5 #(
    .INIT(32'h000B0008)) 
    \ALUResult[24]_INST_0_i_7 
       (.I0(SrcA[28]),
        .I1(SrcB[2]),
        .I2(SrcB[4]),
        .I3(SrcB[3]),
        .I4(SrcA[24]),
        .O(\ALUResult[24]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF828F828F828)) 
    \ALUResult[25]_INST_0_i_1 
       (.I0(\addressM[21]_2 ),
        .I1(SrcA[25]),
        .I2(SrcB[25]),
        .I3(\addressM[21]_3 ),
        .I4(\main_alu/data6 [25]),
        .I5(\addressM[14]_1 ),
        .O(\q_reg[25]_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \ALUResult[25]_INST_0_i_3 
       (.I0(\ALUResult[31]_INST_0_i_11_0 ),
        .I1(\addressM[25] ),
        .I2(\ALUResult[31]_INST_0_i_11_1 ),
        .I3(\addressM[24]_0 ),
        .I4(\main_alu/data6 [25]),
        .I5(\addressM[11]_1 ),
        .O(\ALUResult[31]_INST_0_i_15_0 ));
  LUT6 #(
    .INIT(64'hB8FFB800B800B800)) 
    \ALUResult[25]_INST_0_i_4 
       (.I0(Instr[25]),
        .I1(ImmSrc),
        .I2(Instr[31]),
        .I3(ALUSrc),
        .I4(rd21__3),
        .I5(rd20_0[25]),
        .O(SrcB[25]));
  LUT6 #(
    .INIT(64'hAFA0EFEFAFA0E0E0)) 
    \ALUResult[25]_INST_0_i_5 
       (.I0(\ALUResult[25]_INST_0_i_7_n_0 ),
        .I1(\ALUResult[25]_INST_0_i_8_n_0 ),
        .I2(SrcB[0]),
        .I3(\ALUResult[27]_INST_0_i_7_n_0 ),
        .I4(SrcB[1]),
        .I5(\ALUResult[25]_INST_0_i_9_n_0 ),
        .O(\main_alu/data6 [25]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT5 #(
    .INIT(32'h00000040)) 
    \ALUResult[25]_INST_0_i_7 
       (.I0(SrcB[2]),
        .I1(SrcB[1]),
        .I2(SrcA[28]),
        .I3(SrcB[3]),
        .I4(SrcB[4]),
        .O(\ALUResult[25]_INST_0_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h000B0008)) 
    \ALUResult[25]_INST_0_i_8 
       (.I0(SrcA[30]),
        .I1(SrcB[2]),
        .I2(SrcB[4]),
        .I3(SrcB[3]),
        .I4(SrcA[26]),
        .O(\ALUResult[25]_INST_0_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h000B0008)) 
    \ALUResult[25]_INST_0_i_9 
       (.I0(SrcA[29]),
        .I1(SrcB[2]),
        .I2(SrcB[4]),
        .I3(SrcB[3]),
        .I4(SrcA[25]),
        .O(\ALUResult[25]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFEEEAAAA)) 
    \ALUResult[26]_INST_0 
       (.I0(\ALUResult[26]_INST_0_i_1_n_0 ),
        .I1(\addressM[26] ),
        .I2(\ALUResult[26]_INST_0_i_3_n_0 ),
        .I3(\addressM[10]_1 ),
        .I4(\addressM[10]_2 ),
        .O(\ALUResult[31]_INST_0_i_5_11 ));
  LUT6 #(
    .INIT(64'hFFFFF828F828F828)) 
    \ALUResult[26]_INST_0_i_1 
       (.I0(\addressM[21]_2 ),
        .I1(SrcA[26]),
        .I2(SrcB[26]),
        .I3(\addressM[21]_3 ),
        .I4(\main_alu/data6 [26]),
        .I5(\addressM[14]_1 ),
        .O(\ALUResult[26]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000003020002)) 
    \ALUResult[26]_INST_0_i_10 
       (.I0(SrcA[26]),
        .I1(SrcB[3]),
        .I2(SrcB[4]),
        .I3(SrcB[2]),
        .I4(SrcA[30]),
        .I5(SrcB[1]),
        .O(\ALUResult[26]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \ALUResult[26]_INST_0_i_3 
       (.I0(\ALUResult[31]_INST_0_i_11_0 ),
        .I1(\addressM[26]_0 ),
        .I2(\ALUResult[31]_INST_0_i_11_1 ),
        .I3(\addressM[25] ),
        .I4(\main_alu/data6 [26]),
        .I5(\addressM[11]_1 ),
        .O(\ALUResult[26]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFB800B800B800)) 
    \ALUResult[26]_INST_0_i_4 
       (.I0(Instr[26]),
        .I1(ImmSrc),
        .I2(Instr[31]),
        .I3(ALUSrc),
        .I4(rd21__3),
        .I5(rd20_0[26]),
        .O(SrcB[26]));
  LUT6 #(
    .INIT(64'hEFEFCFCFEFE0C0C0)) 
    \ALUResult[26]_INST_0_i_5 
       (.I0(\ALUResult[29]_INST_0_i_9_n_0 ),
        .I1(\ALUResult[26]_INST_0_i_7_n_0 ),
        .I2(SrcB[0]),
        .I3(\ALUResult[26]_INST_0_i_8_n_0 ),
        .I4(\ALUResult[26]_INST_0_i_9_n_0 ),
        .I5(\ALUResult[26]_INST_0_i_10_n_0 ),
        .O(\main_alu/data6 [26]));
  LUT6 #(
    .INIT(64'h0000000003020002)) 
    \ALUResult[26]_INST_0_i_7 
       (.I0(SrcA[27]),
        .I1(SrcB[3]),
        .I2(SrcB[4]),
        .I3(SrcB[2]),
        .I4(SrcA__0),
        .I5(SrcB[1]),
        .O(\ALUResult[26]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h1000100011111000)) 
    \ALUResult[26]_INST_0_i_8 
       (.I0(SrcB[4]),
        .I1(SrcB[3]),
        .I2(lt_carry__2_0),
        .I3(rd10[28]),
        .I4(Q[28]),
        .I5(lt_carry__2),
        .O(\ALUResult[26]_INST_0_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ALUResult[26]_INST_0_i_9 
       (.I0(SrcB[1]),
        .I1(SrcB[2]),
        .O(\ALUResult[26]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF828F828F828)) 
    \ALUResult[27]_INST_0_i_1 
       (.I0(\addressM[21]_2 ),
        .I1(SrcA[27]),
        .I2(SrcB[27]),
        .I3(\addressM[21]_3 ),
        .I4(\main_alu/data6 [27]),
        .I5(\addressM[14]_1 ),
        .O(\q_reg[27] ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \ALUResult[27]_INST_0_i_3 
       (.I0(\ALUResult[31]_INST_0_i_11_0 ),
        .I1(\addressM[27] ),
        .I2(\ALUResult[31]_INST_0_i_11_1 ),
        .I3(\addressM[26]_0 ),
        .I4(\main_alu/data6 [27]),
        .I5(\addressM[11]_1 ),
        .O(\ALUResult[31]_INST_0_i_15_1 ));
  LUT6 #(
    .INIT(64'hB8FFB800B800B800)) 
    \ALUResult[27]_INST_0_i_4 
       (.I0(Instr[27]),
        .I1(ImmSrc),
        .I2(Instr[31]),
        .I3(ALUSrc),
        .I4(rd21__3),
        .I5(rd20_0[27]),
        .O(SrcB[27]));
  LUT6 #(
    .INIT(64'h88B8BBBB88B88888)) 
    \ALUResult[27]_INST_0_i_5 
       (.I0(\ALUResult[28]_INST_0_i_7_n_0 ),
        .I1(SrcB[0]),
        .I2(\ALUResult[29]_INST_0_i_9_n_0 ),
        .I3(SrcB[2]),
        .I4(SrcB[1]),
        .I5(\ALUResult[27]_INST_0_i_7_n_0 ),
        .O(\main_alu/data6 [27]));
  LUT5 #(
    .INIT(32'h000B0008)) 
    \ALUResult[27]_INST_0_i_7 
       (.I0(SrcA__0),
        .I1(SrcB[2]),
        .I2(SrcB[4]),
        .I3(SrcB[3]),
        .I4(SrcA[27]),
        .O(\ALUResult[27]_INST_0_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFEEEAAAA)) 
    \ALUResult[28]_INST_0 
       (.I0(\ALUResult[28]_INST_0_i_1_n_0 ),
        .I1(\addressM[28] ),
        .I2(\ALUResult[28]_INST_0_i_3_n_0 ),
        .I3(\addressM[10]_1 ),
        .I4(\addressM[10]_2 ),
        .O(\ALUResult[31]_INST_0_i_5_12 ));
  LUT6 #(
    .INIT(64'hFFFFF828F828F828)) 
    \ALUResult[28]_INST_0_i_1 
       (.I0(\addressM[21]_2 ),
        .I1(SrcA[28]),
        .I2(SrcB[28]),
        .I3(\addressM[21]_3 ),
        .I4(\main_alu/data6 [28]),
        .I5(\addressM[14]_1 ),
        .O(\ALUResult[28]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \ALUResult[28]_INST_0_i_3 
       (.I0(\ALUResult[31]_INST_0_i_11_0 ),
        .I1(\addressM[28]_0 ),
        .I2(\ALUResult[31]_INST_0_i_11_1 ),
        .I3(\addressM[27] ),
        .I4(\main_alu/data6 [28]),
        .I5(\addressM[11]_1 ),
        .O(\ALUResult[28]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFB800B800B800)) 
    \ALUResult[28]_INST_0_i_4 
       (.I0(Instr[28]),
        .I1(ImmSrc),
        .I2(Instr[31]),
        .I3(ALUSrc),
        .I4(rd21__3),
        .I5(rd20_0[28]),
        .O(SrcB[28]));
  LUT6 #(
    .INIT(64'h00ACFFFF00AC0000)) 
    \ALUResult[28]_INST_0_i_5 
       (.I0(\ALUResult[29]_INST_0_i_8_n_0 ),
        .I1(\ALUResult[29]_INST_0_i_9_n_0 ),
        .I2(SrcB[1]),
        .I3(SrcB[2]),
        .I4(SrcB[0]),
        .I5(\ALUResult[28]_INST_0_i_7_n_0 ),
        .O(\main_alu/data6 [28]));
  LUT6 #(
    .INIT(64'h0000000002020300)) 
    \ALUResult[28]_INST_0_i_7 
       (.I0(SrcA[30]),
        .I1(SrcB[4]),
        .I2(SrcB[3]),
        .I3(SrcA[28]),
        .I4(SrcB[1]),
        .I5(SrcB[2]),
        .O(\ALUResult[28]_INST_0_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFEEEAAAA)) 
    \ALUResult[29]_INST_0 
       (.I0(\ALUResult[29]_INST_0_i_1_n_0 ),
        .I1(\addressM[29] ),
        .I2(\ALUResult[29]_INST_0_i_3_n_0 ),
        .I3(\addressM[10]_1 ),
        .I4(\addressM[10]_2 ),
        .O(\ALUResult[31]_INST_0_i_5_13 ));
  LUT6 #(
    .INIT(64'hFFFFF828F828F828)) 
    \ALUResult[29]_INST_0_i_1 
       (.I0(\addressM[21]_2 ),
        .I1(SrcA[29]),
        .I2(SrcB[29]),
        .I3(\addressM[21]_3 ),
        .I4(\main_alu/data6 [29]),
        .I5(\addressM[14]_1 ),
        .O(\ALUResult[29]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \ALUResult[29]_INST_0_i_3 
       (.I0(\ALUResult[31]_INST_0_i_11_0 ),
        .I1(\addressM[29]_0 ),
        .I2(\ALUResult[31]_INST_0_i_11_1 ),
        .I3(\addressM[28]_0 ),
        .I4(\main_alu/data6 [29]),
        .I5(\addressM[11]_1 ),
        .O(\ALUResult[29]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFB800B800B800)) 
    \ALUResult[29]_INST_0_i_4 
       (.I0(Instr[29]),
        .I1(ImmSrc),
        .I2(Instr[31]),
        .I3(ALUSrc),
        .I4(rd21__3),
        .I5(rd20_0[29]),
        .O(SrcB[29]));
  LUT6 #(
    .INIT(64'h000000003030BB88)) 
    \ALUResult[29]_INST_0_i_5 
       (.I0(\ALUResult[29]_INST_0_i_7_n_0 ),
        .I1(SrcB[0]),
        .I2(\ALUResult[29]_INST_0_i_8_n_0 ),
        .I3(\ALUResult[29]_INST_0_i_9_n_0 ),
        .I4(SrcB[1]),
        .I5(SrcB[2]),
        .O(\main_alu/data6 [29]));
  LUT6 #(
    .INIT(64'h1000100011111000)) 
    \ALUResult[29]_INST_0_i_7 
       (.I0(SrcB[4]),
        .I1(SrcB[3]),
        .I2(lt_carry__2_0),
        .I3(rd10[30]),
        .I4(Q[30]),
        .I5(lt_carry__2),
        .O(\ALUResult[29]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h1000100011111000)) 
    \ALUResult[29]_INST_0_i_8 
       (.I0(SrcB[4]),
        .I1(SrcB[3]),
        .I2(lt_carry__2_0),
        .I3(rd10[31]),
        .I4(Q[31]),
        .I5(lt_carry__2),
        .O(\ALUResult[29]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h1000100011111000)) 
    \ALUResult[29]_INST_0_i_9 
       (.I0(SrcB[4]),
        .I1(SrcB[3]),
        .I2(lt_carry__2_0),
        .I3(rd10[29]),
        .I4(Q[29]),
        .I5(lt_carry__2),
        .O(\ALUResult[29]_INST_0_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hBC88)) 
    \ALUResult[2]_INST_0_i_2 
       (.I0(\addressM[21]_3 ),
        .I1(SrcB[2]),
        .I2(SrcA[2]),
        .I3(\addressM[21]_2 ),
        .O(\q_reg[2]_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \ALUResult[2]_INST_0_i_6 
       (.I0(Instr[22]),
        .I1(\ALUResult[4]_INST_0_i_4 ),
        .I2(Instr[9]),
        .I3(ImmSrc),
        .I4(ALUSrc),
        .I5(\q_reg[5] [2]),
        .O(SrcB[2]));
  LUT6 #(
    .INIT(64'hFFFF100010001000)) 
    \ALUResult[2]_INST_0_i_7 
       (.I0(SrcB[2]),
        .I1(SrcB[1]),
        .I2(\ALUResult[2]_INST_0_i_9_n_0 ),
        .I3(\ALUResult[31]_INST_0_i_11_1 ),
        .I4(\ALUResult[3]_INST_0_i_9_n_0 ),
        .I5(\ALUResult[31]_INST_0_i_11_0 ),
        .O(\q_reg[1] ));
  LUT6 #(
    .INIT(64'h1000100011111000)) 
    \ALUResult[2]_INST_0_i_9 
       (.I0(SrcB[4]),
        .I1(SrcB[3]),
        .I2(lt_carry__2_0),
        .I3(rd10[1]),
        .I4(Q[1]),
        .I5(lt_carry__2),
        .O(\ALUResult[2]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEC28EC28EC28)) 
    \ALUResult[30]_INST_0_i_1 
       (.I0(\addressM[21]_2 ),
        .I1(SrcB[30]),
        .I2(SrcA[30]),
        .I3(\addressM[21]_3 ),
        .I4(\main_alu/data6 [30]),
        .I5(\addressM[14]_1 ),
        .O(\q_reg[30] ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \ALUResult[30]_INST_0_i_3 
       (.I0(\ALUResult[31]_INST_0_i_11_0 ),
        .I1(\ALUResult[31]_INST_0_i_16_n_0 ),
        .I2(\ALUResult[31]_INST_0_i_11_1 ),
        .I3(\addressM[29]_0 ),
        .I4(\main_alu/data6 [30]),
        .I5(\addressM[11]_1 ),
        .O(\ALUResult[31]_INST_0_i_15_2 ));
  LUT6 #(
    .INIT(64'hB8FFB800B800B800)) 
    \ALUResult[30]_INST_0_i_5 
       (.I0(Instr[30]),
        .I1(ImmSrc),
        .I2(Instr[31]),
        .I3(ALUSrc),
        .I4(rd21__3),
        .I5(rd20_0[30]),
        .O(SrcB[30]));
  LUT6 #(
    .INIT(64'h000B000800000000)) 
    \ALUResult[30]_INST_0_i_7 
       (.I0(SrcA__0),
        .I1(SrcB[0]),
        .I2(SrcB[2]),
        .I3(SrcB[1]),
        .I4(SrcA[30]),
        .I5(\ALUResult[4]_INST_0_i_7_0 ),
        .O(\main_alu/data6 [30]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \ALUResult[30]_INST_0_i_8 
       (.I0(\ALUResult[0]_INST_0_i_8 ),
        .I1(ALUControl__0),
        .I2(SrcB[0]),
        .O(\ALUResult[31]_INST_0_i_11_0 ));
  LUT5 #(
    .INIT(32'hFEEEAAAA)) 
    \ALUResult[31]_INST_0 
       (.I0(\ALUResult[31]_INST_0_i_1_n_0 ),
        .I1(\addressM[31] ),
        .I2(\ALUResult[31]_INST_0_i_3_n_0 ),
        .I3(\addressM[10]_1 ),
        .I4(\addressM[10]_2 ),
        .O(\ALUResult[31]_INST_0_i_5_14 ));
  LUT6 #(
    .INIT(64'h0000AA6600F0AA66)) 
    \ALUResult[31]_INST_0_i_1 
       (.I0(SrcB[31]),
        .I1(SrcA__0),
        .I2(\ALUResult[31]_INST_0_i_8_n_0 ),
        .I3(\addressM[31]_0 ),
        .I4(\addressM[31]_1 ),
        .I5(SrcB[0]),
        .O(\ALUResult[31]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1900FFFF19000000)) 
    \ALUResult[31]_INST_0_i_11 
       (.I0(Instr[2]),
        .I1(Instr[6]),
        .I2(Instr[3]),
        .I3(\ALUResult[0]_INST_0_i_3 ),
        .I4(ALUSrc),
        .I5(\q_reg[5] [0]),
        .O(SrcB[0]));
  LUT6 #(
    .INIT(64'h8A808A808A8A8080)) 
    \ALUResult[31]_INST_0_i_14 
       (.I0(\ALUResult[31]_INST_0_i_11_0 ),
        .I1(\ALUResult[31]_INST_0_i_3_0 ),
        .I2(SrcB[1]),
        .I3(\ALUResult[31]_INST_0_i_3_1 ),
        .I4(\ALUResult[31]_INST_0_i_3_2 ),
        .I5(SrcB[2]),
        .O(\ALUResult[31]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FFCC3300)) 
    \ALUResult[31]_INST_0_i_16 
       (.I0(\ALUResult[30]_INST_0_i_3_0 ),
        .I1(SrcB[2]),
        .I2(\ALUResult[30]_INST_0_i_3_1 ),
        .I3(\ALUResult[30]_INST_0_i_3_2 ),
        .I4(\ALUResult[30]_INST_0_i_3_3 ),
        .I5(SrcB[1]),
        .O(\ALUResult[31]_INST_0_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \ALUResult[31]_INST_0_i_17 
       (.I0(\ALUResult[0]_INST_0_i_8 ),
        .I1(ALUControl__0),
        .I2(SrcB[0]),
        .O(\ALUResult[31]_INST_0_i_11_1 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \ALUResult[31]_INST_0_i_20 
       (.I0(SrcB[1]),
        .I1(SrcB[2]),
        .O(\ALUResult[31]_INST_0_i_20_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \ALUResult[31]_INST_0_i_21 
       (.I0(SrcB[3]),
        .I1(SrcB[4]),
        .O(\ALUResult[4]_INST_0_i_7_0 ));
  LUT6 #(
    .INIT(64'hFFFFBAAABAAABAAA)) 
    \ALUResult[31]_INST_0_i_3 
       (.I0(\ALUResult[31]_INST_0_i_14_n_0 ),
        .I1(SrcB[0]),
        .I2(\addressM[11]_1 ),
        .I3(\ALUResult[31]_INST_0_i_8_n_0 ),
        .I4(\ALUResult[31]_INST_0_i_16_n_0 ),
        .I5(\ALUResult[31]_INST_0_i_11_1 ),
        .O(\ALUResult[31]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \ALUResult[31]_INST_0_i_6 
       (.I0(Instr[31]),
        .I1(ALUSrc),
        .I2(rd21__3),
        .I3(rd20_0[31]),
        .O(SrcB[31]));
  LUT6 #(
    .INIT(64'hAA20202000000000)) 
    \ALUResult[31]_INST_0_i_8 
       (.I0(\ALUResult[31]_INST_0_i_20_n_0 ),
        .I1(lt_carry__2),
        .I2(Q[31]),
        .I3(rd10[31]),
        .I4(lt_carry__2_0),
        .I5(\ALUResult[4]_INST_0_i_7_0 ),
        .O(\ALUResult[31]_INST_0_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hBC88)) 
    \ALUResult[3]_INST_0_i_2 
       (.I0(\addressM[21]_3 ),
        .I1(SrcB[3]),
        .I2(SrcA[3]),
        .I3(\addressM[21]_2 ),
        .O(\q_reg[3] ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \ALUResult[3]_INST_0_i_6 
       (.I0(Instr[23]),
        .I1(\ALUResult[4]_INST_0_i_4 ),
        .I2(Instr[10]),
        .I3(ImmSrc),
        .I4(ALUSrc),
        .I5(\q_reg[5] [3]),
        .O(SrcB[3]));
  LUT4 #(
    .INIT(16'hF888)) 
    \ALUResult[3]_INST_0_i_7 
       (.I0(\ALUResult[3]_INST_0_i_9_n_0 ),
        .I1(\ALUResult[31]_INST_0_i_11_1 ),
        .I2(\ALUResult[4]_INST_0_i_10_n_0 ),
        .I3(\ALUResult[31]_INST_0_i_11_0 ),
        .O(\ALUResult[30]_INST_0_i_8_0 ));
  LUT6 #(
    .INIT(64'h0000000002020300)) 
    \ALUResult[3]_INST_0_i_9 
       (.I0(SrcA[0]),
        .I1(SrcB[4]),
        .I2(SrcB[3]),
        .I3(SrcA[2]),
        .I4(SrcB[1]),
        .I5(SrcB[2]),
        .O(\ALUResult[3]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0000000002020300)) 
    \ALUResult[4]_INST_0_i_10 
       (.I0(SrcA[1]),
        .I1(SrcB[4]),
        .I2(SrcB[3]),
        .I3(SrcA[3]),
        .I4(SrcB[1]),
        .I5(SrcB[2]),
        .O(\ALUResult[4]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h1000100011111000)) 
    \ALUResult[4]_INST_0_i_11 
       (.I0(SrcB[4]),
        .I1(SrcB[3]),
        .I2(lt_carry__2_0),
        .I3(rd10[2]),
        .I4(Q[2]),
        .I5(lt_carry__2),
        .O(\ALUResult[4]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0000000003020002)) 
    \ALUResult[4]_INST_0_i_12 
       (.I0(SrcA[4]),
        .I1(SrcB[3]),
        .I2(SrcB[4]),
        .I3(SrcB[2]),
        .I4(SrcA[0]),
        .I5(SrcB[1]),
        .O(\ALUResult[4]_INST_0_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hBC88)) 
    \ALUResult[4]_INST_0_i_3 
       (.I0(\addressM[21]_3 ),
        .I1(SrcB[4]),
        .I2(SrcA[4]),
        .I3(\addressM[21]_2 ),
        .O(\q_reg[4] ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \ALUResult[4]_INST_0_i_7 
       (.I0(Instr[24]),
        .I1(\ALUResult[4]_INST_0_i_4 ),
        .I2(Instr[11]),
        .I3(ImmSrc),
        .I4(ALUSrc),
        .I5(\q_reg[5] [4]),
        .O(SrcB[4]));
  LUT6 #(
    .INIT(64'hFFFFF88888888888)) 
    \ALUResult[4]_INST_0_i_8 
       (.I0(\ALUResult[4]_INST_0_i_10_n_0 ),
        .I1(\ALUResult[31]_INST_0_i_11_1 ),
        .I2(\ALUResult[4]_INST_0_i_11_n_0 ),
        .I3(\ALUResult[26]_INST_0_i_9_n_0 ),
        .I4(\ALUResult[4]_INST_0_i_12_n_0 ),
        .I5(\ALUResult[31]_INST_0_i_11_0 ),
        .O(\q_reg[2] ));
  LUT6 #(
    .INIT(64'hFFFEEEEEAAAAAAAA)) 
    \ALUResult[5]_INST_0 
       (.I0(\ALUResult[5]_INST_0_i_1_n_0 ),
        .I1(\addressM[5] ),
        .I2(\addressM[5]_0 ),
        .I3(\ALUResult[5]_INST_0_i_4_n_0 ),
        .I4(\addressM[10]_1 ),
        .I5(\addressM[10]_2 ),
        .O(\ALUResult[31]_INST_0_i_5 ));
  LUT5 #(
    .INIT(32'hEFEAAAAA)) 
    \ALUResult[5]_INST_0_i_1 
       (.I0(\ALUResult[5]_INST_0_i_5_n_0 ),
        .I1(\ALUResult[6]_INST_0_i_7_n_0 ),
        .I2(SrcB[0]),
        .I3(\addressM[5]_1 ),
        .I4(\addressM[14]_1 ),
        .O(\ALUResult[5]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT4 #(
    .INIT(16'hA808)) 
    \ALUResult[5]_INST_0_i_4 
       (.I0(\addressM[11]_1 ),
        .I1(\addressM[5]_1 ),
        .I2(SrcB[0]),
        .I3(\ALUResult[6]_INST_0_i_7_n_0 ),
        .O(\ALUResult[5]_INST_0_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hBC88)) 
    \ALUResult[5]_INST_0_i_5 
       (.I0(\addressM[21]_3 ),
        .I1(SrcB[5]),
        .I2(SrcA[5]),
        .I3(\addressM[21]_2 ),
        .O(\ALUResult[5]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h8AFF8A008A008A00)) 
    \ALUResult[5]_INST_0_i_7 
       (.I0(Instr[25]),
        .I1(Instr[6]),
        .I2(Instr[2]),
        .I3(ALUSrc),
        .I4(rd21__3),
        .I5(rd20[5]),
        .O(SrcB[5]));
  LUT6 #(
    .INIT(64'hFFFEEEEEAAAAAAAA)) 
    \ALUResult[6]_INST_0 
       (.I0(\ALUResult[6]_INST_0_i_1_n_0 ),
        .I1(\addressM[6] ),
        .I2(\ALUResult[6]_INST_0_i_3_n_0 ),
        .I3(\ALUResult[6]_INST_0_i_4_n_0 ),
        .I4(\addressM[10]_1 ),
        .I5(\addressM[10]_2 ),
        .O(\ALUResult[31]_INST_0_i_5_0 ));
  LUT5 #(
    .INIT(32'hEFEAAAAA)) 
    \ALUResult[6]_INST_0_i_1 
       (.I0(\ALUResult[6]_INST_0_i_5_n_0 ),
        .I1(\addressM[6]_1 ),
        .I2(SrcB[0]),
        .I3(\ALUResult[6]_INST_0_i_7_n_0 ),
        .I4(\addressM[14]_1 ),
        .O(\ALUResult[6]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \ALUResult[6]_INST_0_i_3 
       (.I0(\addressM[6]_0 ),
        .I1(\ALUResult[31]_INST_0_i_11_1 ),
        .I2(\ALUResult[7]_INST_0_i_6_n_0 ),
        .I3(\ALUResult[31]_INST_0_i_11_0 ),
        .O(\ALUResult[6]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT4 #(
    .INIT(16'hA808)) 
    \ALUResult[6]_INST_0_i_4 
       (.I0(\addressM[11]_1 ),
        .I1(\ALUResult[6]_INST_0_i_7_n_0 ),
        .I2(SrcB[0]),
        .I3(\addressM[6]_1 ),
        .O(\ALUResult[6]_INST_0_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hBC88)) 
    \ALUResult[6]_INST_0_i_5 
       (.I0(\addressM[21]_3 ),
        .I1(SrcB[6]),
        .I2(SrcA[6]),
        .I3(\addressM[21]_2 ),
        .O(\ALUResult[6]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[6]_INST_0_i_7 
       (.I0(\ALUResult[6]_INST_0_i_1_0 ),
        .I1(\ALUResult[6]_INST_0_i_1_1 ),
        .I2(SrcB[1]),
        .I3(\ALUResult[6]_INST_0_i_1_2 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[6]_INST_0_i_1_3 ),
        .O(\ALUResult[6]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h8AFF8A008A008A00)) 
    \ALUResult[6]_INST_0_i_8 
       (.I0(Instr[26]),
        .I1(Instr[6]),
        .I2(Instr[2]),
        .I3(ALUSrc),
        .I4(rd21__3),
        .I5(rd20[6]),
        .O(SrcB[6]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \ALUResult[7]_INST_0_i_3 
       (.I0(\ALUResult[31]_INST_0_i_11_0 ),
        .I1(\ALUResult[8]_INST_0_i_8_n_0 ),
        .I2(\ALUResult[31]_INST_0_i_11_1 ),
        .I3(\ALUResult[7]_INST_0_i_6_n_0 ),
        .I4(\addressM[7] ),
        .I5(\addressM[11]_1 ),
        .O(\ALUResult[31]_INST_0_i_15 ));
  LUT6 #(
    .INIT(64'h8AFF8A008A008A00)) 
    \ALUResult[7]_INST_0_i_4 
       (.I0(Instr[27]),
        .I1(Instr[6]),
        .I2(Instr[2]),
        .I3(ALUSrc),
        .I4(rd21__3),
        .I5(rd20[7]),
        .O(SrcB[7]));
  LUT6 #(
    .INIT(64'hB080FFFFB0800000)) 
    \ALUResult[7]_INST_0_i_6 
       (.I0(SrcA[0]),
        .I1(SrcB[2]),
        .I2(\ALUResult[4]_INST_0_i_7_0 ),
        .I3(SrcA[4]),
        .I4(SrcB[1]),
        .I5(\ALUResult[7]_INST_0_i_7_n_0 ),
        .O(\ALUResult[7]_INST_0_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h000B0008)) 
    \ALUResult[7]_INST_0_i_7 
       (.I0(SrcA[2]),
        .I1(SrcB[2]),
        .I2(SrcB[4]),
        .I3(SrcB[3]),
        .I4(SrcA[6]),
        .O(\ALUResult[7]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEEEEEAAAAAAAA)) 
    \ALUResult[8]_INST_0 
       (.I0(\ALUResult[8]_INST_0_i_1_n_0 ),
        .I1(\addressM[8] ),
        .I2(\ALUResult[8]_INST_0_i_3_n_0 ),
        .I3(\addressM[8]_0 ),
        .I4(\addressM[10]_1 ),
        .I5(\addressM[10]_2 ),
        .O(\ALUResult[31]_INST_0_i_5_1 ));
  LUT5 #(
    .INIT(32'hEFEAAAAA)) 
    \ALUResult[8]_INST_0_i_1 
       (.I0(\ALUResult[8]_INST_0_i_5_n_0 ),
        .I1(\addressM[8]_2 ),
        .I2(SrcB[0]),
        .I3(\addressM[8]_3 ),
        .I4(\addressM[14]_1 ),
        .O(\ALUResult[8]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT5 #(
    .INIT(32'h000B0008)) 
    \ALUResult[8]_INST_0_i_10 
       (.I0(SrcA[3]),
        .I1(SrcB[2]),
        .I2(SrcB[4]),
        .I3(SrcB[3]),
        .I4(SrcA[7]),
        .O(\ALUResult[8]_INST_0_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \ALUResult[8]_INST_0_i_3 
       (.I0(\ALUResult[8]_INST_0_i_8_n_0 ),
        .I1(\ALUResult[31]_INST_0_i_11_1 ),
        .I2(\addressM[8]_1 ),
        .I3(\ALUResult[31]_INST_0_i_11_0 ),
        .O(\ALUResult[8]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hBC88)) 
    \ALUResult[8]_INST_0_i_5 
       (.I0(\addressM[21]_3 ),
        .I1(SrcB[8]),
        .I2(SrcA[8]),
        .I3(\addressM[21]_2 ),
        .O(\ALUResult[8]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h8AFF8A008A008A00)) 
    \ALUResult[8]_INST_0_i_7 
       (.I0(Instr[28]),
        .I1(Instr[6]),
        .I2(Instr[2]),
        .I3(ALUSrc),
        .I4(rd21__3),
        .I5(rd20_0[8]),
        .O(SrcB[8]));
  LUT6 #(
    .INIT(64'hB080FFFFB0800000)) 
    \ALUResult[8]_INST_0_i_8 
       (.I0(SrcA[1]),
        .I1(SrcB[2]),
        .I2(\ALUResult[4]_INST_0_i_7_0 ),
        .I3(SrcA[5]),
        .I4(SrcB[1]),
        .I5(\ALUResult[8]_INST_0_i_10_n_0 ),
        .O(\ALUResult[8]_INST_0_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hEFEAAAAA)) 
    \ALUResult[9]_INST_0_i_1 
       (.I0(\ALUResult[9]_INST_0_i_5_n_0 ),
        .I1(\addressM[10]_3 ),
        .I2(SrcB[0]),
        .I3(\addressM[8]_2 ),
        .I4(\addressM[14]_1 ),
        .O(\ALUResult[4]_INST_0_i_1_3 ));
  LUT4 #(
    .INIT(16'hBC88)) 
    \ALUResult[9]_INST_0_i_5 
       (.I0(\addressM[21]_3 ),
        .I1(SrcB[9]),
        .I2(SrcA[9]),
        .I3(\addressM[21]_2 ),
        .O(\ALUResult[9]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h8AFF8A008A008A00)) 
    \ALUResult[9]_INST_0_i_7 
       (.I0(Instr[29]),
        .I1(Instr[6]),
        .I2(Instr[2]),
        .I3(ALUSrc),
        .I4(rd21__3),
        .I5(rd20_0[9]),
        .O(SrcB[9]));
  LUT6 #(
    .INIT(64'hF3F3F3F3F3E0E0E0)) 
    \WriteData[16]_INST_0 
       (.I0(Instr[13]),
        .I1(Instr[14]),
        .I2(rd2[16]),
        .I3(\writeDataM[31] ),
        .I4(\q_reg[5] [0]),
        .I5(\writeDataM[16] ),
        .O(WriteData[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \WriteData[16]_INST_0_i_1 
       (.I0(Instr[23]),
        .I1(Instr[22]),
        .I2(Instr[21]),
        .I3(Instr[20]),
        .I4(Instr[24]),
        .I5(rd20_0[16]),
        .O(rd2[16]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \WriteData[16]_INST_0_i_2 
       (.I0(Instr[23]),
        .I1(Instr[22]),
        .I2(Instr[21]),
        .I3(Instr[20]),
        .I4(Instr[24]),
        .I5(rd20[0]),
        .O(\q_reg[5] [0]));
  LUT6 #(
    .INIT(64'hF3F3F3F3F3E0E0E0)) 
    \WriteData[17]_INST_0 
       (.I0(Instr[13]),
        .I1(Instr[14]),
        .I2(rd2[17]),
        .I3(\writeDataM[31] ),
        .I4(\q_reg[5] [1]),
        .I5(\writeDataM[17] ),
        .O(WriteData[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \WriteData[17]_INST_0_i_1 
       (.I0(Instr[23]),
        .I1(Instr[22]),
        .I2(Instr[21]),
        .I3(Instr[20]),
        .I4(Instr[24]),
        .I5(rd20_0[17]),
        .O(rd2[17]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \WriteData[17]_INST_0_i_2 
       (.I0(Instr[23]),
        .I1(Instr[22]),
        .I2(Instr[21]),
        .I3(Instr[20]),
        .I4(Instr[24]),
        .I5(rd20[1]),
        .O(\q_reg[5] [1]));
  LUT6 #(
    .INIT(64'hF3F3F3F3F3E0E0E0)) 
    \WriteData[18]_INST_0 
       (.I0(Instr[13]),
        .I1(Instr[14]),
        .I2(rd2[18]),
        .I3(\writeDataM[31] ),
        .I4(\q_reg[5] [2]),
        .I5(\writeDataM[18] ),
        .O(WriteData[2]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \WriteData[18]_INST_0_i_1 
       (.I0(Instr[23]),
        .I1(Instr[22]),
        .I2(Instr[21]),
        .I3(Instr[20]),
        .I4(Instr[24]),
        .I5(rd20_0[18]),
        .O(rd2[18]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \WriteData[18]_INST_0_i_2 
       (.I0(Instr[23]),
        .I1(Instr[22]),
        .I2(Instr[21]),
        .I3(Instr[20]),
        .I4(Instr[24]),
        .I5(rd20[2]),
        .O(\q_reg[5] [2]));
  LUT6 #(
    .INIT(64'hF3F3F3F3F3E0E0E0)) 
    \WriteData[19]_INST_0 
       (.I0(Instr[13]),
        .I1(Instr[14]),
        .I2(rd2[19]),
        .I3(\writeDataM[31] ),
        .I4(\q_reg[5] [3]),
        .I5(\writeDataM[19] ),
        .O(WriteData[3]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \WriteData[19]_INST_0_i_1 
       (.I0(Instr[23]),
        .I1(Instr[22]),
        .I2(Instr[21]),
        .I3(Instr[20]),
        .I4(Instr[24]),
        .I5(rd20_0[19]),
        .O(rd2[19]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \WriteData[19]_INST_0_i_2 
       (.I0(Instr[23]),
        .I1(Instr[22]),
        .I2(Instr[21]),
        .I3(Instr[20]),
        .I4(Instr[24]),
        .I5(rd20[3]),
        .O(\q_reg[5] [3]));
  LUT6 #(
    .INIT(64'hF3F3F3F3F3E0E0E0)) 
    \WriteData[20]_INST_0 
       (.I0(Instr[13]),
        .I1(Instr[14]),
        .I2(rd2[20]),
        .I3(\writeDataM[31] ),
        .I4(\q_reg[5] [4]),
        .I5(\writeDataM[20] ),
        .O(WriteData[4]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \WriteData[20]_INST_0_i_1 
       (.I0(Instr[23]),
        .I1(Instr[22]),
        .I2(Instr[21]),
        .I3(Instr[20]),
        .I4(Instr[24]),
        .I5(rd20_0[20]),
        .O(rd2[20]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \WriteData[20]_INST_0_i_2 
       (.I0(Instr[23]),
        .I1(Instr[22]),
        .I2(Instr[21]),
        .I3(Instr[20]),
        .I4(Instr[24]),
        .I5(rd20[4]),
        .O(\q_reg[5] [4]));
  LUT6 #(
    .INIT(64'hF3F3F3F3F3E0E0E0)) 
    \WriteData[21]_INST_0 
       (.I0(Instr[13]),
        .I1(Instr[14]),
        .I2(rd2[21]),
        .I3(\writeDataM[31] ),
        .I4(\q_reg[5] [5]),
        .I5(\writeDataM[21] ),
        .O(WriteData[5]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \WriteData[21]_INST_0_i_1 
       (.I0(Instr[23]),
        .I1(Instr[22]),
        .I2(Instr[21]),
        .I3(Instr[20]),
        .I4(Instr[24]),
        .I5(rd20_0[21]),
        .O(rd2[21]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \WriteData[21]_INST_0_i_2 
       (.I0(Instr[23]),
        .I1(Instr[22]),
        .I2(Instr[21]),
        .I3(Instr[20]),
        .I4(Instr[24]),
        .I5(rd20[5]),
        .O(\q_reg[5] [5]));
  LUT6 #(
    .INIT(64'hF3F3F3F3F3E0E0E0)) 
    \WriteData[22]_INST_0 
       (.I0(Instr[13]),
        .I1(Instr[14]),
        .I2(rd2[22]),
        .I3(\writeDataM[31] ),
        .I4(\q_reg[5] [6]),
        .I5(\writeDataM[22] ),
        .O(WriteData[6]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \WriteData[22]_INST_0_i_1 
       (.I0(Instr[23]),
        .I1(Instr[22]),
        .I2(Instr[21]),
        .I3(Instr[20]),
        .I4(Instr[24]),
        .I5(rd20_0[22]),
        .O(rd2[22]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \WriteData[22]_INST_0_i_2 
       (.I0(Instr[23]),
        .I1(Instr[22]),
        .I2(Instr[21]),
        .I3(Instr[20]),
        .I4(Instr[24]),
        .I5(rd20[6]),
        .O(\q_reg[5] [6]));
  LUT6 #(
    .INIT(64'hF3F3F3F3F3E0E0E0)) 
    \WriteData[23]_INST_0 
       (.I0(Instr[13]),
        .I1(Instr[14]),
        .I2(rd2[23]),
        .I3(\writeDataM[31] ),
        .I4(\q_reg[5] [7]),
        .I5(\writeDataM[23] ),
        .O(WriteData[7]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \WriteData[23]_INST_0_i_1 
       (.I0(Instr[23]),
        .I1(Instr[22]),
        .I2(Instr[21]),
        .I3(Instr[20]),
        .I4(Instr[24]),
        .I5(rd20_0[23]),
        .O(rd2[23]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \WriteData[23]_INST_0_i_2 
       (.I0(Instr[23]),
        .I1(Instr[22]),
        .I2(Instr[21]),
        .I3(Instr[20]),
        .I4(Instr[24]),
        .I5(rd20[7]),
        .O(\q_reg[5] [7]));
  LUT6 #(
    .INIT(64'hF3F3F3F3F3E0E0E0)) 
    \WriteData[24]_INST_0 
       (.I0(Instr[13]),
        .I1(Instr[14]),
        .I2(rd2[24]),
        .I3(\writeDataM[31] ),
        .I4(\q_reg[5] [8]),
        .I5(\writeDataM[24] ),
        .O(WriteData[8]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \WriteData[24]_INST_0_i_1 
       (.I0(Instr[23]),
        .I1(Instr[22]),
        .I2(Instr[21]),
        .I3(Instr[20]),
        .I4(Instr[24]),
        .I5(rd20_0[24]),
        .O(rd2[24]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \WriteData[24]_INST_0_i_2 
       (.I0(Instr[23]),
        .I1(Instr[22]),
        .I2(Instr[21]),
        .I3(Instr[20]),
        .I4(Instr[24]),
        .I5(rd20_0[8]),
        .O(\q_reg[5] [8]));
  LUT6 #(
    .INIT(64'hF3F3F3F3F3E0E0E0)) 
    \WriteData[25]_INST_0 
       (.I0(Instr[13]),
        .I1(Instr[14]),
        .I2(rd2[25]),
        .I3(\writeDataM[31] ),
        .I4(\q_reg[5] [9]),
        .I5(\writeDataM[25] ),
        .O(WriteData[9]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \WriteData[25]_INST_0_i_1 
       (.I0(Instr[23]),
        .I1(Instr[22]),
        .I2(Instr[21]),
        .I3(Instr[20]),
        .I4(Instr[24]),
        .I5(rd20_0[25]),
        .O(rd2[25]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \WriteData[25]_INST_0_i_2 
       (.I0(Instr[23]),
        .I1(Instr[22]),
        .I2(Instr[21]),
        .I3(Instr[20]),
        .I4(Instr[24]),
        .I5(rd20_0[9]),
        .O(\q_reg[5] [9]));
  LUT6 #(
    .INIT(64'hF3F3F3F3F3E0E0E0)) 
    \WriteData[26]_INST_0 
       (.I0(Instr[13]),
        .I1(Instr[14]),
        .I2(rd2[26]),
        .I3(\writeDataM[31] ),
        .I4(\q_reg[5] [10]),
        .I5(\writeDataM[26] ),
        .O(WriteData[10]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \WriteData[26]_INST_0_i_1 
       (.I0(Instr[23]),
        .I1(Instr[22]),
        .I2(Instr[21]),
        .I3(Instr[20]),
        .I4(Instr[24]),
        .I5(rd20_0[26]),
        .O(rd2[26]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \WriteData[26]_INST_0_i_2 
       (.I0(Instr[23]),
        .I1(Instr[22]),
        .I2(Instr[21]),
        .I3(Instr[20]),
        .I4(Instr[24]),
        .I5(rd20_0[10]),
        .O(\q_reg[5] [10]));
  LUT6 #(
    .INIT(64'hF3F3F3F3F3E0E0E0)) 
    \WriteData[27]_INST_0 
       (.I0(Instr[13]),
        .I1(Instr[14]),
        .I2(rd2[27]),
        .I3(\writeDataM[31] ),
        .I4(\q_reg[5] [11]),
        .I5(\writeDataM[27] ),
        .O(WriteData[11]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \WriteData[27]_INST_0_i_1 
       (.I0(Instr[23]),
        .I1(Instr[22]),
        .I2(Instr[21]),
        .I3(Instr[20]),
        .I4(Instr[24]),
        .I5(rd20_0[27]),
        .O(rd2[27]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \WriteData[27]_INST_0_i_2 
       (.I0(Instr[23]),
        .I1(Instr[22]),
        .I2(Instr[21]),
        .I3(Instr[20]),
        .I4(Instr[24]),
        .I5(rd20_0[11]),
        .O(\q_reg[5] [11]));
  LUT6 #(
    .INIT(64'hF3F3F3F3F3E0E0E0)) 
    \WriteData[28]_INST_0 
       (.I0(Instr[13]),
        .I1(Instr[14]),
        .I2(rd2[28]),
        .I3(\writeDataM[31] ),
        .I4(\q_reg[5] [12]),
        .I5(\writeDataM[28] ),
        .O(WriteData[12]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \WriteData[28]_INST_0_i_1 
       (.I0(Instr[23]),
        .I1(Instr[22]),
        .I2(Instr[21]),
        .I3(Instr[20]),
        .I4(Instr[24]),
        .I5(rd20_0[28]),
        .O(rd2[28]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \WriteData[28]_INST_0_i_2 
       (.I0(Instr[23]),
        .I1(Instr[22]),
        .I2(Instr[21]),
        .I3(Instr[20]),
        .I4(Instr[24]),
        .I5(rd20_0[12]),
        .O(\q_reg[5] [12]));
  LUT6 #(
    .INIT(64'hF3F3F3F3F3E0E0E0)) 
    \WriteData[29]_INST_0 
       (.I0(Instr[13]),
        .I1(Instr[14]),
        .I2(rd2[29]),
        .I3(\writeDataM[31] ),
        .I4(\q_reg[5] [13]),
        .I5(\writeDataM[29] ),
        .O(WriteData[13]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \WriteData[29]_INST_0_i_1 
       (.I0(Instr[23]),
        .I1(Instr[22]),
        .I2(Instr[21]),
        .I3(Instr[20]),
        .I4(Instr[24]),
        .I5(rd20_0[29]),
        .O(rd2[29]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \WriteData[29]_INST_0_i_2 
       (.I0(Instr[23]),
        .I1(Instr[22]),
        .I2(Instr[21]),
        .I3(Instr[20]),
        .I4(Instr[24]),
        .I5(rd20_0[13]),
        .O(\q_reg[5] [13]));
  LUT6 #(
    .INIT(64'hF3F3F3F3F3E0E0E0)) 
    \WriteData[30]_INST_0 
       (.I0(Instr[13]),
        .I1(Instr[14]),
        .I2(rd2[30]),
        .I3(\writeDataM[31] ),
        .I4(\q_reg[5] [14]),
        .I5(\writeDataM[30] ),
        .O(WriteData[14]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \WriteData[30]_INST_0_i_1 
       (.I0(Instr[23]),
        .I1(Instr[22]),
        .I2(Instr[21]),
        .I3(Instr[20]),
        .I4(Instr[24]),
        .I5(rd20_0[30]),
        .O(rd2[30]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \WriteData[30]_INST_0_i_2 
       (.I0(Instr[23]),
        .I1(Instr[22]),
        .I2(Instr[21]),
        .I3(Instr[20]),
        .I4(Instr[24]),
        .I5(rd20_0[14]),
        .O(\q_reg[5] [14]));
  LUT6 #(
    .INIT(64'hF3F3F3F3F3E0E0E0)) 
    \WriteData[31]_INST_0 
       (.I0(Instr[13]),
        .I1(Instr[14]),
        .I2(rd2[31]),
        .I3(\writeDataM[31] ),
        .I4(\q_reg[5] [15]),
        .I5(\writeDataM[31]_0 ),
        .O(WriteData[15]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \WriteData[31]_INST_0_i_1 
       (.I0(Instr[23]),
        .I1(Instr[22]),
        .I2(Instr[21]),
        .I3(Instr[20]),
        .I4(Instr[24]),
        .I5(rd20_0[31]),
        .O(rd2[31]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \WriteData[31]_INST_0_i_3 
       (.I0(Instr[23]),
        .I1(Instr[22]),
        .I2(Instr[21]),
        .I3(Instr[20]),
        .I4(Instr[24]),
        .I5(rd20_0[15]),
        .O(\q_reg[5] [15]));
  LUT4 #(
    .INIT(16'h2F02)) 
    lt_carry__0_i_1
       (.I0(SrcB[14]),
        .I1(SrcA[14]),
        .I2(SrcA[15]),
        .I3(SrcB[15]),
        .O(\q_reg[14] [3]));
  LUT6 #(
    .INIT(64'hAAAA655565556555)) 
    lt_carry__0_i_10
       (.I0(SrcB[13]),
        .I1(Instr[5]),
        .I2(Instr[2]),
        .I3(Q[13]),
        .I4(rd10[13]),
        .I5(lt_carry__2_0),
        .O(lt_carry__0_i_10_n_0));
  LUT6 #(
    .INIT(64'hAAAA655565556555)) 
    lt_carry__0_i_11
       (.I0(SrcB[11]),
        .I1(Instr[5]),
        .I2(Instr[2]),
        .I3(Q[11]),
        .I4(rd10[11]),
        .I5(lt_carry__2_0),
        .O(lt_carry__0_i_11_n_0));
  LUT6 #(
    .INIT(64'hAAAA655565556555)) 
    lt_carry__0_i_12
       (.I0(SrcB[9]),
        .I1(Instr[5]),
        .I2(Instr[2]),
        .I3(Q[9]),
        .I4(rd10[9]),
        .I5(lt_carry__2_0),
        .O(lt_carry__0_i_12_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    lt_carry__0_i_2
       (.I0(SrcB[12]),
        .I1(SrcA[12]),
        .I2(SrcA[13]),
        .I3(SrcB[13]),
        .O(\q_reg[14] [2]));
  LUT4 #(
    .INIT(16'h2F02)) 
    lt_carry__0_i_3
       (.I0(SrcB[10]),
        .I1(SrcA[10]),
        .I2(SrcA[11]),
        .I3(SrcB[11]),
        .O(\q_reg[14] [1]));
  LUT4 #(
    .INIT(16'h2F02)) 
    lt_carry__0_i_4
       (.I0(SrcB[8]),
        .I1(SrcA[8]),
        .I2(SrcA[9]),
        .I3(SrcB[9]),
        .O(\q_reg[14] [0]));
  LUT6 #(
    .INIT(64'h88F8770700000000)) 
    lt_carry__0_i_5
       (.I0(lt_carry__2_0),
        .I1(rd10[14]),
        .I2(Q[14]),
        .I3(lt_carry__2),
        .I4(SrcB[14]),
        .I5(lt_carry__0_i_9_n_0),
        .O(\q_reg[14]_1 [3]));
  LUT6 #(
    .INIT(64'h88F8770700000000)) 
    lt_carry__0_i_6
       (.I0(lt_carry__2_0),
        .I1(rd10[12]),
        .I2(Q[12]),
        .I3(lt_carry__2),
        .I4(SrcB[12]),
        .I5(lt_carry__0_i_10_n_0),
        .O(\q_reg[14]_1 [2]));
  LUT6 #(
    .INIT(64'h88F8770700000000)) 
    lt_carry__0_i_7
       (.I0(lt_carry__2_0),
        .I1(rd10[10]),
        .I2(Q[10]),
        .I3(lt_carry__2),
        .I4(SrcB[10]),
        .I5(lt_carry__0_i_11_n_0),
        .O(\q_reg[14]_1 [1]));
  LUT6 #(
    .INIT(64'h88F8770700000000)) 
    lt_carry__0_i_8
       (.I0(lt_carry__2_0),
        .I1(rd10[8]),
        .I2(Q[8]),
        .I3(lt_carry__2),
        .I4(SrcB[8]),
        .I5(lt_carry__0_i_12_n_0),
        .O(\q_reg[14]_1 [0]));
  LUT6 #(
    .INIT(64'hAAAA655565556555)) 
    lt_carry__0_i_9
       (.I0(SrcB[15]),
        .I1(Instr[5]),
        .I2(Instr[2]),
        .I3(Q[15]),
        .I4(rd10[15]),
        .I5(lt_carry__2_0),
        .O(lt_carry__0_i_9_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    lt_carry__1_i_1
       (.I0(SrcB[22]),
        .I1(SrcA[22]),
        .I2(SrcA[23]),
        .I3(SrcB[23]),
        .O(\q_reg[22] [3]));
  LUT6 #(
    .INIT(64'hAAAA655565556555)) 
    lt_carry__1_i_10
       (.I0(SrcB[21]),
        .I1(Instr[5]),
        .I2(Instr[2]),
        .I3(Q[21]),
        .I4(rd10[21]),
        .I5(lt_carry__2_0),
        .O(lt_carry__1_i_10_n_0));
  LUT6 #(
    .INIT(64'hAAAA655565556555)) 
    lt_carry__1_i_11
       (.I0(SrcB[19]),
        .I1(Instr[5]),
        .I2(Instr[2]),
        .I3(Q[19]),
        .I4(rd10[19]),
        .I5(lt_carry__2_0),
        .O(lt_carry__1_i_11_n_0));
  LUT6 #(
    .INIT(64'hAAAA655565556555)) 
    lt_carry__1_i_12
       (.I0(SrcB[17]),
        .I1(Instr[5]),
        .I2(Instr[2]),
        .I3(Q[17]),
        .I4(rd10[17]),
        .I5(lt_carry__2_0),
        .O(lt_carry__1_i_12_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    lt_carry__1_i_2
       (.I0(SrcB[20]),
        .I1(SrcA[20]),
        .I2(SrcA[21]),
        .I3(SrcB[21]),
        .O(\q_reg[22] [2]));
  LUT4 #(
    .INIT(16'h2F02)) 
    lt_carry__1_i_3
       (.I0(SrcB[18]),
        .I1(SrcA[18]),
        .I2(SrcA[19]),
        .I3(SrcB[19]),
        .O(\q_reg[22] [1]));
  LUT4 #(
    .INIT(16'h2F02)) 
    lt_carry__1_i_4
       (.I0(SrcB[16]),
        .I1(SrcA[16]),
        .I2(SrcA[17]),
        .I3(SrcB[17]),
        .O(\q_reg[22] [0]));
  LUT6 #(
    .INIT(64'h88F8770700000000)) 
    lt_carry__1_i_5
       (.I0(lt_carry__2_0),
        .I1(rd10[22]),
        .I2(Q[22]),
        .I3(lt_carry__2),
        .I4(SrcB[22]),
        .I5(lt_carry__1_i_9_n_0),
        .O(\q_reg[22]_1 [3]));
  LUT6 #(
    .INIT(64'h88F8770700000000)) 
    lt_carry__1_i_6
       (.I0(lt_carry__2_0),
        .I1(rd10[20]),
        .I2(Q[20]),
        .I3(lt_carry__2),
        .I4(SrcB[20]),
        .I5(lt_carry__1_i_10_n_0),
        .O(\q_reg[22]_1 [2]));
  LUT6 #(
    .INIT(64'h88F8770700000000)) 
    lt_carry__1_i_7
       (.I0(lt_carry__2_0),
        .I1(rd10[18]),
        .I2(Q[18]),
        .I3(lt_carry__2),
        .I4(SrcB[18]),
        .I5(lt_carry__1_i_11_n_0),
        .O(\q_reg[22]_1 [1]));
  LUT6 #(
    .INIT(64'h88F8770700000000)) 
    lt_carry__1_i_8
       (.I0(lt_carry__2_0),
        .I1(rd10[16]),
        .I2(Q[16]),
        .I3(lt_carry__2),
        .I4(SrcB[16]),
        .I5(lt_carry__1_i_12_n_0),
        .O(\q_reg[22]_1 [0]));
  LUT6 #(
    .INIT(64'hAAAA655565556555)) 
    lt_carry__1_i_9
       (.I0(SrcB[23]),
        .I1(Instr[5]),
        .I2(Instr[2]),
        .I3(Q[23]),
        .I4(rd10[23]),
        .I5(lt_carry__2_0),
        .O(lt_carry__1_i_9_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    lt_carry__2_i_1
       (.I0(SrcB[30]),
        .I1(SrcA[30]),
        .I2(SrcB[31]),
        .I3(SrcA__0),
        .O(\q_reg[30]_0 [3]));
  LUT6 #(
    .INIT(64'hAAAA655565556555)) 
    lt_carry__2_i_10
       (.I0(SrcB[29]),
        .I1(Instr[5]),
        .I2(Instr[2]),
        .I3(Q[29]),
        .I4(rd10[29]),
        .I5(lt_carry__2_0),
        .O(lt_carry__2_i_10_n_0));
  LUT6 #(
    .INIT(64'hAAAA655565556555)) 
    lt_carry__2_i_11
       (.I0(SrcB[27]),
        .I1(Instr[5]),
        .I2(Instr[2]),
        .I3(Q[27]),
        .I4(rd10[27]),
        .I5(lt_carry__2_0),
        .O(lt_carry__2_i_11_n_0));
  LUT6 #(
    .INIT(64'hAAAA655565556555)) 
    lt_carry__2_i_12
       (.I0(SrcB[25]),
        .I1(Instr[5]),
        .I2(Instr[2]),
        .I3(Q[25]),
        .I4(rd10[25]),
        .I5(lt_carry__2_0),
        .O(lt_carry__2_i_12_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    lt_carry__2_i_2
       (.I0(SrcB[28]),
        .I1(SrcA[28]),
        .I2(SrcA[29]),
        .I3(SrcB[29]),
        .O(\q_reg[30]_0 [2]));
  LUT4 #(
    .INIT(16'h2F02)) 
    lt_carry__2_i_3
       (.I0(SrcB[26]),
        .I1(SrcA[26]),
        .I2(SrcA[27]),
        .I3(SrcB[27]),
        .O(\q_reg[30]_0 [1]));
  LUT4 #(
    .INIT(16'h2F02)) 
    lt_carry__2_i_4
       (.I0(SrcB[24]),
        .I1(SrcA[24]),
        .I2(SrcA[25]),
        .I3(SrcB[25]),
        .O(\q_reg[30]_0 [0]));
  LUT6 #(
    .INIT(64'h9595AA9500000000)) 
    lt_carry__2_i_5
       (.I0(SrcB[30]),
        .I1(lt_carry__2_0),
        .I2(rd10[30]),
        .I3(Q[30]),
        .I4(lt_carry__2),
        .I5(lt_carry__2_i_9_n_0),
        .O(\q_reg[30]_3 [3]));
  LUT6 #(
    .INIT(64'h88F8770700000000)) 
    lt_carry__2_i_6
       (.I0(lt_carry__2_0),
        .I1(rd10[28]),
        .I2(Q[28]),
        .I3(lt_carry__2),
        .I4(SrcB[28]),
        .I5(lt_carry__2_i_10_n_0),
        .O(\q_reg[30]_3 [2]));
  LUT6 #(
    .INIT(64'h88F8770700000000)) 
    lt_carry__2_i_7
       (.I0(lt_carry__2_0),
        .I1(rd10[26]),
        .I2(Q[26]),
        .I3(lt_carry__2),
        .I4(SrcB[26]),
        .I5(lt_carry__2_i_11_n_0),
        .O(\q_reg[30]_3 [1]));
  LUT6 #(
    .INIT(64'h88F8770700000000)) 
    lt_carry__2_i_8
       (.I0(lt_carry__2_0),
        .I1(rd10[24]),
        .I2(Q[24]),
        .I3(lt_carry__2),
        .I4(SrcB[24]),
        .I5(lt_carry__2_i_12_n_0),
        .O(\q_reg[30]_3 [0]));
  LUT6 #(
    .INIT(64'hFF40404000BFBFBF)) 
    lt_carry__2_i_9
       (.I0(Instr[5]),
        .I1(Instr[2]),
        .I2(Q[31]),
        .I3(rd10[31]),
        .I4(lt_carry__2_0),
        .I5(SrcB[31]),
        .O(lt_carry__2_i_9_n_0));
  LUT6 #(
    .INIT(64'hAAAA655565556555)) 
    lt_carry_i_11
       (.I0(SrcB[7]),
        .I1(Instr[5]),
        .I2(Instr[2]),
        .I3(Q[7]),
        .I4(rd10[7]),
        .I5(lt_carry__2_0),
        .O(lt_carry_i_11_n_0));
  LUT6 #(
    .INIT(64'hAAAA655565556555)) 
    lt_carry_i_12
       (.I0(SrcB[5]),
        .I1(Instr[5]),
        .I2(Instr[2]),
        .I3(Q[5]),
        .I4(rd10[5]),
        .I5(lt_carry__2_0),
        .O(lt_carry_i_12_n_0));
  LUT6 #(
    .INIT(64'hAAAA655565556555)) 
    lt_carry_i_13
       (.I0(SrcB[3]),
        .I1(Instr[5]),
        .I2(Instr[2]),
        .I3(Q[3]),
        .I4(rd10[3]),
        .I5(lt_carry__2_0),
        .O(lt_carry_i_13_n_0));
  LUT6 #(
    .INIT(64'h6A6A6A6A556A6A6A)) 
    lt_carry_i_14
       (.I0(SrcB[1]),
        .I1(lt_carry__2_0),
        .I2(rd10[1]),
        .I3(Q[1]),
        .I4(Instr[2]),
        .I5(Instr[5]),
        .O(lt_carry_i_14_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    lt_carry_i_2
       (.I0(SrcB[4]),
        .I1(SrcA[4]),
        .I2(SrcA[5]),
        .I3(SrcB[5]),
        .O(DI[2]));
  LUT4 #(
    .INIT(16'h2F02)) 
    lt_carry_i_3
       (.I0(SrcB[2]),
        .I1(SrcA[2]),
        .I2(SrcA[3]),
        .I3(SrcB[3]),
        .O(DI[1]));
  LUT4 #(
    .INIT(16'h2F02)) 
    lt_carry_i_4
       (.I0(SrcB[0]),
        .I1(SrcA[0]),
        .I2(SrcA[1]),
        .I3(SrcB[1]),
        .O(DI[0]));
  LUT6 #(
    .INIT(64'h88F8770700000000)) 
    lt_carry_i_5
       (.I0(lt_carry__2_0),
        .I1(rd10[6]),
        .I2(Q[6]),
        .I3(lt_carry__2),
        .I4(SrcB[6]),
        .I5(lt_carry_i_11_n_0),
        .O(S[3]));
  LUT6 #(
    .INIT(64'h88F8770700000000)) 
    lt_carry_i_6
       (.I0(lt_carry__2_0),
        .I1(rd10[4]),
        .I2(Q[4]),
        .I3(lt_carry__2),
        .I4(SrcB[4]),
        .I5(lt_carry_i_12_n_0),
        .O(S[2]));
  LUT6 #(
    .INIT(64'h88F8770700000000)) 
    lt_carry_i_7
       (.I0(lt_carry__2_0),
        .I1(rd10[2]),
        .I2(Q[2]),
        .I3(lt_carry__2),
        .I4(SrcB[2]),
        .I5(lt_carry_i_13_n_0),
        .O(S[1]));
  LUT6 #(
    .INIT(64'h5510101000454545)) 
    lt_carry_i_8
       (.I0(lt_carry_i_14_n_0),
        .I1(lt_carry__2),
        .I2(Q[0]),
        .I3(rd10[0]),
        .I4(lt_carry__2_0),
        .I5(SrcB[0]),
        .O(S[0]));
  LUT6 #(
    .INIT(64'h88F8770700000000)) 
    ltu_carry__0_i_1
       (.I0(lt_carry__2_0),
        .I1(rd10[14]),
        .I2(Q[14]),
        .I3(lt_carry__2),
        .I4(SrcB[14]),
        .I5(lt_carry__0_i_9_n_0),
        .O(\q_reg[14]_0 [3]));
  LUT6 #(
    .INIT(64'h88F8770700000000)) 
    ltu_carry__0_i_2
       (.I0(lt_carry__2_0),
        .I1(rd10[12]),
        .I2(Q[12]),
        .I3(lt_carry__2),
        .I4(SrcB[12]),
        .I5(lt_carry__0_i_10_n_0),
        .O(\q_reg[14]_0 [2]));
  LUT6 #(
    .INIT(64'h88F8770700000000)) 
    ltu_carry__0_i_3
       (.I0(lt_carry__2_0),
        .I1(rd10[10]),
        .I2(Q[10]),
        .I3(lt_carry__2),
        .I4(SrcB[10]),
        .I5(lt_carry__0_i_11_n_0),
        .O(\q_reg[14]_0 [1]));
  LUT6 #(
    .INIT(64'h88F8770700000000)) 
    ltu_carry__0_i_4
       (.I0(lt_carry__2_0),
        .I1(rd10[8]),
        .I2(Q[8]),
        .I3(lt_carry__2),
        .I4(SrcB[8]),
        .I5(lt_carry__0_i_12_n_0),
        .O(\q_reg[14]_0 [0]));
  LUT6 #(
    .INIT(64'h88F8770700000000)) 
    ltu_carry__1_i_1
       (.I0(lt_carry__2_0),
        .I1(rd10[22]),
        .I2(Q[22]),
        .I3(lt_carry__2),
        .I4(SrcB[22]),
        .I5(lt_carry__1_i_9_n_0),
        .O(\q_reg[22]_0 [3]));
  LUT6 #(
    .INIT(64'h88F8770700000000)) 
    ltu_carry__1_i_2
       (.I0(lt_carry__2_0),
        .I1(rd10[20]),
        .I2(Q[20]),
        .I3(lt_carry__2),
        .I4(SrcB[20]),
        .I5(lt_carry__1_i_10_n_0),
        .O(\q_reg[22]_0 [2]));
  LUT6 #(
    .INIT(64'h88F8770700000000)) 
    ltu_carry__1_i_3
       (.I0(lt_carry__2_0),
        .I1(rd10[18]),
        .I2(Q[18]),
        .I3(lt_carry__2),
        .I4(SrcB[18]),
        .I5(lt_carry__1_i_11_n_0),
        .O(\q_reg[22]_0 [1]));
  LUT6 #(
    .INIT(64'h88F8770700000000)) 
    ltu_carry__1_i_4
       (.I0(lt_carry__2_0),
        .I1(rd10[16]),
        .I2(Q[16]),
        .I3(lt_carry__2),
        .I4(SrcB[16]),
        .I5(lt_carry__1_i_12_n_0),
        .O(\q_reg[22]_0 [0]));
  LUT4 #(
    .INIT(16'h2F02)) 
    ltu_carry__2_i_1
       (.I0(SrcB[30]),
        .I1(SrcA[30]),
        .I2(SrcA__0),
        .I3(SrcB[31]),
        .O(\q_reg[30]_2 ));
  LUT6 #(
    .INIT(64'h9595AA9500000000)) 
    ltu_carry__2_i_2
       (.I0(SrcB[30]),
        .I1(lt_carry__2_0),
        .I2(rd10[30]),
        .I3(Q[30]),
        .I4(lt_carry__2),
        .I5(lt_carry__2_i_9_n_0),
        .O(\q_reg[30]_1 [3]));
  LUT6 #(
    .INIT(64'h88F8770700000000)) 
    ltu_carry__2_i_3
       (.I0(lt_carry__2_0),
        .I1(rd10[28]),
        .I2(Q[28]),
        .I3(lt_carry__2),
        .I4(SrcB[28]),
        .I5(lt_carry__2_i_10_n_0),
        .O(\q_reg[30]_1 [2]));
  LUT6 #(
    .INIT(64'h88F8770700000000)) 
    ltu_carry__2_i_4
       (.I0(lt_carry__2_0),
        .I1(rd10[26]),
        .I2(Q[26]),
        .I3(lt_carry__2),
        .I4(SrcB[26]),
        .I5(lt_carry__2_i_11_n_0),
        .O(\q_reg[30]_1 [1]));
  LUT6 #(
    .INIT(64'h88F8770700000000)) 
    ltu_carry__2_i_5
       (.I0(lt_carry__2_0),
        .I1(rd10[24]),
        .I2(Q[24]),
        .I3(lt_carry__2),
        .I4(SrcB[24]),
        .I5(lt_carry__2_i_12_n_0),
        .O(\q_reg[30]_1 [0]));
  LUT6 #(
    .INIT(64'h88F8770700000000)) 
    ltu_carry_i_1
       (.I0(lt_carry__2_0),
        .I1(rd10[6]),
        .I2(Q[6]),
        .I3(lt_carry__2),
        .I4(SrcB[6]),
        .I5(lt_carry_i_11_n_0),
        .O(\q_reg[6] [3]));
  LUT6 #(
    .INIT(64'h88F8770700000000)) 
    ltu_carry_i_2
       (.I0(lt_carry__2_0),
        .I1(rd10[4]),
        .I2(Q[4]),
        .I3(lt_carry__2),
        .I4(SrcB[4]),
        .I5(lt_carry_i_12_n_0),
        .O(\q_reg[6] [2]));
  LUT6 #(
    .INIT(64'h88F8770700000000)) 
    ltu_carry_i_3
       (.I0(lt_carry__2_0),
        .I1(rd10[2]),
        .I2(Q[2]),
        .I3(lt_carry__2),
        .I4(SrcB[2]),
        .I5(lt_carry_i_13_n_0),
        .O(\q_reg[6] [1]));
  LUT6 #(
    .INIT(64'h5510101000454545)) 
    ltu_carry_i_4
       (.I0(lt_carry_i_14_n_0),
        .I1(lt_carry__2),
        .I2(Q[0]),
        .I3(rd10[0]),
        .I4(lt_carry__2_0),
        .I5(SrcB[0]),
        .O(\q_reg[6] [0]));
  LUT6 #(
    .INIT(64'hFFFF0000FE10FE10)) 
    \q[10]_i_1 
       (.I0(\q[31]_i_10 ),
        .I1(ResultSrc),
        .I2(PCPlus4[7]),
        .I3(PCTarget[7]),
        .I4(\ALUResult[31]_INST_0_i_5_2 ),
        .I5(PCSrc10_out),
        .O(D[7]));
  LUT6 #(
    .INIT(64'hFFFF0000FE10FE10)) 
    \q[11]_i_1 
       (.I0(\q[31]_i_10 ),
        .I1(ResultSrc),
        .I2(PCPlus4[8]),
        .I3(PCTarget[8]),
        .I4(\ALUResult[31]_INST_0_i_5_3 ),
        .I5(PCSrc10_out),
        .O(D[8]));
  LUT6 #(
    .INIT(64'hFFFF0000FE10FE10)) 
    \q[12]_i_1 
       (.I0(\q[31]_i_10 ),
        .I1(ResultSrc),
        .I2(PCPlus4[9]),
        .I3(PCTarget[9]),
        .I4(\q_reg[12] ),
        .I5(PCSrc10_out),
        .O(D[9]));
  LUT6 #(
    .INIT(64'hFFFF0000FE10FE10)) 
    \q[13]_i_1 
       (.I0(\q[31]_i_10 ),
        .I1(ResultSrc),
        .I2(PCPlus4[10]),
        .I3(PCTarget[10]),
        .I4(\q_reg[13] ),
        .I5(PCSrc10_out),
        .O(D[10]));
  LUT6 #(
    .INIT(64'hFFFF0000FE10FE10)) 
    \q[14]_i_1 
       (.I0(\q[31]_i_10 ),
        .I1(ResultSrc),
        .I2(PCPlus4[11]),
        .I3(PCTarget[11]),
        .I4(\q_reg[14]_2 ),
        .I5(PCSrc10_out),
        .O(D[11]));
  LUT6 #(
    .INIT(64'hFFFF0000FE10FE10)) 
    \q[15]_i_1 
       (.I0(\q[31]_i_10 ),
        .I1(ResultSrc),
        .I2(PCPlus4[12]),
        .I3(PCTarget[12]),
        .I4(\q_reg[15]_0 ),
        .I5(PCSrc10_out),
        .O(D[12]));
  LUT6 #(
    .INIT(64'hFFFF0000FE10FE10)) 
    \q[16]_i_1 
       (.I0(\q[31]_i_10 ),
        .I1(ResultSrc),
        .I2(PCPlus4[13]),
        .I3(PCTarget[13]),
        .I4(\ALUResult[31]_INST_0_i_5_4 ),
        .I5(PCSrc10_out),
        .O(D[13]));
  LUT6 #(
    .INIT(64'hFFFF0000FE10FE10)) 
    \q[17]_i_1 
       (.I0(\q[31]_i_10 ),
        .I1(ResultSrc),
        .I2(PCPlus4[14]),
        .I3(PCTarget[14]),
        .I4(\ALUResult[31]_INST_0_i_5_5 ),
        .I5(PCSrc10_out),
        .O(D[14]));
  LUT6 #(
    .INIT(64'hFFFF0000FE10FE10)) 
    \q[18]_i_1 
       (.I0(\q[31]_i_10 ),
        .I1(ResultSrc),
        .I2(PCPlus4[15]),
        .I3(PCTarget[15]),
        .I4(\ALUResult[31]_INST_0_i_5_6 ),
        .I5(PCSrc10_out),
        .O(D[15]));
  LUT6 #(
    .INIT(64'hFFFF0000FE10FE10)) 
    \q[19]_i_1 
       (.I0(\q[31]_i_10 ),
        .I1(ResultSrc),
        .I2(PCPlus4[16]),
        .I3(PCTarget[16]),
        .I4(\q_reg[19]_0 ),
        .I5(PCSrc10_out),
        .O(D[16]));
  LUT6 #(
    .INIT(64'hFFFF0000FE10FE10)) 
    \q[20]_i_1 
       (.I0(\q[31]_i_10 ),
        .I1(ResultSrc),
        .I2(PCPlus4[17]),
        .I3(PCTarget[17]),
        .I4(\q_reg[20] ),
        .I5(PCSrc10_out),
        .O(D[17]));
  LUT6 #(
    .INIT(64'hFFFF0000FE10FE10)) 
    \q[21]_i_1 
       (.I0(\q[31]_i_10 ),
        .I1(ResultSrc),
        .I2(PCPlus4[18]),
        .I3(PCTarget[18]),
        .I4(\ALUResult[31]_INST_0_i_5_7 ),
        .I5(PCSrc10_out),
        .O(D[18]));
  LUT6 #(
    .INIT(64'hFFFF0000FE10FE10)) 
    \q[22]_i_1 
       (.I0(\q[31]_i_10 ),
        .I1(ResultSrc),
        .I2(PCPlus4[19]),
        .I3(PCTarget[19]),
        .I4(\ALUResult[31]_INST_0_i_5_8 ),
        .I5(PCSrc10_out),
        .O(D[19]));
  LUT6 #(
    .INIT(64'hFFFF0000FE10FE10)) 
    \q[23]_i_1 
       (.I0(\q[31]_i_10 ),
        .I1(ResultSrc),
        .I2(PCPlus4[20]),
        .I3(PCTarget[20]),
        .I4(\ALUResult[31]_INST_0_i_5_9 ),
        .I5(PCSrc10_out),
        .O(D[20]));
  LUT6 #(
    .INIT(64'hFFFF0000FE10FE10)) 
    \q[24]_i_1 
       (.I0(\q[31]_i_10 ),
        .I1(ResultSrc),
        .I2(PCPlus4[21]),
        .I3(PCTarget[21]),
        .I4(\ALUResult[31]_INST_0_i_5_10 ),
        .I5(PCSrc10_out),
        .O(D[21]));
  LUT6 #(
    .INIT(64'hFFFF0000FE10FE10)) 
    \q[25]_i_1 
       (.I0(\q[31]_i_10 ),
        .I1(ResultSrc),
        .I2(PCPlus4[22]),
        .I3(PCTarget[22]),
        .I4(\q_reg[25]_1 ),
        .I5(PCSrc10_out),
        .O(D[22]));
  LUT6 #(
    .INIT(64'hFFFF0000FE10FE10)) 
    \q[26]_i_1 
       (.I0(\q[31]_i_10 ),
        .I1(ResultSrc),
        .I2(PCPlus4[23]),
        .I3(PCTarget[23]),
        .I4(\ALUResult[31]_INST_0_i_5_11 ),
        .I5(PCSrc10_out),
        .O(D[23]));
  LUT6 #(
    .INIT(64'hFFFF0000FE10FE10)) 
    \q[27]_i_1 
       (.I0(\q[31]_i_10 ),
        .I1(ResultSrc),
        .I2(PCPlus4[24]),
        .I3(PCTarget[24]),
        .I4(\q_reg[27]_1 ),
        .I5(PCSrc10_out),
        .O(D[24]));
  LUT6 #(
    .INIT(64'hFFFF0000FE10FE10)) 
    \q[28]_i_1 
       (.I0(\q[31]_i_10 ),
        .I1(ResultSrc),
        .I2(PCPlus4[25]),
        .I3(PCTarget[25]),
        .I4(\ALUResult[31]_INST_0_i_5_12 ),
        .I5(PCSrc10_out),
        .O(D[25]));
  LUT6 #(
    .INIT(64'hFFFF0000FE10FE10)) 
    \q[29]_i_1 
       (.I0(\q[31]_i_10 ),
        .I1(ResultSrc),
        .I2(PCPlus4[26]),
        .I3(PCTarget[26]),
        .I4(\ALUResult[31]_INST_0_i_5_13 ),
        .I5(PCSrc10_out),
        .O(D[26]));
  LUT6 #(
    .INIT(64'hFFFF0000FE10FE10)) 
    \q[30]_i_1 
       (.I0(\q[31]_i_10 ),
        .I1(ResultSrc),
        .I2(PCPlus4[27]),
        .I3(PCTarget[27]),
        .I4(\q_reg[30]_4 ),
        .I5(PCSrc10_out),
        .O(D[27]));
  LUT6 #(
    .INIT(64'hFFFF0000FE10FE10)) 
    \q[31]_i_1 
       (.I0(\q[31]_i_10 ),
        .I1(ResultSrc),
        .I2(PCPlus4[28]),
        .I3(PCTarget[28]),
        .I4(\ALUResult[31]_INST_0_i_5_14 ),
        .I5(PCSrc10_out),
        .O(D[28]));
  LUT4 #(
    .INIT(16'h0001)) 
    \q[31]_i_11 
       (.I0(\ALUResult[31]_INST_0_i_5_3 ),
        .I1(\ALUResult[31]_INST_0_i_5_2 ),
        .I2(\q_reg[9] ),
        .I3(\ALUResult[31]_INST_0_i_5_1 ),
        .O(\ALUResult[8]_INST_0_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \q[31]_i_14 
       (.I0(\ALUResult[31]_INST_0_i_5_0 ),
        .I1(\ALUResult[31]_INST_0_i_5 ),
        .I2(\q_reg[4]_0 ),
        .O(\ALUResult[4]_INST_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \q[31]_i_15 
       (.I0(\ALUResult[31]_INST_0_i_5_11 ),
        .I1(\q_reg[27]_1 ),
        .I2(\ALUResult[31]_INST_0_i_5_10 ),
        .I3(\q_reg[25]_1 ),
        .I4(\ALUResult[31]_INST_0_i_5_13 ),
        .I5(\ALUResult[31]_INST_0_i_5_12 ),
        .O(\q[31]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \q[31]_i_16 
       (.I0(\ALUResult[31]_INST_0_i_5_7 ),
        .I1(\q_reg[20] ),
        .I2(\ALUResult[31]_INST_0_i_5_9 ),
        .I3(\ALUResult[31]_INST_0_i_5_8 ),
        .O(\q[31]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \q[31]_i_17 
       (.I0(\q_reg[19]_0 ),
        .I1(\ALUResult[31]_INST_0_i_5_6 ),
        .I2(\ALUResult[31]_INST_0_i_5_5 ),
        .I3(\ALUResult[31]_INST_0_i_5_4 ),
        .O(\q[31]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h88888AAA8888A888)) 
    \q[31]_i_2 
       (.I0(\q_reg[3]_2 ),
        .I1(\q[31]_i_6_n_0 ),
        .I2(\q_reg[3]_3 ),
        .I3(\q[31]_i_8_n_0 ),
        .I4(\q_reg[3]_4 ),
        .I5(\q_reg[3]_5 ),
        .O(\q[31]_i_10 ));
  LUT5 #(
    .INIT(32'h3C005A00)) 
    \q[31]_i_6 
       (.I0(CO),
        .I1(\q[31]_i_2_0 ),
        .I2(Instr[12]),
        .I3(Instr[14]),
        .I4(Instr[13]),
        .O(\q[31]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h10000000)) 
    \q[31]_i_8 
       (.I0(\ALUResult[31]_INST_0_i_5_14 ),
        .I1(\q_reg[30]_4 ),
        .I2(\q[31]_i_15_n_0 ),
        .I3(\q[31]_i_16_n_0 ),
        .I4(\q[31]_i_17_n_0 ),
        .O(\q[31]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000FE10FE10)) 
    \q[3]_i_1 
       (.I0(\q[31]_i_10 ),
        .I1(ResultSrc),
        .I2(PCPlus4[0]),
        .I3(PCTarget[0]),
        .I4(\q_reg[3]_1 ),
        .I5(PCSrc10_out),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hFFFF0000FE10FE10)) 
    \q[4]_i_1 
       (.I0(\q[31]_i_10 ),
        .I1(ResultSrc),
        .I2(PCPlus4[1]),
        .I3(PCTarget[1]),
        .I4(\q_reg[4]_0 ),
        .I5(PCSrc10_out),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hFFFF0000FE10FE10)) 
    \q[5]_i_1 
       (.I0(\q[31]_i_10 ),
        .I1(ResultSrc),
        .I2(PCPlus4[2]),
        .I3(PCTarget[2]),
        .I4(\ALUResult[31]_INST_0_i_5 ),
        .I5(PCSrc10_out),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hFFFF0000FE10FE10)) 
    \q[6]_i_1 
       (.I0(\q[31]_i_10 ),
        .I1(ResultSrc),
        .I2(PCPlus4[3]),
        .I3(PCTarget[3]),
        .I4(\ALUResult[31]_INST_0_i_5_0 ),
        .I5(PCSrc10_out),
        .O(D[3]));
  LUT6 #(
    .INIT(64'hFFFF0000FE10FE10)) 
    \q[7]_i_1 
       (.I0(\q[31]_i_10 ),
        .I1(ResultSrc),
        .I2(PCPlus4[4]),
        .I3(PCTarget[4]),
        .I4(\q_reg[7]_0 ),
        .I5(PCSrc10_out),
        .O(D[4]));
  LUT6 #(
    .INIT(64'hFFFF0000FE10FE10)) 
    \q[8]_i_1 
       (.I0(\q[31]_i_10 ),
        .I1(ResultSrc),
        .I2(PCPlus4[5]),
        .I3(PCTarget[5]),
        .I4(\ALUResult[31]_INST_0_i_5_1 ),
        .I5(PCSrc10_out),
        .O(D[5]));
  LUT6 #(
    .INIT(64'hFFFF0000FE10FE10)) 
    \q[9]_i_1 
       (.I0(\q[31]_i_10 ),
        .I1(ResultSrc),
        .I2(PCPlus4[6]),
        .I3(PCTarget[6]),
        .I4(\q_reg[9] ),
        .I5(PCSrc10_out),
        .O(D[6]));
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
       (.ADDRA(Instr[19:15]),
        .ADDRB(Instr[19:15]),
        .ADDRC(Instr[19:15]),
        .ADDRD(Instr[11:7]),
        .DIA(Result[1:0]),
        .DIB(Result[3:2]),
        .DIC(Result[5:4]),
        .DID({1'b0,1'b0}),
        .DOA(rd10[1:0]),
        .DOB(rd10[3:2]),
        .DOC(rd10[5:4]),
        .DOD(NLW_rf_reg_r1_0_31_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(RegWrite));
  LUT3 #(
    .INIT(8'h80)) 
    rf_reg_r1_0_31_0_5_i_1
       (.I0(Instr[1]),
        .I1(Instr[0]),
        .I2(rf_reg_r1_0_31_0_5_i_8_n_0),
        .O(RegWrite));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT4 #(
    .INIT(16'h0111)) 
    rf_reg_r1_0_31_0_5_i_11
       (.I0(Instr[5]),
        .I1(Instr[4]),
        .I2(Instr[6]),
        .I3(Instr[2]),
        .O(\q_reg[5]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT5 #(
    .INIT(32'h080008F1)) 
    rf_reg_r1_0_31_0_5_i_8
       (.I0(Instr[5]),
        .I1(Instr[2]),
        .I2(Instr[4]),
        .I3(Instr[6]),
        .I4(Instr[3]),
        .O(rf_reg_r1_0_31_0_5_i_8_n_0));
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
       (.ADDRA(Instr[19:15]),
        .ADDRB(Instr[19:15]),
        .ADDRC(Instr[19:15]),
        .ADDRD(Instr[11:7]),
        .DIA(Result[13:12]),
        .DIB(Result[15:14]),
        .DIC(Result[17:16]),
        .DID({1'b0,1'b0}),
        .DOA(rd10[13:12]),
        .DOB(rd10[15:14]),
        .DOC(rd10[17:16]),
        .DOD(NLW_rf_reg_r1_0_31_12_17_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(RegWrite));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h1)) 
    rf_reg_r1_0_31_12_17_i_11
       (.I0(Instr[4]),
        .I1(Instr[5]),
        .O(\q_reg[5]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    rf_reg_r1_0_31_12_17_i_14
       (.I0(Instr[13]),
        .I1(Instr[4]),
        .I2(Instr[5]),
        .I3(ReadData[4]),
        .O(\readDataM[17] ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    rf_reg_r1_0_31_12_17_i_15
       (.I0(Instr[13]),
        .I1(Instr[4]),
        .I2(Instr[5]),
        .I3(ReadData[3]),
        .O(\readDataM[16] ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'h01)) 
    rf_reg_r1_0_31_12_17_i_20
       (.I0(Instr[5]),
        .I1(Instr[4]),
        .I2(Instr[13]),
        .O(\q_reg[5]_1 ));
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
       (.ADDRA(Instr[19:15]),
        .ADDRB(Instr[19:15]),
        .ADDRC(Instr[19:15]),
        .ADDRD(Instr[11:7]),
        .DIA(Result[19:18]),
        .DIB(Result[21:20]),
        .DIC(Result[23:22]),
        .DID({1'b0,1'b0}),
        .DOA(rd10[19:18]),
        .DOB(rd10[21:20]),
        .DOC(rd10[23:22]),
        .DOD(NLW_rf_reg_r1_0_31_18_23_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(RegWrite));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    rf_reg_r1_0_31_18_23_i_10
       (.I0(Instr[13]),
        .I1(Instr[4]),
        .I2(Instr[5]),
        .I3(ReadData[7]),
        .O(\readDataM[20] ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    rf_reg_r1_0_31_18_23_i_11
       (.I0(Instr[13]),
        .I1(Instr[4]),
        .I2(Instr[5]),
        .I3(ReadData[10]),
        .O(\readDataM[23] ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    rf_reg_r1_0_31_18_23_i_12
       (.I0(Instr[13]),
        .I1(Instr[4]),
        .I2(Instr[5]),
        .I3(ReadData[9]),
        .O(\readDataM[22] ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    rf_reg_r1_0_31_18_23_i_7
       (.I0(Instr[13]),
        .I1(Instr[4]),
        .I2(Instr[5]),
        .I3(ReadData[6]),
        .O(\readDataM[19] ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    rf_reg_r1_0_31_18_23_i_8
       (.I0(Instr[13]),
        .I1(Instr[4]),
        .I2(Instr[5]),
        .I3(ReadData[5]),
        .O(\readDataM[18] ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    rf_reg_r1_0_31_18_23_i_9
       (.I0(Instr[13]),
        .I1(Instr[4]),
        .I2(Instr[5]),
        .I3(ReadData[8]),
        .O(\readDataM[21] ));
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
       (.ADDRA(Instr[19:15]),
        .ADDRB(Instr[19:15]),
        .ADDRC(Instr[19:15]),
        .ADDRD(Instr[11:7]),
        .DIA(Result[25:24]),
        .DIB(Result[27:26]),
        .DIC(Result[29:28]),
        .DID({1'b0,1'b0}),
        .DOA(rd10[25:24]),
        .DOB(rd10[27:26]),
        .DOC(rd10[29:28]),
        .DOD(NLW_rf_reg_r1_0_31_24_29_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(RegWrite));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    rf_reg_r1_0_31_24_29_i_10
       (.I0(Instr[13]),
        .I1(Instr[4]),
        .I2(Instr[5]),
        .I3(ReadData[13]),
        .O(\readDataM[26] ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    rf_reg_r1_0_31_24_29_i_11
       (.I0(Instr[13]),
        .I1(Instr[4]),
        .I2(Instr[5]),
        .I3(ReadData[16]),
        .O(\readDataM[29] ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    rf_reg_r1_0_31_24_29_i_12
       (.I0(Instr[13]),
        .I1(Instr[4]),
        .I2(Instr[5]),
        .I3(ReadData[15]),
        .O(\readDataM[28] ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    rf_reg_r1_0_31_24_29_i_7
       (.I0(Instr[13]),
        .I1(Instr[4]),
        .I2(Instr[5]),
        .I3(ReadData[12]),
        .O(\readDataM[25] ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    rf_reg_r1_0_31_24_29_i_8
       (.I0(Instr[13]),
        .I1(Instr[4]),
        .I2(Instr[5]),
        .I3(ReadData[11]),
        .O(\readDataM[24] ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    rf_reg_r1_0_31_24_29_i_9
       (.I0(Instr[13]),
        .I1(Instr[4]),
        .I2(Instr[5]),
        .I3(ReadData[14]),
        .O(\readDataM[27] ));
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
       (.A0(Instr[7]),
        .A1(Instr[8]),
        .A2(Instr[9]),
        .A3(Instr[10]),
        .A4(Instr[11]),
        .D(Result[30]),
        .DPO(rd10[30]),
        .DPRA0(Instr[15]),
        .DPRA1(Instr[16]),
        .DPRA2(Instr[17]),
        .DPRA3(Instr[18]),
        .DPRA4(Instr[19]),
        .SPO(NLW_rf_reg_r1_0_31_30_31_SPO_UNCONNECTED),
        .WCLK(clk),
        .WE(RegWrite));
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
       (.A0(Instr[7]),
        .A1(Instr[8]),
        .A2(Instr[9]),
        .A3(Instr[10]),
        .A4(Instr[11]),
        .D(Result[31]),
        .DPO(rd10[31]),
        .DPRA0(Instr[15]),
        .DPRA1(Instr[16]),
        .DPRA2(Instr[17]),
        .DPRA3(Instr[18]),
        .DPRA4(Instr[19]),
        .SPO(NLW_rf_reg_r1_0_31_30_31__0_SPO_UNCONNECTED),
        .WCLK(clk),
        .WE(RegWrite));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    rf_reg_r1_0_31_30_31_i_2
       (.I0(Instr[13]),
        .I1(Instr[4]),
        .I2(Instr[5]),
        .I3(ReadData[17]),
        .O(\readDataM[30] ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    rf_reg_r1_0_31_30_31_i_2__0
       (.I0(Instr[13]),
        .I1(Instr[4]),
        .I2(Instr[5]),
        .I3(ReadData[18]),
        .O(\readDataM[31] ));
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
       (.ADDRA(Instr[19:15]),
        .ADDRB(Instr[19:15]),
        .ADDRC(Instr[19:15]),
        .ADDRD(Instr[11:7]),
        .DIA(Result[7:6]),
        .DIB(Result[9:8]),
        .DIC(Result[11:10]),
        .DID({1'b0,1'b0}),
        .DOA(rd10[7:6]),
        .DOB(rd10[9:8]),
        .DOC(rd10[11:10]),
        .DOD(NLW_rf_reg_r1_0_31_6_11_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(RegWrite));
  LUT6 #(
    .INIT(64'hAAAAAACCAAAAAAF0)) 
    rf_reg_r1_0_31_6_11_i_12
       (.I0(\ALUResult[31]_INST_0_i_5_1 ),
        .I1(ReadData[0]),
        .I2(rf_reg_r1_0_31_6_11_i_4),
        .I3(Instr[5]),
        .I4(Instr[4]),
        .I5(Instr[13]),
        .O(\readDataM[8] ));
  LUT6 #(
    .INIT(64'hAAAAAACCAAAAAAF0)) 
    rf_reg_r1_0_31_6_11_i_13
       (.I0(\ALUResult[31]_INST_0_i_5_3 ),
        .I1(ReadData[2]),
        .I2(rf_reg_r1_0_31_6_11_i_5),
        .I3(Instr[5]),
        .I4(Instr[4]),
        .I5(Instr[13]),
        .O(\readDataM[11] ));
  LUT6 #(
    .INIT(64'hAAAAAACCAAAAAAF0)) 
    rf_reg_r1_0_31_6_11_i_14
       (.I0(\ALUResult[31]_INST_0_i_5_2 ),
        .I1(ReadData[1]),
        .I2(rf_reg_r1_0_31_6_11_i_6),
        .I3(Instr[5]),
        .I4(Instr[4]),
        .I5(Instr[13]),
        .O(\readDataM[10] ));
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
       (.ADDRA(Instr[24:20]),
        .ADDRB(Instr[24:20]),
        .ADDRC(Instr[24:20]),
        .ADDRD(Instr[11:7]),
        .DIA(Result[1:0]),
        .DIB(Result[3:2]),
        .DIC(Result[5:4]),
        .DID({1'b0,1'b0}),
        .DOA(rd20[1:0]),
        .DOB(rd20[3:2]),
        .DOC(rd20[5:4]),
        .DOD(NLW_rf_reg_r2_0_31_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(RegWrite));
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
       (.ADDRA(Instr[24:20]),
        .ADDRB(Instr[24:20]),
        .ADDRC(Instr[24:20]),
        .ADDRD(Instr[11:7]),
        .DIA(Result[13:12]),
        .DIB(Result[15:14]),
        .DIC(Result[17:16]),
        .DID({1'b0,1'b0}),
        .DOA(rd20_0[13:12]),
        .DOB(rd20_0[15:14]),
        .DOC(rd20_0[17:16]),
        .DOD(NLW_rf_reg_r2_0_31_12_17_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(RegWrite));
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
       (.ADDRA(Instr[24:20]),
        .ADDRB(Instr[24:20]),
        .ADDRC(Instr[24:20]),
        .ADDRD(Instr[11:7]),
        .DIA(Result[19:18]),
        .DIB(Result[21:20]),
        .DIC(Result[23:22]),
        .DID({1'b0,1'b0}),
        .DOA(rd20_0[19:18]),
        .DOB(rd20_0[21:20]),
        .DOC(rd20_0[23:22]),
        .DOD(NLW_rf_reg_r2_0_31_18_23_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(RegWrite));
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
       (.ADDRA(Instr[24:20]),
        .ADDRB(Instr[24:20]),
        .ADDRC(Instr[24:20]),
        .ADDRD(Instr[11:7]),
        .DIA(Result[25:24]),
        .DIB(Result[27:26]),
        .DIC(Result[29:28]),
        .DID({1'b0,1'b0}),
        .DOA(rd20_0[25:24]),
        .DOB(rd20_0[27:26]),
        .DOC(rd20_0[29:28]),
        .DOD(NLW_rf_reg_r2_0_31_24_29_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(RegWrite));
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
       (.A0(Instr[7]),
        .A1(Instr[8]),
        .A2(Instr[9]),
        .A3(Instr[10]),
        .A4(Instr[11]),
        .D(Result[30]),
        .DPO(rd20_0[30]),
        .DPRA0(Instr[20]),
        .DPRA1(Instr[21]),
        .DPRA2(Instr[22]),
        .DPRA3(Instr[23]),
        .DPRA4(Instr[24]),
        .SPO(NLW_rf_reg_r2_0_31_30_31_SPO_UNCONNECTED),
        .WCLK(clk),
        .WE(RegWrite));
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
       (.A0(Instr[7]),
        .A1(Instr[8]),
        .A2(Instr[9]),
        .A3(Instr[10]),
        .A4(Instr[11]),
        .D(Result[31]),
        .DPO(rd20_0[31]),
        .DPRA0(Instr[20]),
        .DPRA1(Instr[21]),
        .DPRA2(Instr[22]),
        .DPRA3(Instr[23]),
        .DPRA4(Instr[24]),
        .SPO(NLW_rf_reg_r2_0_31_30_31__0_SPO_UNCONNECTED),
        .WCLK(clk),
        .WE(RegWrite));
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
       (.ADDRA(Instr[24:20]),
        .ADDRB(Instr[24:20]),
        .ADDRC(Instr[24:20]),
        .ADDRD(Instr[11:7]),
        .DIA(Result[7:6]),
        .DIB(Result[9:8]),
        .DIC(Result[11:10]),
        .DID({1'b0,1'b0}),
        .DOA(rd20[7:6]),
        .DOB(rd20_0[9:8]),
        .DOC(rd20_0[11:10]),
        .DOD(NLW_rf_reg_r2_0_31_6_11_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(RegWrite));
  LUT6 #(
    .INIT(64'h88F87707770788F8)) 
    sum__0_carry__0_i_5
       (.I0(lt_carry__2_0),
        .I1(rd10[7]),
        .I2(Q[7]),
        .I3(lt_carry__2),
        .I4(SrcB[7]),
        .I5(ALUControl__0),
        .O(\q_reg[7] [3]));
  LUT6 #(
    .INIT(64'h88F87707770788F8)) 
    sum__0_carry__0_i_6
       (.I0(lt_carry__2_0),
        .I1(rd10[6]),
        .I2(Q[6]),
        .I3(lt_carry__2),
        .I4(SrcB[6]),
        .I5(ALUControl__0),
        .O(\q_reg[7] [2]));
  LUT6 #(
    .INIT(64'h88F87707770788F8)) 
    sum__0_carry__0_i_7
       (.I0(lt_carry__2_0),
        .I1(rd10[5]),
        .I2(Q[5]),
        .I3(lt_carry__2),
        .I4(SrcB[5]),
        .I5(ALUControl__0),
        .O(\q_reg[7] [1]));
  LUT6 #(
    .INIT(64'h88F87707770788F8)) 
    sum__0_carry__0_i_8
       (.I0(lt_carry__2_0),
        .I1(rd10[4]),
        .I2(Q[4]),
        .I3(lt_carry__2),
        .I4(SrcB[4]),
        .I5(ALUControl__0),
        .O(\q_reg[7] [0]));
  LUT6 #(
    .INIT(64'h88F87707770788F8)) 
    sum__0_carry__1_i_5
       (.I0(lt_carry__2_0),
        .I1(rd10[11]),
        .I2(Q[11]),
        .I3(lt_carry__2),
        .I4(SrcB[11]),
        .I5(ALUControl__0),
        .O(\q_reg[11] [3]));
  LUT6 #(
    .INIT(64'h88F87707770788F8)) 
    sum__0_carry__1_i_6
       (.I0(lt_carry__2_0),
        .I1(rd10[10]),
        .I2(Q[10]),
        .I3(lt_carry__2),
        .I4(SrcB[10]),
        .I5(ALUControl__0),
        .O(\q_reg[11] [2]));
  LUT6 #(
    .INIT(64'h88F87707770788F8)) 
    sum__0_carry__1_i_7
       (.I0(lt_carry__2_0),
        .I1(rd10[9]),
        .I2(Q[9]),
        .I3(lt_carry__2),
        .I4(SrcB[9]),
        .I5(ALUControl__0),
        .O(\q_reg[11] [1]));
  LUT6 #(
    .INIT(64'h88F87707770788F8)) 
    sum__0_carry__1_i_8
       (.I0(lt_carry__2_0),
        .I1(rd10[8]),
        .I2(Q[8]),
        .I3(lt_carry__2),
        .I4(SrcB[8]),
        .I5(ALUControl__0),
        .O(\q_reg[11] [0]));
  LUT6 #(
    .INIT(64'h88F87707770788F8)) 
    sum__0_carry__2_i_5
       (.I0(lt_carry__2_0),
        .I1(rd10[15]),
        .I2(Q[15]),
        .I3(lt_carry__2),
        .I4(SrcB[15]),
        .I5(ALUControl__0),
        .O(\q_reg[15] [3]));
  LUT6 #(
    .INIT(64'h88F87707770788F8)) 
    sum__0_carry__2_i_6
       (.I0(lt_carry__2_0),
        .I1(rd10[14]),
        .I2(Q[14]),
        .I3(lt_carry__2),
        .I4(SrcB[14]),
        .I5(ALUControl__0),
        .O(\q_reg[15] [2]));
  LUT6 #(
    .INIT(64'h88F87707770788F8)) 
    sum__0_carry__2_i_7
       (.I0(lt_carry__2_0),
        .I1(rd10[13]),
        .I2(Q[13]),
        .I3(lt_carry__2),
        .I4(SrcB[13]),
        .I5(ALUControl__0),
        .O(\q_reg[15] [1]));
  LUT6 #(
    .INIT(64'h88F87707770788F8)) 
    sum__0_carry__2_i_8
       (.I0(lt_carry__2_0),
        .I1(rd10[12]),
        .I2(Q[12]),
        .I3(lt_carry__2),
        .I4(SrcB[12]),
        .I5(ALUControl__0),
        .O(\q_reg[15] [0]));
  LUT6 #(
    .INIT(64'h88F87707770788F8)) 
    sum__0_carry__3_i_5
       (.I0(lt_carry__2_0),
        .I1(rd10[19]),
        .I2(Q[19]),
        .I3(lt_carry__2),
        .I4(SrcB[19]),
        .I5(ALUControl__0),
        .O(\q_reg[19] [3]));
  LUT6 #(
    .INIT(64'h88F87707770788F8)) 
    sum__0_carry__3_i_6
       (.I0(lt_carry__2_0),
        .I1(rd10[18]),
        .I2(Q[18]),
        .I3(lt_carry__2),
        .I4(SrcB[18]),
        .I5(ALUControl__0),
        .O(\q_reg[19] [2]));
  LUT6 #(
    .INIT(64'h88F87707770788F8)) 
    sum__0_carry__3_i_7
       (.I0(lt_carry__2_0),
        .I1(rd10[17]),
        .I2(Q[17]),
        .I3(lt_carry__2),
        .I4(SrcB[17]),
        .I5(ALUControl__0),
        .O(\q_reg[19] [1]));
  LUT6 #(
    .INIT(64'h88F87707770788F8)) 
    sum__0_carry__3_i_8
       (.I0(lt_carry__2_0),
        .I1(rd10[16]),
        .I2(Q[16]),
        .I3(lt_carry__2),
        .I4(SrcB[16]),
        .I5(ALUControl__0),
        .O(\q_reg[19] [0]));
  LUT6 #(
    .INIT(64'h88F87707770788F8)) 
    sum__0_carry__4_i_5
       (.I0(lt_carry__2_0),
        .I1(rd10[23]),
        .I2(Q[23]),
        .I3(lt_carry__2),
        .I4(SrcB[23]),
        .I5(ALUControl__0),
        .O(\q_reg[23] [3]));
  LUT6 #(
    .INIT(64'h88F87707770788F8)) 
    sum__0_carry__4_i_6
       (.I0(lt_carry__2_0),
        .I1(rd10[22]),
        .I2(Q[22]),
        .I3(lt_carry__2),
        .I4(SrcB[22]),
        .I5(ALUControl__0),
        .O(\q_reg[23] [2]));
  LUT6 #(
    .INIT(64'h88F87707770788F8)) 
    sum__0_carry__4_i_7
       (.I0(lt_carry__2_0),
        .I1(rd10[21]),
        .I2(Q[21]),
        .I3(lt_carry__2),
        .I4(SrcB[21]),
        .I5(ALUControl__0),
        .O(\q_reg[23] [1]));
  LUT6 #(
    .INIT(64'h88F87707770788F8)) 
    sum__0_carry__4_i_8
       (.I0(lt_carry__2_0),
        .I1(rd10[20]),
        .I2(Q[20]),
        .I3(lt_carry__2),
        .I4(SrcB[20]),
        .I5(ALUControl__0),
        .O(\q_reg[23] [0]));
  LUT6 #(
    .INIT(64'h88F87707770788F8)) 
    sum__0_carry__5_i_5
       (.I0(lt_carry__2_0),
        .I1(rd10[27]),
        .I2(Q[27]),
        .I3(lt_carry__2),
        .I4(SrcB[27]),
        .I5(ALUControl__0),
        .O(\q_reg[27]_0 [3]));
  LUT6 #(
    .INIT(64'h88F87707770788F8)) 
    sum__0_carry__5_i_6
       (.I0(lt_carry__2_0),
        .I1(rd10[26]),
        .I2(Q[26]),
        .I3(lt_carry__2),
        .I4(SrcB[26]),
        .I5(ALUControl__0),
        .O(\q_reg[27]_0 [2]));
  LUT6 #(
    .INIT(64'h88F87707770788F8)) 
    sum__0_carry__5_i_7
       (.I0(lt_carry__2_0),
        .I1(rd10[25]),
        .I2(Q[25]),
        .I3(lt_carry__2),
        .I4(SrcB[25]),
        .I5(ALUControl__0),
        .O(\q_reg[27]_0 [1]));
  LUT6 #(
    .INIT(64'h88F87707770788F8)) 
    sum__0_carry__5_i_8
       (.I0(lt_carry__2_0),
        .I1(rd10[24]),
        .I2(Q[24]),
        .I3(lt_carry__2),
        .I4(SrcB[24]),
        .I5(ALUControl__0),
        .O(\q_reg[27]_0 [0]));
  LUT6 #(
    .INIT(64'h88F87707770788F8)) 
    sum__0_carry__6_i_4
       (.I0(lt_carry__2_0),
        .I1(rd10[31]),
        .I2(Q[31]),
        .I3(lt_carry__2),
        .I4(ALUControl__0),
        .I5(SrcB[31]),
        .O(\q_reg[31] [3]));
  LUT6 #(
    .INIT(64'h88F87707770788F8)) 
    sum__0_carry__6_i_5
       (.I0(lt_carry__2_0),
        .I1(rd10[30]),
        .I2(Q[30]),
        .I3(lt_carry__2),
        .I4(SrcB[30]),
        .I5(ALUControl__0),
        .O(\q_reg[31] [2]));
  LUT6 #(
    .INIT(64'h88F87707770788F8)) 
    sum__0_carry__6_i_6
       (.I0(lt_carry__2_0),
        .I1(rd10[29]),
        .I2(Q[29]),
        .I3(lt_carry__2),
        .I4(SrcB[29]),
        .I5(ALUControl__0),
        .O(\q_reg[31] [1]));
  LUT6 #(
    .INIT(64'h88F87707770788F8)) 
    sum__0_carry__6_i_7
       (.I0(lt_carry__2_0),
        .I1(rd10[28]),
        .I2(Q[28]),
        .I3(lt_carry__2),
        .I4(SrcB[28]),
        .I5(ALUControl__0),
        .O(\q_reg[31] [0]));
  LUT2 #(
    .INIT(4'h6)) 
    sum__0_carry_i_1
       (.I0(ALUControl__0),
        .I1(SrcB[0]),
        .O(\ALUResult[31]_INST_0_i_11_2 ));
  LUT6 #(
    .INIT(64'h88F87707770788F8)) 
    sum__0_carry_i_6
       (.I0(lt_carry__2_0),
        .I1(rd10[3]),
        .I2(Q[3]),
        .I3(lt_carry__2),
        .I4(SrcB[3]),
        .I5(ALUControl__0),
        .O(\q_reg[3]_0 [3]));
  LUT6 #(
    .INIT(64'h88F87707770788F8)) 
    sum__0_carry_i_7
       (.I0(lt_carry__2_0),
        .I1(rd10[2]),
        .I2(Q[2]),
        .I3(lt_carry__2),
        .I4(SrcB[2]),
        .I5(ALUControl__0),
        .O(\q_reg[3]_0 [2]));
  LUT6 #(
    .INIT(64'h88F87707770788F8)) 
    sum__0_carry_i_8
       (.I0(lt_carry__2_0),
        .I1(rd10[1]),
        .I2(Q[1]),
        .I3(lt_carry__2),
        .I4(SrcB[1]),
        .I5(ALUControl__0),
        .O(\q_reg[3]_0 [1]));
  LUT6 #(
    .INIT(64'h777707778888F888)) 
    sum__0_carry_i_9
       (.I0(lt_carry__2_0),
        .I1(rd10[0]),
        .I2(Q[0]),
        .I3(Instr[2]),
        .I4(Instr[5]),
        .I5(ALUControl__0),
        .O(\q_reg[3]_0 [0]));
endmodule

(* ORIG_REF_NAME = "riscvsingle" *) 
module design_1_top_0_0_riscvsingle
   (clk,
    reset,
    PC,
    Instr,
    MemWrite,
    MemStrobe,
    ALUResult,
    WriteData,
    ReadData,
    PCReady);
  input clk;
  input reset;
  output [31:0]PC;
  input [31:0]Instr;
  output MemWrite;
  output MemStrobe;
  output [31:0]ALUResult;
  output [31:0]WriteData;
  input [31:0]ReadData;
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

  LUT2 #(
    .INIT(4'h1)) 
    MemStrobe_INST_0
       (.I0(Instr[6]),
        .I1(Instr[4]),
        .O(MemStrobe));
  LUT6 #(
    .INIT(64'h0000000020000000)) 
    MemWrite_INST_0
       (.I0(Instr[5]),
        .I1(Instr[3]),
        .I2(MemStrobe),
        .I3(Instr[0]),
        .I4(Instr[1]),
        .I5(Instr[2]),
        .O(MemWrite));
  design_1_top_0_0_datapath dp
       (.\ALUResult[31]_INST_0_i_5 (ALUResult[0]),
        .\ALUResult[31]_INST_0_i_5_0 (ALUResult[1]),
        .\ALUResult[31]_INST_0_i_5_1 (ALUResult[2]),
        .\ALUResult[31]_INST_0_i_5_10 (ALUResult[11]),
        .\ALUResult[31]_INST_0_i_5_11 (ALUResult[12]),
        .\ALUResult[31]_INST_0_i_5_12 (ALUResult[13]),
        .\ALUResult[31]_INST_0_i_5_13 (ALUResult[14]),
        .\ALUResult[31]_INST_0_i_5_14 (ALUResult[15]),
        .\ALUResult[31]_INST_0_i_5_15 (ALUResult[16]),
        .\ALUResult[31]_INST_0_i_5_16 (ALUResult[17]),
        .\ALUResult[31]_INST_0_i_5_17 (ALUResult[18]),
        .\ALUResult[31]_INST_0_i_5_18 (ALUResult[19]),
        .\ALUResult[31]_INST_0_i_5_19 (ALUResult[20]),
        .\ALUResult[31]_INST_0_i_5_2 (ALUResult[3]),
        .\ALUResult[31]_INST_0_i_5_20 (ALUResult[21]),
        .\ALUResult[31]_INST_0_i_5_21 (ALUResult[22]),
        .\ALUResult[31]_INST_0_i_5_22 (ALUResult[23]),
        .\ALUResult[31]_INST_0_i_5_23 (ALUResult[24]),
        .\ALUResult[31]_INST_0_i_5_24 (ALUResult[25]),
        .\ALUResult[31]_INST_0_i_5_25 (ALUResult[26]),
        .\ALUResult[31]_INST_0_i_5_26 (ALUResult[27]),
        .\ALUResult[31]_INST_0_i_5_27 (ALUResult[28]),
        .\ALUResult[31]_INST_0_i_5_28 (ALUResult[29]),
        .\ALUResult[31]_INST_0_i_5_29 (ALUResult[30]),
        .\ALUResult[31]_INST_0_i_5_3 (ALUResult[4]),
        .\ALUResult[31]_INST_0_i_5_30 (ALUResult[31]),
        .\ALUResult[31]_INST_0_i_5_4 (ALUResult[5]),
        .\ALUResult[31]_INST_0_i_5_5 (ALUResult[6]),
        .\ALUResult[31]_INST_0_i_5_6 (ALUResult[7]),
        .\ALUResult[31]_INST_0_i_5_7 (ALUResult[8]),
        .\ALUResult[31]_INST_0_i_5_8 (ALUResult[9]),
        .\ALUResult[31]_INST_0_i_5_9 (ALUResult[10]),
        .Instr(Instr),
        .PCReady(PCReady),
        .Q(PC),
        .ReadData(ReadData),
        .WriteData(WriteData),
        .clk(clk),
        .reset(reset));
endmodule

(* ORIG_REF_NAME = "top" *) (* keep_hierarchy = "soft" *) 
module design_1_top_0_0_top
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
  design_1_top_0_0_imem imem
       (.a({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,PC[5:2],1'b0,1'b0}),
        .rd({Instr[31:2],NLW_imem_rd_UNCONNECTED[1:0]}));
  (* KEEP_HIERARCHY = "soft" *) 
  design_1_top_0_0_MemControl memcontrol
       (.AXIstart(AXIStart),
        .DRW(DRW),
        .Done(PCReady),
        .MStrobe(MStrobe),
        .MemWrite(MemWrite),
        .Trigger(doneM),
        .clk(clk),
        .reset(reset));
  (* KEEP_HIERARCHY = "soft" *) 
  design_1_top_0_0_riscvsingle riscvsingle
       (.ALUResult(addressM),
        .Instr(Instr),
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
