-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
-- Date        : Mon Dec  8 14:36:00 2025
-- Host        : CEAT-ENDV350-07L running 64-bit Ubuntu 22.04.5 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_top_0_0_sim_netlist.vhdl
-- Design      : design_1_top_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MemControl is
  port (
    Done : out STD_LOGIC;
    MStrobe : in STD_LOGIC;
    MemWrite : in STD_LOGIC;
    Trigger : in STD_LOGIC;
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    DRW : out STD_LOGIC;
    AXIstart : out STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MemControl;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MemControl is
  signal \<const0>\ : STD_LOGIC;
  signal \FSM_sequential_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_1_n_0\ : STD_LOGIC;
  signal nextstate : STD_LOGIC_VECTOR ( 0 to 0 );
  signal state : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of DRW_INST_0 : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_1\ : label is "soft_lutpair22";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "Idle:000,ReadStart:100,WriteStart:001,ReadData:110,ReadMem:101,WriteData:011,WriteMem:010";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "Idle:000,ReadStart:100,WriteStart:001,ReadData:110,ReadMem:101,WriteData:011,WriteMem:010";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[2]\ : label is "Idle:000,ReadStart:100,WriteStart:001,ReadData:110,ReadMem:101,WriteData:011,WriteMem:010";
begin
  Done <= \<const0>\;
AXIstart_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => state(2),
      I1 => state(0),
      I2 => state(1),
      O => AXIstart
    );
DRW_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"15"
    )
        port map (
      I0 => state(2),
      I1 => state(1),
      I2 => state(0),
      O => DRW
    );
\FSM_sequential_state[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => nextstate(0),
      I1 => reset,
      O => \FSM_sequential_state[0]_i_1_n_0\
    );
\FSM_sequential_state[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"101010105D585858"
    )
        port map (
      I0 => state(1),
      I1 => Trigger,
      I2 => state(2),
      I3 => MemWrite,
      I4 => MStrobe,
      I5 => state(0),
      O => nextstate(0)
    );
\FSM_sequential_state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001A12"
    )
        port map (
      I0 => state(0),
      I1 => state(2),
      I2 => state(1),
      I3 => Trigger,
      I4 => reset,
      O => \FSM_sequential_state[1]_i_1_n_0\
    );
\FSM_sequential_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000AABA"
    )
        port map (
      I0 => state(2),
      I1 => state(0),
      I2 => MStrobe,
      I3 => MemWrite,
      I4 => state(1),
      I5 => reset,
      O => \FSM_sequential_state[2]_i_1_n_0\
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_state[0]_i_1_n_0\,
      Q => state(0),
      R => '0'
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_state[1]_i_1_n_0\,
      Q => state(1),
      R => '0'
    );
\FSM_sequential_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_state[2]_i_1_n_0\,
      Q => state(2),
      R => '0'
    );
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_alu is
  port (
    O : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \sum_carry__0_i_8\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \sum_carry__1_i_8\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \sum_carry__2_i_8\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \sum_carry__3_i_8\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \sum_carry__4_i_8\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \sum_carry__5_i_8\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \sum_carry__6_i_7\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ALUResult : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ALUResult[31]_INST_0_i_8\ : out STD_LOGIC;
    \rd[23]_INST_0\ : out STD_LOGIC;
    sel0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    \immext__64\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ALUSrc : out STD_LOGIC_VECTOR ( 0 to 0 );
    rd21 : out STD_LOGIC;
    wd3 : out STD_LOGIC_VECTOR ( 0 to 0 );
    \readDataM[31]\ : out STD_LOGIC;
    \rd[6]_INST_0\ : out STD_LOGIC;
    \rd[5]_INST_0\ : out STD_LOGIC;
    \ALUResult[0]_INST_0_i_3\ : in STD_LOGIC;
    \ALUResult[0]_INST_0_i_3_0\ : in STD_LOGIC;
    \ALUResult[0]_INST_0_i_3_1\ : in STD_LOGIC;
    \ALUResult[0]_INST_0_i_3_2\ : in STD_LOGIC;
    DI : in STD_LOGIC_VECTOR ( 0 to 0 );
    S : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \ALUResult[4]_INST_0_i_2\ : in STD_LOGIC;
    \ALUResult[4]_INST_0_i_2_0\ : in STD_LOGIC;
    \ALUResult[4]_INST_0_i_2_1\ : in STD_LOGIC;
    \ALUResult[4]_INST_0_i_2_2\ : in STD_LOGIC;
    \ALUResult[4]_INST_0_i_2_3\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \ALUResult[8]_INST_0_i_2\ : in STD_LOGIC;
    \ALUResult[8]_INST_0_i_2_0\ : in STD_LOGIC;
    \ALUResult[8]_INST_0_i_2_1\ : in STD_LOGIC;
    \ALUResult[8]_INST_0_i_2_2\ : in STD_LOGIC;
    \ALUResult[8]_INST_0_i_2_3\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \ALUResult[12]_INST_0_i_1\ : in STD_LOGIC;
    \ALUResult[12]_INST_0_i_1_0\ : in STD_LOGIC;
    \ALUResult[12]_INST_0_i_1_1\ : in STD_LOGIC;
    \ALUResult[12]_INST_0_i_1_2\ : in STD_LOGIC;
    \ALUResult[12]_INST_0_i_1_3\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \ALUResult[16]_INST_0_i_1\ : in STD_LOGIC;
    \ALUResult[16]_INST_0_i_1_0\ : in STD_LOGIC;
    \ALUResult[16]_INST_0_i_1_1\ : in STD_LOGIC;
    \ALUResult[16]_INST_0_i_1_2\ : in STD_LOGIC;
    \ALUResult[16]_INST_0_i_1_3\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \ALUResult[20]_INST_0_i_1\ : in STD_LOGIC;
    \ALUResult[20]_INST_0_i_1_0\ : in STD_LOGIC;
    \ALUResult[20]_INST_0_i_1_1\ : in STD_LOGIC;
    \ALUResult[20]_INST_0_i_1_2\ : in STD_LOGIC;
    \ALUResult[20]_INST_0_i_1_3\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \ALUResult[24]_INST_0_i_1\ : in STD_LOGIC;
    \ALUResult[24]_INST_0_i_1_0\ : in STD_LOGIC;
    \ALUResult[24]_INST_0_i_1_1\ : in STD_LOGIC;
    \ALUResult[24]_INST_0_i_1_2\ : in STD_LOGIC;
    \ALUResult[24]_INST_0_i_1_3\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \ALUResult[28]_INST_0_i_1\ : in STD_LOGIC;
    \ALUResult[28]_INST_0_i_1_0\ : in STD_LOGIC;
    \ALUResult[28]_INST_0_i_1_1\ : in STD_LOGIC;
    \ALUResult[28]_INST_0_i_1_2\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \sltuOut_carry__0_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \sltuOut_carry__0_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \sltuOut_carry__1_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \sltuOut_carry__1_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \sltuOut_carry__2_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \sltuOut_carry__2_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \ALUResult[0]_INST_0_i_2_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \ALUResult[0]_INST_0_i_2_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ALUControl : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \addressM[0]\ : in STD_LOGIC;
    \result0__33\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \ALUControl__0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \addressM[0]_0\ : in STD_LOGIC;
    SrcB : in STD_LOGIC_VECTOR ( 0 to 0 );
    \rf_reg_r1_0_31_30_31_i_1__0_0\ : in STD_LOGIC;
    \addressM[31]\ : in STD_LOGIC;
    \addressM[31]_0\ : in STD_LOGIC;
    Instr : in STD_LOGIC_VECTOR ( 19 downto 0 );
    \ALUResult[11]_INST_0_i_4\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \^s\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    ReadData : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Jump : in STD_LOGIC;
    \rf_reg_r2_0_31_30_31__0\ : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_alu;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_alu is
  signal \ALUResult[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \ALUResult[0]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \^aluresult[31]_inst_0_i_8\ : STD_LOGIC;
  signal \^o\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal data8 : STD_LOGIC;
  signal rf_reg_r1_0_31_0_5_i_10_n_0 : STD_LOGIC;
  signal \rf_reg_r1_0_31_30_31_i_2__0_n_0\ : STD_LOGIC;
  signal \^sel0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \sltuOut_carry__0_n_0\ : STD_LOGIC;
  signal \sltuOut_carry__0_n_1\ : STD_LOGIC;
  signal \sltuOut_carry__0_n_2\ : STD_LOGIC;
  signal \sltuOut_carry__0_n_3\ : STD_LOGIC;
  signal \sltuOut_carry__1_n_0\ : STD_LOGIC;
  signal \sltuOut_carry__1_n_1\ : STD_LOGIC;
  signal \sltuOut_carry__1_n_2\ : STD_LOGIC;
  signal \sltuOut_carry__1_n_3\ : STD_LOGIC;
  signal \sltuOut_carry__2_n_1\ : STD_LOGIC;
  signal \sltuOut_carry__2_n_2\ : STD_LOGIC;
  signal \sltuOut_carry__2_n_3\ : STD_LOGIC;
  signal sltuOut_carry_n_0 : STD_LOGIC;
  signal sltuOut_carry_n_1 : STD_LOGIC;
  signal sltuOut_carry_n_2 : STD_LOGIC;
  signal sltuOut_carry_n_3 : STD_LOGIC;
  signal \sum_carry__0_n_0\ : STD_LOGIC;
  signal \sum_carry__0_n_1\ : STD_LOGIC;
  signal \sum_carry__0_n_2\ : STD_LOGIC;
  signal \sum_carry__0_n_3\ : STD_LOGIC;
  signal \sum_carry__1_n_0\ : STD_LOGIC;
  signal \sum_carry__1_n_1\ : STD_LOGIC;
  signal \sum_carry__1_n_2\ : STD_LOGIC;
  signal \sum_carry__1_n_3\ : STD_LOGIC;
  signal \sum_carry__2_n_0\ : STD_LOGIC;
  signal \sum_carry__2_n_1\ : STD_LOGIC;
  signal \sum_carry__2_n_2\ : STD_LOGIC;
  signal \sum_carry__2_n_3\ : STD_LOGIC;
  signal \sum_carry__3_n_0\ : STD_LOGIC;
  signal \sum_carry__3_n_1\ : STD_LOGIC;
  signal \sum_carry__3_n_2\ : STD_LOGIC;
  signal \sum_carry__3_n_3\ : STD_LOGIC;
  signal \sum_carry__4_n_0\ : STD_LOGIC;
  signal \sum_carry__4_n_1\ : STD_LOGIC;
  signal \sum_carry__4_n_2\ : STD_LOGIC;
  signal \sum_carry__4_n_3\ : STD_LOGIC;
  signal \sum_carry__5_n_0\ : STD_LOGIC;
  signal \sum_carry__5_n_1\ : STD_LOGIC;
  signal \sum_carry__5_n_2\ : STD_LOGIC;
  signal \sum_carry__5_n_3\ : STD_LOGIC;
  signal \^sum_carry__6_i_7\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \sum_carry__6_n_1\ : STD_LOGIC;
  signal \sum_carry__6_n_2\ : STD_LOGIC;
  signal \sum_carry__6_n_3\ : STD_LOGIC;
  signal sum_carry_n_0 : STD_LOGIC;
  signal sum_carry_n_1 : STD_LOGIC;
  signal sum_carry_n_2 : STD_LOGIC;
  signal sum_carry_n_3 : STD_LOGIC;
  signal NLW_sltuOut_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_sltuOut_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_sltuOut_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_sltuOut_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_sum_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ALUResult[30]_INST_0_i_7\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \ALUResult[31]_INST_0_i_30\ : label is "soft_lutpair0";
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of sltuOut_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \sltuOut_carry__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \sltuOut_carry__1\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \sltuOut_carry__2\ : label is 11;
  attribute SOFT_HLUTNM of sltuOut_carry_i_9 : label is "soft_lutpair1";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of sum_carry : label is 35;
  attribute ADDER_THRESHOLD of \sum_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \sum_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \sum_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \sum_carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \sum_carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \sum_carry__5\ : label is 35;
  attribute ADDER_THRESHOLD of \sum_carry__6\ : label is 35;
  attribute SOFT_HLUTNM of \sum_carry__6_i_8\ : label is "soft_lutpair0";
begin
  \ALUResult[31]_INST_0_i_8\ <= \^aluresult[31]_inst_0_i_8\;
  O(3 downto 0) <= \^o\(3 downto 0);
  sel0(0) <= \^sel0\(0);
  \sum_carry__6_i_7\(3 downto 0) <= \^sum_carry__6_i_7\(3 downto 0);
\ALUResult[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \ALUResult[0]_INST_0_i_1_n_0\,
      I1 => ALUControl(1),
      I2 => \ALUResult[0]_INST_0_i_2_n_0\,
      I3 => ALUControl(2),
      I4 => \addressM[0]\,
      O => ALUResult(0)
    );
\ALUResult[0]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F0BB"
    )
        port map (
      I0 => SrcB(0),
      I1 => ALUControl(0),
      I2 => \^o\(0),
      I3 => \ALUControl__0\(0),
      I4 => data8,
      O => \ALUResult[0]_INST_0_i_1_n_0\
    );
\ALUResult[0]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA03F3FAFA03030"
    )
        port map (
      I0 => \^o\(0),
      I1 => \result0__33\(0),
      I2 => ALUControl(0),
      I3 => data8,
      I4 => \ALUControl__0\(0),
      I5 => \addressM[0]_0\,
      O => \ALUResult[0]_INST_0_i_2_n_0\
    );
\ALUResult[11]_INST_0_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => Instr(14),
      I1 => \^sel0\(0),
      I2 => Instr(5),
      I3 => \ALUResult[11]_INST_0_i_4\(0),
      I4 => Instr(19),
      O => \rd[23]_INST_0\
    );
\ALUResult[12]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F1FDF9FDE0206020"
    )
        port map (
      I0 => Instr(0),
      I1 => Instr(4),
      I2 => Instr(6),
      I3 => \^sel0\(0),
      I4 => Instr(1),
      I5 => Instr(19),
      O => \immext__64\(0)
    );
\ALUResult[13]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F1FDF9FDE0206020"
    )
        port map (
      I0 => Instr(0),
      I1 => Instr(4),
      I2 => Instr(7),
      I3 => \^sel0\(0),
      I4 => Instr(1),
      I5 => Instr(19),
      O => \immext__64\(1)
    );
\ALUResult[14]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F1FDF9FDE0206020"
    )
        port map (
      I0 => Instr(0),
      I1 => Instr(4),
      I2 => Instr(8),
      I3 => \^sel0\(0),
      I4 => Instr(1),
      I5 => Instr(19),
      O => \immext__64\(2)
    );
\ALUResult[15]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F1FDF9FDE0206020"
    )
        port map (
      I0 => Instr(0),
      I1 => Instr(4),
      I2 => Instr(9),
      I3 => \^sel0\(0),
      I4 => Instr(1),
      I5 => Instr(19),
      O => \immext__64\(3)
    );
\ALUResult[16]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F1FDF9FDE0206020"
    )
        port map (
      I0 => Instr(0),
      I1 => Instr(4),
      I2 => Instr(10),
      I3 => \^sel0\(0),
      I4 => Instr(1),
      I5 => Instr(19),
      O => \immext__64\(4)
    );
\ALUResult[17]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F1FDF9FDE0206020"
    )
        port map (
      I0 => Instr(0),
      I1 => Instr(4),
      I2 => Instr(11),
      I3 => \^sel0\(0),
      I4 => Instr(1),
      I5 => Instr(19),
      O => \immext__64\(5)
    );
\ALUResult[18]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F1FDF9FDE0206020"
    )
        port map (
      I0 => Instr(0),
      I1 => Instr(4),
      I2 => Instr(12),
      I3 => \^sel0\(0),
      I4 => Instr(1),
      I5 => Instr(19),
      O => \immext__64\(6)
    );
\ALUResult[19]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F1FDF9FDE0206020"
    )
        port map (
      I0 => Instr(0),
      I1 => Instr(4),
      I2 => Instr(13),
      I3 => \^sel0\(0),
      I4 => Instr(1),
      I5 => Instr(19),
      O => \immext__64\(7)
    );
\ALUResult[30]_INST_0_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Instr(0),
      I1 => Instr(4),
      O => \rd[6]_INST_0\
    );
\ALUResult[31]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888888FFFCCCFC"
    )
        port map (
      I0 => \^sum_carry__6_i_7\(3),
      I1 => ALUControl(0),
      I2 => \addressM[31]\,
      I3 => SrcB(0),
      I4 => \addressM[31]_0\,
      I5 => \ALUControl__0\(0),
      O => \^aluresult[31]_inst_0_i_8\
    );
\ALUResult[31]_INST_0_i_30\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABAA"
    )
        port map (
      I0 => Instr(1),
      I1 => Instr(2),
      I2 => Instr(4),
      I3 => Instr(3),
      O => \^sel0\(0)
    );
rf_reg_r1_0_31_0_5_i_10: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALUResult[0]_INST_0_i_2_n_0\,
      I1 => \ALUResult[0]_INST_0_i_1_n_0\,
      O => rf_reg_r1_0_31_0_5_i_10_n_0,
      S => ALUControl(1)
    );
rf_reg_r1_0_31_0_5_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFE200E2"
    )
        port map (
      I0 => \addressM[0]\,
      I1 => ALUControl(2),
      I2 => rf_reg_r1_0_31_0_5_i_10_n_0,
      I3 => \^s\(0),
      I4 => ReadData(0),
      I5 => Jump,
      O => wd3(0)
    );
\rf_reg_r1_0_31_30_31_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFE200E2"
    )
        port map (
      I0 => \rf_reg_r2_0_31_30_31__0\,
      I1 => ALUControl(2),
      I2 => \rf_reg_r1_0_31_30_31_i_2__0_n_0\,
      I3 => \^s\(0),
      I4 => ReadData(1),
      I5 => Jump,
      O => \readDataM[31]\
    );
\rf_reg_r1_0_31_30_31_i_2__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \^aluresult[31]_inst_0_i_8\,
      I1 => \rf_reg_r1_0_31_30_31_i_1__0_0\,
      O => \rf_reg_r1_0_31_30_31_i_2__0_n_0\,
      S => ALUControl(1)
    );
sltuOut_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => sltuOut_carry_n_0,
      CO(2) => sltuOut_carry_n_1,
      CO(1) => sltuOut_carry_n_2,
      CO(0) => sltuOut_carry_n_3,
      CYINIT => '0',
      DI(3 downto 0) => \sltuOut_carry__0_0\(3 downto 0),
      O(3 downto 0) => NLW_sltuOut_carry_O_UNCONNECTED(3 downto 0),
      S(3 downto 0) => \sltuOut_carry__0_1\(3 downto 0)
    );
\sltuOut_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => sltuOut_carry_n_0,
      CO(3) => \sltuOut_carry__0_n_0\,
      CO(2) => \sltuOut_carry__0_n_1\,
      CO(1) => \sltuOut_carry__0_n_2\,
      CO(0) => \sltuOut_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \sltuOut_carry__1_0\(3 downto 0),
      O(3 downto 0) => \NLW_sltuOut_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => \sltuOut_carry__1_1\(3 downto 0)
    );
\sltuOut_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sltuOut_carry__0_n_0\,
      CO(3) => \sltuOut_carry__1_n_0\,
      CO(2) => \sltuOut_carry__1_n_1\,
      CO(1) => \sltuOut_carry__1_n_2\,
      CO(0) => \sltuOut_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \sltuOut_carry__2_0\(3 downto 0),
      O(3 downto 0) => \NLW_sltuOut_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => \sltuOut_carry__2_1\(3 downto 0)
    );
\sltuOut_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \sltuOut_carry__1_n_0\,
      CO(3) => data8,
      CO(2) => \sltuOut_carry__2_n_1\,
      CO(1) => \sltuOut_carry__2_n_2\,
      CO(0) => \sltuOut_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \ALUResult[0]_INST_0_i_2_0\(3 downto 0),
      O(3 downto 0) => \NLW_sltuOut_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => \ALUResult[0]_INST_0_i_2_1\(3 downto 0)
    );
sltuOut_carry_i_9: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Instr(0),
      I1 => Instr(3),
      O => \rd[5]_INST_0\
    );
sum_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => sum_carry_n_0,
      CO(2) => sum_carry_n_1,
      CO(1) => sum_carry_n_2,
      CO(0) => sum_carry_n_3,
      CYINIT => \ALUResult[0]_INST_0_i_3\,
      DI(3) => \ALUResult[0]_INST_0_i_3_0\,
      DI(2) => \ALUResult[0]_INST_0_i_3_1\,
      DI(1) => \ALUResult[0]_INST_0_i_3_2\,
      DI(0) => DI(0),
      O(3 downto 0) => \^o\(3 downto 0),
      S(3 downto 0) => S(3 downto 0)
    );
\sum_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => sum_carry_n_0,
      CO(3) => \sum_carry__0_n_0\,
      CO(2) => \sum_carry__0_n_1\,
      CO(1) => \sum_carry__0_n_2\,
      CO(0) => \sum_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \ALUResult[4]_INST_0_i_2\,
      DI(2) => \ALUResult[4]_INST_0_i_2_0\,
      DI(1) => \ALUResult[4]_INST_0_i_2_1\,
      DI(0) => \ALUResult[4]_INST_0_i_2_2\,
      O(3 downto 0) => \sum_carry__0_i_8\(3 downto 0),
      S(3 downto 0) => \ALUResult[4]_INST_0_i_2_3\(3 downto 0)
    );
\sum_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum_carry__0_n_0\,
      CO(3) => \sum_carry__1_n_0\,
      CO(2) => \sum_carry__1_n_1\,
      CO(1) => \sum_carry__1_n_2\,
      CO(0) => \sum_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \ALUResult[8]_INST_0_i_2\,
      DI(2) => \ALUResult[8]_INST_0_i_2_0\,
      DI(1) => \ALUResult[8]_INST_0_i_2_1\,
      DI(0) => \ALUResult[8]_INST_0_i_2_2\,
      O(3 downto 0) => \sum_carry__1_i_8\(3 downto 0),
      S(3 downto 0) => \ALUResult[8]_INST_0_i_2_3\(3 downto 0)
    );
\sum_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum_carry__1_n_0\,
      CO(3) => \sum_carry__2_n_0\,
      CO(2) => \sum_carry__2_n_1\,
      CO(1) => \sum_carry__2_n_2\,
      CO(0) => \sum_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \ALUResult[12]_INST_0_i_1\,
      DI(2) => \ALUResult[12]_INST_0_i_1_0\,
      DI(1) => \ALUResult[12]_INST_0_i_1_1\,
      DI(0) => \ALUResult[12]_INST_0_i_1_2\,
      O(3 downto 0) => \sum_carry__2_i_8\(3 downto 0),
      S(3 downto 0) => \ALUResult[12]_INST_0_i_1_3\(3 downto 0)
    );
\sum_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum_carry__2_n_0\,
      CO(3) => \sum_carry__3_n_0\,
      CO(2) => \sum_carry__3_n_1\,
      CO(1) => \sum_carry__3_n_2\,
      CO(0) => \sum_carry__3_n_3\,
      CYINIT => '0',
      DI(3) => \ALUResult[16]_INST_0_i_1\,
      DI(2) => \ALUResult[16]_INST_0_i_1_0\,
      DI(1) => \ALUResult[16]_INST_0_i_1_1\,
      DI(0) => \ALUResult[16]_INST_0_i_1_2\,
      O(3 downto 0) => \sum_carry__3_i_8\(3 downto 0),
      S(3 downto 0) => \ALUResult[16]_INST_0_i_1_3\(3 downto 0)
    );
\sum_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum_carry__3_n_0\,
      CO(3) => \sum_carry__4_n_0\,
      CO(2) => \sum_carry__4_n_1\,
      CO(1) => \sum_carry__4_n_2\,
      CO(0) => \sum_carry__4_n_3\,
      CYINIT => '0',
      DI(3) => \ALUResult[20]_INST_0_i_1\,
      DI(2) => \ALUResult[20]_INST_0_i_1_0\,
      DI(1) => \ALUResult[20]_INST_0_i_1_1\,
      DI(0) => \ALUResult[20]_INST_0_i_1_2\,
      O(3 downto 0) => \sum_carry__4_i_8\(3 downto 0),
      S(3 downto 0) => \ALUResult[20]_INST_0_i_1_3\(3 downto 0)
    );
\sum_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum_carry__4_n_0\,
      CO(3) => \sum_carry__5_n_0\,
      CO(2) => \sum_carry__5_n_1\,
      CO(1) => \sum_carry__5_n_2\,
      CO(0) => \sum_carry__5_n_3\,
      CYINIT => '0',
      DI(3) => \ALUResult[24]_INST_0_i_1\,
      DI(2) => \ALUResult[24]_INST_0_i_1_0\,
      DI(1) => \ALUResult[24]_INST_0_i_1_1\,
      DI(0) => \ALUResult[24]_INST_0_i_1_2\,
      O(3 downto 0) => \sum_carry__5_i_8\(3 downto 0),
      S(3 downto 0) => \ALUResult[24]_INST_0_i_1_3\(3 downto 0)
    );
\sum_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum_carry__5_n_0\,
      CO(3) => \NLW_sum_carry__6_CO_UNCONNECTED\(3),
      CO(2) => \sum_carry__6_n_1\,
      CO(1) => \sum_carry__6_n_2\,
      CO(0) => \sum_carry__6_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \ALUResult[28]_INST_0_i_1\,
      DI(1) => \ALUResult[28]_INST_0_i_1_0\,
      DI(0) => \ALUResult[28]_INST_0_i_1_1\,
      O(3 downto 0) => \^sum_carry__6_i_7\(3 downto 0),
      S(3 downto 0) => \ALUResult[28]_INST_0_i_1_2\(3 downto 0)
    );
\sum_carry__6_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AABF"
    )
        port map (
      I0 => Instr(0),
      I1 => Instr(2),
      I2 => Instr(3),
      I3 => Instr(4),
      O => ALUSrc(0)
    );
\sum_carry__6_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => Instr(16),
      I1 => Instr(14),
      I2 => Instr(15),
      I3 => Instr(17),
      I4 => Instr(18),
      O => rd21
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_imem is
  port (
    a : in STD_LOGIC_VECTOR ( 31 downto 0 );
    rd : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_imem;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_imem is
  signal \<const0>\ : STD_LOGIC;
  signal \^rd\ : STD_LOGIC_VECTOR ( 31 downto 4 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \rd[25]_INST_0\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \rd[28]_INST_0\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \rd[2]_INST_0\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \rd[4]_INST_0\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \rd[5]_INST_0\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \rd[6]_INST_0\ : label is "soft_lutpair19";
begin
  rd(31) <= \^rd\(31);
  rd(30) <= \^rd\(31);
  rd(29) <= \^rd\(31);
  rd(28) <= \^rd\(28);
  rd(27) <= \^rd\(31);
  rd(26) <= \^rd\(31);
  rd(25 downto 24) <= \^rd\(25 downto 24);
  rd(23) <= \^rd\(31);
  rd(22 downto 19) <= \^rd\(22 downto 19);
  rd(18) <= \^rd\(19);
  rd(17 downto 13) <= \^rd\(17 downto 13);
  rd(12) <= \^rd\(14);
  rd(11 downto 4) <= \^rd\(11 downto 4);
  rd(3) <= \^rd\(14);
  rd(2) <= \^rd\(14);
  rd(1) <= \<const0>\;
  rd(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\rd[10]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00CD"
    )
        port map (
      I0 => a(5),
      I1 => a(2),
      I2 => a(4),
      I3 => a(3),
      O => \^rd\(10)
    );
\rd[11]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"004D"
    )
        port map (
      I0 => a(5),
      I1 => a(2),
      I2 => a(4),
      I3 => a(3),
      O => \^rd\(11)
    );
\rd[13]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => a(5),
      I1 => a(3),
      I2 => a(4),
      O => \^rd\(13)
    );
\rd[15]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"282A"
    )
        port map (
      I0 => a(5),
      I1 => a(3),
      I2 => a(4),
      I3 => a(2),
      O => \^rd\(15)
    );
\rd[16]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3404"
    )
        port map (
      I0 => a(2),
      I1 => a(5),
      I2 => a(4),
      I3 => a(3),
      O => \^rd\(16)
    );
\rd[17]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6E6A"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(3),
      I3 => a(2),
      O => \^rd\(17)
    );
\rd[18]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22E8"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(2),
      I3 => a(3),
      O => \^rd\(19)
    );
\rd[20]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3260"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(3),
      I3 => a(2),
      O => \^rd\(20)
    );
\rd[21]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0038"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(2),
      I3 => a(3),
      O => \^rd\(21)
    );
\rd[22]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1A2D"
    )
        port map (
      I0 => a(5),
      I1 => a(2),
      I2 => a(4),
      I3 => a(3),
      O => \^rd\(22)
    );
\rd[23]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0220"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(2),
      I3 => a(3),
      O => \^rd\(31)
    );
\rd[24]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(2),
      I3 => a(3),
      O => \^rd\(24)
    );
\rd[25]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0230"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(2),
      I3 => a(3),
      O => \^rd\(25)
    );
\rd[28]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0029"
    )
        port map (
      I0 => a(5),
      I1 => a(2),
      I2 => a(3),
      I3 => a(4),
      O => \^rd\(28)
    );
\rd[2]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(2),
      I3 => a(3),
      O => \^rd\(14)
    );
\rd[4]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CD77"
    )
        port map (
      I0 => a(5),
      I1 => a(3),
      I2 => a(2),
      I3 => a(4),
      O => \^rd\(4)
    );
\rd[5]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AE48"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(2),
      I3 => a(3),
      O => \^rd\(5)
    );
\rd[6]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8A40"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(2),
      I3 => a(3),
      O => \^rd\(6)
    );
\rd[7]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00D5"
    )
        port map (
      I0 => a(2),
      I1 => a(4),
      I2 => a(3),
      I3 => a(5),
      O => \^rd\(7)
    );
\rd[8]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1582"
    )
        port map (
      I0 => a(5),
      I1 => a(2),
      I2 => a(4),
      I3 => a(3),
      O => \^rd\(8)
    );
\rd[9]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4777"
    )
        port map (
      I0 => a(5),
      I1 => a(3),
      I2 => a(2),
      I3 => a(4),
      O => \^rd\(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_regfile is
  port (
    \ALUResult[31]_INST_0_i_13_0\ : out STD_LOGIC;
    clk_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    ALUResult : out STD_LOGIC_VECTOR ( 30 downto 0 );
    ALUControl : out STD_LOGIC_VECTOR ( 2 downto 0 );
    clk_1 : out STD_LOGIC;
    Jump : out STD_LOGIC;
    \^s\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    clk_2 : out STD_LOGIC;
    clk_3 : out STD_LOGIC;
    clk_4 : out STD_LOGIC;
    clk_5 : out STD_LOGIC;
    clk_6 : out STD_LOGIC;
    clk_7 : out STD_LOGIC;
    clk_8 : out STD_LOGIC;
    clk_9 : out STD_LOGIC;
    clk_10 : out STD_LOGIC;
    clk_11 : out STD_LOGIC;
    clk_12 : out STD_LOGIC;
    clk_13 : out STD_LOGIC;
    clk_14 : out STD_LOGIC;
    clk_15 : out STD_LOGIC;
    clk_16 : out STD_LOGIC;
    clk_17 : out STD_LOGIC;
    clk_18 : out STD_LOGIC;
    clk_19 : out STD_LOGIC;
    clk_20 : out STD_LOGIC;
    clk_21 : out STD_LOGIC;
    clk_22 : out STD_LOGIC;
    clk_23 : out STD_LOGIC;
    clk_24 : out STD_LOGIC;
    clk_25 : out STD_LOGIC;
    clk_26 : out STD_LOGIC;
    clk_27 : out STD_LOGIC;
    clk_28 : out STD_LOGIC;
    clk_29 : out STD_LOGIC;
    clk_30 : out STD_LOGIC;
    \ALUResult[31]_INST_0_i_8_0\ : out STD_LOGIC;
    \ALUResult[31]_INST_0_i_6_0\ : out STD_LOGIC;
    \result0__33\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ALUControl__0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ALUResult[31]_INST_0_i_28_0\ : out STD_LOGIC;
    clk_31 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    clk_32 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    clk_33 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    clk_34 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    clk_35 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \rd[6]_INST_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    WriteData : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S : out STD_LOGIC_VECTOR ( 3 downto 0 );
    clk_36 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    clk_37 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    clk_38 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    clk_39 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    clk_40 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    clk_41 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \ALUResult[31]_INST_0_i_13_1\ : out STD_LOGIC;
    clk_42 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    clk_43 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    clk_44 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    clk_45 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \ALUResult[31]_INST_0_i_13_2\ : out STD_LOGIC;
    DI : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ALUResult[31]_INST_0_i_23_0\ : out STD_LOGIC;
    clk : in STD_LOGIC;
    Instr : in STD_LOGIC_VECTOR ( 29 downto 0 );
    \writeDataM[31]\ : in STD_LOGIC;
    O : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ReadData : in STD_LOGIC_VECTOR ( 29 downto 0 );
    \addressM[7]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \addressM[11]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \addressM[15]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \addressM[19]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \addressM[23]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \addressM[27]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \addressM[31]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \addressM[31]_0\ : in STD_LOGIC;
    \ALUResult[17]_INST_0_i_13_0\ : in STD_LOGIC;
    ALUSrc : in STD_LOGIC_VECTOR ( 0 to 0 );
    rd21 : in STD_LOGIC;
    \sum_carry__6_i_5_0\ : in STD_LOGIC;
    \sum_carry__1_i_5_0\ : in STD_LOGIC;
    \immext__64\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    sel0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    \writeDataM[1]\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_regfile;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_regfile is
  signal \^alucontrol\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^alucontrol__0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \ALUResult[0]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \ALUResult[0]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \ALUResult[0]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \ALUResult[0]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \ALUResult[0]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \ALUResult[0]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \ALUResult[0]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \ALUResult[0]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \ALUResult[0]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \ALUResult[0]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \ALUResult[10]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \ALUResult[10]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \ALUResult[10]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \ALUResult[10]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \ALUResult[10]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ALUResult[10]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult[10]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \ALUResult[10]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \ALUResult[10]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \ALUResult[10]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \ALUResult[11]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \ALUResult[11]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \ALUResult[11]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \ALUResult[11]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \ALUResult[11]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \ALUResult[11]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ALUResult[11]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult[11]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \ALUResult[11]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \ALUResult[11]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \ALUResult[12]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \ALUResult[12]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \ALUResult[12]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \ALUResult[12]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \ALUResult[12]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \ALUResult[12]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \ALUResult[12]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ALUResult[12]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult[12]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \ALUResult[12]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \ALUResult[12]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \ALUResult[12]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \ALUResult[13]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \ALUResult[13]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \ALUResult[13]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \ALUResult[13]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \ALUResult[13]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \ALUResult[13]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \ALUResult[13]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ALUResult[13]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult[13]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \ALUResult[13]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \ALUResult[13]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \ALUResult[13]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \ALUResult[14]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \ALUResult[14]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \ALUResult[14]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \ALUResult[14]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \ALUResult[14]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \ALUResult[14]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \ALUResult[14]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ALUResult[14]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult[14]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \ALUResult[14]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \ALUResult[14]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \ALUResult[14]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \ALUResult[15]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \ALUResult[15]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \ALUResult[15]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \ALUResult[15]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \ALUResult[15]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \ALUResult[15]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \ALUResult[15]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \ALUResult[15]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ALUResult[15]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult[15]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \ALUResult[15]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \ALUResult[15]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \ALUResult[15]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \ALUResult[16]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \ALUResult[16]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \ALUResult[16]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \ALUResult[16]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \ALUResult[16]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \ALUResult[16]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \ALUResult[16]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \ALUResult[16]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \ALUResult[16]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ALUResult[16]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult[16]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \ALUResult[16]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \ALUResult[16]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \ALUResult[16]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \ALUResult[17]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \ALUResult[17]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \ALUResult[17]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \ALUResult[17]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \ALUResult[17]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \ALUResult[17]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \ALUResult[17]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \ALUResult[17]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \ALUResult[17]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ALUResult[17]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult[17]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \ALUResult[17]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \ALUResult[17]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \ALUResult[17]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \ALUResult[18]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \ALUResult[18]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \ALUResult[18]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \ALUResult[18]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \ALUResult[18]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \ALUResult[18]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \ALUResult[18]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \ALUResult[18]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \ALUResult[18]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ALUResult[18]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult[18]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \ALUResult[18]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \ALUResult[18]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \ALUResult[18]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \ALUResult[19]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \ALUResult[19]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \ALUResult[19]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \ALUResult[19]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \ALUResult[19]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \ALUResult[19]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \ALUResult[19]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \ALUResult[19]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \ALUResult[19]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ALUResult[19]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult[19]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \ALUResult[19]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \ALUResult[19]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \ALUResult[19]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \ALUResult[1]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \ALUResult[1]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \ALUResult[1]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \ALUResult[1]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \ALUResult[1]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \ALUResult[1]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ALUResult[1]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult[1]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \ALUResult[1]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \ALUResult[1]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \ALUResult[1]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \ALUResult[20]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \ALUResult[20]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \ALUResult[20]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \ALUResult[20]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \ALUResult[20]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \ALUResult[20]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \ALUResult[20]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ALUResult[20]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult[20]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \ALUResult[20]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \ALUResult[20]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \ALUResult[20]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \ALUResult[20]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \ALUResult[21]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \ALUResult[21]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \ALUResult[21]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \ALUResult[21]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \ALUResult[21]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \ALUResult[21]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \ALUResult[21]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ALUResult[21]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult[21]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \ALUResult[21]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \ALUResult[21]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \ALUResult[21]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \ALUResult[21]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \ALUResult[22]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \ALUResult[22]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \ALUResult[22]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \ALUResult[22]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \ALUResult[22]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \ALUResult[22]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \ALUResult[22]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ALUResult[22]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult[22]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \ALUResult[22]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \ALUResult[22]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \ALUResult[22]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \ALUResult[22]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \ALUResult[23]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \ALUResult[23]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \ALUResult[23]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \ALUResult[23]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \ALUResult[23]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \ALUResult[23]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ALUResult[23]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult[23]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \ALUResult[23]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \ALUResult[23]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \ALUResult[23]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \ALUResult[23]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \ALUResult[24]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \ALUResult[24]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \ALUResult[24]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \ALUResult[24]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \ALUResult[24]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \ALUResult[24]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ALUResult[24]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult[24]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \ALUResult[24]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \ALUResult[24]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \ALUResult[24]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \ALUResult[24]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \ALUResult[25]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \ALUResult[25]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \ALUResult[25]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \ALUResult[25]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \ALUResult[25]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \ALUResult[25]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \ALUResult[25]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ALUResult[25]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult[25]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \ALUResult[25]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \ALUResult[25]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \ALUResult[25]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \ALUResult[25]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \ALUResult[26]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \ALUResult[26]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \ALUResult[26]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \ALUResult[26]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \ALUResult[26]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \ALUResult[26]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \ALUResult[26]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ALUResult[26]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult[26]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \ALUResult[26]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \ALUResult[26]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \ALUResult[26]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \ALUResult[26]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \ALUResult[27]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \ALUResult[27]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \ALUResult[27]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \ALUResult[27]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \ALUResult[27]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \ALUResult[27]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \ALUResult[27]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ALUResult[27]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult[27]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \ALUResult[27]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \ALUResult[27]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \ALUResult[27]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \ALUResult[27]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \ALUResult[28]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \ALUResult[28]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \ALUResult[28]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \ALUResult[28]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \ALUResult[28]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \ALUResult[28]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ALUResult[28]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult[28]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \ALUResult[28]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \ALUResult[28]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \ALUResult[28]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \ALUResult[28]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \ALUResult[29]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \ALUResult[29]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \ALUResult[29]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \ALUResult[29]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ALUResult[29]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult[29]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \ALUResult[29]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \ALUResult[29]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \ALUResult[29]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \ALUResult[29]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \ALUResult[2]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \ALUResult[2]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \ALUResult[2]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \ALUResult[2]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \ALUResult[2]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \ALUResult[2]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ALUResult[2]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult[2]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \ALUResult[2]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \ALUResult[2]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \ALUResult[2]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \ALUResult[30]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \ALUResult[30]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \ALUResult[30]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \ALUResult[30]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \ALUResult[30]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ALUResult[30]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult[30]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \ALUResult[30]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \ALUResult[30]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \ALUResult[30]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \ALUResult[31]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \ALUResult[31]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \ALUResult[31]_INST_0_i_17_n_0\ : STD_LOGIC;
  signal \ALUResult[31]_INST_0_i_18_n_0\ : STD_LOGIC;
  signal \ALUResult[31]_INST_0_i_19_n_0\ : STD_LOGIC;
  signal \ALUResult[31]_INST_0_i_20_n_0\ : STD_LOGIC;
  signal \ALUResult[31]_INST_0_i_21_n_0\ : STD_LOGIC;
  signal \ALUResult[31]_INST_0_i_22_n_0\ : STD_LOGIC;
  signal \ALUResult[31]_INST_0_i_23_n_0\ : STD_LOGIC;
  signal \ALUResult[31]_INST_0_i_24_n_0\ : STD_LOGIC;
  signal \ALUResult[31]_INST_0_i_25_n_0\ : STD_LOGIC;
  signal \ALUResult[31]_INST_0_i_26_n_0\ : STD_LOGIC;
  signal \ALUResult[31]_INST_0_i_27_n_0\ : STD_LOGIC;
  signal \^aluresult[31]_inst_0_i_28_0\ : STD_LOGIC;
  signal \ALUResult[31]_INST_0_i_28_n_0\ : STD_LOGIC;
  signal \ALUResult[31]_INST_0_i_29_n_0\ : STD_LOGIC;
  signal \^aluresult[31]_inst_0_i_6_0\ : STD_LOGIC;
  signal \^aluresult[31]_inst_0_i_8_0\ : STD_LOGIC;
  signal \ALUResult[3]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \ALUResult[3]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \ALUResult[3]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \ALUResult[3]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \ALUResult[3]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \ALUResult[3]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ALUResult[3]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult[3]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \ALUResult[3]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \ALUResult[3]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \ALUResult[3]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \ALUResult[4]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \ALUResult[4]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \ALUResult[4]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \ALUResult[4]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \ALUResult[4]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \ALUResult[4]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \ALUResult[4]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ALUResult[4]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult[4]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \ALUResult[4]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \ALUResult[4]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \ALUResult[5]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \ALUResult[5]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \ALUResult[5]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \ALUResult[5]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ALUResult[5]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult[5]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \ALUResult[5]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \ALUResult[5]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \ALUResult[5]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \ALUResult[6]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \ALUResult[6]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \ALUResult[6]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \ALUResult[6]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ALUResult[6]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult[6]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \ALUResult[6]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \ALUResult[6]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \ALUResult[6]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \ALUResult[7]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \ALUResult[7]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \ALUResult[7]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \ALUResult[7]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ALUResult[7]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult[7]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \ALUResult[7]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \ALUResult[7]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \ALUResult[7]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \ALUResult[8]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \ALUResult[8]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \ALUResult[8]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \ALUResult[8]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \ALUResult[8]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ALUResult[8]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult[8]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \ALUResult[8]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \ALUResult[8]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \ALUResult[8]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \ALUResult[9]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \ALUResult[9]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \ALUResult[9]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \ALUResult[9]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \ALUResult[9]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ALUResult[9]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult[9]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \ALUResult[9]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \ALUResult[9]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \ALUResult[9]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \^jump\ : STD_LOGIC;
  signal SrcB : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \^writedata\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \c/ALUOp\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \c/ad/RtypeSub__0\ : STD_LOGIC;
  signal \^clk_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^clk_1\ : STD_LOGIC;
  signal \^clk_10\ : STD_LOGIC;
  signal \^clk_11\ : STD_LOGIC;
  signal \^clk_12\ : STD_LOGIC;
  signal \^clk_13\ : STD_LOGIC;
  signal \^clk_14\ : STD_LOGIC;
  signal \^clk_15\ : STD_LOGIC;
  signal \^clk_16\ : STD_LOGIC;
  signal \^clk_17\ : STD_LOGIC;
  signal \^clk_18\ : STD_LOGIC;
  signal \^clk_19\ : STD_LOGIC;
  signal \^clk_2\ : STD_LOGIC;
  signal \^clk_20\ : STD_LOGIC;
  signal \^clk_21\ : STD_LOGIC;
  signal \^clk_22\ : STD_LOGIC;
  signal \^clk_23\ : STD_LOGIC;
  signal \^clk_24\ : STD_LOGIC;
  signal \^clk_25\ : STD_LOGIC;
  signal \^clk_26\ : STD_LOGIC;
  signal \^clk_27\ : STD_LOGIC;
  signal \^clk_28\ : STD_LOGIC;
  signal \^clk_29\ : STD_LOGIC;
  signal \^clk_3\ : STD_LOGIC;
  signal \^clk_30\ : STD_LOGIC;
  signal \^clk_4\ : STD_LOGIC;
  signal \^clk_5\ : STD_LOGIC;
  signal \^clk_6\ : STD_LOGIC;
  signal \^clk_7\ : STD_LOGIC;
  signal \^clk_8\ : STD_LOGIC;
  signal \^clk_9\ : STD_LOGIC;
  signal data7 : STD_LOGIC_VECTOR ( 11 downto 1 );
  signal rd10 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal rd11 : STD_LOGIC;
  signal rd20 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^rd[6]_inst_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^result0__33\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal rf_reg_r1_0_31_0_5_i_2_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_31_0_5_i_4_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_31_0_5_i_6_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_31_0_5_i_7_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_31_12_17_i_10_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_31_12_17_i_11_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_31_12_17_i_12_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_31_12_17_i_1_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_31_12_17_i_2_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_31_12_17_i_3_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_31_12_17_i_4_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_31_12_17_i_5_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_31_12_17_i_6_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_31_12_17_i_7_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_31_12_17_i_8_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_31_12_17_i_9_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_31_18_23_i_10_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_31_18_23_i_11_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_31_18_23_i_12_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_31_18_23_i_1_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_31_18_23_i_2_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_31_18_23_i_3_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_31_18_23_i_4_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_31_18_23_i_5_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_31_18_23_i_6_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_31_18_23_i_7_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_31_18_23_i_8_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_31_18_23_i_9_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_31_24_29_i_10_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_31_24_29_i_11_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_31_24_29_i_12_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_31_24_29_i_1_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_31_24_29_i_2_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_31_24_29_i_3_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_31_24_29_i_4_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_31_24_29_i_5_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_31_24_29_i_6_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_31_24_29_i_7_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_31_24_29_i_8_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_31_24_29_i_9_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_31_30_31_i_1_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_31_30_31_i_2_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_31_6_11_i_1_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_31_6_11_i_2_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_31_6_11_i_3_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_31_6_11_i_4_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_31_6_11_i_5_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_31_6_11_i_6_n_0 : STD_LOGIC;
  signal \^s_1\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal wd3 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal we3 : STD_LOGIC;
  signal NLW_rf_reg_r1_0_31_0_5_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_rf_reg_r1_0_31_12_17_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_rf_reg_r1_0_31_18_23_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_rf_reg_r1_0_31_24_29_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_rf_reg_r1_0_31_30_31_SPO_UNCONNECTED : STD_LOGIC;
  signal \NLW_rf_reg_r1_0_31_30_31__0_SPO_UNCONNECTED\ : STD_LOGIC;
  signal NLW_rf_reg_r1_0_31_6_11_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_rf_reg_r2_0_31_0_5_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_rf_reg_r2_0_31_12_17_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_rf_reg_r2_0_31_18_23_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_rf_reg_r2_0_31_24_29_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_rf_reg_r2_0_31_30_31_SPO_UNCONNECTED : STD_LOGIC;
  signal \NLW_rf_reg_r2_0_31_30_31__0_SPO_UNCONNECTED\ : STD_LOGIC;
  signal NLW_rf_reg_r2_0_31_6_11_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ALUResult[0]_INST_0_i_7\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \ALUResult[12]_INST_0_i_5\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \ALUResult[13]_INST_0_i_5\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \ALUResult[14]_INST_0_i_5\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \ALUResult[15]_INST_0_i_14\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \ALUResult[15]_INST_0_i_15\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \ALUResult[15]_INST_0_i_5\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \ALUResult[16]_INST_0_i_5\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \ALUResult[17]_INST_0_i_5\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \ALUResult[18]_INST_0_i_5\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \ALUResult[19]_INST_0_i_5\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \ALUResult[20]_INST_0_i_11\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \ALUResult[20]_INST_0_i_5\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \ALUResult[21]_INST_0_i_11\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \ALUResult[22]_INST_0_i_11\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \ALUResult[23]_INST_0_i_10\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \ALUResult[23]_INST_0_i_11\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \ALUResult[24]_INST_0_i_10\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \ALUResult[24]_INST_0_i_11\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \ALUResult[25]_INST_0_i_10\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \ALUResult[25]_INST_0_i_12\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \ALUResult[26]_INST_0_i_10\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \ALUResult[27]_INST_0_i_14\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \ALUResult[2]_INST_0_i_5\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \ALUResult[31]_INST_0_i_10\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \ALUResult[31]_INST_0_i_11\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \ALUResult[31]_INST_0_i_19\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \ALUResult[31]_INST_0_i_9\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \ALUResult[3]_INST_0_i_5\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \ALUResult[4]_INST_0_i_5\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \ALUResult[4]_INST_0_i_9\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \ALUResult[5]_INST_0_i_5\ : label is "soft_lutpair8";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of rf_reg_r1_0_31_0_5 : label is "";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of rf_reg_r1_0_31_0_5 : label is 1024;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of rf_reg_r1_0_31_0_5 : label is "dp/rf/rf_reg_r1_0_31_0_5";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of rf_reg_r1_0_31_0_5 : label is "RAM_SDP";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of rf_reg_r1_0_31_0_5 : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of rf_reg_r1_0_31_0_5 : label is 31;
  attribute ram_offset : integer;
  attribute ram_offset of rf_reg_r1_0_31_0_5 : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of rf_reg_r1_0_31_0_5 : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of rf_reg_r1_0_31_0_5 : label is 5;
  attribute METHODOLOGY_DRC_VIOS of rf_reg_r1_0_31_12_17 : label is "";
  attribute RTL_RAM_BITS of rf_reg_r1_0_31_12_17 : label is 1024;
  attribute RTL_RAM_NAME of rf_reg_r1_0_31_12_17 : label is "dp/rf/rf_reg_r1_0_31_12_17";
  attribute RTL_RAM_TYPE of rf_reg_r1_0_31_12_17 : label is "RAM_SDP";
  attribute ram_addr_begin of rf_reg_r1_0_31_12_17 : label is 0;
  attribute ram_addr_end of rf_reg_r1_0_31_12_17 : label is 31;
  attribute ram_offset of rf_reg_r1_0_31_12_17 : label is 0;
  attribute ram_slice_begin of rf_reg_r1_0_31_12_17 : label is 12;
  attribute ram_slice_end of rf_reg_r1_0_31_12_17 : label is 17;
  attribute METHODOLOGY_DRC_VIOS of rf_reg_r1_0_31_18_23 : label is "";
  attribute RTL_RAM_BITS of rf_reg_r1_0_31_18_23 : label is 1024;
  attribute RTL_RAM_NAME of rf_reg_r1_0_31_18_23 : label is "dp/rf/rf_reg_r1_0_31_18_23";
  attribute RTL_RAM_TYPE of rf_reg_r1_0_31_18_23 : label is "RAM_SDP";
  attribute ram_addr_begin of rf_reg_r1_0_31_18_23 : label is 0;
  attribute ram_addr_end of rf_reg_r1_0_31_18_23 : label is 31;
  attribute ram_offset of rf_reg_r1_0_31_18_23 : label is 0;
  attribute ram_slice_begin of rf_reg_r1_0_31_18_23 : label is 18;
  attribute ram_slice_end of rf_reg_r1_0_31_18_23 : label is 23;
  attribute METHODOLOGY_DRC_VIOS of rf_reg_r1_0_31_24_29 : label is "";
  attribute RTL_RAM_BITS of rf_reg_r1_0_31_24_29 : label is 1024;
  attribute RTL_RAM_NAME of rf_reg_r1_0_31_24_29 : label is "dp/rf/rf_reg_r1_0_31_24_29";
  attribute RTL_RAM_TYPE of rf_reg_r1_0_31_24_29 : label is "RAM_SDP";
  attribute ram_addr_begin of rf_reg_r1_0_31_24_29 : label is 0;
  attribute ram_addr_end of rf_reg_r1_0_31_24_29 : label is 31;
  attribute ram_offset of rf_reg_r1_0_31_24_29 : label is 0;
  attribute ram_slice_begin of rf_reg_r1_0_31_24_29 : label is 24;
  attribute ram_slice_end of rf_reg_r1_0_31_24_29 : label is 29;
  attribute METHODOLOGY_DRC_VIOS of rf_reg_r1_0_31_30_31 : label is "";
  attribute RTL_RAM_BITS of rf_reg_r1_0_31_30_31 : label is 1024;
  attribute RTL_RAM_NAME of rf_reg_r1_0_31_30_31 : label is "dp/rf/rf_reg_r1_0_31_30_31";
  attribute RTL_RAM_TYPE of rf_reg_r1_0_31_30_31 : label is "RAM_SDP";
  attribute ram_addr_begin of rf_reg_r1_0_31_30_31 : label is 0;
  attribute ram_addr_end of rf_reg_r1_0_31_30_31 : label is 31;
  attribute ram_offset of rf_reg_r1_0_31_30_31 : label is 0;
  attribute ram_slice_begin of rf_reg_r1_0_31_30_31 : label is 30;
  attribute ram_slice_end of rf_reg_r1_0_31_30_31 : label is 31;
  attribute METHODOLOGY_DRC_VIOS of \rf_reg_r1_0_31_30_31__0\ : label is "";
  attribute RTL_RAM_BITS of \rf_reg_r1_0_31_30_31__0\ : label is 1024;
  attribute RTL_RAM_NAME of \rf_reg_r1_0_31_30_31__0\ : label is "dp/rf/rf_reg_r1_0_31_30_31";
  attribute RTL_RAM_TYPE of \rf_reg_r1_0_31_30_31__0\ : label is "RAM_SDP";
  attribute ram_addr_begin of \rf_reg_r1_0_31_30_31__0\ : label is 0;
  attribute ram_addr_end of \rf_reg_r1_0_31_30_31__0\ : label is 31;
  attribute ram_offset of \rf_reg_r1_0_31_30_31__0\ : label is 0;
  attribute ram_slice_begin of \rf_reg_r1_0_31_30_31__0\ : label is 30;
  attribute ram_slice_end of \rf_reg_r1_0_31_30_31__0\ : label is 31;
  attribute METHODOLOGY_DRC_VIOS of rf_reg_r1_0_31_6_11 : label is "";
  attribute RTL_RAM_BITS of rf_reg_r1_0_31_6_11 : label is 1024;
  attribute RTL_RAM_NAME of rf_reg_r1_0_31_6_11 : label is "dp/rf/rf_reg_r1_0_31_6_11";
  attribute RTL_RAM_TYPE of rf_reg_r1_0_31_6_11 : label is "RAM_SDP";
  attribute ram_addr_begin of rf_reg_r1_0_31_6_11 : label is 0;
  attribute ram_addr_end of rf_reg_r1_0_31_6_11 : label is 31;
  attribute ram_offset of rf_reg_r1_0_31_6_11 : label is 0;
  attribute ram_slice_begin of rf_reg_r1_0_31_6_11 : label is 6;
  attribute ram_slice_end of rf_reg_r1_0_31_6_11 : label is 11;
  attribute METHODOLOGY_DRC_VIOS of rf_reg_r2_0_31_0_5 : label is "";
  attribute RTL_RAM_BITS of rf_reg_r2_0_31_0_5 : label is 1024;
  attribute RTL_RAM_NAME of rf_reg_r2_0_31_0_5 : label is "dp/rf/rf_reg_r2_0_31_0_5";
  attribute RTL_RAM_TYPE of rf_reg_r2_0_31_0_5 : label is "RAM_SDP";
  attribute ram_addr_begin of rf_reg_r2_0_31_0_5 : label is 0;
  attribute ram_addr_end of rf_reg_r2_0_31_0_5 : label is 31;
  attribute ram_offset of rf_reg_r2_0_31_0_5 : label is 0;
  attribute ram_slice_begin of rf_reg_r2_0_31_0_5 : label is 0;
  attribute ram_slice_end of rf_reg_r2_0_31_0_5 : label is 5;
  attribute METHODOLOGY_DRC_VIOS of rf_reg_r2_0_31_12_17 : label is "";
  attribute RTL_RAM_BITS of rf_reg_r2_0_31_12_17 : label is 1024;
  attribute RTL_RAM_NAME of rf_reg_r2_0_31_12_17 : label is "dp/rf/rf_reg_r2_0_31_12_17";
  attribute RTL_RAM_TYPE of rf_reg_r2_0_31_12_17 : label is "RAM_SDP";
  attribute ram_addr_begin of rf_reg_r2_0_31_12_17 : label is 0;
  attribute ram_addr_end of rf_reg_r2_0_31_12_17 : label is 31;
  attribute ram_offset of rf_reg_r2_0_31_12_17 : label is 0;
  attribute ram_slice_begin of rf_reg_r2_0_31_12_17 : label is 12;
  attribute ram_slice_end of rf_reg_r2_0_31_12_17 : label is 17;
  attribute METHODOLOGY_DRC_VIOS of rf_reg_r2_0_31_18_23 : label is "";
  attribute RTL_RAM_BITS of rf_reg_r2_0_31_18_23 : label is 1024;
  attribute RTL_RAM_NAME of rf_reg_r2_0_31_18_23 : label is "dp/rf/rf_reg_r2_0_31_18_23";
  attribute RTL_RAM_TYPE of rf_reg_r2_0_31_18_23 : label is "RAM_SDP";
  attribute ram_addr_begin of rf_reg_r2_0_31_18_23 : label is 0;
  attribute ram_addr_end of rf_reg_r2_0_31_18_23 : label is 31;
  attribute ram_offset of rf_reg_r2_0_31_18_23 : label is 0;
  attribute ram_slice_begin of rf_reg_r2_0_31_18_23 : label is 18;
  attribute ram_slice_end of rf_reg_r2_0_31_18_23 : label is 23;
  attribute METHODOLOGY_DRC_VIOS of rf_reg_r2_0_31_24_29 : label is "";
  attribute RTL_RAM_BITS of rf_reg_r2_0_31_24_29 : label is 1024;
  attribute RTL_RAM_NAME of rf_reg_r2_0_31_24_29 : label is "dp/rf/rf_reg_r2_0_31_24_29";
  attribute RTL_RAM_TYPE of rf_reg_r2_0_31_24_29 : label is "RAM_SDP";
  attribute ram_addr_begin of rf_reg_r2_0_31_24_29 : label is 0;
  attribute ram_addr_end of rf_reg_r2_0_31_24_29 : label is 31;
  attribute ram_offset of rf_reg_r2_0_31_24_29 : label is 0;
  attribute ram_slice_begin of rf_reg_r2_0_31_24_29 : label is 24;
  attribute ram_slice_end of rf_reg_r2_0_31_24_29 : label is 29;
  attribute METHODOLOGY_DRC_VIOS of rf_reg_r2_0_31_30_31 : label is "";
  attribute RTL_RAM_BITS of rf_reg_r2_0_31_30_31 : label is 1024;
  attribute RTL_RAM_NAME of rf_reg_r2_0_31_30_31 : label is "dp/rf/rf_reg_r2_0_31_30_31";
  attribute RTL_RAM_TYPE of rf_reg_r2_0_31_30_31 : label is "RAM_SDP";
  attribute ram_addr_begin of rf_reg_r2_0_31_30_31 : label is 0;
  attribute ram_addr_end of rf_reg_r2_0_31_30_31 : label is 31;
  attribute ram_offset of rf_reg_r2_0_31_30_31 : label is 0;
  attribute ram_slice_begin of rf_reg_r2_0_31_30_31 : label is 30;
  attribute ram_slice_end of rf_reg_r2_0_31_30_31 : label is 31;
  attribute METHODOLOGY_DRC_VIOS of \rf_reg_r2_0_31_30_31__0\ : label is "";
  attribute RTL_RAM_BITS of \rf_reg_r2_0_31_30_31__0\ : label is 1024;
  attribute RTL_RAM_NAME of \rf_reg_r2_0_31_30_31__0\ : label is "dp/rf/rf_reg_r2_0_31_30_31";
  attribute RTL_RAM_TYPE of \rf_reg_r2_0_31_30_31__0\ : label is "RAM_SDP";
  attribute ram_addr_begin of \rf_reg_r2_0_31_30_31__0\ : label is 0;
  attribute ram_addr_end of \rf_reg_r2_0_31_30_31__0\ : label is 31;
  attribute ram_offset of \rf_reg_r2_0_31_30_31__0\ : label is 0;
  attribute ram_slice_begin of \rf_reg_r2_0_31_30_31__0\ : label is 30;
  attribute ram_slice_end of \rf_reg_r2_0_31_30_31__0\ : label is 31;
  attribute METHODOLOGY_DRC_VIOS of rf_reg_r2_0_31_6_11 : label is "";
  attribute RTL_RAM_BITS of rf_reg_r2_0_31_6_11 : label is 1024;
  attribute RTL_RAM_NAME of rf_reg_r2_0_31_6_11 : label is "dp/rf/rf_reg_r2_0_31_6_11";
  attribute RTL_RAM_TYPE of rf_reg_r2_0_31_6_11 : label is "RAM_SDP";
  attribute ram_addr_begin of rf_reg_r2_0_31_6_11 : label is 0;
  attribute ram_addr_end of rf_reg_r2_0_31_6_11 : label is 31;
  attribute ram_offset of rf_reg_r2_0_31_6_11 : label is 0;
  attribute ram_slice_begin of rf_reg_r2_0_31_6_11 : label is 6;
  attribute ram_slice_end of rf_reg_r2_0_31_6_11 : label is 11;
begin
  ALUControl(2 downto 0) <= \^alucontrol\(2 downto 0);
  \ALUControl__0\(0) <= \^alucontrol__0\(0);
  \ALUResult[31]_INST_0_i_28_0\ <= \^aluresult[31]_inst_0_i_28_0\;
  \ALUResult[31]_INST_0_i_6_0\ <= \^aluresult[31]_inst_0_i_6_0\;
  \ALUResult[31]_INST_0_i_8_0\ <= \^aluresult[31]_inst_0_i_8_0\;
  Jump <= \^jump\;
  WriteData(31 downto 0) <= \^writedata\(31 downto 0);
  \^s\(0) <= \^s_1\(0);
  clk_0(0) <= \^clk_0\(0);
  clk_1 <= \^clk_1\;
  clk_10 <= \^clk_10\;
  clk_11 <= \^clk_11\;
  clk_12 <= \^clk_12\;
  clk_13 <= \^clk_13\;
  clk_14 <= \^clk_14\;
  clk_15 <= \^clk_15\;
  clk_16 <= \^clk_16\;
  clk_17 <= \^clk_17\;
  clk_18 <= \^clk_18\;
  clk_19 <= \^clk_19\;
  clk_2 <= \^clk_2\;
  clk_20 <= \^clk_20\;
  clk_21 <= \^clk_21\;
  clk_22 <= \^clk_22\;
  clk_23 <= \^clk_23\;
  clk_24 <= \^clk_24\;
  clk_25 <= \^clk_25\;
  clk_26 <= \^clk_26\;
  clk_27 <= \^clk_27\;
  clk_28 <= \^clk_28\;
  clk_29 <= \^clk_29\;
  clk_3 <= \^clk_3\;
  clk_30 <= \^clk_30\;
  clk_4 <= \^clk_4\;
  clk_5 <= \^clk_5\;
  clk_6 <= \^clk_6\;
  clk_7 <= \^clk_7\;
  clk_8 <= \^clk_8\;
  clk_9 <= \^clk_9\;
  \rd[6]_INST_0\(0) <= \^rd[6]_inst_0\(0);
  \result0__33\(0) <= \^result0__33\(0);
\ALUResult[0]_INST_0_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \ALUResult[6]_INST_0_i_11_n_0\,
      I1 => SrcB(2),
      I2 => \ALUResult[0]_INST_0_i_12_n_0\,
      I3 => SrcB(3),
      I4 => \ALUResult[0]_INST_0_i_13_n_0\,
      O => \ALUResult[0]_INST_0_i_10_n_0\
    );
\ALUResult[0]_INST_0_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \ALUResult[4]_INST_0_i_14_n_0\,
      I1 => SrcB(2),
      I2 => \ALUResult[0]_INST_0_i_14_n_0\,
      I3 => SrcB(3),
      I4 => \ALUResult[0]_INST_0_i_15_n_0\,
      O => \ALUResult[0]_INST_0_i_11_n_0\
    );
\ALUResult[0]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8000000B800B800"
    )
        port map (
      I0 => rd10(26),
      I1 => SrcB(4),
      I2 => rd10(10),
      I3 => rd11,
      I4 => Instr(3),
      I5 => Instr(0),
      O => \ALUResult[0]_INST_0_i_12_n_0\
    );
\ALUResult[0]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8000000B800B800"
    )
        port map (
      I0 => rd10(18),
      I1 => SrcB(4),
      I2 => rd10(2),
      I3 => rd11,
      I4 => Instr(3),
      I5 => Instr(0),
      O => \ALUResult[0]_INST_0_i_13_n_0\
    );
\ALUResult[0]_INST_0_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8000000B800B800"
    )
        port map (
      I0 => rd10(24),
      I1 => SrcB(4),
      I2 => rd10(8),
      I3 => rd11,
      I4 => Instr(3),
      I5 => Instr(0),
      O => \ALUResult[0]_INST_0_i_14_n_0\
    );
\ALUResult[0]_INST_0_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8000000B800B800"
    )
        port map (
      I0 => rd10(16),
      I1 => SrcB(4),
      I2 => rd10(0),
      I3 => rd11,
      I4 => Instr(3),
      I5 => Instr(0),
      O => \ALUResult[0]_INST_0_i_15_n_0\
    );
\ALUResult[0]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFCFAFC0AFC0A0C0"
    )
        port map (
      I0 => \ALUResult[0]_INST_0_i_6_n_0\,
      I1 => O(0),
      I2 => \ALUResult[31]_INST_0_i_16_n_0\,
      I3 => \ALUResult[31]_INST_0_i_17_n_0\,
      I4 => \ALUResult[0]_INST_0_i_7_n_0\,
      I5 => \^clk_0\(0),
      O => \ALUResult[31]_INST_0_i_13_0\
    );
\ALUResult[0]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFFFBE00080028"
    )
        port map (
      I0 => \ALUResult[31]_INST_0_i_18_n_0\,
      I1 => \^alucontrol__0\(0),
      I2 => SrcB(31),
      I3 => \^alucontrol\(0),
      I4 => \^alucontrol\(1),
      I5 => \addressM[31]\(3),
      O => \^result0__33\(0)
    );
\ALUResult[0]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => SrcB(1),
      I1 => SrcB(3),
      I2 => \ALUResult[0]_INST_0_i_7_n_0\,
      I3 => SrcB(4),
      I4 => SrcB(2),
      I5 => \^clk_0\(0),
      O => \ALUResult[31]_INST_0_i_13_2\
    );
\ALUResult[0]_INST_0_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALUResult[0]_INST_0_i_8_n_0\,
      I1 => \ALUResult[0]_INST_0_i_9_n_0\,
      O => \ALUResult[0]_INST_0_i_6_n_0\,
      S => \^alucontrol\(0)
    );
\ALUResult[0]_INST_0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8088"
    )
        port map (
      I0 => rd10(0),
      I1 => rd11,
      I2 => Instr(3),
      I3 => Instr(0),
      O => \ALUResult[0]_INST_0_i_7_n_0\
    );
\ALUResult[0]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B88BB8B8B8B8B8B8"
    )
        port map (
      I0 => \^result0__33\(0),
      I1 => \^alucontrol__0\(0),
      I2 => \^clk_0\(0),
      I3 => \ALUResult[17]_INST_0_i_13_0\,
      I4 => rd11,
      I5 => rd10(0),
      O => \ALUResult[0]_INST_0_i_8_n_0\
    );
\ALUResult[0]_INST_0_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \ALUResult[1]_INST_0_i_12_n_0\,
      I1 => \^clk_0\(0),
      I2 => \ALUResult[0]_INST_0_i_10_n_0\,
      I3 => SrcB(1),
      I4 => \ALUResult[0]_INST_0_i_11_n_0\,
      O => \ALUResult[0]_INST_0_i_9_n_0\
    );
\ALUResult[10]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALUResult[10]_INST_0_i_1_n_0\,
      I1 => \ALUResult[10]_INST_0_i_2_n_0\,
      O => ALUResult(9),
      S => \^alucontrol\(2)
    );
\ALUResult[10]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFCFAFC0AFC0A0C0"
    )
        port map (
      I0 => \ALUResult[10]_INST_0_i_3_n_0\,
      I1 => \addressM[11]\(2),
      I2 => \ALUResult[31]_INST_0_i_16_n_0\,
      I3 => \ALUResult[31]_INST_0_i_17_n_0\,
      I4 => \^clk_10\,
      I5 => SrcB(10),
      O => \ALUResult[10]_INST_0_i_1_n_0\
    );
\ALUResult[10]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[16]_INST_0_i_16_n_0\,
      I1 => \ALUResult[12]_INST_0_i_14_n_0\,
      I2 => SrcB(1),
      I3 => \ALUResult[14]_INST_0_i_14_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[10]_INST_0_i_12_n_0\,
      O => \ALUResult[10]_INST_0_i_10_n_0\
    );
\ALUResult[10]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[31]_INST_0_i_18_n_0\,
      I1 => \^clk_18\,
      I2 => SrcB(3),
      I3 => \^clk_26\,
      I4 => SrcB(4),
      I5 => \^clk_10\,
      O => \ALUResult[10]_INST_0_i_11_n_0\
    );
\ALUResult[10]_INST_0_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^clk_18\,
      I1 => SrcB(3),
      I2 => \^clk_26\,
      I3 => SrcB(4),
      I4 => \^clk_10\,
      O => \ALUResult[10]_INST_0_i_12_n_0\
    );
\ALUResult[10]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0C0F0C0BBFFBBCC"
    )
        port map (
      I0 => SrcB(10),
      I1 => \^alucontrol\(1),
      I2 => \addressM[11]\(2),
      I3 => \^alucontrol\(0),
      I4 => data7(10),
      I5 => \^alucontrol__0\(0),
      O => \ALUResult[10]_INST_0_i_2_n_0\
    );
\ALUResult[10]_INST_0_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALUResult[10]_INST_0_i_6_n_0\,
      I1 => \ALUResult[10]_INST_0_i_7_n_0\,
      O => \ALUResult[10]_INST_0_i_3_n_0\,
      S => \^alucontrol\(0)
    );
\ALUResult[10]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8AFF8A008A008A00"
    )
        port map (
      I0 => Instr(28),
      I1 => Instr(4),
      I2 => Instr(0),
      I3 => ALUSrc(0),
      I4 => rd21,
      I5 => rd20(10),
      O => SrcB(10)
    );
\ALUResult[10]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF33CC00B8B8B8B8"
    )
        port map (
      I0 => \ALUResult[11]_INST_0_i_9_n_0\,
      I1 => SrcB(1),
      I2 => \ALUResult[13]_INST_0_i_8_n_0\,
      I3 => \ALUResult[10]_INST_0_i_8_n_0\,
      I4 => \ALUResult[12]_INST_0_i_8_n_0\,
      I5 => \^clk_0\(0),
      O => data7(10)
    );
\ALUResult[10]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000007F778088"
    )
        port map (
      I0 => rd10(10),
      I1 => rd11,
      I2 => Instr(3),
      I3 => Instr(0),
      I4 => SrcB(10),
      I5 => \^alucontrol__0\(0),
      O => \ALUResult[10]_INST_0_i_6_n_0\
    );
\ALUResult[10]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[11]_INST_0_i_10_n_0\,
      I1 => \ALUResult[10]_INST_0_i_9_n_0\,
      I2 => \^alucontrol__0\(0),
      I3 => \ALUResult[11]_INST_0_i_11_n_0\,
      I4 => \^clk_0\(0),
      I5 => \ALUResult[10]_INST_0_i_10_n_0\,
      O => \ALUResult[10]_INST_0_i_7_n_0\
    );
\ALUResult[10]_INST_0_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000B08"
    )
        port map (
      I0 => \^clk_3\,
      I1 => SrcB(2),
      I2 => SrcB(4),
      I3 => \^clk_7\,
      I4 => SrcB(3),
      O => \ALUResult[10]_INST_0_i_8_n_0\
    );
\ALUResult[10]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[16]_INST_0_i_14_n_0\,
      I1 => \ALUResult[12]_INST_0_i_13_n_0\,
      I2 => SrcB(1),
      I3 => \ALUResult[14]_INST_0_i_13_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[10]_INST_0_i_11_n_0\,
      O => \ALUResult[10]_INST_0_i_9_n_0\
    );
\ALUResult[11]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALUResult[11]_INST_0_i_1_n_0\,
      I1 => \ALUResult[11]_INST_0_i_2_n_0\,
      O => ALUResult(10),
      S => \^alucontrol\(2)
    );
\ALUResult[11]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFCFAFC0AFC0A0C0"
    )
        port map (
      I0 => \ALUResult[11]_INST_0_i_3_n_0\,
      I1 => \addressM[11]\(3),
      I2 => \ALUResult[31]_INST_0_i_16_n_0\,
      I3 => \ALUResult[31]_INST_0_i_17_n_0\,
      I4 => \^clk_11\,
      I5 => SrcB(11),
      O => \ALUResult[11]_INST_0_i_1_n_0\
    );
\ALUResult[11]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[17]_INST_0_i_14_n_0\,
      I1 => \ALUResult[13]_INST_0_i_13_n_0\,
      I2 => SrcB(1),
      I3 => \ALUResult[15]_INST_0_i_14_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[11]_INST_0_i_12_n_0\,
      O => \ALUResult[11]_INST_0_i_10_n_0\
    );
\ALUResult[11]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[17]_INST_0_i_16_n_0\,
      I1 => \ALUResult[13]_INST_0_i_14_n_0\,
      I2 => SrcB(1),
      I3 => \ALUResult[15]_INST_0_i_15_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[11]_INST_0_i_13_n_0\,
      O => \ALUResult[11]_INST_0_i_11_n_0\
    );
\ALUResult[11]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[31]_INST_0_i_18_n_0\,
      I1 => \^clk_19\,
      I2 => SrcB(3),
      I3 => \^clk_27\,
      I4 => SrcB(4),
      I5 => \^clk_11\,
      O => \ALUResult[11]_INST_0_i_12_n_0\
    );
\ALUResult[11]_INST_0_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^clk_19\,
      I1 => SrcB(3),
      I2 => \^clk_27\,
      I3 => SrcB(4),
      I4 => \^clk_11\,
      O => \ALUResult[11]_INST_0_i_13_n_0\
    );
\ALUResult[11]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0C0F0C0BBFFBBCC"
    )
        port map (
      I0 => SrcB(11),
      I1 => \^alucontrol\(1),
      I2 => \addressM[11]\(3),
      I3 => \^alucontrol\(0),
      I4 => data7(11),
      I5 => \^alucontrol__0\(0),
      O => \ALUResult[11]_INST_0_i_2_n_0\
    );
\ALUResult[11]_INST_0_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALUResult[11]_INST_0_i_6_n_0\,
      I1 => \ALUResult[11]_INST_0_i_7_n_0\,
      O => \ALUResult[11]_INST_0_i_3_n_0\,
      S => \^alucontrol\(0)
    );
\ALUResult[11]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8AFF8A008A008A00"
    )
        port map (
      I0 => \sum_carry__1_i_5_0\,
      I1 => Instr(4),
      I2 => Instr(0),
      I3 => ALUSrc(0),
      I4 => rd21,
      I5 => rd20(11),
      O => SrcB(11)
    );
\ALUResult[11]_INST_0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \ALUResult[11]_INST_0_i_9_n_0\,
      I1 => SrcB(1),
      I2 => \ALUResult[13]_INST_0_i_8_n_0\,
      I3 => \^clk_0\(0),
      I4 => \ALUResult[12]_INST_0_i_5_n_0\,
      O => data7(11)
    );
\ALUResult[11]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000007F778088"
    )
        port map (
      I0 => rd10(11),
      I1 => rd11,
      I2 => Instr(3),
      I3 => Instr(0),
      I4 => SrcB(11),
      I5 => \^alucontrol__0\(0),
      O => \ALUResult[11]_INST_0_i_6_n_0\
    );
\ALUResult[11]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[12]_INST_0_i_11_n_0\,
      I1 => \ALUResult[11]_INST_0_i_10_n_0\,
      I2 => \^alucontrol__0\(0),
      I3 => \ALUResult[12]_INST_0_i_12_n_0\,
      I4 => \^clk_0\(0),
      I5 => \ALUResult[11]_INST_0_i_11_n_0\,
      O => \ALUResult[11]_INST_0_i_7_n_0\
    );
\ALUResult[11]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000030BB3088"
    )
        port map (
      I0 => \^clk_4\,
      I1 => SrcB(2),
      I2 => \ALUResult[0]_INST_0_i_7_n_0\,
      I3 => SrcB(3),
      I4 => \^clk_8\,
      I5 => SrcB(4),
      O => \ALUResult[11]_INST_0_i_9_n_0\
    );
\ALUResult[12]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \ALUResult[12]_INST_0_i_1_n_0\,
      I1 => \^alucontrol\(1),
      I2 => \ALUResult[12]_INST_0_i_2_n_0\,
      I3 => \^alucontrol\(2),
      I4 => \ALUResult[12]_INST_0_i_3_n_0\,
      O => ALUResult(11)
    );
\ALUResult[12]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F0BB"
    )
        port map (
      I0 => SrcB(12),
      I1 => \^alucontrol\(0),
      I2 => \addressM[15]\(0),
      I3 => \^alucontrol__0\(0),
      O => \ALUResult[12]_INST_0_i_1_n_0\
    );
\ALUResult[12]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[13]_INST_0_i_11_n_0\,
      I1 => \ALUResult[12]_INST_0_i_11_n_0\,
      I2 => \^alucontrol__0\(0),
      I3 => \ALUResult[13]_INST_0_i_12_n_0\,
      I4 => \^clk_0\(0),
      I5 => \ALUResult[12]_INST_0_i_12_n_0\,
      O => \ALUResult[12]_INST_0_i_10_n_0\
    );
\ALUResult[12]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[18]_INST_0_i_14_n_0\,
      I1 => \ALUResult[14]_INST_0_i_13_n_0\,
      I2 => SrcB(1),
      I3 => \ALUResult[16]_INST_0_i_14_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[12]_INST_0_i_13_n_0\,
      O => \ALUResult[12]_INST_0_i_11_n_0\
    );
\ALUResult[12]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[18]_INST_0_i_16_n_0\,
      I1 => \ALUResult[14]_INST_0_i_14_n_0\,
      I2 => SrcB(1),
      I3 => \ALUResult[16]_INST_0_i_16_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[12]_INST_0_i_14_n_0\,
      O => \ALUResult[12]_INST_0_i_12_n_0\
    );
\ALUResult[12]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[31]_INST_0_i_18_n_0\,
      I1 => \^clk_20\,
      I2 => SrcB(3),
      I3 => \^clk_28\,
      I4 => SrcB(4),
      I5 => \^clk_12\,
      O => \ALUResult[12]_INST_0_i_13_n_0\
    );
\ALUResult[12]_INST_0_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^clk_20\,
      I1 => SrcB(3),
      I2 => \^clk_28\,
      I3 => SrcB(4),
      I4 => \^clk_12\,
      O => \ALUResult[12]_INST_0_i_14_n_0\
    );
\ALUResult[12]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888888FFFCCCFC"
    )
        port map (
      I0 => \addressM[15]\(0),
      I1 => \^alucontrol\(0),
      I2 => \ALUResult[13]_INST_0_i_5_n_0\,
      I3 => \^clk_0\(0),
      I4 => \ALUResult[12]_INST_0_i_5_n_0\,
      I5 => \^alucontrol__0\(0),
      O => \ALUResult[12]_INST_0_i_2_n_0\
    );
\ALUResult[12]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFCFAFC0AFC0A0C0"
    )
        port map (
      I0 => \ALUResult[12]_INST_0_i_6_n_0\,
      I1 => \addressM[15]\(0),
      I2 => \ALUResult[31]_INST_0_i_16_n_0\,
      I3 => \ALUResult[31]_INST_0_i_17_n_0\,
      I4 => \^clk_12\,
      I5 => SrcB(12),
      O => \ALUResult[12]_INST_0_i_3_n_0\
    );
\ALUResult[12]_INST_0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => \immext__64\(0),
      I1 => ALUSrc(0),
      I2 => rd21,
      I3 => rd20(12),
      O => SrcB(12)
    );
\ALUResult[12]_INST_0_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ALUResult[12]_INST_0_i_8_n_0\,
      I1 => SrcB(1),
      I2 => \ALUResult[14]_INST_0_i_8_n_0\,
      O => \ALUResult[12]_INST_0_i_5_n_0\
    );
\ALUResult[12]_INST_0_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALUResult[12]_INST_0_i_9_n_0\,
      I1 => \ALUResult[12]_INST_0_i_10_n_0\,
      O => \ALUResult[12]_INST_0_i_6_n_0\,
      S => \^alucontrol\(0)
    );
\ALUResult[12]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000030BB3088"
    )
        port map (
      I0 => \^clk_5\,
      I1 => SrcB(2),
      I2 => \^clk_1\,
      I3 => SrcB(3),
      I4 => \^clk_9\,
      I5 => SrcB(4),
      O => \ALUResult[12]_INST_0_i_8_n_0\
    );
\ALUResult[12]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000007F778088"
    )
        port map (
      I0 => rd10(12),
      I1 => rd11,
      I2 => Instr(3),
      I3 => Instr(0),
      I4 => SrcB(12),
      I5 => \^alucontrol__0\(0),
      O => \ALUResult[12]_INST_0_i_9_n_0\
    );
\ALUResult[13]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \ALUResult[13]_INST_0_i_1_n_0\,
      I1 => \^alucontrol\(1),
      I2 => \ALUResult[13]_INST_0_i_2_n_0\,
      I3 => \^alucontrol\(2),
      I4 => \ALUResult[13]_INST_0_i_3_n_0\,
      O => ALUResult(12)
    );
\ALUResult[13]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F0BB"
    )
        port map (
      I0 => SrcB(13),
      I1 => \^alucontrol\(0),
      I2 => \addressM[15]\(1),
      I3 => \^alucontrol__0\(0),
      O => \ALUResult[13]_INST_0_i_1_n_0\
    );
\ALUResult[13]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[14]_INST_0_i_11_n_0\,
      I1 => \ALUResult[13]_INST_0_i_11_n_0\,
      I2 => \^alucontrol__0\(0),
      I3 => \ALUResult[14]_INST_0_i_12_n_0\,
      I4 => \^clk_0\(0),
      I5 => \ALUResult[13]_INST_0_i_12_n_0\,
      O => \ALUResult[13]_INST_0_i_10_n_0\
    );
\ALUResult[13]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[19]_INST_0_i_14_n_0\,
      I1 => \ALUResult[15]_INST_0_i_14_n_0\,
      I2 => SrcB(1),
      I3 => \ALUResult[17]_INST_0_i_14_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[13]_INST_0_i_13_n_0\,
      O => \ALUResult[13]_INST_0_i_11_n_0\
    );
\ALUResult[13]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[19]_INST_0_i_16_n_0\,
      I1 => \ALUResult[15]_INST_0_i_15_n_0\,
      I2 => SrcB(1),
      I3 => \ALUResult[17]_INST_0_i_16_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[13]_INST_0_i_14_n_0\,
      O => \ALUResult[13]_INST_0_i_12_n_0\
    );
\ALUResult[13]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[31]_INST_0_i_18_n_0\,
      I1 => \^clk_21\,
      I2 => SrcB(3),
      I3 => \^clk_29\,
      I4 => SrcB(4),
      I5 => \^clk_13\,
      O => \ALUResult[13]_INST_0_i_13_n_0\
    );
\ALUResult[13]_INST_0_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^clk_21\,
      I1 => SrcB(3),
      I2 => \^clk_29\,
      I3 => SrcB(4),
      I4 => \^clk_13\,
      O => \ALUResult[13]_INST_0_i_14_n_0\
    );
\ALUResult[13]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888888FFFCCCFC"
    )
        port map (
      I0 => \addressM[15]\(1),
      I1 => \^alucontrol\(0),
      I2 => \ALUResult[14]_INST_0_i_5_n_0\,
      I3 => \^clk_0\(0),
      I4 => \ALUResult[13]_INST_0_i_5_n_0\,
      I5 => \^alucontrol__0\(0),
      O => \ALUResult[13]_INST_0_i_2_n_0\
    );
\ALUResult[13]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFCFAFC0AFC0A0C0"
    )
        port map (
      I0 => \ALUResult[13]_INST_0_i_6_n_0\,
      I1 => \addressM[15]\(1),
      I2 => \ALUResult[31]_INST_0_i_16_n_0\,
      I3 => \ALUResult[31]_INST_0_i_17_n_0\,
      I4 => \^clk_13\,
      I5 => SrcB(13),
      O => \ALUResult[13]_INST_0_i_3_n_0\
    );
\ALUResult[13]_INST_0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => \immext__64\(1),
      I1 => ALUSrc(0),
      I2 => rd21,
      I3 => rd20(13),
      O => SrcB(13)
    );
\ALUResult[13]_INST_0_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ALUResult[13]_INST_0_i_8_n_0\,
      I1 => SrcB(1),
      I2 => \ALUResult[15]_INST_0_i_8_n_0\,
      O => \ALUResult[13]_INST_0_i_5_n_0\
    );
\ALUResult[13]_INST_0_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALUResult[13]_INST_0_i_9_n_0\,
      I1 => \ALUResult[13]_INST_0_i_10_n_0\,
      O => \ALUResult[13]_INST_0_i_6_n_0\,
      S => \^alucontrol\(0)
    );
\ALUResult[13]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000030BB3088"
    )
        port map (
      I0 => \^clk_6\,
      I1 => SrcB(2),
      I2 => \^clk_2\,
      I3 => SrcB(3),
      I4 => \^clk_10\,
      I5 => SrcB(4),
      O => \ALUResult[13]_INST_0_i_8_n_0\
    );
\ALUResult[13]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000007F778088"
    )
        port map (
      I0 => rd10(13),
      I1 => rd11,
      I2 => Instr(3),
      I3 => Instr(0),
      I4 => SrcB(13),
      I5 => \^alucontrol__0\(0),
      O => \ALUResult[13]_INST_0_i_9_n_0\
    );
\ALUResult[14]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \ALUResult[14]_INST_0_i_1_n_0\,
      I1 => \^alucontrol\(1),
      I2 => \ALUResult[14]_INST_0_i_2_n_0\,
      I3 => \^alucontrol\(2),
      I4 => \ALUResult[14]_INST_0_i_3_n_0\,
      O => ALUResult(13)
    );
\ALUResult[14]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F0BB"
    )
        port map (
      I0 => SrcB(14),
      I1 => \^alucontrol\(0),
      I2 => \addressM[15]\(2),
      I3 => \^alucontrol__0\(0),
      O => \ALUResult[14]_INST_0_i_1_n_0\
    );
\ALUResult[14]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[15]_INST_0_i_12_n_0\,
      I1 => \ALUResult[14]_INST_0_i_11_n_0\,
      I2 => \^alucontrol__0\(0),
      I3 => \ALUResult[15]_INST_0_i_13_n_0\,
      I4 => \^clk_0\(0),
      I5 => \ALUResult[14]_INST_0_i_12_n_0\,
      O => \ALUResult[14]_INST_0_i_10_n_0\
    );
\ALUResult[14]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[20]_INST_0_i_13_n_0\,
      I1 => \ALUResult[16]_INST_0_i_14_n_0\,
      I2 => SrcB(1),
      I3 => \ALUResult[18]_INST_0_i_14_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[14]_INST_0_i_13_n_0\,
      O => \ALUResult[14]_INST_0_i_11_n_0\
    );
\ALUResult[14]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[16]_INST_0_i_15_n_0\,
      I1 => \ALUResult[16]_INST_0_i_16_n_0\,
      I2 => SrcB(1),
      I3 => \ALUResult[18]_INST_0_i_16_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[14]_INST_0_i_14_n_0\,
      O => \ALUResult[14]_INST_0_i_12_n_0\
    );
\ALUResult[14]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[31]_INST_0_i_18_n_0\,
      I1 => \^clk_22\,
      I2 => SrcB(3),
      I3 => \^clk_30\,
      I4 => SrcB(4),
      I5 => \^clk_14\,
      O => \ALUResult[14]_INST_0_i_13_n_0\
    );
\ALUResult[14]_INST_0_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^clk_22\,
      I1 => SrcB(3),
      I2 => \^clk_30\,
      I3 => SrcB(4),
      I4 => \^clk_14\,
      O => \ALUResult[14]_INST_0_i_14_n_0\
    );
\ALUResult[14]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888888FFFCCCFC"
    )
        port map (
      I0 => \addressM[15]\(2),
      I1 => \^alucontrol\(0),
      I2 => \ALUResult[15]_INST_0_i_5_n_0\,
      I3 => \^clk_0\(0),
      I4 => \ALUResult[14]_INST_0_i_5_n_0\,
      I5 => \^alucontrol__0\(0),
      O => \ALUResult[14]_INST_0_i_2_n_0\
    );
\ALUResult[14]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFCFAFC0AFC0A0C0"
    )
        port map (
      I0 => \ALUResult[14]_INST_0_i_6_n_0\,
      I1 => \addressM[15]\(2),
      I2 => \ALUResult[31]_INST_0_i_16_n_0\,
      I3 => \ALUResult[31]_INST_0_i_17_n_0\,
      I4 => \^clk_14\,
      I5 => SrcB(14),
      O => \ALUResult[14]_INST_0_i_3_n_0\
    );
\ALUResult[14]_INST_0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => \immext__64\(2),
      I1 => ALUSrc(0),
      I2 => rd21,
      I3 => rd20(14),
      O => SrcB(14)
    );
\ALUResult[14]_INST_0_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ALUResult[14]_INST_0_i_8_n_0\,
      I1 => SrcB(1),
      I2 => \ALUResult[16]_INST_0_i_8_n_0\,
      O => \ALUResult[14]_INST_0_i_5_n_0\
    );
\ALUResult[14]_INST_0_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALUResult[14]_INST_0_i_9_n_0\,
      I1 => \ALUResult[14]_INST_0_i_10_n_0\,
      O => \ALUResult[14]_INST_0_i_6_n_0\,
      S => \^alucontrol\(0)
    );
\ALUResult[14]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000030BB3088"
    )
        port map (
      I0 => \^clk_7\,
      I1 => SrcB(2),
      I2 => \^clk_3\,
      I3 => SrcB(3),
      I4 => \^clk_11\,
      I5 => SrcB(4),
      O => \ALUResult[14]_INST_0_i_8_n_0\
    );
\ALUResult[14]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000007F778088"
    )
        port map (
      I0 => rd10(14),
      I1 => rd11,
      I2 => Instr(3),
      I3 => Instr(0),
      I4 => SrcB(14),
      I5 => \^alucontrol__0\(0),
      O => \ALUResult[14]_INST_0_i_9_n_0\
    );
\ALUResult[15]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \ALUResult[15]_INST_0_i_1_n_0\,
      I1 => \^alucontrol\(1),
      I2 => \ALUResult[15]_INST_0_i_2_n_0\,
      I3 => \^alucontrol\(2),
      I4 => \ALUResult[15]_INST_0_i_3_n_0\,
      O => ALUResult(14)
    );
\ALUResult[15]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F0BB"
    )
        port map (
      I0 => SrcB(15),
      I1 => \^alucontrol\(0),
      I2 => \addressM[15]\(3),
      I3 => \^alucontrol__0\(0),
      O => \ALUResult[15]_INST_0_i_1_n_0\
    );
\ALUResult[15]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[16]_INST_0_i_12_n_0\,
      I1 => \ALUResult[15]_INST_0_i_12_n_0\,
      I2 => \^alucontrol__0\(0),
      I3 => \ALUResult[16]_INST_0_i_13_n_0\,
      I4 => \^clk_0\(0),
      I5 => \ALUResult[15]_INST_0_i_13_n_0\,
      O => \ALUResult[15]_INST_0_i_10_n_0\
    );
\ALUResult[15]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000B000800"
    )
        port map (
      I0 => rd10(4),
      I1 => SrcB(3),
      I2 => \ALUResult[17]_INST_0_i_13_0\,
      I3 => rd11,
      I4 => rd10(12),
      I5 => SrcB(4),
      O => \ALUResult[15]_INST_0_i_11_n_0\
    );
\ALUResult[15]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[21]_INST_0_i_13_n_0\,
      I1 => \ALUResult[17]_INST_0_i_14_n_0\,
      I2 => SrcB(1),
      I3 => \ALUResult[19]_INST_0_i_14_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[15]_INST_0_i_14_n_0\,
      O => \ALUResult[15]_INST_0_i_12_n_0\
    );
\ALUResult[15]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[17]_INST_0_i_15_n_0\,
      I1 => \ALUResult[17]_INST_0_i_16_n_0\,
      I2 => SrcB(1),
      I3 => \ALUResult[19]_INST_0_i_16_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[15]_INST_0_i_15_n_0\,
      O => \ALUResult[15]_INST_0_i_13_n_0\
    );
\ALUResult[15]_INST_0_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0BBF088"
    )
        port map (
      I0 => \^clk_23\,
      I1 => SrcB(3),
      I2 => \ALUResult[31]_INST_0_i_18_n_0\,
      I3 => SrcB(4),
      I4 => \^clk_15\,
      O => \ALUResult[15]_INST_0_i_14_n_0\
    );
\ALUResult[15]_INST_0_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^clk_23\,
      I1 => SrcB(3),
      I2 => \ALUResult[31]_INST_0_i_18_n_0\,
      I3 => SrcB(4),
      I4 => \^clk_15\,
      O => \ALUResult[15]_INST_0_i_15_n_0\
    );
\ALUResult[15]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888888FFFCCCFC"
    )
        port map (
      I0 => \addressM[15]\(3),
      I1 => \^alucontrol\(0),
      I2 => \ALUResult[16]_INST_0_i_5_n_0\,
      I3 => \^clk_0\(0),
      I4 => \ALUResult[15]_INST_0_i_5_n_0\,
      I5 => \^alucontrol__0\(0),
      O => \ALUResult[15]_INST_0_i_2_n_0\
    );
\ALUResult[15]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFCFAFC0AFC0A0C0"
    )
        port map (
      I0 => \ALUResult[15]_INST_0_i_6_n_0\,
      I1 => \addressM[15]\(3),
      I2 => \ALUResult[31]_INST_0_i_16_n_0\,
      I3 => \ALUResult[31]_INST_0_i_17_n_0\,
      I4 => \^clk_15\,
      I5 => SrcB(15),
      O => \ALUResult[15]_INST_0_i_3_n_0\
    );
\ALUResult[15]_INST_0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => \immext__64\(3),
      I1 => ALUSrc(0),
      I2 => rd21,
      I3 => rd20(15),
      O => SrcB(15)
    );
\ALUResult[15]_INST_0_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ALUResult[15]_INST_0_i_8_n_0\,
      I1 => SrcB(1),
      I2 => \ALUResult[17]_INST_0_i_8_n_0\,
      O => \ALUResult[15]_INST_0_i_5_n_0\
    );
\ALUResult[15]_INST_0_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALUResult[15]_INST_0_i_9_n_0\,
      I1 => \ALUResult[15]_INST_0_i_10_n_0\,
      O => \ALUResult[15]_INST_0_i_6_n_0\,
      S => \^alucontrol\(0)
    );
\ALUResult[15]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00B8FFFF00B80000"
    )
        port map (
      I0 => \ALUResult[0]_INST_0_i_7_n_0\,
      I1 => SrcB(3),
      I2 => \^clk_8\,
      I3 => SrcB(4),
      I4 => SrcB(2),
      I5 => \ALUResult[15]_INST_0_i_11_n_0\,
      O => \ALUResult[15]_INST_0_i_8_n_0\
    );
\ALUResult[15]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000007F778088"
    )
        port map (
      I0 => rd10(15),
      I1 => rd11,
      I2 => Instr(3),
      I3 => Instr(0),
      I4 => SrcB(15),
      I5 => \^alucontrol__0\(0),
      O => \ALUResult[15]_INST_0_i_9_n_0\
    );
\ALUResult[16]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \ALUResult[16]_INST_0_i_1_n_0\,
      I1 => \^alucontrol\(1),
      I2 => \ALUResult[16]_INST_0_i_2_n_0\,
      I3 => \^alucontrol\(2),
      I4 => \ALUResult[16]_INST_0_i_3_n_0\,
      O => ALUResult(15)
    );
\ALUResult[16]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F0BB"
    )
        port map (
      I0 => SrcB(16),
      I1 => \^alucontrol\(0),
      I2 => \addressM[19]\(0),
      I3 => \^alucontrol__0\(0),
      O => \ALUResult[16]_INST_0_i_1_n_0\
    );
\ALUResult[16]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[17]_INST_0_i_12_n_0\,
      I1 => \ALUResult[16]_INST_0_i_12_n_0\,
      I2 => \^alucontrol__0\(0),
      I3 => \ALUResult[17]_INST_0_i_13_n_0\,
      I4 => \^clk_0\(0),
      I5 => \ALUResult[16]_INST_0_i_13_n_0\,
      O => \ALUResult[16]_INST_0_i_10_n_0\
    );
\ALUResult[16]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000B000800"
    )
        port map (
      I0 => rd10(5),
      I1 => SrcB(3),
      I2 => \ALUResult[17]_INST_0_i_13_0\,
      I3 => rd11,
      I4 => rd10(13),
      I5 => SrcB(4),
      O => \ALUResult[16]_INST_0_i_11_n_0\
    );
\ALUResult[16]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[22]_INST_0_i_13_n_0\,
      I1 => \ALUResult[18]_INST_0_i_14_n_0\,
      I2 => SrcB(1),
      I3 => \ALUResult[20]_INST_0_i_13_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[16]_INST_0_i_14_n_0\,
      O => \ALUResult[16]_INST_0_i_12_n_0\
    );
\ALUResult[16]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[18]_INST_0_i_15_n_0\,
      I1 => \ALUResult[18]_INST_0_i_16_n_0\,
      I2 => SrcB(1),
      I3 => \ALUResult[16]_INST_0_i_15_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[16]_INST_0_i_16_n_0\,
      O => \ALUResult[16]_INST_0_i_13_n_0\
    );
\ALUResult[16]_INST_0_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0BBF088"
    )
        port map (
      I0 => \^clk_24\,
      I1 => SrcB(3),
      I2 => \ALUResult[31]_INST_0_i_18_n_0\,
      I3 => SrcB(4),
      I4 => \^clk_16\,
      O => \ALUResult[16]_INST_0_i_14_n_0\
    );
\ALUResult[16]_INST_0_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000B000800"
    )
        port map (
      I0 => rd10(28),
      I1 => SrcB(3),
      I2 => \ALUResult[17]_INST_0_i_13_0\,
      I3 => rd11,
      I4 => rd10(20),
      I5 => SrcB(4),
      O => \ALUResult[16]_INST_0_i_15_n_0\
    );
\ALUResult[16]_INST_0_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000B000800"
    )
        port map (
      I0 => rd10(24),
      I1 => SrcB(3),
      I2 => \ALUResult[17]_INST_0_i_13_0\,
      I3 => rd11,
      I4 => rd10(16),
      I5 => SrcB(4),
      O => \ALUResult[16]_INST_0_i_16_n_0\
    );
\ALUResult[16]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888888FFFCCCFC"
    )
        port map (
      I0 => \addressM[19]\(0),
      I1 => \^alucontrol\(0),
      I2 => \ALUResult[17]_INST_0_i_5_n_0\,
      I3 => \^clk_0\(0),
      I4 => \ALUResult[16]_INST_0_i_5_n_0\,
      I5 => \^alucontrol__0\(0),
      O => \ALUResult[16]_INST_0_i_2_n_0\
    );
\ALUResult[16]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFCFAFC0AFC0A0C0"
    )
        port map (
      I0 => \ALUResult[16]_INST_0_i_6_n_0\,
      I1 => \addressM[19]\(0),
      I2 => \ALUResult[31]_INST_0_i_16_n_0\,
      I3 => \ALUResult[31]_INST_0_i_17_n_0\,
      I4 => \^clk_16\,
      I5 => SrcB(16),
      O => \ALUResult[16]_INST_0_i_3_n_0\
    );
\ALUResult[16]_INST_0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => \immext__64\(4),
      I1 => ALUSrc(0),
      I2 => rd21,
      I3 => rd20(16),
      O => SrcB(16)
    );
\ALUResult[16]_INST_0_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ALUResult[16]_INST_0_i_8_n_0\,
      I1 => SrcB(1),
      I2 => \ALUResult[18]_INST_0_i_8_n_0\,
      O => \ALUResult[16]_INST_0_i_5_n_0\
    );
\ALUResult[16]_INST_0_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALUResult[16]_INST_0_i_9_n_0\,
      I1 => \ALUResult[16]_INST_0_i_10_n_0\,
      O => \ALUResult[16]_INST_0_i_6_n_0\,
      S => \^alucontrol\(0)
    );
\ALUResult[16]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00B8FFFF00B80000"
    )
        port map (
      I0 => \^clk_1\,
      I1 => SrcB(3),
      I2 => \^clk_9\,
      I3 => SrcB(4),
      I4 => SrcB(2),
      I5 => \ALUResult[16]_INST_0_i_11_n_0\,
      O => \ALUResult[16]_INST_0_i_8_n_0\
    );
\ALUResult[16]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000007F778088"
    )
        port map (
      I0 => rd10(16),
      I1 => rd11,
      I2 => Instr(3),
      I3 => Instr(0),
      I4 => SrcB(16),
      I5 => \^alucontrol__0\(0),
      O => \ALUResult[16]_INST_0_i_9_n_0\
    );
\ALUResult[17]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \ALUResult[17]_INST_0_i_1_n_0\,
      I1 => \^alucontrol\(1),
      I2 => \ALUResult[17]_INST_0_i_2_n_0\,
      I3 => \^alucontrol\(2),
      I4 => \ALUResult[17]_INST_0_i_3_n_0\,
      O => ALUResult(16)
    );
\ALUResult[17]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F0BB"
    )
        port map (
      I0 => SrcB(17),
      I1 => \^alucontrol\(0),
      I2 => \addressM[19]\(1),
      I3 => \^alucontrol__0\(0),
      O => \ALUResult[17]_INST_0_i_1_n_0\
    );
\ALUResult[17]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[18]_INST_0_i_12_n_0\,
      I1 => \ALUResult[17]_INST_0_i_12_n_0\,
      I2 => \^alucontrol__0\(0),
      I3 => \ALUResult[18]_INST_0_i_13_n_0\,
      I4 => \^clk_0\(0),
      I5 => \ALUResult[17]_INST_0_i_13_n_0\,
      O => \ALUResult[17]_INST_0_i_10_n_0\
    );
\ALUResult[17]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000B000800"
    )
        port map (
      I0 => rd10(6),
      I1 => SrcB(3),
      I2 => \ALUResult[17]_INST_0_i_13_0\,
      I3 => rd11,
      I4 => rd10(14),
      I5 => SrcB(4),
      O => \ALUResult[17]_INST_0_i_11_n_0\
    );
\ALUResult[17]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[19]_INST_0_i_13_n_0\,
      I1 => \ALUResult[19]_INST_0_i_14_n_0\,
      I2 => SrcB(1),
      I3 => \ALUResult[21]_INST_0_i_13_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[17]_INST_0_i_14_n_0\,
      O => \ALUResult[17]_INST_0_i_12_n_0\
    );
\ALUResult[17]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[19]_INST_0_i_15_n_0\,
      I1 => \ALUResult[19]_INST_0_i_16_n_0\,
      I2 => SrcB(1),
      I3 => \ALUResult[17]_INST_0_i_15_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[17]_INST_0_i_16_n_0\,
      O => \ALUResult[17]_INST_0_i_13_n_0\
    );
\ALUResult[17]_INST_0_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0BBF088"
    )
        port map (
      I0 => \^clk_25\,
      I1 => SrcB(3),
      I2 => \ALUResult[31]_INST_0_i_18_n_0\,
      I3 => SrcB(4),
      I4 => \^clk_17\,
      O => \ALUResult[17]_INST_0_i_14_n_0\
    );
\ALUResult[17]_INST_0_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000B000800"
    )
        port map (
      I0 => rd10(29),
      I1 => SrcB(3),
      I2 => \ALUResult[17]_INST_0_i_13_0\,
      I3 => rd11,
      I4 => rd10(21),
      I5 => SrcB(4),
      O => \ALUResult[17]_INST_0_i_15_n_0\
    );
\ALUResult[17]_INST_0_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000B000800"
    )
        port map (
      I0 => rd10(25),
      I1 => SrcB(3),
      I2 => \ALUResult[17]_INST_0_i_13_0\,
      I3 => rd11,
      I4 => rd10(17),
      I5 => SrcB(4),
      O => \ALUResult[17]_INST_0_i_16_n_0\
    );
\ALUResult[17]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888888FFFCCCFC"
    )
        port map (
      I0 => \addressM[19]\(1),
      I1 => \^alucontrol\(0),
      I2 => \ALUResult[18]_INST_0_i_5_n_0\,
      I3 => \^clk_0\(0),
      I4 => \ALUResult[17]_INST_0_i_5_n_0\,
      I5 => \^alucontrol__0\(0),
      O => \ALUResult[17]_INST_0_i_2_n_0\
    );
\ALUResult[17]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFCFAFC0AFC0A0C0"
    )
        port map (
      I0 => \ALUResult[17]_INST_0_i_6_n_0\,
      I1 => \addressM[19]\(1),
      I2 => \ALUResult[31]_INST_0_i_16_n_0\,
      I3 => \ALUResult[31]_INST_0_i_17_n_0\,
      I4 => \^clk_17\,
      I5 => SrcB(17),
      O => \ALUResult[17]_INST_0_i_3_n_0\
    );
\ALUResult[17]_INST_0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => \immext__64\(5),
      I1 => ALUSrc(0),
      I2 => rd21,
      I3 => rd20(17),
      O => SrcB(17)
    );
\ALUResult[17]_INST_0_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ALUResult[17]_INST_0_i_8_n_0\,
      I1 => SrcB(1),
      I2 => \ALUResult[19]_INST_0_i_8_n_0\,
      O => \ALUResult[17]_INST_0_i_5_n_0\
    );
\ALUResult[17]_INST_0_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALUResult[17]_INST_0_i_9_n_0\,
      I1 => \ALUResult[17]_INST_0_i_10_n_0\,
      O => \ALUResult[17]_INST_0_i_6_n_0\,
      S => \^alucontrol\(0)
    );
\ALUResult[17]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00B8FFFF00B80000"
    )
        port map (
      I0 => \^clk_2\,
      I1 => SrcB(3),
      I2 => \^clk_10\,
      I3 => SrcB(4),
      I4 => SrcB(2),
      I5 => \ALUResult[17]_INST_0_i_11_n_0\,
      O => \ALUResult[17]_INST_0_i_8_n_0\
    );
\ALUResult[17]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000007F778088"
    )
        port map (
      I0 => rd10(17),
      I1 => rd11,
      I2 => Instr(3),
      I3 => Instr(0),
      I4 => SrcB(17),
      I5 => \^alucontrol__0\(0),
      O => \ALUResult[17]_INST_0_i_9_n_0\
    );
\ALUResult[18]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \ALUResult[18]_INST_0_i_1_n_0\,
      I1 => \^alucontrol\(1),
      I2 => \ALUResult[18]_INST_0_i_2_n_0\,
      I3 => \^alucontrol\(2),
      I4 => \ALUResult[18]_INST_0_i_3_n_0\,
      O => ALUResult(17)
    );
\ALUResult[18]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F0BB"
    )
        port map (
      I0 => SrcB(18),
      I1 => \^alucontrol\(0),
      I2 => \addressM[19]\(2),
      I3 => \^alucontrol__0\(0),
      O => \ALUResult[18]_INST_0_i_1_n_0\
    );
\ALUResult[18]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[19]_INST_0_i_11_n_0\,
      I1 => \ALUResult[18]_INST_0_i_12_n_0\,
      I2 => \^alucontrol__0\(0),
      I3 => \ALUResult[19]_INST_0_i_12_n_0\,
      I4 => \^clk_0\(0),
      I5 => \ALUResult[18]_INST_0_i_13_n_0\,
      O => \ALUResult[18]_INST_0_i_10_n_0\
    );
\ALUResult[18]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000B000800"
    )
        port map (
      I0 => rd10(7),
      I1 => SrcB(3),
      I2 => \ALUResult[17]_INST_0_i_13_0\,
      I3 => rd11,
      I4 => rd10(15),
      I5 => SrcB(4),
      O => \ALUResult[18]_INST_0_i_11_n_0\
    );
\ALUResult[18]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[20]_INST_0_i_12_n_0\,
      I1 => \ALUResult[20]_INST_0_i_13_n_0\,
      I2 => SrcB(1),
      I3 => \ALUResult[22]_INST_0_i_13_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[18]_INST_0_i_14_n_0\,
      O => \ALUResult[18]_INST_0_i_12_n_0\
    );
\ALUResult[18]_INST_0_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \ALUResult[20]_INST_0_i_14_n_0\,
      I1 => SrcB(1),
      I2 => \ALUResult[18]_INST_0_i_15_n_0\,
      I3 => SrcB(2),
      I4 => \ALUResult[18]_INST_0_i_16_n_0\,
      O => \ALUResult[18]_INST_0_i_13_n_0\
    );
\ALUResult[18]_INST_0_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0BBF088"
    )
        port map (
      I0 => \^clk_26\,
      I1 => SrcB(3),
      I2 => \ALUResult[31]_INST_0_i_18_n_0\,
      I3 => SrcB(4),
      I4 => \^clk_18\,
      O => \ALUResult[18]_INST_0_i_14_n_0\
    );
\ALUResult[18]_INST_0_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000B000800"
    )
        port map (
      I0 => rd10(30),
      I1 => SrcB(3),
      I2 => \ALUResult[17]_INST_0_i_13_0\,
      I3 => rd11,
      I4 => rd10(22),
      I5 => SrcB(4),
      O => \ALUResult[18]_INST_0_i_15_n_0\
    );
\ALUResult[18]_INST_0_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000B000800"
    )
        port map (
      I0 => rd10(26),
      I1 => SrcB(3),
      I2 => \ALUResult[17]_INST_0_i_13_0\,
      I3 => rd11,
      I4 => rd10(18),
      I5 => SrcB(4),
      O => \ALUResult[18]_INST_0_i_16_n_0\
    );
\ALUResult[18]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888888FFFCCCFC"
    )
        port map (
      I0 => \addressM[19]\(2),
      I1 => \^alucontrol\(0),
      I2 => \ALUResult[19]_INST_0_i_5_n_0\,
      I3 => \^clk_0\(0),
      I4 => \ALUResult[18]_INST_0_i_5_n_0\,
      I5 => \^alucontrol__0\(0),
      O => \ALUResult[18]_INST_0_i_2_n_0\
    );
\ALUResult[18]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFCFAFC0AFC0A0C0"
    )
        port map (
      I0 => \ALUResult[18]_INST_0_i_6_n_0\,
      I1 => \addressM[19]\(2),
      I2 => \ALUResult[31]_INST_0_i_16_n_0\,
      I3 => \ALUResult[31]_INST_0_i_17_n_0\,
      I4 => \^clk_18\,
      I5 => SrcB(18),
      O => \ALUResult[18]_INST_0_i_3_n_0\
    );
\ALUResult[18]_INST_0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => \immext__64\(6),
      I1 => ALUSrc(0),
      I2 => rd21,
      I3 => rd20(18),
      O => SrcB(18)
    );
\ALUResult[18]_INST_0_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ALUResult[18]_INST_0_i_8_n_0\,
      I1 => SrcB(1),
      I2 => \ALUResult[20]_INST_0_i_7_n_0\,
      O => \ALUResult[18]_INST_0_i_5_n_0\
    );
\ALUResult[18]_INST_0_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALUResult[18]_INST_0_i_9_n_0\,
      I1 => \ALUResult[18]_INST_0_i_10_n_0\,
      O => \ALUResult[18]_INST_0_i_6_n_0\,
      S => \^alucontrol\(0)
    );
\ALUResult[18]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00B8FFFF00B80000"
    )
        port map (
      I0 => \^clk_3\,
      I1 => SrcB(3),
      I2 => \^clk_11\,
      I3 => SrcB(4),
      I4 => SrcB(2),
      I5 => \ALUResult[18]_INST_0_i_11_n_0\,
      O => \ALUResult[18]_INST_0_i_8_n_0\
    );
\ALUResult[18]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000007F778088"
    )
        port map (
      I0 => rd10(18),
      I1 => rd11,
      I2 => Instr(3),
      I3 => Instr(0),
      I4 => SrcB(18),
      I5 => \^alucontrol__0\(0),
      O => \ALUResult[18]_INST_0_i_9_n_0\
    );
\ALUResult[19]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \ALUResult[19]_INST_0_i_1_n_0\,
      I1 => \^alucontrol\(1),
      I2 => \ALUResult[19]_INST_0_i_2_n_0\,
      I3 => \^alucontrol\(2),
      I4 => \ALUResult[19]_INST_0_i_3_n_0\,
      O => ALUResult(18)
    );
\ALUResult[19]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F0BB"
    )
        port map (
      I0 => SrcB(19),
      I1 => \^alucontrol\(0),
      I2 => \addressM[19]\(3),
      I3 => \^alucontrol__0\(0),
      O => \ALUResult[19]_INST_0_i_1_n_0\
    );
\ALUResult[19]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[20]_INST_0_i_10_n_0\,
      I1 => \ALUResult[19]_INST_0_i_11_n_0\,
      I2 => \^alucontrol__0\(0),
      I3 => \ALUResult[20]_INST_0_i_11_n_0\,
      I4 => \^clk_0\(0),
      I5 => \ALUResult[19]_INST_0_i_12_n_0\,
      O => \ALUResult[19]_INST_0_i_10_n_0\
    );
\ALUResult[19]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[21]_INST_0_i_12_n_0\,
      I1 => \ALUResult[21]_INST_0_i_13_n_0\,
      I2 => SrcB(1),
      I3 => \ALUResult[19]_INST_0_i_13_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[19]_INST_0_i_14_n_0\,
      O => \ALUResult[19]_INST_0_i_11_n_0\
    );
\ALUResult[19]_INST_0_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \ALUResult[21]_INST_0_i_14_n_0\,
      I1 => SrcB(1),
      I2 => \ALUResult[19]_INST_0_i_15_n_0\,
      I3 => SrcB(2),
      I4 => \ALUResult[19]_INST_0_i_16_n_0\,
      O => \ALUResult[19]_INST_0_i_12_n_0\
    );
\ALUResult[19]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000CDC80000"
    )
        port map (
      I0 => SrcB(3),
      I1 => rd10(31),
      I2 => SrcB(4),
      I3 => rd10(23),
      I4 => rd11,
      I5 => \ALUResult[17]_INST_0_i_13_0\,
      O => \ALUResult[19]_INST_0_i_13_n_0\
    );
\ALUResult[19]_INST_0_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0BBF088"
    )
        port map (
      I0 => \^clk_27\,
      I1 => SrcB(3),
      I2 => \ALUResult[31]_INST_0_i_18_n_0\,
      I3 => SrcB(4),
      I4 => \^clk_19\,
      O => \ALUResult[19]_INST_0_i_14_n_0\
    );
\ALUResult[19]_INST_0_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000B000800"
    )
        port map (
      I0 => rd10(31),
      I1 => SrcB(3),
      I2 => \ALUResult[17]_INST_0_i_13_0\,
      I3 => rd11,
      I4 => rd10(23),
      I5 => SrcB(4),
      O => \ALUResult[19]_INST_0_i_15_n_0\
    );
\ALUResult[19]_INST_0_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000B000800"
    )
        port map (
      I0 => rd10(27),
      I1 => SrcB(3),
      I2 => \ALUResult[17]_INST_0_i_13_0\,
      I3 => rd11,
      I4 => rd10(19),
      I5 => SrcB(4),
      O => \ALUResult[19]_INST_0_i_16_n_0\
    );
\ALUResult[19]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888888FFFCCCFC"
    )
        port map (
      I0 => \addressM[19]\(3),
      I1 => \^alucontrol\(0),
      I2 => \ALUResult[20]_INST_0_i_5_n_0\,
      I3 => \^clk_0\(0),
      I4 => \ALUResult[19]_INST_0_i_5_n_0\,
      I5 => \^alucontrol__0\(0),
      O => \ALUResult[19]_INST_0_i_2_n_0\
    );
\ALUResult[19]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFCFAFC0AFC0A0C0"
    )
        port map (
      I0 => \ALUResult[19]_INST_0_i_6_n_0\,
      I1 => \addressM[19]\(3),
      I2 => \ALUResult[31]_INST_0_i_16_n_0\,
      I3 => \ALUResult[31]_INST_0_i_17_n_0\,
      I4 => \^clk_19\,
      I5 => SrcB(19),
      O => \ALUResult[19]_INST_0_i_3_n_0\
    );
\ALUResult[19]_INST_0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => \immext__64\(7),
      I1 => ALUSrc(0),
      I2 => rd21,
      I3 => rd20(19),
      O => SrcB(19)
    );
\ALUResult[19]_INST_0_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ALUResult[19]_INST_0_i_8_n_0\,
      I1 => SrcB(1),
      I2 => \ALUResult[21]_INST_0_i_7_n_0\,
      O => \ALUResult[19]_INST_0_i_5_n_0\
    );
\ALUResult[19]_INST_0_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALUResult[19]_INST_0_i_9_n_0\,
      I1 => \ALUResult[19]_INST_0_i_10_n_0\,
      O => \ALUResult[19]_INST_0_i_6_n_0\,
      S => \^alucontrol\(0)
    );
\ALUResult[19]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00B8FFFF00B80000"
    )
        port map (
      I0 => \^clk_4\,
      I1 => SrcB(3),
      I2 => \^clk_12\,
      I3 => SrcB(4),
      I4 => SrcB(2),
      I5 => \ALUResult[23]_INST_0_i_7_n_0\,
      O => \ALUResult[19]_INST_0_i_8_n_0\
    );
\ALUResult[19]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000007F778088"
    )
        port map (
      I0 => rd10(19),
      I1 => rd11,
      I2 => Instr(3),
      I3 => Instr(0),
      I4 => SrcB(19),
      I5 => \^alucontrol__0\(0),
      O => \ALUResult[19]_INST_0_i_9_n_0\
    );
\ALUResult[1]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALUResult[1]_INST_0_i_1_n_0\,
      I1 => \ALUResult[1]_INST_0_i_2_n_0\,
      O => ALUResult(0),
      S => \^alucontrol\(2)
    );
\ALUResult[1]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFCFAFC0AFC0A0C0"
    )
        port map (
      I0 => \ALUResult[1]_INST_0_i_3_n_0\,
      I1 => O(1),
      I2 => \ALUResult[31]_INST_0_i_16_n_0\,
      I3 => \ALUResult[31]_INST_0_i_17_n_0\,
      I4 => \^clk_1\,
      I5 => SrcB(1),
      O => \ALUResult[1]_INST_0_i_1_n_0\
    );
\ALUResult[1]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000040004040"
    )
        port map (
      I0 => SrcB(4),
      I1 => rd10(0),
      I2 => rd11,
      I3 => Instr(3),
      I4 => Instr(0),
      I5 => SrcB(3),
      O => \ALUResult[1]_INST_0_i_10_n_0\
    );
\ALUResult[1]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000040004040"
    )
        port map (
      I0 => SrcB(4),
      I1 => rd10(1),
      I2 => rd11,
      I3 => Instr(3),
      I4 => Instr(0),
      I5 => SrcB(3),
      O => \ALUResult[1]_INST_0_i_11_n_0\
    );
\ALUResult[1]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[7]_INST_0_i_11_n_0\,
      I1 => \ALUResult[3]_INST_0_i_13_n_0\,
      I2 => SrcB(1),
      I3 => \ALUResult[5]_INST_0_i_11_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[1]_INST_0_i_13_n_0\,
      O => \ALUResult[1]_INST_0_i_12_n_0\
    );
\ALUResult[1]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^clk_25\,
      I1 => \^clk_9\,
      I2 => SrcB(3),
      I3 => \^clk_17\,
      I4 => SrcB(4),
      I5 => \^clk_1\,
      O => \ALUResult[1]_INST_0_i_13_n_0\
    );
\ALUResult[1]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0C0F0C0BBFFBBCC"
    )
        port map (
      I0 => SrcB(1),
      I1 => \^alucontrol\(1),
      I2 => O(1),
      I3 => \^alucontrol\(0),
      I4 => data7(1),
      I5 => \^alucontrol__0\(0),
      O => \ALUResult[1]_INST_0_i_2_n_0\
    );
\ALUResult[1]_INST_0_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALUResult[1]_INST_0_i_6_n_0\,
      I1 => \ALUResult[1]_INST_0_i_7_n_0\,
      O => \ALUResult[1]_INST_0_i_3_n_0\,
      S => \^alucontrol\(0)
    );
\ALUResult[1]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E2FFFF00E20000"
    )
        port map (
      I0 => \ALUResult[1]_INST_0_i_8_n_0\,
      I1 => \^rd[6]_inst_0\(0),
      I2 => \ALUResult[1]_INST_0_i_9_n_0\,
      I3 => \sum_carry__6_i_5_0\,
      I4 => ALUSrc(0),
      I5 => \^writedata\(1),
      O => SrcB(1)
    );
\ALUResult[1]_INST_0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000B08"
    )
        port map (
      I0 => \ALUResult[1]_INST_0_i_10_n_0\,
      I1 => \^clk_0\(0),
      I2 => SrcB(2),
      I3 => \ALUResult[1]_INST_0_i_11_n_0\,
      I4 => SrcB(1),
      O => data7(1)
    );
\ALUResult[1]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000007F778088"
    )
        port map (
      I0 => rd10(1),
      I1 => rd11,
      I2 => Instr(3),
      I3 => Instr(0),
      I4 => SrcB(1),
      I5 => \^alucontrol__0\(0),
      O => \ALUResult[1]_INST_0_i_6_n_0\
    );
\ALUResult[1]_INST_0_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \ALUResult[2]_INST_0_i_11_n_0\,
      I1 => \^alucontrol__0\(0),
      I2 => \ALUResult[2]_INST_0_i_12_n_0\,
      I3 => \^clk_0\(0),
      I4 => \ALUResult[1]_INST_0_i_12_n_0\,
      O => \ALUResult[1]_INST_0_i_7_n_0\
    );
\ALUResult[1]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBABBBB888A8888"
    )
        port map (
      I0 => Instr(6),
      I1 => Instr(1),
      I2 => Instr(2),
      I3 => Instr(4),
      I4 => Instr(3),
      I5 => Instr(19),
      O => \ALUResult[1]_INST_0_i_8_n_0\
    );
\ALUResult[1]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBABBBB888A8888"
    )
        port map (
      I0 => Instr(19),
      I1 => Instr(1),
      I2 => Instr(2),
      I3 => Instr(4),
      I4 => Instr(3),
      I5 => Instr(6),
      O => \ALUResult[1]_INST_0_i_9_n_0\
    );
\ALUResult[20]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \ALUResult[20]_INST_0_i_1_n_0\,
      I1 => \^alucontrol\(1),
      I2 => \ALUResult[20]_INST_0_i_2_n_0\,
      I3 => \^alucontrol\(2),
      I4 => \ALUResult[20]_INST_0_i_3_n_0\,
      O => ALUResult(19)
    );
\ALUResult[20]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F0BB"
    )
        port map (
      I0 => SrcB(20),
      I1 => \^alucontrol\(0),
      I2 => \addressM[23]\(0),
      I3 => \^alucontrol__0\(0),
      O => \ALUResult[20]_INST_0_i_1_n_0\
    );
\ALUResult[20]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[22]_INST_0_i_12_n_0\,
      I1 => \ALUResult[22]_INST_0_i_13_n_0\,
      I2 => SrcB(1),
      I3 => \ALUResult[20]_INST_0_i_12_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[20]_INST_0_i_13_n_0\,
      O => \ALUResult[20]_INST_0_i_10_n_0\
    );
\ALUResult[20]_INST_0_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ALUResult[22]_INST_0_i_14_n_0\,
      I1 => SrcB(1),
      I2 => \ALUResult[20]_INST_0_i_14_n_0\,
      O => \ALUResult[20]_INST_0_i_11_n_0\
    );
\ALUResult[20]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000CDC80000"
    )
        port map (
      I0 => SrcB(3),
      I1 => rd10(31),
      I2 => SrcB(4),
      I3 => rd10(24),
      I4 => rd11,
      I5 => \ALUResult[17]_INST_0_i_13_0\,
      O => \ALUResult[20]_INST_0_i_12_n_0\
    );
\ALUResult[20]_INST_0_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0BBF088"
    )
        port map (
      I0 => \^clk_28\,
      I1 => SrcB(3),
      I2 => \ALUResult[31]_INST_0_i_18_n_0\,
      I3 => SrcB(4),
      I4 => \^clk_20\,
      O => \ALUResult[20]_INST_0_i_13_n_0\
    );
\ALUResult[20]_INST_0_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000030BB3088"
    )
        port map (
      I0 => \^clk_24\,
      I1 => SrcB(2),
      I2 => \^clk_28\,
      I3 => SrcB(3),
      I4 => \^clk_20\,
      I5 => SrcB(4),
      O => \ALUResult[20]_INST_0_i_14_n_0\
    );
\ALUResult[20]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888888FFFCCCFC"
    )
        port map (
      I0 => \addressM[23]\(0),
      I1 => \^alucontrol\(0),
      I2 => \ALUResult[21]_INST_0_i_5_n_0\,
      I3 => \^clk_0\(0),
      I4 => \ALUResult[20]_INST_0_i_5_n_0\,
      I5 => \^alucontrol__0\(0),
      O => \ALUResult[20]_INST_0_i_2_n_0\
    );
\ALUResult[20]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFCFAFC0AFC0A0C0"
    )
        port map (
      I0 => \ALUResult[20]_INST_0_i_6_n_0\,
      I1 => \addressM[23]\(0),
      I2 => \ALUResult[31]_INST_0_i_16_n_0\,
      I3 => \ALUResult[31]_INST_0_i_17_n_0\,
      I4 => \^clk_20\,
      I5 => SrcB(20),
      O => \ALUResult[20]_INST_0_i_3_n_0\
    );
\ALUResult[20]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB800B800B800"
    )
        port map (
      I0 => Instr(18),
      I1 => \sum_carry__6_i_5_0\,
      I2 => Instr(29),
      I3 => ALUSrc(0),
      I4 => rd21,
      I5 => rd20(20),
      O => SrcB(20)
    );
\ALUResult[20]_INST_0_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ALUResult[20]_INST_0_i_7_n_0\,
      I1 => SrcB(1),
      I2 => \ALUResult[22]_INST_0_i_7_n_0\,
      O => \ALUResult[20]_INST_0_i_5_n_0\
    );
\ALUResult[20]_INST_0_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALUResult[20]_INST_0_i_8_n_0\,
      I1 => \ALUResult[20]_INST_0_i_9_n_0\,
      O => \ALUResult[20]_INST_0_i_6_n_0\,
      S => \^alucontrol\(0)
    );
\ALUResult[20]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00B8FFFF00B80000"
    )
        port map (
      I0 => \^clk_5\,
      I1 => SrcB(3),
      I2 => \^clk_13\,
      I3 => SrcB(4),
      I4 => SrcB(2),
      I5 => \ALUResult[24]_INST_0_i_7_n_0\,
      O => \ALUResult[20]_INST_0_i_7_n_0\
    );
\ALUResult[20]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000007F778088"
    )
        port map (
      I0 => rd10(20),
      I1 => rd11,
      I2 => Instr(3),
      I3 => Instr(0),
      I4 => SrcB(20),
      I5 => \^alucontrol__0\(0),
      O => \ALUResult[20]_INST_0_i_8_n_0\
    );
\ALUResult[20]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[21]_INST_0_i_10_n_0\,
      I1 => \ALUResult[20]_INST_0_i_10_n_0\,
      I2 => \^alucontrol__0\(0),
      I3 => \ALUResult[21]_INST_0_i_11_n_0\,
      I4 => \^clk_0\(0),
      I5 => \ALUResult[20]_INST_0_i_11_n_0\,
      O => \ALUResult[20]_INST_0_i_9_n_0\
    );
\ALUResult[21]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \ALUResult[21]_INST_0_i_1_n_0\,
      I1 => \^alucontrol\(1),
      I2 => \ALUResult[21]_INST_0_i_2_n_0\,
      I3 => \^alucontrol\(2),
      I4 => \ALUResult[21]_INST_0_i_3_n_0\,
      O => ALUResult(20)
    );
\ALUResult[21]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F0BB"
    )
        port map (
      I0 => SrcB(21),
      I1 => \^alucontrol\(0),
      I2 => \addressM[23]\(1),
      I3 => \^alucontrol__0\(0),
      O => \ALUResult[21]_INST_0_i_1_n_0\
    );
\ALUResult[21]_INST_0_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \ALUResult[23]_INST_0_i_12_n_0\,
      I1 => SrcB(1),
      I2 => \ALUResult[21]_INST_0_i_12_n_0\,
      I3 => SrcB(2),
      I4 => \ALUResult[21]_INST_0_i_13_n_0\,
      O => \ALUResult[21]_INST_0_i_10_n_0\
    );
\ALUResult[21]_INST_0_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ALUResult[23]_INST_0_i_13_n_0\,
      I1 => SrcB(1),
      I2 => \ALUResult[21]_INST_0_i_14_n_0\,
      O => \ALUResult[21]_INST_0_i_11_n_0\
    );
\ALUResult[21]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000CDC80000"
    )
        port map (
      I0 => SrcB(3),
      I1 => rd10(31),
      I2 => SrcB(4),
      I3 => rd10(25),
      I4 => rd11,
      I5 => \ALUResult[17]_INST_0_i_13_0\,
      O => \ALUResult[21]_INST_0_i_12_n_0\
    );
\ALUResult[21]_INST_0_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0BBF088"
    )
        port map (
      I0 => \^clk_29\,
      I1 => SrcB(3),
      I2 => \ALUResult[31]_INST_0_i_18_n_0\,
      I3 => SrcB(4),
      I4 => \^clk_21\,
      O => \ALUResult[21]_INST_0_i_13_n_0\
    );
\ALUResult[21]_INST_0_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000030BB3088"
    )
        port map (
      I0 => \^clk_25\,
      I1 => SrcB(2),
      I2 => \^clk_29\,
      I3 => SrcB(3),
      I4 => \^clk_21\,
      I5 => SrcB(4),
      O => \ALUResult[21]_INST_0_i_14_n_0\
    );
\ALUResult[21]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888888FFFCCCFC"
    )
        port map (
      I0 => \addressM[23]\(1),
      I1 => \^alucontrol\(0),
      I2 => \ALUResult[22]_INST_0_i_5_n_0\,
      I3 => \^clk_0\(0),
      I4 => \ALUResult[21]_INST_0_i_5_n_0\,
      I5 => \^alucontrol__0\(0),
      O => \ALUResult[21]_INST_0_i_2_n_0\
    );
\ALUResult[21]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFCFAFC0AFC0A0C0"
    )
        port map (
      I0 => \ALUResult[21]_INST_0_i_6_n_0\,
      I1 => \addressM[23]\(1),
      I2 => \ALUResult[31]_INST_0_i_16_n_0\,
      I3 => \ALUResult[31]_INST_0_i_17_n_0\,
      I4 => \^clk_21\,
      I5 => SrcB(21),
      O => \ALUResult[21]_INST_0_i_3_n_0\
    );
\ALUResult[21]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB800B800B800"
    )
        port map (
      I0 => Instr(19),
      I1 => \sum_carry__6_i_5_0\,
      I2 => Instr(29),
      I3 => ALUSrc(0),
      I4 => rd21,
      I5 => rd20(21),
      O => SrcB(21)
    );
\ALUResult[21]_INST_0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00B8B8"
    )
        port map (
      I0 => \ALUResult[23]_INST_0_i_7_n_0\,
      I1 => SrcB(2),
      I2 => \ALUResult[27]_INST_0_i_7_n_0\,
      I3 => \ALUResult[21]_INST_0_i_7_n_0\,
      I4 => SrcB(1),
      O => \ALUResult[21]_INST_0_i_5_n_0\
    );
\ALUResult[21]_INST_0_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALUResult[21]_INST_0_i_8_n_0\,
      I1 => \ALUResult[21]_INST_0_i_9_n_0\,
      O => \ALUResult[21]_INST_0_i_6_n_0\,
      S => \^alucontrol\(0)
    );
\ALUResult[21]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00B8FFFF00B80000"
    )
        port map (
      I0 => \^clk_6\,
      I1 => SrcB(3),
      I2 => \^clk_14\,
      I3 => SrcB(4),
      I4 => SrcB(2),
      I5 => \ALUResult[25]_INST_0_i_7_n_0\,
      O => \ALUResult[21]_INST_0_i_7_n_0\
    );
\ALUResult[21]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000007F778088"
    )
        port map (
      I0 => rd10(21),
      I1 => rd11,
      I2 => Instr(3),
      I3 => Instr(0),
      I4 => SrcB(21),
      I5 => \^alucontrol__0\(0),
      O => \ALUResult[21]_INST_0_i_8_n_0\
    );
\ALUResult[21]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[22]_INST_0_i_10_n_0\,
      I1 => \ALUResult[21]_INST_0_i_10_n_0\,
      I2 => \^alucontrol__0\(0),
      I3 => \ALUResult[22]_INST_0_i_11_n_0\,
      I4 => \^clk_0\(0),
      I5 => \ALUResult[21]_INST_0_i_11_n_0\,
      O => \ALUResult[21]_INST_0_i_9_n_0\
    );
\ALUResult[22]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \ALUResult[22]_INST_0_i_1_n_0\,
      I1 => \^alucontrol\(1),
      I2 => \ALUResult[22]_INST_0_i_2_n_0\,
      I3 => \^alucontrol\(2),
      I4 => \ALUResult[22]_INST_0_i_3_n_0\,
      O => ALUResult(21)
    );
\ALUResult[22]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F0BB"
    )
        port map (
      I0 => SrcB(22),
      I1 => \^alucontrol\(0),
      I2 => \addressM[23]\(2),
      I3 => \^alucontrol__0\(0),
      O => \ALUResult[22]_INST_0_i_1_n_0\
    );
\ALUResult[22]_INST_0_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \ALUResult[24]_INST_0_i_12_n_0\,
      I1 => SrcB(1),
      I2 => \ALUResult[22]_INST_0_i_12_n_0\,
      I3 => SrcB(2),
      I4 => \ALUResult[22]_INST_0_i_13_n_0\,
      O => \ALUResult[22]_INST_0_i_10_n_0\
    );
\ALUResult[22]_INST_0_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ALUResult[24]_INST_0_i_13_n_0\,
      I1 => SrcB(1),
      I2 => \ALUResult[22]_INST_0_i_14_n_0\,
      O => \ALUResult[22]_INST_0_i_11_n_0\
    );
\ALUResult[22]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000CDC80000"
    )
        port map (
      I0 => SrcB(3),
      I1 => rd10(31),
      I2 => SrcB(4),
      I3 => rd10(26),
      I4 => rd11,
      I5 => \ALUResult[17]_INST_0_i_13_0\,
      O => \ALUResult[22]_INST_0_i_12_n_0\
    );
\ALUResult[22]_INST_0_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0BBF088"
    )
        port map (
      I0 => \^clk_30\,
      I1 => SrcB(3),
      I2 => \ALUResult[31]_INST_0_i_18_n_0\,
      I3 => SrcB(4),
      I4 => \^clk_22\,
      O => \ALUResult[22]_INST_0_i_13_n_0\
    );
\ALUResult[22]_INST_0_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000030BB3088"
    )
        port map (
      I0 => \^clk_26\,
      I1 => SrcB(2),
      I2 => \^clk_30\,
      I3 => SrcB(3),
      I4 => \^clk_22\,
      I5 => SrcB(4),
      O => \ALUResult[22]_INST_0_i_14_n_0\
    );
\ALUResult[22]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888888FFFCCCFC"
    )
        port map (
      I0 => \addressM[23]\(2),
      I1 => \^alucontrol\(0),
      I2 => \ALUResult[23]_INST_0_i_5_n_0\,
      I3 => \^clk_0\(0),
      I4 => \ALUResult[22]_INST_0_i_5_n_0\,
      I5 => \^alucontrol__0\(0),
      O => \ALUResult[22]_INST_0_i_2_n_0\
    );
\ALUResult[22]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFCFAFC0AFC0A0C0"
    )
        port map (
      I0 => \ALUResult[22]_INST_0_i_6_n_0\,
      I1 => \addressM[23]\(2),
      I2 => \ALUResult[31]_INST_0_i_16_n_0\,
      I3 => \ALUResult[31]_INST_0_i_17_n_0\,
      I4 => \^clk_22\,
      I5 => SrcB(22),
      O => \ALUResult[22]_INST_0_i_3_n_0\
    );
\ALUResult[22]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB800B800B800"
    )
        port map (
      I0 => Instr(20),
      I1 => \sum_carry__6_i_5_0\,
      I2 => Instr(29),
      I3 => ALUSrc(0),
      I4 => rd21,
      I5 => rd20(22),
      O => SrcB(22)
    );
\ALUResult[22]_INST_0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00B8B8"
    )
        port map (
      I0 => \ALUResult[24]_INST_0_i_7_n_0\,
      I1 => SrcB(2),
      I2 => \ALUResult[28]_INST_0_i_7_n_0\,
      I3 => \ALUResult[22]_INST_0_i_7_n_0\,
      I4 => SrcB(1),
      O => \ALUResult[22]_INST_0_i_5_n_0\
    );
\ALUResult[22]_INST_0_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALUResult[22]_INST_0_i_8_n_0\,
      I1 => \ALUResult[22]_INST_0_i_9_n_0\,
      O => \ALUResult[22]_INST_0_i_6_n_0\,
      S => \^alucontrol\(0)
    );
\ALUResult[22]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00B8FFFF00B80000"
    )
        port map (
      I0 => \^clk_7\,
      I1 => SrcB(3),
      I2 => \^clk_15\,
      I3 => SrcB(4),
      I4 => SrcB(2),
      I5 => \ALUResult[26]_INST_0_i_7_n_0\,
      O => \ALUResult[22]_INST_0_i_7_n_0\
    );
\ALUResult[22]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000007F778088"
    )
        port map (
      I0 => rd10(22),
      I1 => rd11,
      I2 => Instr(3),
      I3 => Instr(0),
      I4 => SrcB(22),
      I5 => \^alucontrol__0\(0),
      O => \ALUResult[22]_INST_0_i_8_n_0\
    );
\ALUResult[22]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[23]_INST_0_i_10_n_0\,
      I1 => \ALUResult[22]_INST_0_i_10_n_0\,
      I2 => \^alucontrol__0\(0),
      I3 => \ALUResult[23]_INST_0_i_11_n_0\,
      I4 => \^clk_0\(0),
      I5 => \ALUResult[22]_INST_0_i_11_n_0\,
      O => \ALUResult[22]_INST_0_i_9_n_0\
    );
\ALUResult[23]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \ALUResult[23]_INST_0_i_1_n_0\,
      I1 => \^alucontrol\(1),
      I2 => \ALUResult[23]_INST_0_i_2_n_0\,
      I3 => \^alucontrol\(2),
      I4 => \ALUResult[23]_INST_0_i_3_n_0\,
      O => ALUResult(22)
    );
\ALUResult[23]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F0BB"
    )
        port map (
      I0 => SrcB(23),
      I1 => \^alucontrol\(0),
      I2 => \addressM[23]\(3),
      I3 => \^alucontrol__0\(0),
      O => \ALUResult[23]_INST_0_i_1_n_0\
    );
\ALUResult[23]_INST_0_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ALUResult[25]_INST_0_i_13_n_0\,
      I1 => SrcB(1),
      I2 => \ALUResult[23]_INST_0_i_12_n_0\,
      O => \ALUResult[23]_INST_0_i_10_n_0\
    );
\ALUResult[23]_INST_0_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ALUResult[25]_INST_0_i_14_n_0\,
      I1 => SrcB(1),
      I2 => \ALUResult[23]_INST_0_i_13_n_0\,
      O => \ALUResult[23]_INST_0_i_11_n_0\
    );
\ALUResult[23]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FB0BFF00F808"
    )
        port map (
      I0 => \^clk_27\,
      I1 => SrcB(2),
      I2 => SrcB(3),
      I3 => \ALUResult[31]_INST_0_i_18_n_0\,
      I4 => SrcB(4),
      I5 => \^clk_23\,
      O => \ALUResult[23]_INST_0_i_12_n_0\
    );
\ALUResult[23]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000030BB3088"
    )
        port map (
      I0 => \^clk_27\,
      I1 => SrcB(2),
      I2 => \ALUResult[31]_INST_0_i_18_n_0\,
      I3 => SrcB(3),
      I4 => \^clk_23\,
      I5 => SrcB(4),
      O => \ALUResult[23]_INST_0_i_13_n_0\
    );
\ALUResult[23]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888888FFFCCCFC"
    )
        port map (
      I0 => \addressM[23]\(3),
      I1 => \^alucontrol\(0),
      I2 => \ALUResult[24]_INST_0_i_5_n_0\,
      I3 => \^clk_0\(0),
      I4 => \ALUResult[23]_INST_0_i_5_n_0\,
      I5 => \^alucontrol__0\(0),
      O => \ALUResult[23]_INST_0_i_2_n_0\
    );
\ALUResult[23]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFCFAFC0AFC0A0C0"
    )
        port map (
      I0 => \ALUResult[23]_INST_0_i_6_n_0\,
      I1 => \addressM[23]\(3),
      I2 => \ALUResult[31]_INST_0_i_16_n_0\,
      I3 => \ALUResult[31]_INST_0_i_17_n_0\,
      I4 => \^clk_23\,
      I5 => SrcB(23),
      O => \ALUResult[23]_INST_0_i_3_n_0\
    );
\ALUResult[23]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB800B800B800"
    )
        port map (
      I0 => Instr(21),
      I1 => \sum_carry__6_i_5_0\,
      I2 => Instr(29),
      I3 => ALUSrc(0),
      I4 => rd21,
      I5 => rd20(23),
      O => SrcB(23)
    );
\ALUResult[23]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF33CC00B8B8B8B8"
    )
        port map (
      I0 => \ALUResult[25]_INST_0_i_7_n_0\,
      I1 => SrcB(2),
      I2 => \ALUResult[29]_INST_0_i_7_n_0\,
      I3 => \ALUResult[23]_INST_0_i_7_n_0\,
      I4 => \ALUResult[27]_INST_0_i_7_n_0\,
      I5 => SrcB(1),
      O => \ALUResult[23]_INST_0_i_5_n_0\
    );
\ALUResult[23]_INST_0_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALUResult[23]_INST_0_i_8_n_0\,
      I1 => \ALUResult[23]_INST_0_i_9_n_0\,
      O => \ALUResult[23]_INST_0_i_6_n_0\,
      S => \^alucontrol\(0)
    );
\ALUResult[23]_INST_0_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^clk_8\,
      I1 => SrcB(3),
      I2 => \ALUResult[0]_INST_0_i_7_n_0\,
      I3 => SrcB(4),
      I4 => \^clk_16\,
      O => \ALUResult[23]_INST_0_i_7_n_0\
    );
\ALUResult[23]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000007F778088"
    )
        port map (
      I0 => rd10(23),
      I1 => rd11,
      I2 => Instr(3),
      I3 => Instr(0),
      I4 => SrcB(23),
      I5 => \^alucontrol__0\(0),
      O => \ALUResult[23]_INST_0_i_8_n_0\
    );
\ALUResult[23]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[24]_INST_0_i_10_n_0\,
      I1 => \ALUResult[23]_INST_0_i_10_n_0\,
      I2 => \^alucontrol__0\(0),
      I3 => \ALUResult[24]_INST_0_i_11_n_0\,
      I4 => \^clk_0\(0),
      I5 => \ALUResult[23]_INST_0_i_11_n_0\,
      O => \ALUResult[23]_INST_0_i_9_n_0\
    );
\ALUResult[24]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \ALUResult[24]_INST_0_i_1_n_0\,
      I1 => \^alucontrol\(1),
      I2 => \ALUResult[24]_INST_0_i_2_n_0\,
      I3 => \^alucontrol\(2),
      I4 => \ALUResult[24]_INST_0_i_3_n_0\,
      O => ALUResult(23)
    );
\ALUResult[24]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F0BB"
    )
        port map (
      I0 => SrcB(24),
      I1 => \^alucontrol\(0),
      I2 => \addressM[27]\(0),
      I3 => \^alucontrol__0\(0),
      O => \ALUResult[24]_INST_0_i_1_n_0\
    );
\ALUResult[24]_INST_0_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ALUResult[26]_INST_0_i_13_n_0\,
      I1 => SrcB(1),
      I2 => \ALUResult[24]_INST_0_i_12_n_0\,
      O => \ALUResult[24]_INST_0_i_10_n_0\
    );
\ALUResult[24]_INST_0_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ALUResult[26]_INST_0_i_14_n_0\,
      I1 => SrcB(1),
      I2 => \ALUResult[24]_INST_0_i_13_n_0\,
      O => \ALUResult[24]_INST_0_i_11_n_0\
    );
\ALUResult[24]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FB0BFF00F808"
    )
        port map (
      I0 => \^clk_28\,
      I1 => SrcB(2),
      I2 => SrcB(3),
      I3 => \ALUResult[31]_INST_0_i_18_n_0\,
      I4 => SrcB(4),
      I5 => \^clk_24\,
      O => \ALUResult[24]_INST_0_i_12_n_0\
    );
\ALUResult[24]_INST_0_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000B08"
    )
        port map (
      I0 => \^clk_28\,
      I1 => SrcB(2),
      I2 => SrcB(4),
      I3 => \^clk_24\,
      I4 => SrcB(3),
      O => \ALUResult[24]_INST_0_i_13_n_0\
    );
\ALUResult[24]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888888FFFCCCFC"
    )
        port map (
      I0 => \addressM[27]\(0),
      I1 => \^alucontrol\(0),
      I2 => \ALUResult[25]_INST_0_i_5_n_0\,
      I3 => \^clk_0\(0),
      I4 => \ALUResult[24]_INST_0_i_5_n_0\,
      I5 => \^alucontrol__0\(0),
      O => \ALUResult[24]_INST_0_i_2_n_0\
    );
\ALUResult[24]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFCFAFC0AFC0A0C0"
    )
        port map (
      I0 => \ALUResult[24]_INST_0_i_6_n_0\,
      I1 => \addressM[27]\(0),
      I2 => \ALUResult[31]_INST_0_i_16_n_0\,
      I3 => \ALUResult[31]_INST_0_i_17_n_0\,
      I4 => \^clk_24\,
      I5 => SrcB(24),
      O => \ALUResult[24]_INST_0_i_3_n_0\
    );
\ALUResult[24]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB800B800B800"
    )
        port map (
      I0 => Instr(22),
      I1 => \sum_carry__6_i_5_0\,
      I2 => Instr(29),
      I3 => ALUSrc(0),
      I4 => rd21,
      I5 => rd20(24),
      O => SrcB(24)
    );
\ALUResult[24]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF33CC00B8B8B8B8"
    )
        port map (
      I0 => \ALUResult[26]_INST_0_i_7_n_0\,
      I1 => SrcB(2),
      I2 => \ALUResult[30]_INST_0_i_8_n_0\,
      I3 => \ALUResult[24]_INST_0_i_7_n_0\,
      I4 => \ALUResult[28]_INST_0_i_7_n_0\,
      I5 => SrcB(1),
      O => \ALUResult[24]_INST_0_i_5_n_0\
    );
\ALUResult[24]_INST_0_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALUResult[24]_INST_0_i_8_n_0\,
      I1 => \ALUResult[24]_INST_0_i_9_n_0\,
      O => \ALUResult[24]_INST_0_i_6_n_0\,
      S => \^alucontrol\(0)
    );
\ALUResult[24]_INST_0_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^clk_9\,
      I1 => SrcB(3),
      I2 => \^clk_1\,
      I3 => SrcB(4),
      I4 => \^clk_17\,
      O => \ALUResult[24]_INST_0_i_7_n_0\
    );
\ALUResult[24]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000007F778088"
    )
        port map (
      I0 => rd10(24),
      I1 => rd11,
      I2 => Instr(3),
      I3 => Instr(0),
      I4 => SrcB(24),
      I5 => \^alucontrol__0\(0),
      O => \ALUResult[24]_INST_0_i_8_n_0\
    );
\ALUResult[24]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[25]_INST_0_i_10_n_0\,
      I1 => \ALUResult[24]_INST_0_i_10_n_0\,
      I2 => \^alucontrol__0\(0),
      I3 => \ALUResult[25]_INST_0_i_11_n_0\,
      I4 => \^clk_0\(0),
      I5 => \ALUResult[24]_INST_0_i_11_n_0\,
      O => \ALUResult[24]_INST_0_i_9_n_0\
    );
\ALUResult[25]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \ALUResult[25]_INST_0_i_1_n_0\,
      I1 => \^alucontrol\(1),
      I2 => \ALUResult[25]_INST_0_i_2_n_0\,
      I3 => \^alucontrol\(2),
      I4 => \ALUResult[25]_INST_0_i_3_n_0\,
      O => ALUResult(24)
    );
\ALUResult[25]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F0BB"
    )
        port map (
      I0 => SrcB(25),
      I1 => \^alucontrol\(0),
      I2 => \addressM[27]\(1),
      I3 => \^alucontrol__0\(0),
      O => \ALUResult[25]_INST_0_i_1_n_0\
    );
\ALUResult[25]_INST_0_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ALUResult[25]_INST_0_i_12_n_0\,
      I1 => SrcB(1),
      I2 => \ALUResult[25]_INST_0_i_13_n_0\,
      O => \ALUResult[25]_INST_0_i_10_n_0\
    );
\ALUResult[25]_INST_0_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ALUResult[27]_INST_0_i_14_n_0\,
      I1 => SrcB(1),
      I2 => \ALUResult[25]_INST_0_i_14_n_0\,
      O => \ALUResult[25]_INST_0_i_11_n_0\
    );
\ALUResult[25]_INST_0_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F1F0E0"
    )
        port map (
      I0 => SrcB(2),
      I1 => SrcB(3),
      I2 => \ALUResult[31]_INST_0_i_18_n_0\,
      I3 => SrcB(4),
      I4 => \^clk_27\,
      O => \ALUResult[25]_INST_0_i_12_n_0\
    );
\ALUResult[25]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FB0BFF00F808"
    )
        port map (
      I0 => \^clk_29\,
      I1 => SrcB(2),
      I2 => SrcB(3),
      I3 => \ALUResult[31]_INST_0_i_18_n_0\,
      I4 => SrcB(4),
      I5 => \^clk_25\,
      O => \ALUResult[25]_INST_0_i_13_n_0\
    );
\ALUResult[25]_INST_0_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000B08"
    )
        port map (
      I0 => \^clk_29\,
      I1 => SrcB(2),
      I2 => SrcB(4),
      I3 => \^clk_25\,
      I4 => SrcB(3),
      O => \ALUResult[25]_INST_0_i_14_n_0\
    );
\ALUResult[25]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888888FFFCCCFC"
    )
        port map (
      I0 => \addressM[27]\(1),
      I1 => \^alucontrol\(0),
      I2 => \ALUResult[26]_INST_0_i_5_n_0\,
      I3 => \^clk_0\(0),
      I4 => \ALUResult[25]_INST_0_i_5_n_0\,
      I5 => \^alucontrol__0\(0),
      O => \ALUResult[25]_INST_0_i_2_n_0\
    );
\ALUResult[25]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFCFAFC0AFC0A0C0"
    )
        port map (
      I0 => \ALUResult[25]_INST_0_i_6_n_0\,
      I1 => \addressM[27]\(1),
      I2 => \ALUResult[31]_INST_0_i_16_n_0\,
      I3 => \ALUResult[31]_INST_0_i_17_n_0\,
      I4 => \^clk_25\,
      I5 => SrcB(25),
      O => \ALUResult[25]_INST_0_i_3_n_0\
    );
\ALUResult[25]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB800B800B800"
    )
        port map (
      I0 => Instr(23),
      I1 => \sum_carry__6_i_5_0\,
      I2 => Instr(29),
      I3 => ALUSrc(0),
      I4 => rd21,
      I5 => rd20(25),
      O => SrcB(25)
    );
\ALUResult[25]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF33CC00B8B8B8B8"
    )
        port map (
      I0 => \ALUResult[27]_INST_0_i_7_n_0\,
      I1 => SrcB(2),
      I2 => \ALUResult[31]_INST_0_i_25_n_0\,
      I3 => \ALUResult[25]_INST_0_i_7_n_0\,
      I4 => \ALUResult[29]_INST_0_i_7_n_0\,
      I5 => SrcB(1),
      O => \ALUResult[25]_INST_0_i_5_n_0\
    );
\ALUResult[25]_INST_0_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALUResult[25]_INST_0_i_8_n_0\,
      I1 => \ALUResult[25]_INST_0_i_9_n_0\,
      O => \ALUResult[25]_INST_0_i_6_n_0\,
      S => \^alucontrol\(0)
    );
\ALUResult[25]_INST_0_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^clk_10\,
      I1 => SrcB(3),
      I2 => \^clk_2\,
      I3 => SrcB(4),
      I4 => \^clk_18\,
      O => \ALUResult[25]_INST_0_i_7_n_0\
    );
\ALUResult[25]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000007F778088"
    )
        port map (
      I0 => rd10(25),
      I1 => rd11,
      I2 => Instr(3),
      I3 => Instr(0),
      I4 => SrcB(25),
      I5 => \^alucontrol__0\(0),
      O => \ALUResult[25]_INST_0_i_8_n_0\
    );
\ALUResult[25]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[26]_INST_0_i_10_n_0\,
      I1 => \ALUResult[25]_INST_0_i_10_n_0\,
      I2 => \^alucontrol__0\(0),
      I3 => \ALUResult[26]_INST_0_i_11_n_0\,
      I4 => \^clk_0\(0),
      I5 => \ALUResult[25]_INST_0_i_11_n_0\,
      O => \ALUResult[25]_INST_0_i_9_n_0\
    );
\ALUResult[26]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \ALUResult[26]_INST_0_i_1_n_0\,
      I1 => \^alucontrol\(1),
      I2 => \ALUResult[26]_INST_0_i_2_n_0\,
      I3 => \^alucontrol\(2),
      I4 => \ALUResult[26]_INST_0_i_3_n_0\,
      O => ALUResult(25)
    );
\ALUResult[26]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F0BB"
    )
        port map (
      I0 => SrcB(26),
      I1 => \^alucontrol\(0),
      I2 => \addressM[27]\(2),
      I3 => \^alucontrol__0\(0),
      O => \ALUResult[26]_INST_0_i_1_n_0\
    );
\ALUResult[26]_INST_0_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ALUResult[26]_INST_0_i_12_n_0\,
      I1 => SrcB(1),
      I2 => \ALUResult[26]_INST_0_i_13_n_0\,
      O => \ALUResult[26]_INST_0_i_10_n_0\
    );
\ALUResult[26]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004FFFF00040000"
    )
        port map (
      I0 => SrcB(3),
      I1 => \^clk_28\,
      I2 => SrcB(4),
      I3 => SrcB(2),
      I4 => SrcB(1),
      I5 => \ALUResult[26]_INST_0_i_14_n_0\,
      O => \ALUResult[26]_INST_0_i_11_n_0\
    );
\ALUResult[26]_INST_0_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F1F0E0"
    )
        port map (
      I0 => SrcB(2),
      I1 => SrcB(3),
      I2 => \ALUResult[31]_INST_0_i_18_n_0\,
      I3 => SrcB(4),
      I4 => \^clk_28\,
      O => \ALUResult[26]_INST_0_i_12_n_0\
    );
\ALUResult[26]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FB0BFF00F808"
    )
        port map (
      I0 => \^clk_30\,
      I1 => SrcB(2),
      I2 => SrcB(3),
      I3 => \ALUResult[31]_INST_0_i_18_n_0\,
      I4 => SrcB(4),
      I5 => \^clk_26\,
      O => \ALUResult[26]_INST_0_i_13_n_0\
    );
\ALUResult[26]_INST_0_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000B08"
    )
        port map (
      I0 => \^clk_30\,
      I1 => SrcB(2),
      I2 => SrcB(4),
      I3 => \^clk_26\,
      I4 => SrcB(3),
      O => \ALUResult[26]_INST_0_i_14_n_0\
    );
\ALUResult[26]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888888FFFCCCFC"
    )
        port map (
      I0 => \addressM[27]\(2),
      I1 => \^alucontrol\(0),
      I2 => \ALUResult[27]_INST_0_i_5_n_0\,
      I3 => \^clk_0\(0),
      I4 => \ALUResult[26]_INST_0_i_5_n_0\,
      I5 => \^alucontrol__0\(0),
      O => \ALUResult[26]_INST_0_i_2_n_0\
    );
\ALUResult[26]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFCFAFC0AFC0A0C0"
    )
        port map (
      I0 => \ALUResult[26]_INST_0_i_6_n_0\,
      I1 => \addressM[27]\(2),
      I2 => \ALUResult[31]_INST_0_i_16_n_0\,
      I3 => \ALUResult[31]_INST_0_i_17_n_0\,
      I4 => \^clk_26\,
      I5 => SrcB(26),
      O => \ALUResult[26]_INST_0_i_3_n_0\
    );
\ALUResult[26]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB800B800B800"
    )
        port map (
      I0 => Instr(24),
      I1 => \sum_carry__6_i_5_0\,
      I2 => Instr(29),
      I3 => ALUSrc(0),
      I4 => rd21,
      I5 => rd20(26),
      O => SrcB(26)
    );
\ALUResult[26]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF33CC00B8B8B8B8"
    )
        port map (
      I0 => \ALUResult[28]_INST_0_i_7_n_0\,
      I1 => SrcB(2),
      I2 => \ALUResult[31]_INST_0_i_20_n_0\,
      I3 => \ALUResult[26]_INST_0_i_7_n_0\,
      I4 => \ALUResult[30]_INST_0_i_8_n_0\,
      I5 => SrcB(1),
      O => \ALUResult[26]_INST_0_i_5_n_0\
    );
\ALUResult[26]_INST_0_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALUResult[26]_INST_0_i_8_n_0\,
      I1 => \ALUResult[26]_INST_0_i_9_n_0\,
      O => \ALUResult[26]_INST_0_i_6_n_0\,
      S => \^alucontrol\(0)
    );
\ALUResult[26]_INST_0_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^clk_11\,
      I1 => SrcB(3),
      I2 => \^clk_3\,
      I3 => SrcB(4),
      I4 => \^clk_19\,
      O => \ALUResult[26]_INST_0_i_7_n_0\
    );
\ALUResult[26]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000007F778088"
    )
        port map (
      I0 => rd10(26),
      I1 => rd11,
      I2 => Instr(3),
      I3 => Instr(0),
      I4 => SrcB(26),
      I5 => \^alucontrol__0\(0),
      O => \ALUResult[26]_INST_0_i_8_n_0\
    );
\ALUResult[26]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[27]_INST_0_i_10_n_0\,
      I1 => \ALUResult[26]_INST_0_i_10_n_0\,
      I2 => \^alucontrol__0\(0),
      I3 => \ALUResult[27]_INST_0_i_11_n_0\,
      I4 => \^clk_0\(0),
      I5 => \ALUResult[26]_INST_0_i_11_n_0\,
      O => \ALUResult[26]_INST_0_i_9_n_0\
    );
\ALUResult[27]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \ALUResult[27]_INST_0_i_1_n_0\,
      I1 => \^alucontrol\(1),
      I2 => \ALUResult[27]_INST_0_i_2_n_0\,
      I3 => \^alucontrol\(2),
      I4 => \ALUResult[27]_INST_0_i_3_n_0\,
      O => ALUResult(26)
    );
\ALUResult[27]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F0BB"
    )
        port map (
      I0 => SrcB(27),
      I1 => \^alucontrol\(0),
      I2 => \addressM[27]\(3),
      I3 => \^alucontrol__0\(0),
      O => \ALUResult[27]_INST_0_i_1_n_0\
    );
\ALUResult[27]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FB0BFF00F808"
    )
        port map (
      I0 => \ALUResult[27]_INST_0_i_12_n_0\,
      I1 => SrcB(1),
      I2 => SrcB(2),
      I3 => \ALUResult[31]_INST_0_i_18_n_0\,
      I4 => SrcB(3),
      I5 => \ALUResult[27]_INST_0_i_13_n_0\,
      O => \ALUResult[27]_INST_0_i_10_n_0\
    );
\ALUResult[27]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004FFFF00040000"
    )
        port map (
      I0 => SrcB(3),
      I1 => \^clk_29\,
      I2 => SrcB(4),
      I3 => SrcB(2),
      I4 => SrcB(1),
      I5 => \ALUResult[27]_INST_0_i_14_n_0\,
      O => \ALUResult[27]_INST_0_i_11_n_0\
    );
\ALUResult[27]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8000000B800B800"
    )
        port map (
      I0 => rd10(31),
      I1 => SrcB(4),
      I2 => rd10(29),
      I3 => rd11,
      I4 => Instr(3),
      I5 => Instr(0),
      O => \ALUResult[27]_INST_0_i_12_n_0\
    );
\ALUResult[27]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8000000B800B800"
    )
        port map (
      I0 => rd10(31),
      I1 => SrcB(4),
      I2 => rd10(27),
      I3 => rd11,
      I4 => Instr(3),
      I5 => Instr(0),
      O => \ALUResult[27]_INST_0_i_13_n_0\
    );
\ALUResult[27]_INST_0_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000B08"
    )
        port map (
      I0 => \ALUResult[31]_INST_0_i_18_n_0\,
      I1 => SrcB(2),
      I2 => SrcB(4),
      I3 => \^clk_27\,
      I4 => SrcB(3),
      O => \ALUResult[27]_INST_0_i_14_n_0\
    );
\ALUResult[27]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888888FFFCCCFC"
    )
        port map (
      I0 => \addressM[27]\(3),
      I1 => \^alucontrol\(0),
      I2 => \ALUResult[28]_INST_0_i_5_n_0\,
      I3 => \^clk_0\(0),
      I4 => \ALUResult[27]_INST_0_i_5_n_0\,
      I5 => \^alucontrol__0\(0),
      O => \ALUResult[27]_INST_0_i_2_n_0\
    );
\ALUResult[27]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFCFAFC0AFC0A0C0"
    )
        port map (
      I0 => \ALUResult[27]_INST_0_i_6_n_0\,
      I1 => \addressM[27]\(3),
      I2 => \ALUResult[31]_INST_0_i_16_n_0\,
      I3 => \ALUResult[31]_INST_0_i_17_n_0\,
      I4 => \^clk_27\,
      I5 => SrcB(27),
      O => \ALUResult[27]_INST_0_i_3_n_0\
    );
\ALUResult[27]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB800B800B800"
    )
        port map (
      I0 => Instr(25),
      I1 => \sum_carry__6_i_5_0\,
      I2 => Instr(29),
      I3 => ALUSrc(0),
      I4 => rd21,
      I5 => rd20(27),
      O => SrcB(27)
    );
\ALUResult[27]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF33CC00B8B8B8B8"
    )
        port map (
      I0 => \ALUResult[29]_INST_0_i_7_n_0\,
      I1 => SrcB(2),
      I2 => \ALUResult[31]_INST_0_i_27_n_0\,
      I3 => \ALUResult[27]_INST_0_i_7_n_0\,
      I4 => \ALUResult[31]_INST_0_i_25_n_0\,
      I5 => SrcB(1),
      O => \ALUResult[27]_INST_0_i_5_n_0\
    );
\ALUResult[27]_INST_0_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALUResult[27]_INST_0_i_8_n_0\,
      I1 => \ALUResult[27]_INST_0_i_9_n_0\,
      O => \ALUResult[27]_INST_0_i_6_n_0\,
      S => \^alucontrol\(0)
    );
\ALUResult[27]_INST_0_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^clk_12\,
      I1 => SrcB(3),
      I2 => \^clk_4\,
      I3 => SrcB(4),
      I4 => \^clk_20\,
      O => \ALUResult[27]_INST_0_i_7_n_0\
    );
\ALUResult[27]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000007F778088"
    )
        port map (
      I0 => rd10(27),
      I1 => rd11,
      I2 => Instr(3),
      I3 => Instr(0),
      I4 => SrcB(27),
      I5 => \^alucontrol__0\(0),
      O => \ALUResult[27]_INST_0_i_8_n_0\
    );
\ALUResult[27]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[28]_INST_0_i_10_n_0\,
      I1 => \ALUResult[27]_INST_0_i_10_n_0\,
      I2 => \^alucontrol__0\(0),
      I3 => \ALUResult[28]_INST_0_i_11_n_0\,
      I4 => \^clk_0\(0),
      I5 => \ALUResult[27]_INST_0_i_11_n_0\,
      O => \ALUResult[27]_INST_0_i_9_n_0\
    );
\ALUResult[28]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \ALUResult[28]_INST_0_i_1_n_0\,
      I1 => \^alucontrol\(1),
      I2 => \ALUResult[28]_INST_0_i_2_n_0\,
      I3 => \^alucontrol\(2),
      I4 => \ALUResult[28]_INST_0_i_3_n_0\,
      O => ALUResult(27)
    );
\ALUResult[28]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F0BB"
    )
        port map (
      I0 => SrcB(28),
      I1 => \^alucontrol\(0),
      I2 => \addressM[31]\(0),
      I3 => \^alucontrol__0\(0),
      O => \ALUResult[28]_INST_0_i_1_n_0\
    );
\ALUResult[28]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FB0BFF00F808"
    )
        port map (
      I0 => \ALUResult[28]_INST_0_i_12_n_0\,
      I1 => SrcB(1),
      I2 => SrcB(2),
      I3 => \ALUResult[31]_INST_0_i_18_n_0\,
      I4 => SrcB(3),
      I5 => \ALUResult[28]_INST_0_i_13_n_0\,
      O => \ALUResult[28]_INST_0_i_10_n_0\
    );
\ALUResult[28]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000B08"
    )
        port map (
      I0 => \^clk_30\,
      I1 => SrcB(1),
      I2 => SrcB(3),
      I3 => \^clk_28\,
      I4 => SrcB(4),
      I5 => SrcB(2),
      O => \ALUResult[28]_INST_0_i_11_n_0\
    );
\ALUResult[28]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8000000B800B800"
    )
        port map (
      I0 => rd10(31),
      I1 => SrcB(4),
      I2 => rd10(30),
      I3 => rd11,
      I4 => Instr(3),
      I5 => Instr(0),
      O => \ALUResult[28]_INST_0_i_12_n_0\
    );
\ALUResult[28]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8000000B800B800"
    )
        port map (
      I0 => rd10(31),
      I1 => SrcB(4),
      I2 => rd10(28),
      I3 => rd11,
      I4 => Instr(3),
      I5 => Instr(0),
      O => \ALUResult[28]_INST_0_i_13_n_0\
    );
\ALUResult[28]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888888FFFCCCFC"
    )
        port map (
      I0 => \addressM[31]\(0),
      I1 => \^alucontrol\(0),
      I2 => \ALUResult[29]_INST_0_i_5_n_0\,
      I3 => \^clk_0\(0),
      I4 => \ALUResult[28]_INST_0_i_5_n_0\,
      I5 => \^alucontrol__0\(0),
      O => \ALUResult[28]_INST_0_i_2_n_0\
    );
\ALUResult[28]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFCFAFC0AFC0A0C0"
    )
        port map (
      I0 => \ALUResult[28]_INST_0_i_6_n_0\,
      I1 => \addressM[31]\(0),
      I2 => \ALUResult[31]_INST_0_i_16_n_0\,
      I3 => \ALUResult[31]_INST_0_i_17_n_0\,
      I4 => \^clk_28\,
      I5 => SrcB(28),
      O => \ALUResult[28]_INST_0_i_3_n_0\
    );
\ALUResult[28]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB800B800B800"
    )
        port map (
      I0 => Instr(26),
      I1 => \sum_carry__6_i_5_0\,
      I2 => Instr(29),
      I3 => ALUSrc(0),
      I4 => rd21,
      I5 => rd20(28),
      O => SrcB(28)
    );
\ALUResult[28]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF33CC00B8B8B8B8"
    )
        port map (
      I0 => \ALUResult[30]_INST_0_i_8_n_0\,
      I1 => SrcB(2),
      I2 => \ALUResult[31]_INST_0_i_22_n_0\,
      I3 => \ALUResult[28]_INST_0_i_7_n_0\,
      I4 => \ALUResult[31]_INST_0_i_20_n_0\,
      I5 => SrcB(1),
      O => \ALUResult[28]_INST_0_i_5_n_0\
    );
\ALUResult[28]_INST_0_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALUResult[28]_INST_0_i_8_n_0\,
      I1 => \ALUResult[28]_INST_0_i_9_n_0\,
      O => \ALUResult[28]_INST_0_i_6_n_0\,
      S => \^alucontrol\(0)
    );
\ALUResult[28]_INST_0_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^clk_13\,
      I1 => SrcB(3),
      I2 => \^clk_5\,
      I3 => SrcB(4),
      I4 => \^clk_21\,
      O => \ALUResult[28]_INST_0_i_7_n_0\
    );
\ALUResult[28]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000007F778088"
    )
        port map (
      I0 => rd10(28),
      I1 => rd11,
      I2 => Instr(3),
      I3 => Instr(0),
      I4 => SrcB(28),
      I5 => \^alucontrol__0\(0),
      O => \ALUResult[28]_INST_0_i_8_n_0\
    );
\ALUResult[28]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[29]_INST_0_i_10_n_0\,
      I1 => \ALUResult[28]_INST_0_i_10_n_0\,
      I2 => \^alucontrol__0\(0),
      I3 => \ALUResult[29]_INST_0_i_11_n_0\,
      I4 => \^clk_0\(0),
      I5 => \ALUResult[28]_INST_0_i_11_n_0\,
      O => \ALUResult[28]_INST_0_i_9_n_0\
    );
\ALUResult[29]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \ALUResult[29]_INST_0_i_1_n_0\,
      I1 => \^alucontrol\(1),
      I2 => \ALUResult[29]_INST_0_i_2_n_0\,
      I3 => \^alucontrol\(2),
      I4 => \ALUResult[29]_INST_0_i_3_n_0\,
      O => ALUResult(28)
    );
\ALUResult[29]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F0BB"
    )
        port map (
      I0 => SrcB(29),
      I1 => \^alucontrol\(0),
      I2 => \addressM[31]\(1),
      I3 => \^alucontrol__0\(0),
      O => \ALUResult[29]_INST_0_i_1_n_0\
    );
\ALUResult[29]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FF01FF00FE00"
    )
        port map (
      I0 => SrcB(1),
      I1 => SrcB(2),
      I2 => SrcB(3),
      I3 => \ALUResult[31]_INST_0_i_18_n_0\,
      I4 => SrcB(4),
      I5 => \^clk_29\,
      O => \ALUResult[29]_INST_0_i_10_n_0\
    );
\ALUResult[29]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000B08"
    )
        port map (
      I0 => \ALUResult[31]_INST_0_i_18_n_0\,
      I1 => SrcB(1),
      I2 => SrcB(3),
      I3 => \^clk_29\,
      I4 => SrcB(4),
      I5 => SrcB(2),
      O => \ALUResult[29]_INST_0_i_11_n_0\
    );
\ALUResult[29]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888888FFFCCCFC"
    )
        port map (
      I0 => \addressM[31]\(1),
      I1 => \^alucontrol\(0),
      I2 => \ALUResult[30]_INST_0_i_5_n_0\,
      I3 => \^clk_0\(0),
      I4 => \ALUResult[29]_INST_0_i_5_n_0\,
      I5 => \^alucontrol__0\(0),
      O => \ALUResult[29]_INST_0_i_2_n_0\
    );
\ALUResult[29]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFCFAFC0AFC0A0C0"
    )
        port map (
      I0 => \ALUResult[29]_INST_0_i_6_n_0\,
      I1 => \addressM[31]\(1),
      I2 => \ALUResult[31]_INST_0_i_16_n_0\,
      I3 => \ALUResult[31]_INST_0_i_17_n_0\,
      I4 => \^clk_29\,
      I5 => SrcB(29),
      O => \ALUResult[29]_INST_0_i_3_n_0\
    );
\ALUResult[29]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB800B800B800"
    )
        port map (
      I0 => Instr(27),
      I1 => \sum_carry__6_i_5_0\,
      I2 => Instr(29),
      I3 => ALUSrc(0),
      I4 => rd21,
      I5 => rd20(29),
      O => SrcB(29)
    );
\ALUResult[29]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF33CC00B8B8B8B8"
    )
        port map (
      I0 => \ALUResult[31]_INST_0_i_25_n_0\,
      I1 => SrcB(2),
      I2 => \ALUResult[31]_INST_0_i_26_n_0\,
      I3 => \ALUResult[29]_INST_0_i_7_n_0\,
      I4 => \ALUResult[31]_INST_0_i_27_n_0\,
      I5 => SrcB(1),
      O => \ALUResult[29]_INST_0_i_5_n_0\
    );
\ALUResult[29]_INST_0_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALUResult[29]_INST_0_i_8_n_0\,
      I1 => \ALUResult[29]_INST_0_i_9_n_0\,
      O => \ALUResult[29]_INST_0_i_6_n_0\,
      S => \^alucontrol\(0)
    );
\ALUResult[29]_INST_0_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^clk_14\,
      I1 => SrcB(3),
      I2 => \^clk_6\,
      I3 => SrcB(4),
      I4 => \^clk_22\,
      O => \ALUResult[29]_INST_0_i_7_n_0\
    );
\ALUResult[29]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000007F778088"
    )
        port map (
      I0 => rd10(29),
      I1 => rd11,
      I2 => Instr(3),
      I3 => Instr(0),
      I4 => SrcB(29),
      I5 => \^alucontrol__0\(0),
      O => \ALUResult[29]_INST_0_i_8_n_0\
    );
\ALUResult[29]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[30]_INST_0_i_11_n_0\,
      I1 => \ALUResult[29]_INST_0_i_10_n_0\,
      I2 => \^alucontrol__0\(0),
      I3 => \ALUResult[30]_INST_0_i_12_n_0\,
      I4 => \^clk_0\(0),
      I5 => \ALUResult[29]_INST_0_i_11_n_0\,
      O => \ALUResult[29]_INST_0_i_9_n_0\
    );
\ALUResult[2]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALUResult[2]_INST_0_i_1_n_0\,
      I1 => \ALUResult[2]_INST_0_i_2_n_0\,
      O => ALUResult(1),
      S => \^alucontrol\(2)
    );
\ALUResult[2]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFCFAFC0AFC0A0C0"
    )
        port map (
      I0 => \ALUResult[2]_INST_0_i_3_n_0\,
      I1 => O(2),
      I2 => \ALUResult[31]_INST_0_i_16_n_0\,
      I3 => \ALUResult[31]_INST_0_i_17_n_0\,
      I4 => \^clk_2\,
      I5 => SrcB(2),
      O => \ALUResult[2]_INST_0_i_1_n_0\
    );
\ALUResult[2]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001000"
    )
        port map (
      I0 => SrcB(3),
      I1 => \ALUResult[17]_INST_0_i_13_0\,
      I2 => rd11,
      I3 => rd10(1),
      I4 => SrcB(4),
      I5 => SrcB(2),
      O => \ALUResult[2]_INST_0_i_10_n_0\
    );
\ALUResult[2]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[8]_INST_0_i_11_n_0\,
      I1 => \ALUResult[4]_INST_0_i_14_n_0\,
      I2 => SrcB(1),
      I3 => \ALUResult[6]_INST_0_i_11_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[2]_INST_0_i_13_n_0\,
      O => \ALUResult[2]_INST_0_i_11_n_0\
    );
\ALUResult[2]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[8]_INST_0_i_12_n_0\,
      I1 => \ALUResult[4]_INST_0_i_14_n_0\,
      I2 => SrcB(1),
      I3 => \ALUResult[6]_INST_0_i_11_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[2]_INST_0_i_13_n_0\,
      O => \ALUResult[2]_INST_0_i_12_n_0\
    );
\ALUResult[2]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^clk_26\,
      I1 => \^clk_10\,
      I2 => SrcB(3),
      I3 => \^clk_18\,
      I4 => SrcB(4),
      I5 => \^clk_2\,
      O => \ALUResult[2]_INST_0_i_13_n_0\
    );
\ALUResult[2]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0C0F0C0BBFFBBCC"
    )
        port map (
      I0 => SrcB(2),
      I1 => \^alucontrol\(1),
      I2 => O(2),
      I3 => \^alucontrol\(0),
      I4 => data7(2),
      I5 => \^alucontrol__0\(0),
      O => \ALUResult[2]_INST_0_i_2_n_0\
    );
\ALUResult[2]_INST_0_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALUResult[2]_INST_0_i_6_n_0\,
      I1 => \ALUResult[2]_INST_0_i_7_n_0\,
      O => \ALUResult[2]_INST_0_i_3_n_0\,
      S => \^alucontrol\(0)
    );
\ALUResult[2]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E2FFFF00E20000"
    )
        port map (
      I0 => \ALUResult[2]_INST_0_i_8_n_0\,
      I1 => \^rd[6]_inst_0\(0),
      I2 => \ALUResult[2]_INST_0_i_9_n_0\,
      I3 => \sum_carry__6_i_5_0\,
      I4 => ALUSrc(0),
      I5 => \^writedata\(2),
      O => SrcB(2)
    );
\ALUResult[2]_INST_0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => \ALUResult[2]_INST_0_i_10_n_0\,
      I1 => SrcB(1),
      I2 => \^clk_0\(0),
      I3 => \ALUResult[3]_INST_0_i_10_n_0\,
      O => data7(2)
    );
\ALUResult[2]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000007F778088"
    )
        port map (
      I0 => rd10(2),
      I1 => rd11,
      I2 => Instr(3),
      I3 => Instr(0),
      I4 => SrcB(2),
      I5 => \^alucontrol__0\(0),
      O => \ALUResult[2]_INST_0_i_6_n_0\
    );
\ALUResult[2]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[3]_INST_0_i_11_n_0\,
      I1 => \ALUResult[2]_INST_0_i_11_n_0\,
      I2 => \^alucontrol__0\(0),
      I3 => \ALUResult[3]_INST_0_i_12_n_0\,
      I4 => \^clk_0\(0),
      I5 => \ALUResult[2]_INST_0_i_12_n_0\,
      O => \ALUResult[2]_INST_0_i_7_n_0\
    );
\ALUResult[2]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBABBBB888A8888"
    )
        port map (
      I0 => Instr(7),
      I1 => Instr(1),
      I2 => Instr(2),
      I3 => Instr(4),
      I4 => Instr(3),
      I5 => Instr(20),
      O => \ALUResult[2]_INST_0_i_8_n_0\
    );
\ALUResult[2]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBABBBB888A8888"
    )
        port map (
      I0 => Instr(20),
      I1 => Instr(1),
      I2 => Instr(2),
      I3 => Instr(4),
      I4 => Instr(3),
      I5 => Instr(7),
      O => \ALUResult[2]_INST_0_i_9_n_0\
    );
\ALUResult[30]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \ALUResult[30]_INST_0_i_1_n_0\,
      I1 => \^alucontrol\(1),
      I2 => \ALUResult[30]_INST_0_i_2_n_0\,
      I3 => \^alucontrol\(2),
      I4 => \ALUResult[30]_INST_0_i_3_n_0\,
      O => ALUResult(29)
    );
\ALUResult[30]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F0BB"
    )
        port map (
      I0 => SrcB(30),
      I1 => \^alucontrol\(0),
      I2 => \addressM[31]\(2),
      I3 => \^alucontrol__0\(0),
      O => \ALUResult[30]_INST_0_i_1_n_0\
    );
\ALUResult[30]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[31]_INST_0_i_18_n_0\,
      I1 => \ALUResult[30]_INST_0_i_11_n_0\,
      I2 => \^alucontrol__0\(0),
      I3 => \ALUResult[31]_INST_0_i_29_n_0\,
      I4 => \^clk_0\(0),
      I5 => \ALUResult[30]_INST_0_i_12_n_0\,
      O => \ALUResult[30]_INST_0_i_10_n_0\
    );
\ALUResult[30]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FF01FF00FE00"
    )
        port map (
      I0 => SrcB(1),
      I1 => SrcB(2),
      I2 => SrcB(3),
      I3 => \ALUResult[31]_INST_0_i_18_n_0\,
      I4 => SrcB(4),
      I5 => \^clk_30\,
      O => \ALUResult[30]_INST_0_i_11_n_0\
    );
\ALUResult[30]_INST_0_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => SrcB(2),
      I1 => SrcB(4),
      I2 => \^clk_30\,
      I3 => SrcB(3),
      I4 => SrcB(1),
      O => \ALUResult[30]_INST_0_i_12_n_0\
    );
\ALUResult[30]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888888FFFCCCFC"
    )
        port map (
      I0 => \addressM[31]\(2),
      I1 => \^alucontrol\(0),
      I2 => \^aluresult[31]_inst_0_i_28_0\,
      I3 => \^clk_0\(0),
      I4 => \ALUResult[30]_INST_0_i_5_n_0\,
      I5 => \^alucontrol__0\(0),
      O => \ALUResult[30]_INST_0_i_2_n_0\
    );
\ALUResult[30]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFCFAFC0AFC0A0C0"
    )
        port map (
      I0 => \ALUResult[30]_INST_0_i_6_n_0\,
      I1 => \addressM[31]\(2),
      I2 => \ALUResult[31]_INST_0_i_16_n_0\,
      I3 => \ALUResult[31]_INST_0_i_17_n_0\,
      I4 => \^clk_30\,
      I5 => SrcB(30),
      O => \ALUResult[30]_INST_0_i_3_n_0\
    );
\ALUResult[30]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB800B800B800"
    )
        port map (
      I0 => Instr(28),
      I1 => \sum_carry__6_i_5_0\,
      I2 => Instr(29),
      I3 => ALUSrc(0),
      I4 => rd21,
      I5 => rd20(30),
      O => SrcB(30)
    );
\ALUResult[30]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF33CC00B8B8B8B8"
    )
        port map (
      I0 => \ALUResult[31]_INST_0_i_20_n_0\,
      I1 => SrcB(2),
      I2 => \ALUResult[31]_INST_0_i_21_n_0\,
      I3 => \ALUResult[30]_INST_0_i_8_n_0\,
      I4 => \ALUResult[31]_INST_0_i_22_n_0\,
      I5 => SrcB(1),
      O => \ALUResult[30]_INST_0_i_5_n_0\
    );
\ALUResult[30]_INST_0_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALUResult[30]_INST_0_i_9_n_0\,
      I1 => \ALUResult[30]_INST_0_i_10_n_0\,
      O => \ALUResult[30]_INST_0_i_6_n_0\,
      S => \^alucontrol\(0)
    );
\ALUResult[30]_INST_0_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^clk_15\,
      I1 => SrcB(3),
      I2 => \^clk_7\,
      I3 => SrcB(4),
      I4 => \^clk_23\,
      O => \ALUResult[30]_INST_0_i_8_n_0\
    );
\ALUResult[30]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000007F778088"
    )
        port map (
      I0 => rd10(30),
      I1 => rd11,
      I2 => Instr(3),
      I3 => Instr(0),
      I4 => SrcB(30),
      I5 => \^alucontrol__0\(0),
      O => \ALUResult[30]_INST_0_i_9_n_0\
    );
\ALUResult[31]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \^aluresult[31]_inst_0_i_8_0\,
      I1 => \^alucontrol\(1),
      I2 => \addressM[31]_0\,
      I3 => \^alucontrol\(2),
      I4 => \^aluresult[31]_inst_0_i_6_0\,
      O => ALUResult(30)
    );
\ALUResult[31]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F0BB"
    )
        port map (
      I0 => SrcB(31),
      I1 => \^alucontrol\(0),
      I2 => \addressM[31]\(3),
      I3 => \^alucontrol__0\(0),
      O => \^aluresult[31]_inst_0_i_8_0\
    );
\ALUResult[31]_INST_0_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Instr(28),
      I1 => Instr(3),
      O => \c/ad/RtypeSub__0\
    );
\ALUResult[31]_INST_0_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"38"
    )
        port map (
      I0 => Instr(3),
      I1 => Instr(0),
      I2 => Instr(4),
      O => \c/ALUOp\(0)
    );
\ALUResult[31]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB833B8CCB800"
    )
        port map (
      I0 => \ALUResult[31]_INST_0_i_20_n_0\,
      I1 => SrcB(2),
      I2 => \ALUResult[31]_INST_0_i_21_n_0\,
      I3 => SrcB(1),
      I4 => \ALUResult[31]_INST_0_i_22_n_0\,
      I5 => \ALUResult[31]_INST_0_i_23_n_0\,
      O => \ALUResult[31]_INST_0_i_23_0\
    );
\ALUResult[31]_INST_0_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => \ALUResult[31]_INST_0_i_24_n_0\,
      I1 => ALUSrc(0),
      I2 => rd21,
      I3 => rd20(0),
      O => \^clk_0\(0)
    );
\ALUResult[31]_INST_0_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB833B8CCB800"
    )
        port map (
      I0 => \ALUResult[31]_INST_0_i_25_n_0\,
      I1 => SrcB(2),
      I2 => \ALUResult[31]_INST_0_i_26_n_0\,
      I3 => SrcB(1),
      I4 => \ALUResult[31]_INST_0_i_27_n_0\,
      I5 => \ALUResult[31]_INST_0_i_28_n_0\,
      O => \^aluresult[31]_inst_0_i_28_0\
    );
\ALUResult[31]_INST_0_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F000F000202F2F20"
    )
        port map (
      I0 => \ALUResult[31]_INST_0_i_29_n_0\,
      I1 => \^clk_0\(0),
      I2 => \^alucontrol\(0),
      I3 => \ALUResult[31]_INST_0_i_18_n_0\,
      I4 => SrcB(31),
      I5 => \^alucontrol__0\(0),
      O => \ALUResult[31]_INST_0_i_15_n_0\
    );
\ALUResult[31]_INST_0_i_16\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^alucontrol\(1),
      I1 => \^alucontrol\(0),
      O => \ALUResult[31]_INST_0_i_16_n_0\
    );
\ALUResult[31]_INST_0_i_17\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => \^alucontrol\(1),
      I1 => \^alucontrol\(0),
      I2 => \^alucontrol__0\(0),
      O => \ALUResult[31]_INST_0_i_17_n_0\
    );
\ALUResult[31]_INST_0_i_18\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8088"
    )
        port map (
      I0 => rd10(31),
      I1 => rd11,
      I2 => Instr(3),
      I3 => Instr(0),
      O => \ALUResult[31]_INST_0_i_18_n_0\
    );
\ALUResult[31]_INST_0_i_19\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"26449CCC"
    )
        port map (
      I0 => Instr(12),
      I1 => Instr(11),
      I2 => Instr(3),
      I3 => Instr(28),
      I4 => Instr(10),
      O => \ALUResult[31]_INST_0_i_19_n_0\
    );
\ALUResult[31]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFAA00AA8200"
    )
        port map (
      I0 => \c/ALUOp\(1),
      I1 => Instr(10),
      I2 => \c/ad/RtypeSub__0\,
      I3 => Instr(11),
      I4 => Instr(12),
      I5 => \c/ALUOp\(0),
      O => \^alucontrol\(1)
    );
\ALUResult[31]_INST_0_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^clk_1\,
      I1 => \^clk_17\,
      I2 => SrcB(3),
      I3 => \^clk_9\,
      I4 => SrcB(4),
      I5 => \^clk_25\,
      O => \ALUResult[31]_INST_0_i_20_n_0\
    );
\ALUResult[31]_INST_0_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^clk_5\,
      I1 => \^clk_21\,
      I2 => SrcB(3),
      I3 => \^clk_13\,
      I4 => SrcB(4),
      I5 => \^clk_29\,
      O => \ALUResult[31]_INST_0_i_21_n_0\
    );
\ALUResult[31]_INST_0_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^clk_3\,
      I1 => \^clk_19\,
      I2 => SrcB(3),
      I3 => \^clk_11\,
      I4 => SrcB(4),
      I5 => \^clk_27\,
      O => \ALUResult[31]_INST_0_i_22_n_0\
    );
\ALUResult[31]_INST_0_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^clk_7\,
      I1 => \^clk_23\,
      I2 => SrcB(3),
      I3 => \^clk_15\,
      I4 => SrcB(4),
      I5 => \ALUResult[31]_INST_0_i_18_n_0\,
      O => \ALUResult[31]_INST_0_i_23_n_0\
    );
\ALUResult[31]_INST_0_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"454000000000CFC0"
    )
        port map (
      I0 => Instr(1),
      I1 => Instr(5),
      I2 => sel0(0),
      I3 => Instr(18),
      I4 => Instr(4),
      I5 => Instr(0),
      O => \ALUResult[31]_INST_0_i_24_n_0\
    );
\ALUResult[31]_INST_0_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[0]_INST_0_i_7_n_0\,
      I1 => \^clk_16\,
      I2 => SrcB(3),
      I3 => \^clk_8\,
      I4 => SrcB(4),
      I5 => \^clk_24\,
      O => \ALUResult[31]_INST_0_i_25_n_0\
    );
\ALUResult[31]_INST_0_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^clk_4\,
      I1 => \^clk_20\,
      I2 => SrcB(3),
      I3 => \^clk_12\,
      I4 => SrcB(4),
      I5 => \^clk_28\,
      O => \ALUResult[31]_INST_0_i_26_n_0\
    );
\ALUResult[31]_INST_0_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^clk_2\,
      I1 => \^clk_18\,
      I2 => SrcB(3),
      I3 => \^clk_10\,
      I4 => SrcB(4),
      I5 => \^clk_26\,
      O => \ALUResult[31]_INST_0_i_27_n_0\
    );
\ALUResult[31]_INST_0_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^clk_6\,
      I1 => \^clk_22\,
      I2 => SrcB(3),
      I3 => \^clk_14\,
      I4 => SrcB(4),
      I5 => \^clk_30\,
      O => \ALUResult[31]_INST_0_i_28_n_0\
    );
\ALUResult[31]_INST_0_i_29\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => SrcB(2),
      I1 => SrcB(4),
      I2 => \ALUResult[31]_INST_0_i_18_n_0\,
      I3 => SrcB(3),
      I4 => SrcB(1),
      O => \ALUResult[31]_INST_0_i_29_n_0\
    );
\ALUResult[31]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAFEEEAAAAAAAA"
    )
        port map (
      I0 => \c/ALUOp\(0),
      I1 => Instr(10),
      I2 => Instr(11),
      I3 => \c/ad/RtypeSub__0\,
      I4 => Instr(12),
      I5 => \c/ALUOp\(1),
      O => \^alucontrol\(2)
    );
\ALUResult[31]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFCFAFC0AFC0A0C0"
    )
        port map (
      I0 => \ALUResult[31]_INST_0_i_15_n_0\,
      I1 => \addressM[31]\(3),
      I2 => \ALUResult[31]_INST_0_i_16_n_0\,
      I3 => \ALUResult[31]_INST_0_i_17_n_0\,
      I4 => \ALUResult[31]_INST_0_i_18_n_0\,
      I5 => SrcB(31),
      O => \^aluresult[31]_inst_0_i_6_0\
    );
\ALUResult[31]_INST_0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => Instr(29),
      I1 => ALUSrc(0),
      I2 => rd21,
      I3 => rd20(31),
      O => SrcB(31)
    );
\ALUResult[31]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFCCECCCC00CCCC"
    )
        port map (
      I0 => \c/ad/RtypeSub__0\,
      I1 => \c/ALUOp\(0),
      I2 => Instr(10),
      I3 => Instr(11),
      I4 => Instr(12),
      I5 => \c/ALUOp\(1),
      O => \^alucontrol\(0)
    );
\ALUResult[31]_INST_0_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"83380038"
    )
        port map (
      I0 => Instr(3),
      I1 => Instr(0),
      I2 => Instr(4),
      I3 => Instr(2),
      I4 => \ALUResult[31]_INST_0_i_19_n_0\,
      O => \^alucontrol__0\(0)
    );
\ALUResult[31]_INST_0_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A2"
    )
        port map (
      I0 => Instr(2),
      I1 => Instr(0),
      I2 => Instr(3),
      O => \c/ALUOp\(1)
    );
\ALUResult[3]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALUResult[3]_INST_0_i_1_n_0\,
      I1 => \ALUResult[3]_INST_0_i_2_n_0\,
      O => ALUResult(2),
      S => \^alucontrol\(2)
    );
\ALUResult[3]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFCFAFC0AFC0A0C0"
    )
        port map (
      I0 => \ALUResult[3]_INST_0_i_3_n_0\,
      I1 => O(3),
      I2 => \ALUResult[31]_INST_0_i_16_n_0\,
      I3 => \ALUResult[31]_INST_0_i_17_n_0\,
      I4 => \^clk_3\,
      I5 => SrcB(3),
      O => \ALUResult[3]_INST_0_i_1_n_0\
    );
\ALUResult[3]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000B08"
    )
        port map (
      I0 => \ALUResult[0]_INST_0_i_7_n_0\,
      I1 => SrcB(1),
      I2 => SrcB(3),
      I3 => \^clk_2\,
      I4 => SrcB(4),
      I5 => SrcB(2),
      O => \ALUResult[3]_INST_0_i_10_n_0\
    );
\ALUResult[3]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[9]_INST_0_i_11_n_0\,
      I1 => \ALUResult[5]_INST_0_i_11_n_0\,
      I2 => SrcB(1),
      I3 => \ALUResult[7]_INST_0_i_11_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[3]_INST_0_i_13_n_0\,
      O => \ALUResult[3]_INST_0_i_11_n_0\
    );
\ALUResult[3]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[9]_INST_0_i_12_n_0\,
      I1 => \ALUResult[5]_INST_0_i_11_n_0\,
      I2 => SrcB(1),
      I3 => \ALUResult[7]_INST_0_i_11_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[3]_INST_0_i_13_n_0\,
      O => \ALUResult[3]_INST_0_i_12_n_0\
    );
\ALUResult[3]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^clk_27\,
      I1 => \^clk_11\,
      I2 => SrcB(3),
      I3 => \^clk_19\,
      I4 => SrcB(4),
      I5 => \^clk_3\,
      O => \ALUResult[3]_INST_0_i_13_n_0\
    );
\ALUResult[3]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0C0F0C0BBFFBBCC"
    )
        port map (
      I0 => SrcB(3),
      I1 => \^alucontrol\(1),
      I2 => O(3),
      I3 => \^alucontrol\(0),
      I4 => data7(3),
      I5 => \^alucontrol__0\(0),
      O => \ALUResult[3]_INST_0_i_2_n_0\
    );
\ALUResult[3]_INST_0_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALUResult[3]_INST_0_i_6_n_0\,
      I1 => \ALUResult[3]_INST_0_i_7_n_0\,
      O => \ALUResult[3]_INST_0_i_3_n_0\,
      S => \^alucontrol\(0)
    );
\ALUResult[3]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E2FFFF00E20000"
    )
        port map (
      I0 => \ALUResult[3]_INST_0_i_8_n_0\,
      I1 => \^rd[6]_inst_0\(0),
      I2 => \ALUResult[3]_INST_0_i_9_n_0\,
      I3 => \sum_carry__6_i_5_0\,
      I4 => ALUSrc(0),
      I5 => \^writedata\(3),
      O => SrcB(3)
    );
\ALUResult[3]_INST_0_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ALUResult[3]_INST_0_i_10_n_0\,
      I1 => \^clk_0\(0),
      I2 => \ALUResult[4]_INST_0_i_11_n_0\,
      O => data7(3)
    );
\ALUResult[3]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000007F778088"
    )
        port map (
      I0 => rd10(3),
      I1 => rd11,
      I2 => Instr(3),
      I3 => Instr(0),
      I4 => SrcB(3),
      I5 => \^alucontrol__0\(0),
      O => \ALUResult[3]_INST_0_i_6_n_0\
    );
\ALUResult[3]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[4]_INST_0_i_12_n_0\,
      I1 => \ALUResult[3]_INST_0_i_11_n_0\,
      I2 => \^alucontrol__0\(0),
      I3 => \ALUResult[4]_INST_0_i_13_n_0\,
      I4 => \^clk_0\(0),
      I5 => \ALUResult[3]_INST_0_i_12_n_0\,
      O => \ALUResult[3]_INST_0_i_7_n_0\
    );
\ALUResult[3]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBABBBB888A8888"
    )
        port map (
      I0 => Instr(8),
      I1 => Instr(1),
      I2 => Instr(2),
      I3 => Instr(4),
      I4 => Instr(3),
      I5 => Instr(21),
      O => \ALUResult[3]_INST_0_i_8_n_0\
    );
\ALUResult[3]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBABBBB888A8888"
    )
        port map (
      I0 => Instr(21),
      I1 => Instr(1),
      I2 => Instr(2),
      I3 => Instr(4),
      I4 => Instr(3),
      I5 => Instr(8),
      O => \ALUResult[3]_INST_0_i_9_n_0\
    );
\ALUResult[4]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALUResult[4]_INST_0_i_1_n_0\,
      I1 => \ALUResult[4]_INST_0_i_2_n_0\,
      O => ALUResult(3),
      S => \^alucontrol\(2)
    );
\ALUResult[4]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFCFAFC0AFC0A0C0"
    )
        port map (
      I0 => \ALUResult[4]_INST_0_i_3_n_0\,
      I1 => \addressM[7]\(0),
      I2 => \ALUResult[31]_INST_0_i_16_n_0\,
      I3 => \ALUResult[31]_INST_0_i_17_n_0\,
      I4 => \^clk_4\,
      I5 => SrcB(4),
      O => \ALUResult[4]_INST_0_i_1_n_0\
    );
\ALUResult[4]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBABBBB888A8888"
    )
        port map (
      I0 => Instr(22),
      I1 => Instr(1),
      I2 => Instr(2),
      I3 => Instr(4),
      I4 => Instr(3),
      I5 => Instr(9),
      O => \ALUResult[4]_INST_0_i_10_n_0\
    );
\ALUResult[4]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000B08"
    )
        port map (
      I0 => \^clk_1\,
      I1 => SrcB(1),
      I2 => SrcB(3),
      I3 => \^clk_3\,
      I4 => SrcB(4),
      I5 => SrcB(2),
      O => \ALUResult[4]_INST_0_i_11_n_0\
    );
\ALUResult[4]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[10]_INST_0_i_11_n_0\,
      I1 => \ALUResult[6]_INST_0_i_11_n_0\,
      I2 => SrcB(1),
      I3 => \ALUResult[8]_INST_0_i_11_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[4]_INST_0_i_14_n_0\,
      O => \ALUResult[4]_INST_0_i_12_n_0\
    );
\ALUResult[4]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[10]_INST_0_i_12_n_0\,
      I1 => \ALUResult[6]_INST_0_i_11_n_0\,
      I2 => SrcB(1),
      I3 => \ALUResult[8]_INST_0_i_12_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[4]_INST_0_i_14_n_0\,
      O => \ALUResult[4]_INST_0_i_13_n_0\
    );
\ALUResult[4]_INST_0_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^clk_28\,
      I1 => \^clk_12\,
      I2 => SrcB(3),
      I3 => \^clk_20\,
      I4 => SrcB(4),
      I5 => \^clk_4\,
      O => \ALUResult[4]_INST_0_i_14_n_0\
    );
\ALUResult[4]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0C0F0C0BBFFBBCC"
    )
        port map (
      I0 => SrcB(4),
      I1 => \^alucontrol\(1),
      I2 => \addressM[7]\(0),
      I3 => \^alucontrol\(0),
      I4 => data7(4),
      I5 => \^alucontrol__0\(0),
      O => \ALUResult[4]_INST_0_i_2_n_0\
    );
\ALUResult[4]_INST_0_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALUResult[4]_INST_0_i_6_n_0\,
      I1 => \ALUResult[4]_INST_0_i_7_n_0\,
      O => \ALUResult[4]_INST_0_i_3_n_0\,
      S => \^alucontrol\(0)
    );
\ALUResult[4]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E2FFFF00E20000"
    )
        port map (
      I0 => \ALUResult[4]_INST_0_i_8_n_0\,
      I1 => \^rd[6]_inst_0\(0),
      I2 => \ALUResult[4]_INST_0_i_10_n_0\,
      I3 => \sum_carry__6_i_5_0\,
      I4 => ALUSrc(0),
      I5 => \^writedata\(4),
      O => SrcB(4)
    );
\ALUResult[4]_INST_0_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ALUResult[4]_INST_0_i_11_n_0\,
      I1 => \^clk_0\(0),
      I2 => \ALUResult[5]_INST_0_i_8_n_0\,
      O => data7(4)
    );
\ALUResult[4]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000007F778088"
    )
        port map (
      I0 => rd10(4),
      I1 => rd11,
      I2 => Instr(3),
      I3 => Instr(0),
      I4 => SrcB(4),
      I5 => \^alucontrol__0\(0),
      O => \ALUResult[4]_INST_0_i_6_n_0\
    );
\ALUResult[4]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[5]_INST_0_i_9_n_0\,
      I1 => \ALUResult[4]_INST_0_i_12_n_0\,
      I2 => \^alucontrol__0\(0),
      I3 => \ALUResult[5]_INST_0_i_10_n_0\,
      I4 => \^clk_0\(0),
      I5 => \ALUResult[4]_INST_0_i_13_n_0\,
      O => \ALUResult[4]_INST_0_i_7_n_0\
    );
\ALUResult[4]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBABBBB888A8888"
    )
        port map (
      I0 => Instr(9),
      I1 => Instr(1),
      I2 => Instr(2),
      I3 => Instr(4),
      I4 => Instr(3),
      I5 => Instr(22),
      O => \ALUResult[4]_INST_0_i_8_n_0\
    );
\ALUResult[4]_INST_0_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Instr(1),
      I1 => Instr(0),
      I2 => Instr(4),
      O => \^rd[6]_inst_0\(0)
    );
\ALUResult[5]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALUResult[5]_INST_0_i_1_n_0\,
      I1 => \ALUResult[5]_INST_0_i_2_n_0\,
      O => ALUResult(4),
      S => \^alucontrol\(2)
    );
\ALUResult[5]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFCFAFC0AFC0A0C0"
    )
        port map (
      I0 => \ALUResult[5]_INST_0_i_3_n_0\,
      I1 => \addressM[7]\(1),
      I2 => \ALUResult[31]_INST_0_i_16_n_0\,
      I3 => \ALUResult[31]_INST_0_i_17_n_0\,
      I4 => \^clk_5\,
      I5 => SrcB(5),
      O => \ALUResult[5]_INST_0_i_1_n_0\
    );
\ALUResult[5]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[11]_INST_0_i_13_n_0\,
      I1 => \ALUResult[7]_INST_0_i_11_n_0\,
      I2 => SrcB(1),
      I3 => \ALUResult[9]_INST_0_i_12_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[5]_INST_0_i_11_n_0\,
      O => \ALUResult[5]_INST_0_i_10_n_0\
    );
\ALUResult[5]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^clk_29\,
      I1 => \^clk_13\,
      I2 => SrcB(3),
      I3 => \^clk_21\,
      I4 => SrcB(4),
      I5 => \^clk_5\,
      O => \ALUResult[5]_INST_0_i_11_n_0\
    );
\ALUResult[5]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0C0F0C0BBFFBBCC"
    )
        port map (
      I0 => SrcB(5),
      I1 => \^alucontrol\(1),
      I2 => \addressM[7]\(1),
      I3 => \^alucontrol\(0),
      I4 => data7(5),
      I5 => \^alucontrol__0\(0),
      O => \ALUResult[5]_INST_0_i_2_n_0\
    );
\ALUResult[5]_INST_0_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALUResult[5]_INST_0_i_6_n_0\,
      I1 => \ALUResult[5]_INST_0_i_7_n_0\,
      O => \ALUResult[5]_INST_0_i_3_n_0\,
      S => \^alucontrol\(0)
    );
\ALUResult[5]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8AFF8A008A008A00"
    )
        port map (
      I0 => Instr(23),
      I1 => Instr(4),
      I2 => Instr(0),
      I3 => ALUSrc(0),
      I4 => rd21,
      I5 => rd20(5),
      O => SrcB(5)
    );
\ALUResult[5]_INST_0_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ALUResult[5]_INST_0_i_8_n_0\,
      I1 => \^clk_0\(0),
      I2 => \ALUResult[6]_INST_0_i_8_n_0\,
      O => data7(5)
    );
\ALUResult[5]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000007F778088"
    )
        port map (
      I0 => rd10(5),
      I1 => rd11,
      I2 => Instr(3),
      I3 => Instr(0),
      I4 => SrcB(5),
      I5 => \^alucontrol__0\(0),
      O => \ALUResult[5]_INST_0_i_6_n_0\
    );
\ALUResult[5]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[6]_INST_0_i_9_n_0\,
      I1 => \ALUResult[5]_INST_0_i_9_n_0\,
      I2 => \^alucontrol__0\(0),
      I3 => \ALUResult[6]_INST_0_i_10_n_0\,
      I4 => \^clk_0\(0),
      I5 => \ALUResult[5]_INST_0_i_10_n_0\,
      O => \ALUResult[5]_INST_0_i_7_n_0\
    );
\ALUResult[5]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004FFFF00040000"
    )
        port map (
      I0 => SrcB(3),
      I1 => \^clk_2\,
      I2 => SrcB(4),
      I3 => SrcB(2),
      I4 => SrcB(1),
      I5 => \ALUResult[7]_INST_0_i_8_n_0\,
      O => \ALUResult[5]_INST_0_i_8_n_0\
    );
\ALUResult[5]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[11]_INST_0_i_12_n_0\,
      I1 => \ALUResult[7]_INST_0_i_11_n_0\,
      I2 => SrcB(1),
      I3 => \ALUResult[9]_INST_0_i_11_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[5]_INST_0_i_11_n_0\,
      O => \ALUResult[5]_INST_0_i_9_n_0\
    );
\ALUResult[6]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALUResult[6]_INST_0_i_1_n_0\,
      I1 => \ALUResult[6]_INST_0_i_2_n_0\,
      O => ALUResult(5),
      S => \^alucontrol\(2)
    );
\ALUResult[6]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFCFAFC0AFC0A0C0"
    )
        port map (
      I0 => \ALUResult[6]_INST_0_i_3_n_0\,
      I1 => \addressM[7]\(2),
      I2 => \ALUResult[31]_INST_0_i_16_n_0\,
      I3 => \ALUResult[31]_INST_0_i_17_n_0\,
      I4 => \^clk_6\,
      I5 => SrcB(6),
      O => \ALUResult[6]_INST_0_i_1_n_0\
    );
\ALUResult[6]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[12]_INST_0_i_14_n_0\,
      I1 => \ALUResult[8]_INST_0_i_12_n_0\,
      I2 => SrcB(1),
      I3 => \ALUResult[10]_INST_0_i_12_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[6]_INST_0_i_11_n_0\,
      O => \ALUResult[6]_INST_0_i_10_n_0\
    );
\ALUResult[6]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^clk_30\,
      I1 => \^clk_14\,
      I2 => SrcB(3),
      I3 => \^clk_22\,
      I4 => SrcB(4),
      I5 => \^clk_6\,
      O => \ALUResult[6]_INST_0_i_11_n_0\
    );
\ALUResult[6]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0C0F0C0BBFFBBCC"
    )
        port map (
      I0 => SrcB(6),
      I1 => \^alucontrol\(1),
      I2 => \addressM[7]\(2),
      I3 => \^alucontrol\(0),
      I4 => data7(6),
      I5 => \^alucontrol__0\(0),
      O => \ALUResult[6]_INST_0_i_2_n_0\
    );
\ALUResult[6]_INST_0_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALUResult[6]_INST_0_i_6_n_0\,
      I1 => \ALUResult[6]_INST_0_i_7_n_0\,
      O => \ALUResult[6]_INST_0_i_3_n_0\,
      S => \^alucontrol\(0)
    );
\ALUResult[6]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8AFF8A008A008A00"
    )
        port map (
      I0 => Instr(24),
      I1 => Instr(4),
      I2 => Instr(0),
      I3 => ALUSrc(0),
      I4 => rd21,
      I5 => rd20(6),
      O => SrcB(6)
    );
\ALUResult[6]_INST_0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00B8B8"
    )
        port map (
      I0 => \ALUResult[7]_INST_0_i_8_n_0\,
      I1 => SrcB(1),
      I2 => \ALUResult[9]_INST_0_i_8_n_0\,
      I3 => \ALUResult[6]_INST_0_i_8_n_0\,
      I4 => \^clk_0\(0),
      O => data7(6)
    );
\ALUResult[6]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000007F778088"
    )
        port map (
      I0 => rd10(6),
      I1 => rd11,
      I2 => Instr(3),
      I3 => Instr(0),
      I4 => SrcB(6),
      I5 => \^alucontrol__0\(0),
      O => \ALUResult[6]_INST_0_i_6_n_0\
    );
\ALUResult[6]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[7]_INST_0_i_9_n_0\,
      I1 => \ALUResult[6]_INST_0_i_9_n_0\,
      I2 => \^alucontrol__0\(0),
      I3 => \ALUResult[7]_INST_0_i_10_n_0\,
      I4 => \^clk_0\(0),
      I5 => \ALUResult[6]_INST_0_i_10_n_0\,
      O => \ALUResult[6]_INST_0_i_7_n_0\
    );
\ALUResult[6]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004FFFF00040000"
    )
        port map (
      I0 => SrcB(3),
      I1 => \^clk_3\,
      I2 => SrcB(4),
      I3 => SrcB(2),
      I4 => SrcB(1),
      I5 => \ALUResult[8]_INST_0_i_8_n_0\,
      O => \ALUResult[6]_INST_0_i_8_n_0\
    );
\ALUResult[6]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[12]_INST_0_i_13_n_0\,
      I1 => \ALUResult[8]_INST_0_i_11_n_0\,
      I2 => SrcB(1),
      I3 => \ALUResult[10]_INST_0_i_11_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[6]_INST_0_i_11_n_0\,
      O => \ALUResult[6]_INST_0_i_9_n_0\
    );
\ALUResult[7]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALUResult[7]_INST_0_i_1_n_0\,
      I1 => \ALUResult[7]_INST_0_i_2_n_0\,
      O => ALUResult(6),
      S => \^alucontrol\(2)
    );
\ALUResult[7]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFCFAFC0AFC0A0C0"
    )
        port map (
      I0 => \ALUResult[7]_INST_0_i_3_n_0\,
      I1 => \addressM[7]\(3),
      I2 => \ALUResult[31]_INST_0_i_16_n_0\,
      I3 => \ALUResult[31]_INST_0_i_17_n_0\,
      I4 => \^clk_7\,
      I5 => SrcB(7),
      O => \ALUResult[7]_INST_0_i_1_n_0\
    );
\ALUResult[7]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[13]_INST_0_i_14_n_0\,
      I1 => \ALUResult[9]_INST_0_i_12_n_0\,
      I2 => SrcB(1),
      I3 => \ALUResult[11]_INST_0_i_13_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[7]_INST_0_i_11_n_0\,
      O => \ALUResult[7]_INST_0_i_10_n_0\
    );
\ALUResult[7]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[31]_INST_0_i_18_n_0\,
      I1 => \^clk_15\,
      I2 => SrcB(3),
      I3 => \^clk_23\,
      I4 => SrcB(4),
      I5 => \^clk_7\,
      O => \ALUResult[7]_INST_0_i_11_n_0\
    );
\ALUResult[7]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0C0F0C0BBFFBBCC"
    )
        port map (
      I0 => SrcB(7),
      I1 => \^alucontrol\(1),
      I2 => \addressM[7]\(3),
      I3 => \^alucontrol\(0),
      I4 => data7(7),
      I5 => \^alucontrol__0\(0),
      O => \ALUResult[7]_INST_0_i_2_n_0\
    );
\ALUResult[7]_INST_0_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALUResult[7]_INST_0_i_6_n_0\,
      I1 => \ALUResult[7]_INST_0_i_7_n_0\,
      O => \ALUResult[7]_INST_0_i_3_n_0\,
      S => \^alucontrol\(0)
    );
\ALUResult[7]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8AFF8A008A008A00"
    )
        port map (
      I0 => Instr(25),
      I1 => Instr(4),
      I2 => Instr(0),
      I3 => ALUSrc(0),
      I4 => rd21,
      I5 => rd20(7),
      O => SrcB(7)
    );
\ALUResult[7]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF33CC00B8B8B8B8"
    )
        port map (
      I0 => \ALUResult[8]_INST_0_i_8_n_0\,
      I1 => SrcB(1),
      I2 => \ALUResult[10]_INST_0_i_8_n_0\,
      I3 => \ALUResult[7]_INST_0_i_8_n_0\,
      I4 => \ALUResult[9]_INST_0_i_8_n_0\,
      I5 => \^clk_0\(0),
      O => data7(7)
    );
\ALUResult[7]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000007F778088"
    )
        port map (
      I0 => rd10(7),
      I1 => rd11,
      I2 => Instr(3),
      I3 => Instr(0),
      I4 => SrcB(7),
      I5 => \^alucontrol__0\(0),
      O => \ALUResult[7]_INST_0_i_6_n_0\
    );
\ALUResult[7]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[8]_INST_0_i_9_n_0\,
      I1 => \ALUResult[7]_INST_0_i_9_n_0\,
      I2 => \^alucontrol__0\(0),
      I3 => \ALUResult[8]_INST_0_i_10_n_0\,
      I4 => \^clk_0\(0),
      I5 => \ALUResult[7]_INST_0_i_10_n_0\,
      O => \ALUResult[7]_INST_0_i_7_n_0\
    );
\ALUResult[7]_INST_0_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000B08"
    )
        port map (
      I0 => \ALUResult[0]_INST_0_i_7_n_0\,
      I1 => SrcB(2),
      I2 => SrcB(4),
      I3 => \^clk_4\,
      I4 => SrcB(3),
      O => \ALUResult[7]_INST_0_i_8_n_0\
    );
\ALUResult[7]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[13]_INST_0_i_13_n_0\,
      I1 => \ALUResult[9]_INST_0_i_11_n_0\,
      I2 => SrcB(1),
      I3 => \ALUResult[11]_INST_0_i_12_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[7]_INST_0_i_11_n_0\,
      O => \ALUResult[7]_INST_0_i_9_n_0\
    );
\ALUResult[8]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALUResult[8]_INST_0_i_1_n_0\,
      I1 => \ALUResult[8]_INST_0_i_2_n_0\,
      O => ALUResult(7),
      S => \^alucontrol\(2)
    );
\ALUResult[8]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFCFAFC0AFC0A0C0"
    )
        port map (
      I0 => \ALUResult[8]_INST_0_i_3_n_0\,
      I1 => \addressM[11]\(0),
      I2 => \ALUResult[31]_INST_0_i_16_n_0\,
      I3 => \ALUResult[31]_INST_0_i_17_n_0\,
      I4 => \^clk_8\,
      I5 => SrcB(8),
      O => \ALUResult[8]_INST_0_i_1_n_0\
    );
\ALUResult[8]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[14]_INST_0_i_14_n_0\,
      I1 => \ALUResult[10]_INST_0_i_12_n_0\,
      I2 => SrcB(1),
      I3 => \ALUResult[12]_INST_0_i_14_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[8]_INST_0_i_12_n_0\,
      O => \ALUResult[8]_INST_0_i_10_n_0\
    );
\ALUResult[8]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[31]_INST_0_i_18_n_0\,
      I1 => \^clk_16\,
      I2 => SrcB(3),
      I3 => \^clk_24\,
      I4 => SrcB(4),
      I5 => \^clk_8\,
      O => \ALUResult[8]_INST_0_i_11_n_0\
    );
\ALUResult[8]_INST_0_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^clk_16\,
      I1 => SrcB(3),
      I2 => \^clk_24\,
      I3 => SrcB(4),
      I4 => \^clk_8\,
      O => \ALUResult[8]_INST_0_i_12_n_0\
    );
\ALUResult[8]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0C0F0C0BBFFBBCC"
    )
        port map (
      I0 => SrcB(8),
      I1 => \^alucontrol\(1),
      I2 => \addressM[11]\(0),
      I3 => \^alucontrol\(0),
      I4 => data7(8),
      I5 => \^alucontrol__0\(0),
      O => \ALUResult[8]_INST_0_i_2_n_0\
    );
\ALUResult[8]_INST_0_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALUResult[8]_INST_0_i_6_n_0\,
      I1 => \ALUResult[8]_INST_0_i_7_n_0\,
      O => \ALUResult[8]_INST_0_i_3_n_0\,
      S => \^alucontrol\(0)
    );
\ALUResult[8]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8AFF8A008A008A00"
    )
        port map (
      I0 => Instr(26),
      I1 => Instr(4),
      I2 => Instr(0),
      I3 => ALUSrc(0),
      I4 => rd21,
      I5 => rd20(8),
      O => SrcB(8)
    );
\ALUResult[8]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF33CC00B8B8B8B8"
    )
        port map (
      I0 => \ALUResult[9]_INST_0_i_8_n_0\,
      I1 => SrcB(1),
      I2 => \ALUResult[11]_INST_0_i_9_n_0\,
      I3 => \ALUResult[8]_INST_0_i_8_n_0\,
      I4 => \ALUResult[10]_INST_0_i_8_n_0\,
      I5 => \^clk_0\(0),
      O => data7(8)
    );
\ALUResult[8]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000007F778088"
    )
        port map (
      I0 => rd10(8),
      I1 => rd11,
      I2 => Instr(3),
      I3 => Instr(0),
      I4 => SrcB(8),
      I5 => \^alucontrol__0\(0),
      O => \ALUResult[8]_INST_0_i_6_n_0\
    );
\ALUResult[8]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[9]_INST_0_i_9_n_0\,
      I1 => \ALUResult[8]_INST_0_i_9_n_0\,
      I2 => \^alucontrol__0\(0),
      I3 => \ALUResult[9]_INST_0_i_10_n_0\,
      I4 => \^clk_0\(0),
      I5 => \ALUResult[8]_INST_0_i_10_n_0\,
      O => \ALUResult[8]_INST_0_i_7_n_0\
    );
\ALUResult[8]_INST_0_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000B08"
    )
        port map (
      I0 => \^clk_1\,
      I1 => SrcB(2),
      I2 => SrcB(4),
      I3 => \^clk_5\,
      I4 => SrcB(3),
      O => \ALUResult[8]_INST_0_i_8_n_0\
    );
\ALUResult[8]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[14]_INST_0_i_13_n_0\,
      I1 => \ALUResult[10]_INST_0_i_11_n_0\,
      I2 => SrcB(1),
      I3 => \ALUResult[12]_INST_0_i_13_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[8]_INST_0_i_11_n_0\,
      O => \ALUResult[8]_INST_0_i_9_n_0\
    );
\ALUResult[9]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALUResult[9]_INST_0_i_1_n_0\,
      I1 => \ALUResult[9]_INST_0_i_2_n_0\,
      O => ALUResult(8),
      S => \^alucontrol\(2)
    );
\ALUResult[9]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFCFAFC0AFC0A0C0"
    )
        port map (
      I0 => \ALUResult[9]_INST_0_i_3_n_0\,
      I1 => \addressM[11]\(1),
      I2 => \ALUResult[31]_INST_0_i_16_n_0\,
      I3 => \ALUResult[31]_INST_0_i_17_n_0\,
      I4 => \^clk_9\,
      I5 => SrcB(9),
      O => \ALUResult[9]_INST_0_i_1_n_0\
    );
\ALUResult[9]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[15]_INST_0_i_15_n_0\,
      I1 => \ALUResult[11]_INST_0_i_13_n_0\,
      I2 => SrcB(1),
      I3 => \ALUResult[13]_INST_0_i_14_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[9]_INST_0_i_12_n_0\,
      O => \ALUResult[9]_INST_0_i_10_n_0\
    );
\ALUResult[9]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[31]_INST_0_i_18_n_0\,
      I1 => \^clk_17\,
      I2 => SrcB(3),
      I3 => \^clk_25\,
      I4 => SrcB(4),
      I5 => \^clk_9\,
      O => \ALUResult[9]_INST_0_i_11_n_0\
    );
\ALUResult[9]_INST_0_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^clk_17\,
      I1 => SrcB(3),
      I2 => \^clk_25\,
      I3 => SrcB(4),
      I4 => \^clk_9\,
      O => \ALUResult[9]_INST_0_i_12_n_0\
    );
\ALUResult[9]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0C0F0C0BBFFBBCC"
    )
        port map (
      I0 => SrcB(9),
      I1 => \^alucontrol\(1),
      I2 => \addressM[11]\(1),
      I3 => \^alucontrol\(0),
      I4 => data7(9),
      I5 => \^alucontrol__0\(0),
      O => \ALUResult[9]_INST_0_i_2_n_0\
    );
\ALUResult[9]_INST_0_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALUResult[9]_INST_0_i_6_n_0\,
      I1 => \ALUResult[9]_INST_0_i_7_n_0\,
      O => \ALUResult[9]_INST_0_i_3_n_0\,
      S => \^alucontrol\(0)
    );
\ALUResult[9]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8AFF8A008A008A00"
    )
        port map (
      I0 => Instr(27),
      I1 => Instr(4),
      I2 => Instr(0),
      I3 => ALUSrc(0),
      I4 => rd21,
      I5 => rd20(9),
      O => SrcB(9)
    );
\ALUResult[9]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF33CC00B8B8B8B8"
    )
        port map (
      I0 => \ALUResult[10]_INST_0_i_8_n_0\,
      I1 => SrcB(1),
      I2 => \ALUResult[12]_INST_0_i_8_n_0\,
      I3 => \ALUResult[9]_INST_0_i_8_n_0\,
      I4 => \ALUResult[11]_INST_0_i_9_n_0\,
      I5 => \^clk_0\(0),
      O => data7(9)
    );
\ALUResult[9]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000007F778088"
    )
        port map (
      I0 => rd10(9),
      I1 => rd11,
      I2 => Instr(3),
      I3 => Instr(0),
      I4 => SrcB(9),
      I5 => \^alucontrol__0\(0),
      O => \ALUResult[9]_INST_0_i_6_n_0\
    );
\ALUResult[9]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[10]_INST_0_i_9_n_0\,
      I1 => \ALUResult[9]_INST_0_i_9_n_0\,
      I2 => \^alucontrol__0\(0),
      I3 => \ALUResult[10]_INST_0_i_10_n_0\,
      I4 => \^clk_0\(0),
      I5 => \ALUResult[9]_INST_0_i_10_n_0\,
      O => \ALUResult[9]_INST_0_i_7_n_0\
    );
\ALUResult[9]_INST_0_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000B08"
    )
        port map (
      I0 => \^clk_2\,
      I1 => SrcB(2),
      I2 => SrcB(4),
      I3 => \^clk_6\,
      I4 => SrcB(3),
      O => \ALUResult[9]_INST_0_i_8_n_0\
    );
\ALUResult[9]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[15]_INST_0_i_14_n_0\,
      I1 => \ALUResult[11]_INST_0_i_12_n_0\,
      I2 => SrcB(1),
      I3 => \ALUResult[13]_INST_0_i_13_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[9]_INST_0_i_11_n_0\,
      O => \ALUResult[9]_INST_0_i_9_n_0\
    );
\WriteData[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(22),
      I1 => Instr(21),
      I2 => Instr(19),
      I3 => Instr(18),
      I4 => Instr(20),
      I5 => rd20(0),
      O => \^writedata\(0)
    );
\WriteData[10]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(22),
      I1 => Instr(21),
      I2 => Instr(19),
      I3 => Instr(18),
      I4 => Instr(20),
      I5 => rd20(10),
      O => \^writedata\(10)
    );
\WriteData[11]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(22),
      I1 => Instr(21),
      I2 => Instr(19),
      I3 => Instr(18),
      I4 => Instr(20),
      I5 => rd20(11),
      O => \^writedata\(11)
    );
\WriteData[12]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(22),
      I1 => Instr(21),
      I2 => Instr(19),
      I3 => Instr(18),
      I4 => Instr(20),
      I5 => rd20(12),
      O => \^writedata\(12)
    );
\WriteData[13]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(22),
      I1 => Instr(21),
      I2 => Instr(19),
      I3 => Instr(18),
      I4 => Instr(20),
      I5 => rd20(13),
      O => \^writedata\(13)
    );
\WriteData[14]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(22),
      I1 => Instr(21),
      I2 => Instr(19),
      I3 => Instr(18),
      I4 => Instr(20),
      I5 => rd20(14),
      O => \^writedata\(14)
    );
\WriteData[15]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(22),
      I1 => Instr(21),
      I2 => Instr(19),
      I3 => Instr(18),
      I4 => Instr(20),
      I5 => rd20(15),
      O => \^writedata\(15)
    );
\WriteData[16]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(22),
      I1 => Instr(21),
      I2 => Instr(19),
      I3 => Instr(18),
      I4 => Instr(20),
      I5 => rd20(16),
      O => \^writedata\(16)
    );
\WriteData[17]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(22),
      I1 => Instr(21),
      I2 => Instr(19),
      I3 => Instr(18),
      I4 => Instr(20),
      I5 => rd20(17),
      O => \^writedata\(17)
    );
\WriteData[18]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(22),
      I1 => Instr(21),
      I2 => Instr(19),
      I3 => Instr(18),
      I4 => Instr(20),
      I5 => rd20(18),
      O => \^writedata\(18)
    );
\WriteData[19]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(22),
      I1 => Instr(21),
      I2 => Instr(19),
      I3 => Instr(18),
      I4 => Instr(20),
      I5 => rd20(19),
      O => \^writedata\(19)
    );
\WriteData[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(22),
      I1 => Instr(21),
      I2 => Instr(19),
      I3 => Instr(18),
      I4 => Instr(20),
      I5 => rd20(1),
      O => \^writedata\(1)
    );
\WriteData[20]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(22),
      I1 => Instr(21),
      I2 => Instr(19),
      I3 => Instr(18),
      I4 => Instr(20),
      I5 => rd20(20),
      O => \^writedata\(20)
    );
\WriteData[21]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(22),
      I1 => Instr(21),
      I2 => Instr(19),
      I3 => Instr(18),
      I4 => Instr(20),
      I5 => rd20(21),
      O => \^writedata\(21)
    );
\WriteData[22]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(22),
      I1 => Instr(21),
      I2 => Instr(19),
      I3 => Instr(18),
      I4 => Instr(20),
      I5 => rd20(22),
      O => \^writedata\(22)
    );
\WriteData[23]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(22),
      I1 => Instr(21),
      I2 => Instr(19),
      I3 => Instr(18),
      I4 => Instr(20),
      I5 => rd20(23),
      O => \^writedata\(23)
    );
\WriteData[24]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(22),
      I1 => Instr(21),
      I2 => Instr(19),
      I3 => Instr(18),
      I4 => Instr(20),
      I5 => rd20(24),
      O => \^writedata\(24)
    );
\WriteData[25]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(22),
      I1 => Instr(21),
      I2 => Instr(19),
      I3 => Instr(18),
      I4 => Instr(20),
      I5 => rd20(25),
      O => \^writedata\(25)
    );
\WriteData[26]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(22),
      I1 => Instr(21),
      I2 => Instr(19),
      I3 => Instr(18),
      I4 => Instr(20),
      I5 => rd20(26),
      O => \^writedata\(26)
    );
\WriteData[27]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(22),
      I1 => Instr(21),
      I2 => Instr(19),
      I3 => Instr(18),
      I4 => Instr(20),
      I5 => rd20(27),
      O => \^writedata\(27)
    );
\WriteData[28]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(22),
      I1 => Instr(21),
      I2 => Instr(19),
      I3 => Instr(18),
      I4 => Instr(20),
      I5 => rd20(28),
      O => \^writedata\(28)
    );
\WriteData[29]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(22),
      I1 => Instr(21),
      I2 => Instr(19),
      I3 => Instr(18),
      I4 => Instr(20),
      I5 => rd20(29),
      O => \^writedata\(29)
    );
\WriteData[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(22),
      I1 => Instr(21),
      I2 => Instr(19),
      I3 => Instr(18),
      I4 => Instr(20),
      I5 => rd20(2),
      O => \^writedata\(2)
    );
\WriteData[30]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(22),
      I1 => Instr(21),
      I2 => Instr(19),
      I3 => Instr(18),
      I4 => Instr(20),
      I5 => rd20(30),
      O => \^writedata\(30)
    );
\WriteData[31]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(22),
      I1 => Instr(21),
      I2 => Instr(19),
      I3 => Instr(18),
      I4 => Instr(20),
      I5 => rd20(31),
      O => \^writedata\(31)
    );
\WriteData[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(22),
      I1 => Instr(21),
      I2 => Instr(19),
      I3 => Instr(18),
      I4 => Instr(20),
      I5 => rd20(3),
      O => \^writedata\(3)
    );
\WriteData[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(22),
      I1 => Instr(21),
      I2 => Instr(19),
      I3 => Instr(18),
      I4 => Instr(20),
      I5 => rd20(4),
      O => \^writedata\(4)
    );
\WriteData[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(22),
      I1 => Instr(21),
      I2 => Instr(19),
      I3 => Instr(18),
      I4 => Instr(20),
      I5 => rd20(5),
      O => \^writedata\(5)
    );
\WriteData[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(22),
      I1 => Instr(21),
      I2 => Instr(19),
      I3 => Instr(18),
      I4 => Instr(20),
      I5 => rd20(6),
      O => \^writedata\(6)
    );
\WriteData[7]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(22),
      I1 => Instr(21),
      I2 => Instr(19),
      I3 => Instr(18),
      I4 => Instr(20),
      I5 => rd20(7),
      O => \^writedata\(7)
    );
\WriteData[8]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(22),
      I1 => Instr(21),
      I2 => Instr(19),
      I3 => Instr(18),
      I4 => Instr(20),
      I5 => rd20(8),
      O => \^writedata\(8)
    );
\WriteData[9]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(22),
      I1 => Instr(21),
      I2 => Instr(19),
      I3 => Instr(18),
      I4 => Instr(20),
      I5 => rd20(9),
      O => \^writedata\(9)
    );
rf_reg_r1_0_31_0_5: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 0) => Instr(17 downto 13),
      ADDRB(4 downto 0) => Instr(17 downto 13),
      ADDRC(4 downto 0) => Instr(17 downto 13),
      ADDRD(4 downto 0) => Instr(9 downto 5),
      DIA(1) => rf_reg_r1_0_31_0_5_i_2_n_0,
      DIA(0) => \writeDataM[1]\(0),
      DIB(1) => rf_reg_r1_0_31_0_5_i_4_n_0,
      DIB(0) => wd3(2),
      DIC(1) => rf_reg_r1_0_31_0_5_i_6_n_0,
      DIC(0) => rf_reg_r1_0_31_0_5_i_7_n_0,
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => rd10(1 downto 0),
      DOB(1 downto 0) => rd10(3 downto 2),
      DOC(1 downto 0) => rd10(5 downto 4),
      DOD(1 downto 0) => NLW_rf_reg_r1_0_31_0_5_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => we3
    );
rf_reg_r1_0_31_0_5_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => Instr(3),
      I1 => Instr(0),
      I2 => Instr(2),
      O => we3
    );
rf_reg_r1_0_31_0_5_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFE200E2"
    )
        port map (
      I0 => \ALUResult[1]_INST_0_i_1_n_0\,
      I1 => \^alucontrol\(2),
      I2 => \ALUResult[1]_INST_0_i_2_n_0\,
      I3 => \^s_1\(0),
      I4 => ReadData(0),
      I5 => \^jump\,
      O => rf_reg_r1_0_31_0_5_i_2_n_0
    );
rf_reg_r1_0_31_0_5_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFE200E2"
    )
        port map (
      I0 => \ALUResult[3]_INST_0_i_1_n_0\,
      I1 => \^alucontrol\(2),
      I2 => \ALUResult[3]_INST_0_i_2_n_0\,
      I3 => \^s_1\(0),
      I4 => ReadData(2),
      I5 => \^jump\,
      O => rf_reg_r1_0_31_0_5_i_4_n_0
    );
rf_reg_r1_0_31_0_5_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEAEAAAAFEAE"
    )
        port map (
      I0 => \^jump\,
      I1 => \ALUResult[2]_INST_0_i_1_n_0\,
      I2 => \^alucontrol\(2),
      I3 => \ALUResult[2]_INST_0_i_2_n_0\,
      I4 => \^s_1\(0),
      I5 => ReadData(1),
      O => wd3(2)
    );
rf_reg_r1_0_31_0_5_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFE200E2"
    )
        port map (
      I0 => \ALUResult[5]_INST_0_i_1_n_0\,
      I1 => \^alucontrol\(2),
      I2 => \ALUResult[5]_INST_0_i_2_n_0\,
      I3 => \^s_1\(0),
      I4 => ReadData(4),
      I5 => \^jump\,
      O => rf_reg_r1_0_31_0_5_i_6_n_0
    );
rf_reg_r1_0_31_0_5_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFE200E2"
    )
        port map (
      I0 => \ALUResult[4]_INST_0_i_1_n_0\,
      I1 => \^alucontrol\(2),
      I2 => \ALUResult[4]_INST_0_i_2_n_0\,
      I3 => \^s_1\(0),
      I4 => ReadData(3),
      I5 => \^jump\,
      O => rf_reg_r1_0_31_0_5_i_7_n_0
    );
rf_reg_r1_0_31_0_5_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Instr(2),
      I1 => Instr(3),
      O => \^s_1\(0)
    );
rf_reg_r1_0_31_0_5_i_9: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Instr(0),
      I1 => Instr(4),
      O => \^jump\
    );
rf_reg_r1_0_31_12_17: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 0) => Instr(17 downto 13),
      ADDRB(4 downto 0) => Instr(17 downto 13),
      ADDRC(4 downto 0) => Instr(17 downto 13),
      ADDRD(4 downto 0) => Instr(9 downto 5),
      DIA(1) => rf_reg_r1_0_31_12_17_i_1_n_0,
      DIA(0) => rf_reg_r1_0_31_12_17_i_2_n_0,
      DIB(1) => rf_reg_r1_0_31_12_17_i_3_n_0,
      DIB(0) => rf_reg_r1_0_31_12_17_i_4_n_0,
      DIC(1) => rf_reg_r1_0_31_12_17_i_5_n_0,
      DIC(0) => rf_reg_r1_0_31_12_17_i_6_n_0,
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => rd10(13 downto 12),
      DOB(1 downto 0) => rd10(15 downto 14),
      DOC(1 downto 0) => rd10(17 downto 16),
      DOD(1 downto 0) => NLW_rf_reg_r1_0_31_12_17_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => we3
    );
rf_reg_r1_0_31_12_17_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFE200E2"
    )
        port map (
      I0 => \ALUResult[13]_INST_0_i_3_n_0\,
      I1 => \^alucontrol\(2),
      I2 => rf_reg_r1_0_31_12_17_i_7_n_0,
      I3 => \^s_1\(0),
      I4 => ReadData(12),
      I5 => \^jump\,
      O => rf_reg_r1_0_31_12_17_i_1_n_0
    );
rf_reg_r1_0_31_12_17_i_10: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALUResult[14]_INST_0_i_2_n_0\,
      I1 => \ALUResult[14]_INST_0_i_1_n_0\,
      O => rf_reg_r1_0_31_12_17_i_10_n_0,
      S => \^alucontrol\(1)
    );
rf_reg_r1_0_31_12_17_i_11: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALUResult[17]_INST_0_i_2_n_0\,
      I1 => \ALUResult[17]_INST_0_i_1_n_0\,
      O => rf_reg_r1_0_31_12_17_i_11_n_0,
      S => \^alucontrol\(1)
    );
rf_reg_r1_0_31_12_17_i_12: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALUResult[16]_INST_0_i_2_n_0\,
      I1 => \ALUResult[16]_INST_0_i_1_n_0\,
      O => rf_reg_r1_0_31_12_17_i_12_n_0,
      S => \^alucontrol\(1)
    );
rf_reg_r1_0_31_12_17_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFE200E2"
    )
        port map (
      I0 => \ALUResult[12]_INST_0_i_3_n_0\,
      I1 => \^alucontrol\(2),
      I2 => rf_reg_r1_0_31_12_17_i_8_n_0,
      I3 => \^s_1\(0),
      I4 => ReadData(11),
      I5 => \^jump\,
      O => rf_reg_r1_0_31_12_17_i_2_n_0
    );
rf_reg_r1_0_31_12_17_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFE200E2"
    )
        port map (
      I0 => \ALUResult[15]_INST_0_i_3_n_0\,
      I1 => \^alucontrol\(2),
      I2 => rf_reg_r1_0_31_12_17_i_9_n_0,
      I3 => \^s_1\(0),
      I4 => ReadData(14),
      I5 => \^jump\,
      O => rf_reg_r1_0_31_12_17_i_3_n_0
    );
rf_reg_r1_0_31_12_17_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFE200E2"
    )
        port map (
      I0 => \ALUResult[14]_INST_0_i_3_n_0\,
      I1 => \^alucontrol\(2),
      I2 => rf_reg_r1_0_31_12_17_i_10_n_0,
      I3 => \^s_1\(0),
      I4 => ReadData(13),
      I5 => \^jump\,
      O => rf_reg_r1_0_31_12_17_i_4_n_0
    );
rf_reg_r1_0_31_12_17_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFE200E2"
    )
        port map (
      I0 => \ALUResult[17]_INST_0_i_3_n_0\,
      I1 => \^alucontrol\(2),
      I2 => rf_reg_r1_0_31_12_17_i_11_n_0,
      I3 => \^s_1\(0),
      I4 => ReadData(16),
      I5 => \^jump\,
      O => rf_reg_r1_0_31_12_17_i_5_n_0
    );
rf_reg_r1_0_31_12_17_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFE200E2"
    )
        port map (
      I0 => \ALUResult[16]_INST_0_i_3_n_0\,
      I1 => \^alucontrol\(2),
      I2 => rf_reg_r1_0_31_12_17_i_12_n_0,
      I3 => \^s_1\(0),
      I4 => ReadData(15),
      I5 => \^jump\,
      O => rf_reg_r1_0_31_12_17_i_6_n_0
    );
rf_reg_r1_0_31_12_17_i_7: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALUResult[13]_INST_0_i_2_n_0\,
      I1 => \ALUResult[13]_INST_0_i_1_n_0\,
      O => rf_reg_r1_0_31_12_17_i_7_n_0,
      S => \^alucontrol\(1)
    );
rf_reg_r1_0_31_12_17_i_8: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALUResult[12]_INST_0_i_2_n_0\,
      I1 => \ALUResult[12]_INST_0_i_1_n_0\,
      O => rf_reg_r1_0_31_12_17_i_8_n_0,
      S => \^alucontrol\(1)
    );
rf_reg_r1_0_31_12_17_i_9: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALUResult[15]_INST_0_i_2_n_0\,
      I1 => \ALUResult[15]_INST_0_i_1_n_0\,
      O => rf_reg_r1_0_31_12_17_i_9_n_0,
      S => \^alucontrol\(1)
    );
rf_reg_r1_0_31_18_23: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 0) => Instr(17 downto 13),
      ADDRB(4 downto 0) => Instr(17 downto 13),
      ADDRC(4 downto 0) => Instr(17 downto 13),
      ADDRD(4 downto 0) => Instr(9 downto 5),
      DIA(1) => rf_reg_r1_0_31_18_23_i_1_n_0,
      DIA(0) => rf_reg_r1_0_31_18_23_i_2_n_0,
      DIB(1) => rf_reg_r1_0_31_18_23_i_3_n_0,
      DIB(0) => rf_reg_r1_0_31_18_23_i_4_n_0,
      DIC(1) => rf_reg_r1_0_31_18_23_i_5_n_0,
      DIC(0) => rf_reg_r1_0_31_18_23_i_6_n_0,
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => rd10(19 downto 18),
      DOB(1 downto 0) => rd10(21 downto 20),
      DOC(1 downto 0) => rd10(23 downto 22),
      DOD(1 downto 0) => NLW_rf_reg_r1_0_31_18_23_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => we3
    );
rf_reg_r1_0_31_18_23_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFE200E2"
    )
        port map (
      I0 => \ALUResult[19]_INST_0_i_3_n_0\,
      I1 => \^alucontrol\(2),
      I2 => rf_reg_r1_0_31_18_23_i_7_n_0,
      I3 => \^s_1\(0),
      I4 => ReadData(18),
      I5 => \^jump\,
      O => rf_reg_r1_0_31_18_23_i_1_n_0
    );
rf_reg_r1_0_31_18_23_i_10: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALUResult[20]_INST_0_i_2_n_0\,
      I1 => \ALUResult[20]_INST_0_i_1_n_0\,
      O => rf_reg_r1_0_31_18_23_i_10_n_0,
      S => \^alucontrol\(1)
    );
rf_reg_r1_0_31_18_23_i_11: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALUResult[23]_INST_0_i_2_n_0\,
      I1 => \ALUResult[23]_INST_0_i_1_n_0\,
      O => rf_reg_r1_0_31_18_23_i_11_n_0,
      S => \^alucontrol\(1)
    );
rf_reg_r1_0_31_18_23_i_12: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALUResult[22]_INST_0_i_2_n_0\,
      I1 => \ALUResult[22]_INST_0_i_1_n_0\,
      O => rf_reg_r1_0_31_18_23_i_12_n_0,
      S => \^alucontrol\(1)
    );
rf_reg_r1_0_31_18_23_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFE200E2"
    )
        port map (
      I0 => \ALUResult[18]_INST_0_i_3_n_0\,
      I1 => \^alucontrol\(2),
      I2 => rf_reg_r1_0_31_18_23_i_8_n_0,
      I3 => \^s_1\(0),
      I4 => ReadData(17),
      I5 => \^jump\,
      O => rf_reg_r1_0_31_18_23_i_2_n_0
    );
rf_reg_r1_0_31_18_23_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFE200E2"
    )
        port map (
      I0 => \ALUResult[21]_INST_0_i_3_n_0\,
      I1 => \^alucontrol\(2),
      I2 => rf_reg_r1_0_31_18_23_i_9_n_0,
      I3 => \^s_1\(0),
      I4 => ReadData(20),
      I5 => \^jump\,
      O => rf_reg_r1_0_31_18_23_i_3_n_0
    );
rf_reg_r1_0_31_18_23_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFE200E2"
    )
        port map (
      I0 => \ALUResult[20]_INST_0_i_3_n_0\,
      I1 => \^alucontrol\(2),
      I2 => rf_reg_r1_0_31_18_23_i_10_n_0,
      I3 => \^s_1\(0),
      I4 => ReadData(19),
      I5 => \^jump\,
      O => rf_reg_r1_0_31_18_23_i_4_n_0
    );
rf_reg_r1_0_31_18_23_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFE200E2"
    )
        port map (
      I0 => \ALUResult[23]_INST_0_i_3_n_0\,
      I1 => \^alucontrol\(2),
      I2 => rf_reg_r1_0_31_18_23_i_11_n_0,
      I3 => \^s_1\(0),
      I4 => ReadData(22),
      I5 => \^jump\,
      O => rf_reg_r1_0_31_18_23_i_5_n_0
    );
rf_reg_r1_0_31_18_23_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFE200E2"
    )
        port map (
      I0 => \ALUResult[22]_INST_0_i_3_n_0\,
      I1 => \^alucontrol\(2),
      I2 => rf_reg_r1_0_31_18_23_i_12_n_0,
      I3 => \^s_1\(0),
      I4 => ReadData(21),
      I5 => \^jump\,
      O => rf_reg_r1_0_31_18_23_i_6_n_0
    );
rf_reg_r1_0_31_18_23_i_7: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALUResult[19]_INST_0_i_2_n_0\,
      I1 => \ALUResult[19]_INST_0_i_1_n_0\,
      O => rf_reg_r1_0_31_18_23_i_7_n_0,
      S => \^alucontrol\(1)
    );
rf_reg_r1_0_31_18_23_i_8: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALUResult[18]_INST_0_i_2_n_0\,
      I1 => \ALUResult[18]_INST_0_i_1_n_0\,
      O => rf_reg_r1_0_31_18_23_i_8_n_0,
      S => \^alucontrol\(1)
    );
rf_reg_r1_0_31_18_23_i_9: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALUResult[21]_INST_0_i_2_n_0\,
      I1 => \ALUResult[21]_INST_0_i_1_n_0\,
      O => rf_reg_r1_0_31_18_23_i_9_n_0,
      S => \^alucontrol\(1)
    );
rf_reg_r1_0_31_24_29: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 0) => Instr(17 downto 13),
      ADDRB(4 downto 0) => Instr(17 downto 13),
      ADDRC(4 downto 0) => Instr(17 downto 13),
      ADDRD(4 downto 0) => Instr(9 downto 5),
      DIA(1) => rf_reg_r1_0_31_24_29_i_1_n_0,
      DIA(0) => rf_reg_r1_0_31_24_29_i_2_n_0,
      DIB(1) => rf_reg_r1_0_31_24_29_i_3_n_0,
      DIB(0) => rf_reg_r1_0_31_24_29_i_4_n_0,
      DIC(1) => rf_reg_r1_0_31_24_29_i_5_n_0,
      DIC(0) => rf_reg_r1_0_31_24_29_i_6_n_0,
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => rd10(25 downto 24),
      DOB(1 downto 0) => rd10(27 downto 26),
      DOC(1 downto 0) => rd10(29 downto 28),
      DOD(1 downto 0) => NLW_rf_reg_r1_0_31_24_29_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => we3
    );
rf_reg_r1_0_31_24_29_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFE200E2"
    )
        port map (
      I0 => \ALUResult[25]_INST_0_i_3_n_0\,
      I1 => \^alucontrol\(2),
      I2 => rf_reg_r1_0_31_24_29_i_7_n_0,
      I3 => \^s_1\(0),
      I4 => ReadData(24),
      I5 => \^jump\,
      O => rf_reg_r1_0_31_24_29_i_1_n_0
    );
rf_reg_r1_0_31_24_29_i_10: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALUResult[26]_INST_0_i_2_n_0\,
      I1 => \ALUResult[26]_INST_0_i_1_n_0\,
      O => rf_reg_r1_0_31_24_29_i_10_n_0,
      S => \^alucontrol\(1)
    );
rf_reg_r1_0_31_24_29_i_11: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALUResult[29]_INST_0_i_2_n_0\,
      I1 => \ALUResult[29]_INST_0_i_1_n_0\,
      O => rf_reg_r1_0_31_24_29_i_11_n_0,
      S => \^alucontrol\(1)
    );
rf_reg_r1_0_31_24_29_i_12: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALUResult[28]_INST_0_i_2_n_0\,
      I1 => \ALUResult[28]_INST_0_i_1_n_0\,
      O => rf_reg_r1_0_31_24_29_i_12_n_0,
      S => \^alucontrol\(1)
    );
rf_reg_r1_0_31_24_29_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFE200E2"
    )
        port map (
      I0 => \ALUResult[24]_INST_0_i_3_n_0\,
      I1 => \^alucontrol\(2),
      I2 => rf_reg_r1_0_31_24_29_i_8_n_0,
      I3 => \^s_1\(0),
      I4 => ReadData(23),
      I5 => \^jump\,
      O => rf_reg_r1_0_31_24_29_i_2_n_0
    );
rf_reg_r1_0_31_24_29_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFE200E2"
    )
        port map (
      I0 => \ALUResult[27]_INST_0_i_3_n_0\,
      I1 => \^alucontrol\(2),
      I2 => rf_reg_r1_0_31_24_29_i_9_n_0,
      I3 => \^s_1\(0),
      I4 => ReadData(26),
      I5 => \^jump\,
      O => rf_reg_r1_0_31_24_29_i_3_n_0
    );
rf_reg_r1_0_31_24_29_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFE200E2"
    )
        port map (
      I0 => \ALUResult[26]_INST_0_i_3_n_0\,
      I1 => \^alucontrol\(2),
      I2 => rf_reg_r1_0_31_24_29_i_10_n_0,
      I3 => \^s_1\(0),
      I4 => ReadData(25),
      I5 => \^jump\,
      O => rf_reg_r1_0_31_24_29_i_4_n_0
    );
rf_reg_r1_0_31_24_29_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFE200E2"
    )
        port map (
      I0 => \ALUResult[29]_INST_0_i_3_n_0\,
      I1 => \^alucontrol\(2),
      I2 => rf_reg_r1_0_31_24_29_i_11_n_0,
      I3 => \^s_1\(0),
      I4 => ReadData(28),
      I5 => \^jump\,
      O => rf_reg_r1_0_31_24_29_i_5_n_0
    );
rf_reg_r1_0_31_24_29_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFE200E2"
    )
        port map (
      I0 => \ALUResult[28]_INST_0_i_3_n_0\,
      I1 => \^alucontrol\(2),
      I2 => rf_reg_r1_0_31_24_29_i_12_n_0,
      I3 => \^s_1\(0),
      I4 => ReadData(27),
      I5 => \^jump\,
      O => rf_reg_r1_0_31_24_29_i_6_n_0
    );
rf_reg_r1_0_31_24_29_i_7: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALUResult[25]_INST_0_i_2_n_0\,
      I1 => \ALUResult[25]_INST_0_i_1_n_0\,
      O => rf_reg_r1_0_31_24_29_i_7_n_0,
      S => \^alucontrol\(1)
    );
rf_reg_r1_0_31_24_29_i_8: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALUResult[24]_INST_0_i_2_n_0\,
      I1 => \ALUResult[24]_INST_0_i_1_n_0\,
      O => rf_reg_r1_0_31_24_29_i_8_n_0,
      S => \^alucontrol\(1)
    );
rf_reg_r1_0_31_24_29_i_9: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALUResult[27]_INST_0_i_2_n_0\,
      I1 => \ALUResult[27]_INST_0_i_1_n_0\,
      O => rf_reg_r1_0_31_24_29_i_9_n_0,
      S => \^alucontrol\(1)
    );
rf_reg_r1_0_31_30_31: unisim.vcomponents.RAM32X1D
     port map (
      A0 => Instr(5),
      A1 => Instr(6),
      A2 => Instr(7),
      A3 => Instr(8),
      A4 => Instr(9),
      D => rf_reg_r1_0_31_30_31_i_1_n_0,
      DPO => rd10(30),
      DPRA0 => Instr(13),
      DPRA1 => Instr(14),
      DPRA2 => Instr(15),
      DPRA3 => Instr(16),
      DPRA4 => Instr(17),
      SPO => NLW_rf_reg_r1_0_31_30_31_SPO_UNCONNECTED,
      WCLK => clk,
      WE => we3
    );
\rf_reg_r1_0_31_30_31__0\: unisim.vcomponents.RAM32X1D
     port map (
      A0 => Instr(5),
      A1 => Instr(6),
      A2 => Instr(7),
      A3 => Instr(8),
      A4 => Instr(9),
      D => \writeDataM[31]\,
      DPO => rd10(31),
      DPRA0 => Instr(13),
      DPRA1 => Instr(14),
      DPRA2 => Instr(15),
      DPRA3 => Instr(16),
      DPRA4 => Instr(17),
      SPO => \NLW_rf_reg_r1_0_31_30_31__0_SPO_UNCONNECTED\,
      WCLK => clk,
      WE => we3
    );
rf_reg_r1_0_31_30_31_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFE200E2"
    )
        port map (
      I0 => \ALUResult[30]_INST_0_i_3_n_0\,
      I1 => \^alucontrol\(2),
      I2 => rf_reg_r1_0_31_30_31_i_2_n_0,
      I3 => \^s_1\(0),
      I4 => ReadData(29),
      I5 => \^jump\,
      O => rf_reg_r1_0_31_30_31_i_1_n_0
    );
rf_reg_r1_0_31_30_31_i_2: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALUResult[30]_INST_0_i_2_n_0\,
      I1 => \ALUResult[30]_INST_0_i_1_n_0\,
      O => rf_reg_r1_0_31_30_31_i_2_n_0,
      S => \^alucontrol\(1)
    );
rf_reg_r1_0_31_6_11: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 0) => Instr(17 downto 13),
      ADDRB(4 downto 0) => Instr(17 downto 13),
      ADDRC(4 downto 0) => Instr(17 downto 13),
      ADDRD(4 downto 0) => Instr(9 downto 5),
      DIA(1) => rf_reg_r1_0_31_6_11_i_1_n_0,
      DIA(0) => rf_reg_r1_0_31_6_11_i_2_n_0,
      DIB(1) => rf_reg_r1_0_31_6_11_i_3_n_0,
      DIB(0) => rf_reg_r1_0_31_6_11_i_4_n_0,
      DIC(1) => rf_reg_r1_0_31_6_11_i_5_n_0,
      DIC(0) => rf_reg_r1_0_31_6_11_i_6_n_0,
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => rd10(7 downto 6),
      DOB(1 downto 0) => rd10(9 downto 8),
      DOC(1 downto 0) => rd10(11 downto 10),
      DOD(1 downto 0) => NLW_rf_reg_r1_0_31_6_11_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => we3
    );
rf_reg_r1_0_31_6_11_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFE200E2"
    )
        port map (
      I0 => \ALUResult[7]_INST_0_i_1_n_0\,
      I1 => \^alucontrol\(2),
      I2 => \ALUResult[7]_INST_0_i_2_n_0\,
      I3 => \^s_1\(0),
      I4 => ReadData(6),
      I5 => \^jump\,
      O => rf_reg_r1_0_31_6_11_i_1_n_0
    );
rf_reg_r1_0_31_6_11_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFE200E2"
    )
        port map (
      I0 => \ALUResult[6]_INST_0_i_1_n_0\,
      I1 => \^alucontrol\(2),
      I2 => \ALUResult[6]_INST_0_i_2_n_0\,
      I3 => \^s_1\(0),
      I4 => ReadData(5),
      I5 => \^jump\,
      O => rf_reg_r1_0_31_6_11_i_2_n_0
    );
rf_reg_r1_0_31_6_11_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFE200E2"
    )
        port map (
      I0 => \ALUResult[9]_INST_0_i_1_n_0\,
      I1 => \^alucontrol\(2),
      I2 => \ALUResult[9]_INST_0_i_2_n_0\,
      I3 => \^s_1\(0),
      I4 => ReadData(8),
      I5 => \^jump\,
      O => rf_reg_r1_0_31_6_11_i_3_n_0
    );
rf_reg_r1_0_31_6_11_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFE200E2"
    )
        port map (
      I0 => \ALUResult[8]_INST_0_i_1_n_0\,
      I1 => \^alucontrol\(2),
      I2 => \ALUResult[8]_INST_0_i_2_n_0\,
      I3 => \^s_1\(0),
      I4 => ReadData(7),
      I5 => \^jump\,
      O => rf_reg_r1_0_31_6_11_i_4_n_0
    );
rf_reg_r1_0_31_6_11_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFE200E2"
    )
        port map (
      I0 => \ALUResult[11]_INST_0_i_1_n_0\,
      I1 => \^alucontrol\(2),
      I2 => \ALUResult[11]_INST_0_i_2_n_0\,
      I3 => \^s_1\(0),
      I4 => ReadData(10),
      I5 => \^jump\,
      O => rf_reg_r1_0_31_6_11_i_5_n_0
    );
rf_reg_r1_0_31_6_11_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFE200E2"
    )
        port map (
      I0 => \ALUResult[10]_INST_0_i_1_n_0\,
      I1 => \^alucontrol\(2),
      I2 => \ALUResult[10]_INST_0_i_2_n_0\,
      I3 => \^s_1\(0),
      I4 => ReadData(9),
      I5 => \^jump\,
      O => rf_reg_r1_0_31_6_11_i_6_n_0
    );
rf_reg_r2_0_31_0_5: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 0) => Instr(22 downto 18),
      ADDRB(4 downto 0) => Instr(22 downto 18),
      ADDRC(4 downto 0) => Instr(22 downto 18),
      ADDRD(4 downto 0) => Instr(9 downto 5),
      DIA(1) => rf_reg_r1_0_31_0_5_i_2_n_0,
      DIA(0) => \writeDataM[1]\(0),
      DIB(1) => rf_reg_r1_0_31_0_5_i_4_n_0,
      DIB(0) => wd3(2),
      DIC(1) => rf_reg_r1_0_31_0_5_i_6_n_0,
      DIC(0) => rf_reg_r1_0_31_0_5_i_7_n_0,
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => rd20(1 downto 0),
      DOB(1 downto 0) => rd20(3 downto 2),
      DOC(1 downto 0) => rd20(5 downto 4),
      DOD(1 downto 0) => NLW_rf_reg_r2_0_31_0_5_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => we3
    );
rf_reg_r2_0_31_12_17: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 0) => Instr(22 downto 18),
      ADDRB(4 downto 0) => Instr(22 downto 18),
      ADDRC(4 downto 0) => Instr(22 downto 18),
      ADDRD(4 downto 0) => Instr(9 downto 5),
      DIA(1) => rf_reg_r1_0_31_12_17_i_1_n_0,
      DIA(0) => rf_reg_r1_0_31_12_17_i_2_n_0,
      DIB(1) => rf_reg_r1_0_31_12_17_i_3_n_0,
      DIB(0) => rf_reg_r1_0_31_12_17_i_4_n_0,
      DIC(1) => rf_reg_r1_0_31_12_17_i_5_n_0,
      DIC(0) => rf_reg_r1_0_31_12_17_i_6_n_0,
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => rd20(13 downto 12),
      DOB(1 downto 0) => rd20(15 downto 14),
      DOC(1 downto 0) => rd20(17 downto 16),
      DOD(1 downto 0) => NLW_rf_reg_r2_0_31_12_17_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => we3
    );
rf_reg_r2_0_31_18_23: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 0) => Instr(22 downto 18),
      ADDRB(4 downto 0) => Instr(22 downto 18),
      ADDRC(4 downto 0) => Instr(22 downto 18),
      ADDRD(4 downto 0) => Instr(9 downto 5),
      DIA(1) => rf_reg_r1_0_31_18_23_i_1_n_0,
      DIA(0) => rf_reg_r1_0_31_18_23_i_2_n_0,
      DIB(1) => rf_reg_r1_0_31_18_23_i_3_n_0,
      DIB(0) => rf_reg_r1_0_31_18_23_i_4_n_0,
      DIC(1) => rf_reg_r1_0_31_18_23_i_5_n_0,
      DIC(0) => rf_reg_r1_0_31_18_23_i_6_n_0,
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => rd20(19 downto 18),
      DOB(1 downto 0) => rd20(21 downto 20),
      DOC(1 downto 0) => rd20(23 downto 22),
      DOD(1 downto 0) => NLW_rf_reg_r2_0_31_18_23_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => we3
    );
rf_reg_r2_0_31_24_29: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 0) => Instr(22 downto 18),
      ADDRB(4 downto 0) => Instr(22 downto 18),
      ADDRC(4 downto 0) => Instr(22 downto 18),
      ADDRD(4 downto 0) => Instr(9 downto 5),
      DIA(1) => rf_reg_r1_0_31_24_29_i_1_n_0,
      DIA(0) => rf_reg_r1_0_31_24_29_i_2_n_0,
      DIB(1) => rf_reg_r1_0_31_24_29_i_3_n_0,
      DIB(0) => rf_reg_r1_0_31_24_29_i_4_n_0,
      DIC(1) => rf_reg_r1_0_31_24_29_i_5_n_0,
      DIC(0) => rf_reg_r1_0_31_24_29_i_6_n_0,
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => rd20(25 downto 24),
      DOB(1 downto 0) => rd20(27 downto 26),
      DOC(1 downto 0) => rd20(29 downto 28),
      DOD(1 downto 0) => NLW_rf_reg_r2_0_31_24_29_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => we3
    );
rf_reg_r2_0_31_30_31: unisim.vcomponents.RAM32X1D
     port map (
      A0 => Instr(5),
      A1 => Instr(6),
      A2 => Instr(7),
      A3 => Instr(8),
      A4 => Instr(9),
      D => rf_reg_r1_0_31_30_31_i_1_n_0,
      DPO => rd20(30),
      DPRA0 => Instr(18),
      DPRA1 => Instr(19),
      DPRA2 => Instr(20),
      DPRA3 => Instr(21),
      DPRA4 => Instr(22),
      SPO => NLW_rf_reg_r2_0_31_30_31_SPO_UNCONNECTED,
      WCLK => clk,
      WE => we3
    );
\rf_reg_r2_0_31_30_31__0\: unisim.vcomponents.RAM32X1D
     port map (
      A0 => Instr(5),
      A1 => Instr(6),
      A2 => Instr(7),
      A3 => Instr(8),
      A4 => Instr(9),
      D => \writeDataM[31]\,
      DPO => rd20(31),
      DPRA0 => Instr(18),
      DPRA1 => Instr(19),
      DPRA2 => Instr(20),
      DPRA3 => Instr(21),
      DPRA4 => Instr(22),
      SPO => \NLW_rf_reg_r2_0_31_30_31__0_SPO_UNCONNECTED\,
      WCLK => clk,
      WE => we3
    );
rf_reg_r2_0_31_6_11: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 0) => Instr(22 downto 18),
      ADDRB(4 downto 0) => Instr(22 downto 18),
      ADDRC(4 downto 0) => Instr(22 downto 18),
      ADDRD(4 downto 0) => Instr(9 downto 5),
      DIA(1) => rf_reg_r1_0_31_6_11_i_1_n_0,
      DIA(0) => rf_reg_r1_0_31_6_11_i_2_n_0,
      DIB(1) => rf_reg_r1_0_31_6_11_i_3_n_0,
      DIB(0) => rf_reg_r1_0_31_6_11_i_4_n_0,
      DIC(1) => rf_reg_r1_0_31_6_11_i_5_n_0,
      DIC(0) => rf_reg_r1_0_31_6_11_i_6_n_0,
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => rd20(7 downto 6),
      DOB(1 downto 0) => rd20(9 downto 8),
      DOC(1 downto 0) => rd20(11 downto 10),
      DOD(1 downto 0) => NLW_rf_reg_r2_0_31_6_11_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => we3
    );
\sltuOut_carry__0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF2FFFAAAA02AA"
    )
        port map (
      I0 => SrcB(14),
      I1 => rd10(14),
      I2 => rd10(15),
      I3 => rd11,
      I4 => \ALUResult[17]_INST_0_i_13_0\,
      I5 => SrcB(15),
      O => clk_33(3)
    );
\sltuOut_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF2FFFAAAA02AA"
    )
        port map (
      I0 => SrcB(12),
      I1 => rd10(12),
      I2 => rd10(13),
      I3 => rd11,
      I4 => \ALUResult[17]_INST_0_i_13_0\,
      I5 => SrcB(13),
      O => clk_33(2)
    );
\sltuOut_carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF2FFFAAAA02AA"
    )
        port map (
      I0 => SrcB(10),
      I1 => rd10(10),
      I2 => rd10(11),
      I3 => rd11,
      I4 => \ALUResult[17]_INST_0_i_13_0\,
      I5 => SrcB(11),
      O => clk_33(1)
    );
\sltuOut_carry__0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF2FFFAAAA02AA"
    )
        port map (
      I0 => SrcB(8),
      I1 => rd10(8),
      I2 => rd10(9),
      I3 => rd11,
      I4 => \ALUResult[17]_INST_0_i_13_0\,
      I5 => SrcB(9),
      O => clk_33(0)
    );
\sltuOut_carry__0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000900033330933"
    )
        port map (
      I0 => rd10(14),
      I1 => SrcB(14),
      I2 => rd10(15),
      I3 => rd11,
      I4 => \ALUResult[17]_INST_0_i_13_0\,
      I5 => SrcB(15),
      O => clk_43(3)
    );
\sltuOut_carry__0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000900033330933"
    )
        port map (
      I0 => rd10(12),
      I1 => SrcB(12),
      I2 => rd10(13),
      I3 => rd11,
      I4 => \ALUResult[17]_INST_0_i_13_0\,
      I5 => SrcB(13),
      O => clk_43(2)
    );
\sltuOut_carry__0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000900033330933"
    )
        port map (
      I0 => rd10(10),
      I1 => SrcB(10),
      I2 => rd10(11),
      I3 => rd11,
      I4 => \ALUResult[17]_INST_0_i_13_0\,
      I5 => SrcB(11),
      O => clk_43(1)
    );
\sltuOut_carry__0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000900033330933"
    )
        port map (
      I0 => rd10(8),
      I1 => SrcB(8),
      I2 => rd10(9),
      I3 => rd11,
      I4 => \ALUResult[17]_INST_0_i_13_0\,
      I5 => SrcB(9),
      O => clk_43(0)
    );
\sltuOut_carry__1_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF2FFFAAAA02AA"
    )
        port map (
      I0 => SrcB(22),
      I1 => rd10(22),
      I2 => rd10(23),
      I3 => rd11,
      I4 => \ALUResult[17]_INST_0_i_13_0\,
      I5 => SrcB(23),
      O => clk_34(3)
    );
\sltuOut_carry__1_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF2FFFAAAA02AA"
    )
        port map (
      I0 => SrcB(20),
      I1 => rd10(20),
      I2 => rd10(21),
      I3 => rd11,
      I4 => \ALUResult[17]_INST_0_i_13_0\,
      I5 => SrcB(21),
      O => clk_34(2)
    );
\sltuOut_carry__1_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF2FFFAAAA02AA"
    )
        port map (
      I0 => SrcB(18),
      I1 => rd10(18),
      I2 => rd10(19),
      I3 => rd11,
      I4 => \ALUResult[17]_INST_0_i_13_0\,
      I5 => SrcB(19),
      O => clk_34(1)
    );
\sltuOut_carry__1_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF2FFFAAAA02AA"
    )
        port map (
      I0 => SrcB(16),
      I1 => rd10(16),
      I2 => rd10(17),
      I3 => rd11,
      I4 => \ALUResult[17]_INST_0_i_13_0\,
      I5 => SrcB(17),
      O => clk_34(0)
    );
\sltuOut_carry__1_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000900033330933"
    )
        port map (
      I0 => rd10(22),
      I1 => SrcB(22),
      I2 => rd10(23),
      I3 => rd11,
      I4 => \ALUResult[17]_INST_0_i_13_0\,
      I5 => SrcB(23),
      O => clk_44(3)
    );
\sltuOut_carry__1_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000900033330933"
    )
        port map (
      I0 => rd10(20),
      I1 => SrcB(20),
      I2 => rd10(21),
      I3 => rd11,
      I4 => \ALUResult[17]_INST_0_i_13_0\,
      I5 => SrcB(21),
      O => clk_44(2)
    );
\sltuOut_carry__1_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000900033330933"
    )
        port map (
      I0 => rd10(18),
      I1 => SrcB(18),
      I2 => rd10(19),
      I3 => rd11,
      I4 => \ALUResult[17]_INST_0_i_13_0\,
      I5 => SrcB(19),
      O => clk_44(1)
    );
\sltuOut_carry__1_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000900033330933"
    )
        port map (
      I0 => rd10(16),
      I1 => SrcB(16),
      I2 => rd10(17),
      I3 => rd11,
      I4 => \ALUResult[17]_INST_0_i_13_0\,
      I5 => SrcB(17),
      O => clk_44(0)
    );
\sltuOut_carry__2_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF2FFFAAAA02AA"
    )
        port map (
      I0 => SrcB(30),
      I1 => rd10(30),
      I2 => rd10(31),
      I3 => rd11,
      I4 => \ALUResult[17]_INST_0_i_13_0\,
      I5 => SrcB(31),
      O => clk_35(3)
    );
\sltuOut_carry__2_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF2FFFAAAA02AA"
    )
        port map (
      I0 => SrcB(28),
      I1 => rd10(28),
      I2 => rd10(29),
      I3 => rd11,
      I4 => \ALUResult[17]_INST_0_i_13_0\,
      I5 => SrcB(29),
      O => clk_35(2)
    );
\sltuOut_carry__2_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF2FFFAAAA02AA"
    )
        port map (
      I0 => SrcB(26),
      I1 => rd10(26),
      I2 => rd10(27),
      I3 => rd11,
      I4 => \ALUResult[17]_INST_0_i_13_0\,
      I5 => SrcB(27),
      O => clk_35(1)
    );
\sltuOut_carry__2_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF2FFFAAAA02AA"
    )
        port map (
      I0 => SrcB(24),
      I1 => rd10(24),
      I2 => rd10(25),
      I3 => rd11,
      I4 => \ALUResult[17]_INST_0_i_13_0\,
      I5 => SrcB(25),
      O => clk_35(0)
    );
\sltuOut_carry__2_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000900033330933"
    )
        port map (
      I0 => rd10(30),
      I1 => SrcB(30),
      I2 => rd10(31),
      I3 => rd11,
      I4 => \ALUResult[17]_INST_0_i_13_0\,
      I5 => SrcB(31),
      O => clk_45(3)
    );
\sltuOut_carry__2_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000900033330933"
    )
        port map (
      I0 => rd10(28),
      I1 => SrcB(28),
      I2 => rd10(29),
      I3 => rd11,
      I4 => \ALUResult[17]_INST_0_i_13_0\,
      I5 => SrcB(29),
      O => clk_45(2)
    );
\sltuOut_carry__2_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000900033330933"
    )
        port map (
      I0 => rd10(26),
      I1 => SrcB(26),
      I2 => rd10(27),
      I3 => rd11,
      I4 => \ALUResult[17]_INST_0_i_13_0\,
      I5 => SrcB(27),
      O => clk_45(1)
    );
\sltuOut_carry__2_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000900033330933"
    )
        port map (
      I0 => rd10(24),
      I1 => SrcB(24),
      I2 => rd10(25),
      I3 => rd11,
      I4 => \ALUResult[17]_INST_0_i_13_0\,
      I5 => SrcB(25),
      O => clk_45(0)
    );
sltuOut_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF2FFFAAAA02AA"
    )
        port map (
      I0 => SrcB(6),
      I1 => rd10(6),
      I2 => rd10(7),
      I3 => rd11,
      I4 => \ALUResult[17]_INST_0_i_13_0\,
      I5 => SrcB(7),
      O => clk_32(3)
    );
sltuOut_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF2FFFAAAA02AA"
    )
        port map (
      I0 => SrcB(4),
      I1 => rd10(4),
      I2 => rd10(5),
      I3 => rd11,
      I4 => \ALUResult[17]_INST_0_i_13_0\,
      I5 => SrcB(5),
      O => clk_32(2)
    );
sltuOut_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF2FFFAAAA02AA"
    )
        port map (
      I0 => SrcB(2),
      I1 => rd10(2),
      I2 => rd10(3),
      I3 => rd11,
      I4 => \ALUResult[17]_INST_0_i_13_0\,
      I5 => SrcB(3),
      O => clk_32(1)
    );
sltuOut_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF2FFFAAAA02AA"
    )
        port map (
      I0 => \^clk_0\(0),
      I1 => rd10(0),
      I2 => rd10(1),
      I3 => rd11,
      I4 => \ALUResult[17]_INST_0_i_13_0\,
      I5 => SrcB(1),
      O => clk_32(0)
    );
sltuOut_carry_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000900033330933"
    )
        port map (
      I0 => rd10(6),
      I1 => SrcB(6),
      I2 => rd10(7),
      I3 => rd11,
      I4 => \ALUResult[17]_INST_0_i_13_0\,
      I5 => SrcB(7),
      O => clk_42(3)
    );
sltuOut_carry_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000900033330933"
    )
        port map (
      I0 => rd10(4),
      I1 => SrcB(4),
      I2 => rd10(5),
      I3 => rd11,
      I4 => \ALUResult[17]_INST_0_i_13_0\,
      I5 => SrcB(5),
      O => clk_42(2)
    );
sltuOut_carry_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000900033330933"
    )
        port map (
      I0 => rd10(2),
      I1 => SrcB(2),
      I2 => rd10(3),
      I3 => rd11,
      I4 => \ALUResult[17]_INST_0_i_13_0\,
      I5 => SrcB(3),
      O => clk_42(1)
    );
sltuOut_carry_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000900033330933"
    )
        port map (
      I0 => rd10(0),
      I1 => \^clk_0\(0),
      I2 => rd10(1),
      I3 => rd11,
      I4 => \ALUResult[17]_INST_0_i_13_0\,
      I5 => SrcB(1),
      O => clk_42(0)
    );
\sum_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8088"
    )
        port map (
      I0 => rd10(7),
      I1 => rd11,
      I2 => Instr(3),
      I3 => Instr(0),
      O => \^clk_7\
    );
\sum_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8088"
    )
        port map (
      I0 => rd10(6),
      I1 => rd11,
      I2 => Instr(3),
      I3 => Instr(0),
      O => \^clk_6\
    );
\sum_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8088"
    )
        port map (
      I0 => rd10(5),
      I1 => rd11,
      I2 => Instr(3),
      I3 => Instr(0),
      O => \^clk_5\
    );
\sum_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8088"
    )
        port map (
      I0 => rd10(4),
      I1 => rd11,
      I2 => Instr(3),
      I3 => Instr(0),
      O => \^clk_4\
    );
\sum_carry__0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D0002FFF2FFFD000"
    )
        port map (
      I0 => Instr(0),
      I1 => Instr(3),
      I2 => rd11,
      I3 => rd10(7),
      I4 => SrcB(7),
      I5 => \^alucontrol__0\(0),
      O => clk_36(3)
    );
\sum_carry__0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D0002FFF2FFFD000"
    )
        port map (
      I0 => Instr(0),
      I1 => Instr(3),
      I2 => rd11,
      I3 => rd10(6),
      I4 => SrcB(6),
      I5 => \^alucontrol__0\(0),
      O => clk_36(2)
    );
\sum_carry__0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D0002FFF2FFFD000"
    )
        port map (
      I0 => Instr(0),
      I1 => Instr(3),
      I2 => rd11,
      I3 => rd10(5),
      I4 => SrcB(5),
      I5 => \^alucontrol__0\(0),
      O => clk_36(1)
    );
\sum_carry__0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D0002FFF2FFFD000"
    )
        port map (
      I0 => Instr(0),
      I1 => Instr(3),
      I2 => rd11,
      I3 => rd10(4),
      I4 => SrcB(4),
      I5 => \^alucontrol__0\(0),
      O => clk_36(0)
    );
\sum_carry__1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8088"
    )
        port map (
      I0 => rd10(11),
      I1 => rd11,
      I2 => Instr(3),
      I3 => Instr(0),
      O => \^clk_11\
    );
\sum_carry__1_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8088"
    )
        port map (
      I0 => rd10(10),
      I1 => rd11,
      I2 => Instr(3),
      I3 => Instr(0),
      O => \^clk_10\
    );
\sum_carry__1_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8088"
    )
        port map (
      I0 => rd10(9),
      I1 => rd11,
      I2 => Instr(3),
      I3 => Instr(0),
      O => \^clk_9\
    );
\sum_carry__1_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8088"
    )
        port map (
      I0 => rd10(8),
      I1 => rd11,
      I2 => Instr(3),
      I3 => Instr(0),
      O => \^clk_8\
    );
\sum_carry__1_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D0002FFF2FFFD000"
    )
        port map (
      I0 => Instr(0),
      I1 => Instr(3),
      I2 => rd11,
      I3 => rd10(11),
      I4 => SrcB(11),
      I5 => \^alucontrol__0\(0),
      O => clk_37(3)
    );
\sum_carry__1_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D0002FFF2FFFD000"
    )
        port map (
      I0 => Instr(0),
      I1 => Instr(3),
      I2 => rd11,
      I3 => rd10(10),
      I4 => SrcB(10),
      I5 => \^alucontrol__0\(0),
      O => clk_37(2)
    );
\sum_carry__1_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D0002FFF2FFFD000"
    )
        port map (
      I0 => Instr(0),
      I1 => Instr(3),
      I2 => rd11,
      I3 => rd10(9),
      I4 => SrcB(9),
      I5 => \^alucontrol__0\(0),
      O => clk_37(1)
    );
\sum_carry__1_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D0002FFF2FFFD000"
    )
        port map (
      I0 => Instr(0),
      I1 => Instr(3),
      I2 => rd11,
      I3 => rd10(8),
      I4 => SrcB(8),
      I5 => \^alucontrol__0\(0),
      O => clk_37(0)
    );
\sum_carry__2_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8088"
    )
        port map (
      I0 => rd10(15),
      I1 => rd11,
      I2 => Instr(3),
      I3 => Instr(0),
      O => \^clk_15\
    );
\sum_carry__2_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8088"
    )
        port map (
      I0 => rd10(14),
      I1 => rd11,
      I2 => Instr(3),
      I3 => Instr(0),
      O => \^clk_14\
    );
\sum_carry__2_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8088"
    )
        port map (
      I0 => rd10(13),
      I1 => rd11,
      I2 => Instr(3),
      I3 => Instr(0),
      O => \^clk_13\
    );
\sum_carry__2_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8088"
    )
        port map (
      I0 => rd10(12),
      I1 => rd11,
      I2 => Instr(3),
      I3 => Instr(0),
      O => \^clk_12\
    );
\sum_carry__2_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D0002FFF2FFFD000"
    )
        port map (
      I0 => Instr(0),
      I1 => Instr(3),
      I2 => rd11,
      I3 => rd10(15),
      I4 => SrcB(15),
      I5 => \^alucontrol__0\(0),
      O => clk_38(3)
    );
\sum_carry__2_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D0002FFF2FFFD000"
    )
        port map (
      I0 => Instr(0),
      I1 => Instr(3),
      I2 => rd11,
      I3 => rd10(14),
      I4 => SrcB(14),
      I5 => \^alucontrol__0\(0),
      O => clk_38(2)
    );
\sum_carry__2_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D0002FFF2FFFD000"
    )
        port map (
      I0 => Instr(0),
      I1 => Instr(3),
      I2 => rd11,
      I3 => rd10(13),
      I4 => SrcB(13),
      I5 => \^alucontrol__0\(0),
      O => clk_38(1)
    );
\sum_carry__2_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D0002FFF2FFFD000"
    )
        port map (
      I0 => Instr(0),
      I1 => Instr(3),
      I2 => rd11,
      I3 => rd10(12),
      I4 => SrcB(12),
      I5 => \^alucontrol__0\(0),
      O => clk_38(0)
    );
\sum_carry__3_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8088"
    )
        port map (
      I0 => rd10(19),
      I1 => rd11,
      I2 => Instr(3),
      I3 => Instr(0),
      O => \^clk_19\
    );
\sum_carry__3_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8088"
    )
        port map (
      I0 => rd10(18),
      I1 => rd11,
      I2 => Instr(3),
      I3 => Instr(0),
      O => \^clk_18\
    );
\sum_carry__3_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8088"
    )
        port map (
      I0 => rd10(17),
      I1 => rd11,
      I2 => Instr(3),
      I3 => Instr(0),
      O => \^clk_17\
    );
\sum_carry__3_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8088"
    )
        port map (
      I0 => rd10(16),
      I1 => rd11,
      I2 => Instr(3),
      I3 => Instr(0),
      O => \^clk_16\
    );
\sum_carry__3_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D0002FFF2FFFD000"
    )
        port map (
      I0 => Instr(0),
      I1 => Instr(3),
      I2 => rd11,
      I3 => rd10(19),
      I4 => SrcB(19),
      I5 => \^alucontrol__0\(0),
      O => clk_39(3)
    );
\sum_carry__3_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D0002FFF2FFFD000"
    )
        port map (
      I0 => Instr(0),
      I1 => Instr(3),
      I2 => rd11,
      I3 => rd10(18),
      I4 => SrcB(18),
      I5 => \^alucontrol__0\(0),
      O => clk_39(2)
    );
\sum_carry__3_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D0002FFF2FFFD000"
    )
        port map (
      I0 => Instr(0),
      I1 => Instr(3),
      I2 => rd11,
      I3 => rd10(17),
      I4 => SrcB(17),
      I5 => \^alucontrol__0\(0),
      O => clk_39(1)
    );
\sum_carry__3_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D0002FFF2FFFD000"
    )
        port map (
      I0 => Instr(0),
      I1 => Instr(3),
      I2 => rd11,
      I3 => rd10(16),
      I4 => SrcB(16),
      I5 => \^alucontrol__0\(0),
      O => clk_39(0)
    );
\sum_carry__4_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8088"
    )
        port map (
      I0 => rd10(23),
      I1 => rd11,
      I2 => Instr(3),
      I3 => Instr(0),
      O => \^clk_23\
    );
\sum_carry__4_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8088"
    )
        port map (
      I0 => rd10(22),
      I1 => rd11,
      I2 => Instr(3),
      I3 => Instr(0),
      O => \^clk_22\
    );
\sum_carry__4_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8088"
    )
        port map (
      I0 => rd10(21),
      I1 => rd11,
      I2 => Instr(3),
      I3 => Instr(0),
      O => \^clk_21\
    );
\sum_carry__4_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8088"
    )
        port map (
      I0 => rd10(20),
      I1 => rd11,
      I2 => Instr(3),
      I3 => Instr(0),
      O => \^clk_20\
    );
\sum_carry__4_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D0002FFF2FFFD000"
    )
        port map (
      I0 => Instr(0),
      I1 => Instr(3),
      I2 => rd11,
      I3 => rd10(23),
      I4 => SrcB(23),
      I5 => \^alucontrol__0\(0),
      O => clk_40(3)
    );
\sum_carry__4_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D0002FFF2FFFD000"
    )
        port map (
      I0 => Instr(0),
      I1 => Instr(3),
      I2 => rd11,
      I3 => rd10(22),
      I4 => SrcB(22),
      I5 => \^alucontrol__0\(0),
      O => clk_40(2)
    );
\sum_carry__4_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D0002FFF2FFFD000"
    )
        port map (
      I0 => Instr(0),
      I1 => Instr(3),
      I2 => rd11,
      I3 => rd10(21),
      I4 => SrcB(21),
      I5 => \^alucontrol__0\(0),
      O => clk_40(1)
    );
\sum_carry__4_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D0002FFF2FFFD000"
    )
        port map (
      I0 => Instr(0),
      I1 => Instr(3),
      I2 => rd11,
      I3 => rd10(20),
      I4 => SrcB(20),
      I5 => \^alucontrol__0\(0),
      O => clk_40(0)
    );
\sum_carry__5_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8088"
    )
        port map (
      I0 => rd10(27),
      I1 => rd11,
      I2 => Instr(3),
      I3 => Instr(0),
      O => \^clk_27\
    );
\sum_carry__5_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8088"
    )
        port map (
      I0 => rd10(26),
      I1 => rd11,
      I2 => Instr(3),
      I3 => Instr(0),
      O => \^clk_26\
    );
\sum_carry__5_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8088"
    )
        port map (
      I0 => rd10(25),
      I1 => rd11,
      I2 => Instr(3),
      I3 => Instr(0),
      O => \^clk_25\
    );
\sum_carry__5_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8088"
    )
        port map (
      I0 => rd10(24),
      I1 => rd11,
      I2 => Instr(3),
      I3 => Instr(0),
      O => \^clk_24\
    );
\sum_carry__5_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D0002FFF2FFFD000"
    )
        port map (
      I0 => Instr(0),
      I1 => Instr(3),
      I2 => rd11,
      I3 => rd10(27),
      I4 => SrcB(27),
      I5 => \^alucontrol__0\(0),
      O => clk_41(3)
    );
\sum_carry__5_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D0002FFF2FFFD000"
    )
        port map (
      I0 => Instr(0),
      I1 => Instr(3),
      I2 => rd11,
      I3 => rd10(26),
      I4 => SrcB(26),
      I5 => \^alucontrol__0\(0),
      O => clk_41(2)
    );
\sum_carry__5_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D0002FFF2FFFD000"
    )
        port map (
      I0 => Instr(0),
      I1 => Instr(3),
      I2 => rd11,
      I3 => rd10(25),
      I4 => SrcB(25),
      I5 => \^alucontrol__0\(0),
      O => clk_41(1)
    );
\sum_carry__5_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D0002FFF2FFFD000"
    )
        port map (
      I0 => Instr(0),
      I1 => Instr(3),
      I2 => rd11,
      I3 => rd10(24),
      I4 => SrcB(24),
      I5 => \^alucontrol__0\(0),
      O => clk_41(0)
    );
\sum_carry__6_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8088"
    )
        port map (
      I0 => rd10(30),
      I1 => rd11,
      I2 => Instr(3),
      I3 => Instr(0),
      O => \^clk_30\
    );
\sum_carry__6_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8088"
    )
        port map (
      I0 => rd10(29),
      I1 => rd11,
      I2 => Instr(3),
      I3 => Instr(0),
      O => \^clk_29\
    );
\sum_carry__6_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8088"
    )
        port map (
      I0 => rd10(28),
      I1 => rd11,
      I2 => Instr(3),
      I3 => Instr(0),
      O => \^clk_28\
    );
\sum_carry__6_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9A959595656A6A6A"
    )
        port map (
      I0 => \ALUResult[31]_INST_0_i_18_n_0\,
      I1 => Instr(29),
      I2 => ALUSrc(0),
      I3 => rd21,
      I4 => rd20(31),
      I5 => \^alucontrol__0\(0),
      O => clk_31(3)
    );
\sum_carry__6_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D0002FFF2FFFD000"
    )
        port map (
      I0 => Instr(0),
      I1 => Instr(3),
      I2 => rd11,
      I3 => rd10(30),
      I4 => SrcB(30),
      I5 => \^alucontrol__0\(0),
      O => clk_31(2)
    );
\sum_carry__6_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D0002FFF2FFFD000"
    )
        port map (
      I0 => Instr(0),
      I1 => Instr(3),
      I2 => rd11,
      I3 => rd10(29),
      I4 => SrcB(29),
      I5 => \^alucontrol__0\(0),
      O => clk_31(1)
    );
\sum_carry__6_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D0002FFF2FFFD000"
    )
        port map (
      I0 => Instr(0),
      I1 => Instr(3),
      I2 => rd11,
      I3 => rd10(28),
      I4 => SrcB(28),
      I5 => \^alucontrol__0\(0),
      O => clk_31(0)
    );
sum_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^alucontrol__0\(0),
      I1 => \^clk_0\(0),
      O => \ALUResult[31]_INST_0_i_13_1\
    );
sum_carry_i_10: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => Instr(15),
      I1 => Instr(13),
      I2 => Instr(14),
      I3 => Instr(16),
      I4 => Instr(17),
      O => rd11
    );
sum_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8088"
    )
        port map (
      I0 => rd10(3),
      I1 => rd11,
      I2 => Instr(3),
      I3 => Instr(0),
      O => \^clk_3\
    );
sum_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8088"
    )
        port map (
      I0 => rd10(2),
      I1 => rd11,
      I2 => Instr(3),
      I3 => Instr(0),
      O => \^clk_2\
    );
sum_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8088"
    )
        port map (
      I0 => rd10(1),
      I1 => rd11,
      I2 => Instr(3),
      I3 => Instr(0),
      O => \^clk_1\
    );
sum_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8088"
    )
        port map (
      I0 => rd10(0),
      I1 => rd11,
      I2 => Instr(3),
      I3 => Instr(0),
      O => DI(0)
    );
sum_carry_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D0002FFF2FFFD000"
    )
        port map (
      I0 => Instr(0),
      I1 => Instr(3),
      I2 => rd11,
      I3 => rd10(3),
      I4 => SrcB(3),
      I5 => \^alucontrol__0\(0),
      O => S(3)
    );
sum_carry_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D0002FFF2FFFD000"
    )
        port map (
      I0 => Instr(0),
      I1 => Instr(3),
      I2 => rd11,
      I3 => rd10(2),
      I4 => SrcB(2),
      I5 => \^alucontrol__0\(0),
      O => S(2)
    );
sum_carry_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D0002FFF2FFFD000"
    )
        port map (
      I0 => Instr(0),
      I1 => Instr(3),
      I2 => rd11,
      I3 => rd10(1),
      I4 => SrcB(1),
      I5 => \^alucontrol__0\(0),
      O => S(1)
    );
sum_carry_i_9: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2FFFD000"
    )
        port map (
      I0 => Instr(0),
      I1 => Instr(3),
      I2 => rd11,
      I3 => rd10(0),
      I4 => \^alucontrol__0\(0),
      O => S(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath is
  port (
    ALUResult : out STD_LOGIC_VECTOR ( 31 downto 0 );
    WriteData : out STD_LOGIC_VECTOR ( 31 downto 0 );
    clk : in STD_LOGIC;
    Instr : in STD_LOGIC_VECTOR ( 29 downto 0 );
    ReadData : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath is
  signal ALUControl : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \ALUControl__0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ALUSrc : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Jump : STD_LOGIC;
  signal Neg : STD_LOGIC;
  signal SrcB : STD_LOGIC_VECTOR ( 0 to 0 );
  signal alu_n_0 : STD_LOGIC;
  signal alu_n_1 : STD_LOGIC;
  signal alu_n_10 : STD_LOGIC;
  signal alu_n_11 : STD_LOGIC;
  signal alu_n_12 : STD_LOGIC;
  signal alu_n_13 : STD_LOGIC;
  signal alu_n_14 : STD_LOGIC;
  signal alu_n_15 : STD_LOGIC;
  signal alu_n_16 : STD_LOGIC;
  signal alu_n_17 : STD_LOGIC;
  signal alu_n_18 : STD_LOGIC;
  signal alu_n_19 : STD_LOGIC;
  signal alu_n_2 : STD_LOGIC;
  signal alu_n_20 : STD_LOGIC;
  signal alu_n_21 : STD_LOGIC;
  signal alu_n_22 : STD_LOGIC;
  signal alu_n_23 : STD_LOGIC;
  signal alu_n_24 : STD_LOGIC;
  signal alu_n_25 : STD_LOGIC;
  signal alu_n_26 : STD_LOGIC;
  signal alu_n_27 : STD_LOGIC;
  signal alu_n_29 : STD_LOGIC;
  signal alu_n_3 : STD_LOGIC;
  signal alu_n_30 : STD_LOGIC;
  signal alu_n_31 : STD_LOGIC;
  signal alu_n_33 : STD_LOGIC;
  signal alu_n_34 : STD_LOGIC;
  signal alu_n_4 : STD_LOGIC;
  signal alu_n_46 : STD_LOGIC;
  signal alu_n_47 : STD_LOGIC;
  signal alu_n_48 : STD_LOGIC;
  signal alu_n_49 : STD_LOGIC;
  signal alu_n_5 : STD_LOGIC;
  signal alu_n_6 : STD_LOGIC;
  signal alu_n_7 : STD_LOGIC;
  signal alu_n_8 : STD_LOGIC;
  signal alu_n_9 : STD_LOGIC;
  signal \ext/immext__64\ : STD_LOGIC_VECTOR ( 19 downto 12 );
  signal rd21 : STD_LOGIC;
  signal \result0__33\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal rf_n_0 : STD_LOGIC;
  signal rf_n_126 : STD_LOGIC;
  signal rf_n_127 : STD_LOGIC;
  signal rf_n_128 : STD_LOGIC;
  signal rf_n_129 : STD_LOGIC;
  signal rf_n_130 : STD_LOGIC;
  signal rf_n_131 : STD_LOGIC;
  signal rf_n_132 : STD_LOGIC;
  signal rf_n_133 : STD_LOGIC;
  signal rf_n_134 : STD_LOGIC;
  signal rf_n_135 : STD_LOGIC;
  signal rf_n_136 : STD_LOGIC;
  signal rf_n_137 : STD_LOGIC;
  signal rf_n_138 : STD_LOGIC;
  signal rf_n_139 : STD_LOGIC;
  signal rf_n_140 : STD_LOGIC;
  signal rf_n_141 : STD_LOGIC;
  signal rf_n_142 : STD_LOGIC;
  signal rf_n_143 : STD_LOGIC;
  signal rf_n_144 : STD_LOGIC;
  signal rf_n_145 : STD_LOGIC;
  signal rf_n_146 : STD_LOGIC;
  signal rf_n_147 : STD_LOGIC;
  signal rf_n_148 : STD_LOGIC;
  signal rf_n_149 : STD_LOGIC;
  signal rf_n_150 : STD_LOGIC;
  signal rf_n_151 : STD_LOGIC;
  signal rf_n_152 : STD_LOGIC;
  signal rf_n_153 : STD_LOGIC;
  signal rf_n_154 : STD_LOGIC;
  signal rf_n_155 : STD_LOGIC;
  signal rf_n_156 : STD_LOGIC;
  signal rf_n_157 : STD_LOGIC;
  signal rf_n_158 : STD_LOGIC;
  signal rf_n_159 : STD_LOGIC;
  signal rf_n_160 : STD_LOGIC;
  signal rf_n_161 : STD_LOGIC;
  signal rf_n_162 : STD_LOGIC;
  signal rf_n_163 : STD_LOGIC;
  signal rf_n_164 : STD_LOGIC;
  signal rf_n_165 : STD_LOGIC;
  signal rf_n_166 : STD_LOGIC;
  signal rf_n_167 : STD_LOGIC;
  signal rf_n_168 : STD_LOGIC;
  signal rf_n_169 : STD_LOGIC;
  signal rf_n_170 : STD_LOGIC;
  signal rf_n_171 : STD_LOGIC;
  signal rf_n_172 : STD_LOGIC;
  signal rf_n_173 : STD_LOGIC;
  signal rf_n_36 : STD_LOGIC;
  signal rf_n_39 : STD_LOGIC;
  signal rf_n_40 : STD_LOGIC;
  signal rf_n_41 : STD_LOGIC;
  signal rf_n_42 : STD_LOGIC;
  signal rf_n_43 : STD_LOGIC;
  signal rf_n_44 : STD_LOGIC;
  signal rf_n_45 : STD_LOGIC;
  signal rf_n_46 : STD_LOGIC;
  signal rf_n_47 : STD_LOGIC;
  signal rf_n_48 : STD_LOGIC;
  signal rf_n_49 : STD_LOGIC;
  signal rf_n_50 : STD_LOGIC;
  signal rf_n_51 : STD_LOGIC;
  signal rf_n_52 : STD_LOGIC;
  signal rf_n_53 : STD_LOGIC;
  signal rf_n_54 : STD_LOGIC;
  signal rf_n_55 : STD_LOGIC;
  signal rf_n_56 : STD_LOGIC;
  signal rf_n_57 : STD_LOGIC;
  signal rf_n_58 : STD_LOGIC;
  signal rf_n_59 : STD_LOGIC;
  signal rf_n_60 : STD_LOGIC;
  signal rf_n_61 : STD_LOGIC;
  signal rf_n_62 : STD_LOGIC;
  signal rf_n_63 : STD_LOGIC;
  signal rf_n_64 : STD_LOGIC;
  signal rf_n_65 : STD_LOGIC;
  signal rf_n_66 : STD_LOGIC;
  signal rf_n_67 : STD_LOGIC;
  signal rf_n_68 : STD_LOGIC;
  signal rf_n_69 : STD_LOGIC;
  signal rf_n_72 : STD_LOGIC;
  signal rf_n_73 : STD_LOGIC;
  signal rf_n_74 : STD_LOGIC;
  signal rf_n_75 : STD_LOGIC;
  signal rf_n_76 : STD_LOGIC;
  signal rf_n_77 : STD_LOGIC;
  signal rf_n_78 : STD_LOGIC;
  signal rf_n_79 : STD_LOGIC;
  signal rf_n_80 : STD_LOGIC;
  signal rf_n_81 : STD_LOGIC;
  signal rf_n_82 : STD_LOGIC;
  signal rf_n_83 : STD_LOGIC;
  signal rf_n_84 : STD_LOGIC;
  signal rf_n_85 : STD_LOGIC;
  signal rf_n_86 : STD_LOGIC;
  signal rf_n_87 : STD_LOGIC;
  signal rf_n_88 : STD_LOGIC;
  signal rf_n_89 : STD_LOGIC;
  signal rf_n_90 : STD_LOGIC;
  signal rf_n_91 : STD_LOGIC;
  signal rf_n_92 : STD_LOGIC;
  signal s : STD_LOGIC_VECTOR ( 0 to 0 );
  signal sel0 : STD_LOGIC_VECTOR ( 1 downto 0 );
begin
alu: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_alu
     port map (
      ALUControl(2 downto 0) => ALUControl(3 downto 1),
      \ALUControl__0\(0) => \ALUControl__0\(0),
      ALUResult(0) => ALUResult(0),
      \ALUResult[0]_INST_0_i_2_0\(3) => rf_n_89,
      \ALUResult[0]_INST_0_i_2_0\(2) => rf_n_90,
      \ALUResult[0]_INST_0_i_2_0\(1) => rf_n_91,
      \ALUResult[0]_INST_0_i_2_0\(0) => rf_n_92,
      \ALUResult[0]_INST_0_i_2_1\(3) => rf_n_167,
      \ALUResult[0]_INST_0_i_2_1\(2) => rf_n_168,
      \ALUResult[0]_INST_0_i_2_1\(1) => rf_n_169,
      \ALUResult[0]_INST_0_i_2_1\(0) => rf_n_170,
      \ALUResult[0]_INST_0_i_3\ => rf_n_154,
      \ALUResult[0]_INST_0_i_3_0\ => rf_n_40,
      \ALUResult[0]_INST_0_i_3_1\ => rf_n_39,
      \ALUResult[0]_INST_0_i_3_2\ => rf_n_36,
      \ALUResult[11]_INST_0_i_4\(0) => sel0(1),
      \ALUResult[12]_INST_0_i_1\ => rf_n_52,
      \ALUResult[12]_INST_0_i_1_0\ => rf_n_51,
      \ALUResult[12]_INST_0_i_1_1\ => rf_n_50,
      \ALUResult[12]_INST_0_i_1_2\ => rf_n_49,
      \ALUResult[12]_INST_0_i_1_3\(3) => rf_n_138,
      \ALUResult[12]_INST_0_i_1_3\(2) => rf_n_139,
      \ALUResult[12]_INST_0_i_1_3\(1) => rf_n_140,
      \ALUResult[12]_INST_0_i_1_3\(0) => rf_n_141,
      \ALUResult[16]_INST_0_i_1\ => rf_n_56,
      \ALUResult[16]_INST_0_i_1_0\ => rf_n_55,
      \ALUResult[16]_INST_0_i_1_1\ => rf_n_54,
      \ALUResult[16]_INST_0_i_1_2\ => rf_n_53,
      \ALUResult[16]_INST_0_i_1_3\(3) => rf_n_142,
      \ALUResult[16]_INST_0_i_1_3\(2) => rf_n_143,
      \ALUResult[16]_INST_0_i_1_3\(1) => rf_n_144,
      \ALUResult[16]_INST_0_i_1_3\(0) => rf_n_145,
      \ALUResult[20]_INST_0_i_1\ => rf_n_60,
      \ALUResult[20]_INST_0_i_1_0\ => rf_n_59,
      \ALUResult[20]_INST_0_i_1_1\ => rf_n_58,
      \ALUResult[20]_INST_0_i_1_2\ => rf_n_57,
      \ALUResult[20]_INST_0_i_1_3\(3) => rf_n_146,
      \ALUResult[20]_INST_0_i_1_3\(2) => rf_n_147,
      \ALUResult[20]_INST_0_i_1_3\(1) => rf_n_148,
      \ALUResult[20]_INST_0_i_1_3\(0) => rf_n_149,
      \ALUResult[24]_INST_0_i_1\ => rf_n_64,
      \ALUResult[24]_INST_0_i_1_0\ => rf_n_63,
      \ALUResult[24]_INST_0_i_1_1\ => rf_n_62,
      \ALUResult[24]_INST_0_i_1_2\ => rf_n_61,
      \ALUResult[24]_INST_0_i_1_3\(3) => rf_n_150,
      \ALUResult[24]_INST_0_i_1_3\(2) => rf_n_151,
      \ALUResult[24]_INST_0_i_1_3\(1) => rf_n_152,
      \ALUResult[24]_INST_0_i_1_3\(0) => rf_n_153,
      \ALUResult[28]_INST_0_i_1\ => rf_n_67,
      \ALUResult[28]_INST_0_i_1_0\ => rf_n_66,
      \ALUResult[28]_INST_0_i_1_1\ => rf_n_65,
      \ALUResult[28]_INST_0_i_1_2\(3) => rf_n_73,
      \ALUResult[28]_INST_0_i_1_2\(2) => rf_n_74,
      \ALUResult[28]_INST_0_i_1_2\(1) => rf_n_75,
      \ALUResult[28]_INST_0_i_1_2\(0) => rf_n_76,
      \ALUResult[31]_INST_0_i_8\ => alu_n_33,
      \ALUResult[4]_INST_0_i_2\ => rf_n_44,
      \ALUResult[4]_INST_0_i_2_0\ => rf_n_43,
      \ALUResult[4]_INST_0_i_2_1\ => rf_n_42,
      \ALUResult[4]_INST_0_i_2_2\ => rf_n_41,
      \ALUResult[4]_INST_0_i_2_3\(3) => rf_n_130,
      \ALUResult[4]_INST_0_i_2_3\(2) => rf_n_131,
      \ALUResult[4]_INST_0_i_2_3\(1) => rf_n_132,
      \ALUResult[4]_INST_0_i_2_3\(0) => rf_n_133,
      \ALUResult[8]_INST_0_i_2\ => rf_n_48,
      \ALUResult[8]_INST_0_i_2_0\ => rf_n_47,
      \ALUResult[8]_INST_0_i_2_1\ => rf_n_46,
      \ALUResult[8]_INST_0_i_2_2\ => rf_n_45,
      \ALUResult[8]_INST_0_i_2_3\(3) => rf_n_134,
      \ALUResult[8]_INST_0_i_2_3\(2) => rf_n_135,
      \ALUResult[8]_INST_0_i_2_3\(1) => rf_n_136,
      \ALUResult[8]_INST_0_i_2_3\(0) => rf_n_137,
      ALUSrc(0) => ALUSrc(0),
      DI(0) => rf_n_172,
      Instr(19) => Instr(29),
      Instr(18 downto 6) => Instr(22 downto 10),
      Instr(5 downto 0) => Instr(5 downto 0),
      Jump => Jump,
      O(3) => alu_n_0,
      O(2) => alu_n_1,
      O(1) => alu_n_2,
      O(0) => alu_n_3,
      ReadData(1) => ReadData(31),
      ReadData(0) => ReadData(0),
      S(3) => rf_n_126,
      S(2) => rf_n_127,
      S(1) => rf_n_128,
      S(0) => rf_n_129,
      SrcB(0) => SrcB(0),
      \addressM[0]\ => rf_n_0,
      \addressM[0]_0\ => rf_n_171,
      \addressM[31]\ => rf_n_173,
      \addressM[31]_0\ => rf_n_72,
      \immext__64\(7 downto 0) => \ext/immext__64\(19 downto 12),
      rd21 => rd21,
      \rd[23]_INST_0\ => alu_n_34,
      \rd[5]_INST_0\ => alu_n_49,
      \rd[6]_INST_0\ => alu_n_48,
      \readDataM[31]\ => alu_n_47,
      \result0__33\(0) => \result0__33\(0),
      \rf_reg_r1_0_31_30_31_i_1__0_0\ => rf_n_68,
      \rf_reg_r2_0_31_30_31__0\ => rf_n_69,
      \^s\(0) => s(0),
      sel0(0) => sel0(0),
      \sltuOut_carry__0_0\(3) => rf_n_77,
      \sltuOut_carry__0_0\(2) => rf_n_78,
      \sltuOut_carry__0_0\(1) => rf_n_79,
      \sltuOut_carry__0_0\(0) => rf_n_80,
      \sltuOut_carry__0_1\(3) => rf_n_155,
      \sltuOut_carry__0_1\(2) => rf_n_156,
      \sltuOut_carry__0_1\(1) => rf_n_157,
      \sltuOut_carry__0_1\(0) => rf_n_158,
      \sltuOut_carry__1_0\(3) => rf_n_81,
      \sltuOut_carry__1_0\(2) => rf_n_82,
      \sltuOut_carry__1_0\(1) => rf_n_83,
      \sltuOut_carry__1_0\(0) => rf_n_84,
      \sltuOut_carry__1_1\(3) => rf_n_159,
      \sltuOut_carry__1_1\(2) => rf_n_160,
      \sltuOut_carry__1_1\(1) => rf_n_161,
      \sltuOut_carry__1_1\(0) => rf_n_162,
      \sltuOut_carry__2_0\(3) => rf_n_85,
      \sltuOut_carry__2_0\(2) => rf_n_86,
      \sltuOut_carry__2_0\(1) => rf_n_87,
      \sltuOut_carry__2_0\(0) => rf_n_88,
      \sltuOut_carry__2_1\(3) => rf_n_163,
      \sltuOut_carry__2_1\(2) => rf_n_164,
      \sltuOut_carry__2_1\(1) => rf_n_165,
      \sltuOut_carry__2_1\(0) => rf_n_166,
      \sum_carry__0_i_8\(3) => alu_n_4,
      \sum_carry__0_i_8\(2) => alu_n_5,
      \sum_carry__0_i_8\(1) => alu_n_6,
      \sum_carry__0_i_8\(0) => alu_n_7,
      \sum_carry__1_i_8\(3) => alu_n_8,
      \sum_carry__1_i_8\(2) => alu_n_9,
      \sum_carry__1_i_8\(1) => alu_n_10,
      \sum_carry__1_i_8\(0) => alu_n_11,
      \sum_carry__2_i_8\(3) => alu_n_12,
      \sum_carry__2_i_8\(2) => alu_n_13,
      \sum_carry__2_i_8\(1) => alu_n_14,
      \sum_carry__2_i_8\(0) => alu_n_15,
      \sum_carry__3_i_8\(3) => alu_n_16,
      \sum_carry__3_i_8\(2) => alu_n_17,
      \sum_carry__3_i_8\(1) => alu_n_18,
      \sum_carry__3_i_8\(0) => alu_n_19,
      \sum_carry__4_i_8\(3) => alu_n_20,
      \sum_carry__4_i_8\(2) => alu_n_21,
      \sum_carry__4_i_8\(1) => alu_n_22,
      \sum_carry__4_i_8\(0) => alu_n_23,
      \sum_carry__5_i_8\(3) => alu_n_24,
      \sum_carry__5_i_8\(2) => alu_n_25,
      \sum_carry__5_i_8\(1) => alu_n_26,
      \sum_carry__5_i_8\(0) => alu_n_27,
      \sum_carry__6_i_7\(3) => Neg,
      \sum_carry__6_i_7\(2) => alu_n_29,
      \sum_carry__6_i_7\(1) => alu_n_30,
      \sum_carry__6_i_7\(0) => alu_n_31,
      wd3(0) => alu_n_46
    );
rf: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_regfile
     port map (
      ALUControl(2 downto 0) => ALUControl(3 downto 1),
      \ALUControl__0\(0) => \ALUControl__0\(0),
      ALUResult(30 downto 0) => ALUResult(31 downto 1),
      \ALUResult[17]_INST_0_i_13_0\ => alu_n_49,
      \ALUResult[31]_INST_0_i_13_0\ => rf_n_0,
      \ALUResult[31]_INST_0_i_13_1\ => rf_n_154,
      \ALUResult[31]_INST_0_i_13_2\ => rf_n_171,
      \ALUResult[31]_INST_0_i_23_0\ => rf_n_173,
      \ALUResult[31]_INST_0_i_28_0\ => rf_n_72,
      \ALUResult[31]_INST_0_i_6_0\ => rf_n_69,
      \ALUResult[31]_INST_0_i_8_0\ => rf_n_68,
      ALUSrc(0) => ALUSrc(0),
      DI(0) => rf_n_172,
      Instr(29 downto 0) => Instr(29 downto 0),
      Jump => Jump,
      O(3) => alu_n_0,
      O(2) => alu_n_1,
      O(1) => alu_n_2,
      O(0) => alu_n_3,
      ReadData(29 downto 0) => ReadData(30 downto 1),
      S(3) => rf_n_126,
      S(2) => rf_n_127,
      S(1) => rf_n_128,
      S(0) => rf_n_129,
      WriteData(31 downto 0) => WriteData(31 downto 0),
      \addressM[11]\(3) => alu_n_8,
      \addressM[11]\(2) => alu_n_9,
      \addressM[11]\(1) => alu_n_10,
      \addressM[11]\(0) => alu_n_11,
      \addressM[15]\(3) => alu_n_12,
      \addressM[15]\(2) => alu_n_13,
      \addressM[15]\(1) => alu_n_14,
      \addressM[15]\(0) => alu_n_15,
      \addressM[19]\(3) => alu_n_16,
      \addressM[19]\(2) => alu_n_17,
      \addressM[19]\(1) => alu_n_18,
      \addressM[19]\(0) => alu_n_19,
      \addressM[23]\(3) => alu_n_20,
      \addressM[23]\(2) => alu_n_21,
      \addressM[23]\(1) => alu_n_22,
      \addressM[23]\(0) => alu_n_23,
      \addressM[27]\(3) => alu_n_24,
      \addressM[27]\(2) => alu_n_25,
      \addressM[27]\(1) => alu_n_26,
      \addressM[27]\(0) => alu_n_27,
      \addressM[31]\(3) => Neg,
      \addressM[31]\(2) => alu_n_29,
      \addressM[31]\(1) => alu_n_30,
      \addressM[31]\(0) => alu_n_31,
      \addressM[31]_0\ => alu_n_33,
      \addressM[7]\(3) => alu_n_4,
      \addressM[7]\(2) => alu_n_5,
      \addressM[7]\(1) => alu_n_6,
      \addressM[7]\(0) => alu_n_7,
      clk => clk,
      clk_0(0) => SrcB(0),
      clk_1 => rf_n_36,
      clk_10 => rf_n_47,
      clk_11 => rf_n_48,
      clk_12 => rf_n_49,
      clk_13 => rf_n_50,
      clk_14 => rf_n_51,
      clk_15 => rf_n_52,
      clk_16 => rf_n_53,
      clk_17 => rf_n_54,
      clk_18 => rf_n_55,
      clk_19 => rf_n_56,
      clk_2 => rf_n_39,
      clk_20 => rf_n_57,
      clk_21 => rf_n_58,
      clk_22 => rf_n_59,
      clk_23 => rf_n_60,
      clk_24 => rf_n_61,
      clk_25 => rf_n_62,
      clk_26 => rf_n_63,
      clk_27 => rf_n_64,
      clk_28 => rf_n_65,
      clk_29 => rf_n_66,
      clk_3 => rf_n_40,
      clk_30 => rf_n_67,
      clk_31(3) => rf_n_73,
      clk_31(2) => rf_n_74,
      clk_31(1) => rf_n_75,
      clk_31(0) => rf_n_76,
      clk_32(3) => rf_n_77,
      clk_32(2) => rf_n_78,
      clk_32(1) => rf_n_79,
      clk_32(0) => rf_n_80,
      clk_33(3) => rf_n_81,
      clk_33(2) => rf_n_82,
      clk_33(1) => rf_n_83,
      clk_33(0) => rf_n_84,
      clk_34(3) => rf_n_85,
      clk_34(2) => rf_n_86,
      clk_34(1) => rf_n_87,
      clk_34(0) => rf_n_88,
      clk_35(3) => rf_n_89,
      clk_35(2) => rf_n_90,
      clk_35(1) => rf_n_91,
      clk_35(0) => rf_n_92,
      clk_36(3) => rf_n_130,
      clk_36(2) => rf_n_131,
      clk_36(1) => rf_n_132,
      clk_36(0) => rf_n_133,
      clk_37(3) => rf_n_134,
      clk_37(2) => rf_n_135,
      clk_37(1) => rf_n_136,
      clk_37(0) => rf_n_137,
      clk_38(3) => rf_n_138,
      clk_38(2) => rf_n_139,
      clk_38(1) => rf_n_140,
      clk_38(0) => rf_n_141,
      clk_39(3) => rf_n_142,
      clk_39(2) => rf_n_143,
      clk_39(1) => rf_n_144,
      clk_39(0) => rf_n_145,
      clk_4 => rf_n_41,
      clk_40(3) => rf_n_146,
      clk_40(2) => rf_n_147,
      clk_40(1) => rf_n_148,
      clk_40(0) => rf_n_149,
      clk_41(3) => rf_n_150,
      clk_41(2) => rf_n_151,
      clk_41(1) => rf_n_152,
      clk_41(0) => rf_n_153,
      clk_42(3) => rf_n_155,
      clk_42(2) => rf_n_156,
      clk_42(1) => rf_n_157,
      clk_42(0) => rf_n_158,
      clk_43(3) => rf_n_159,
      clk_43(2) => rf_n_160,
      clk_43(1) => rf_n_161,
      clk_43(0) => rf_n_162,
      clk_44(3) => rf_n_163,
      clk_44(2) => rf_n_164,
      clk_44(1) => rf_n_165,
      clk_44(0) => rf_n_166,
      clk_45(3) => rf_n_167,
      clk_45(2) => rf_n_168,
      clk_45(1) => rf_n_169,
      clk_45(0) => rf_n_170,
      clk_5 => rf_n_42,
      clk_6 => rf_n_43,
      clk_7 => rf_n_44,
      clk_8 => rf_n_45,
      clk_9 => rf_n_46,
      \immext__64\(7 downto 0) => \ext/immext__64\(19 downto 12),
      rd21 => rd21,
      \rd[6]_INST_0\(0) => sel0(1),
      \result0__33\(0) => \result0__33\(0),
      \^s\(0) => s(0),
      sel0(0) => sel0(0),
      \sum_carry__1_i_5_0\ => alu_n_34,
      \sum_carry__6_i_5_0\ => alu_n_48,
      \writeDataM[1]\(0) => alu_n_46,
      \writeDataM[31]\ => alu_n_47
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_riscvsingle is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    PC : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Instr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    MemWrite : out STD_LOGIC;
    ALUResult : out STD_LOGIC_VECTOR ( 31 downto 0 );
    WriteData : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ReadData : in STD_LOGIC_VECTOR ( 31 downto 0 );
    MemStrobe : out STD_LOGIC;
    PCReady : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_riscvsingle;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_riscvsingle is
  signal \<const0>\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of MemStrobe_INST_0 : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of MemWrite_INST_0 : label is "soft_lutpair18";
begin
  PC(31) <= \<const0>\;
  PC(30) <= \<const0>\;
  PC(29) <= \<const0>\;
  PC(28) <= \<const0>\;
  PC(27) <= \<const0>\;
  PC(26) <= \<const0>\;
  PC(25) <= \<const0>\;
  PC(24) <= \<const0>\;
  PC(23) <= \<const0>\;
  PC(22) <= \<const0>\;
  PC(21) <= \<const0>\;
  PC(20) <= \<const0>\;
  PC(19) <= \<const0>\;
  PC(18) <= \<const0>\;
  PC(17) <= \<const0>\;
  PC(16) <= \<const0>\;
  PC(15) <= \<const0>\;
  PC(14) <= \<const0>\;
  PC(13) <= \<const0>\;
  PC(12) <= \<const0>\;
  PC(11) <= \<const0>\;
  PC(10) <= \<const0>\;
  PC(9) <= \<const0>\;
  PC(8) <= \<const0>\;
  PC(7) <= \<const0>\;
  PC(6) <= \<const0>\;
  PC(5) <= \<const0>\;
  PC(4) <= \<const0>\;
  PC(3) <= \<const0>\;
  PC(2) <= \<const0>\;
  PC(1) <= \<const0>\;
  PC(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
MemStrobe_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Instr(4),
      I1 => Instr(6),
      O => MemStrobe
    );
MemWrite_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => Instr(5),
      I1 => Instr(6),
      I2 => Instr(4),
      O => MemWrite
    );
dp: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath
     port map (
      ALUResult(31 downto 0) => ALUResult(31 downto 0),
      Instr(29 downto 0) => Instr(31 downto 2),
      ReadData(31 downto 0) => ReadData(31 downto 0),
      WriteData(31 downto 0) => WriteData(31 downto 0),
      clk => clk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_top is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    doneM : in STD_LOGIC;
    readDataM : in STD_LOGIC_VECTOR ( 31 downto 0 );
    writeDataM : out STD_LOGIC_VECTOR ( 31 downto 0 );
    addressM : out STD_LOGIC_VECTOR ( 31 downto 0 );
    DRW : out STD_LOGIC;
    AXIStart : out STD_LOGIC
  );
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_top : entity is "soft";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_top;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_top is
  signal Instr : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute MARK_DEBUG : boolean;
  attribute MARK_DEBUG of Instr : signal is std.standard.true;
  signal MStrobe : STD_LOGIC;
  signal MemWrite : STD_LOGIC;
  signal PC : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute MARK_DEBUG of PC : signal is std.standard.true;
  signal NLW_imem_rd_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_memcontrol_Done_UNCONNECTED : STD_LOGIC;
  signal NLW_riscvsingle_PC_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute KEEP_HIERARCHY of imem : label is "soft";
  attribute KEEP_HIERARCHY of memcontrol : label is "soft";
  attribute KEEP_HIERARCHY of riscvsingle : label is "soft";
  attribute mark_debug_string : string;
  attribute mark_debug_string of reset : signal is "true";
  attribute mark_debug_string of addressM : signal is "true";
  attribute mark_debug_string of readDataM : signal is "true";
  attribute mark_debug_string of writeDataM : signal is "true";
begin
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '1',
      O => Instr(1)
    );
i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '1',
      O => Instr(0)
    );
i_10: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => PC(23)
    );
i_11: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => PC(22)
    );
i_12: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => PC(21)
    );
i_13: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => PC(20)
    );
i_14: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => PC(19)
    );
i_15: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => PC(18)
    );
i_16: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => PC(17)
    );
i_17: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => PC(16)
    );
i_18: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => PC(15)
    );
i_19: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => PC(14)
    );
i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => PC(31)
    );
i_20: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => PC(13)
    );
i_21: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => PC(12)
    );
i_22: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => PC(11)
    );
i_23: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => PC(10)
    );
i_24: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => PC(9)
    );
i_25: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => PC(8)
    );
i_26: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => PC(7)
    );
i_27: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => PC(6)
    );
i_28: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => PC(5)
    );
i_29: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => PC(4)
    );
i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => PC(30)
    );
i_30: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => PC(3)
    );
i_31: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => PC(2)
    );
i_32: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => PC(1)
    );
i_33: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => PC(0)
    );
i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => PC(29)
    );
i_5: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => PC(28)
    );
i_6: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => PC(27)
    );
i_7: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => PC(26)
    );
i_8: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => PC(25)
    );
i_9: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => PC(24)
    );
imem: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_imem
     port map (
      a(31 downto 6) => B"00000000000000000000000000",
      a(5 downto 2) => PC(5 downto 2),
      a(1 downto 0) => B"00",
      rd(31 downto 2) => Instr(31 downto 2),
      rd(1 downto 0) => NLW_imem_rd_UNCONNECTED(1 downto 0)
    );
memcontrol: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MemControl
     port map (
      AXIstart => AXIStart,
      DRW => DRW,
      Done => NLW_memcontrol_Done_UNCONNECTED,
      MStrobe => MStrobe,
      MemWrite => MemWrite,
      Trigger => doneM,
      clk => clk,
      reset => reset
    );
riscvsingle: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_riscvsingle
     port map (
      ALUResult(31 downto 0) => addressM(31 downto 0),
      Instr(31 downto 2) => Instr(31 downto 2),
      Instr(1 downto 0) => B"00",
      MemStrobe => MStrobe,
      MemWrite => MemWrite,
      PC(31 downto 0) => NLW_riscvsingle_PC_UNCONNECTED(31 downto 0),
      PCReady => '0',
      ReadData(31 downto 0) => readDataM(31 downto 0),
      WriteData(31 downto 0) => writeDataM(31 downto 0),
      clk => clk,
      reset => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    doneM : in STD_LOGIC;
    readDataM : in STD_LOGIC_VECTOR ( 31 downto 0 );
    writeDataM : out STD_LOGIC_VECTOR ( 31 downto 0 );
    addressM : out STD_LOGIC_VECTOR ( 31 downto 0 );
    DRW : out STD_LOGIC;
    AXIStart : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_top_0_0,top,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "top,Vivado 2023.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of inst : label is "soft";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of reset : signal is "xilinx.com:signal:reset:1.0 reset RST";
  attribute X_INTERFACE_PARAMETER of reset : signal is "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_top
     port map (
      AXIStart => AXIStart,
      DRW => DRW,
      addressM(31 downto 0) => addressM(31 downto 0),
      clk => clk,
      doneM => doneM,
      readDataM(31 downto 0) => readDataM(31 downto 0),
      reset => reset,
      writeDataM(31 downto 0) => writeDataM(31 downto 0)
    );
end STRUCTURE;
