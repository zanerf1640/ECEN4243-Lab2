-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
-- Date        : Mon Dec  8 15:24:59 2025
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
  signal \FSM_sequential_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_1_n_0\ : STD_LOGIC;
  signal nextstate : STD_LOGIC_VECTOR ( 0 to 0 );
  signal state : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of AXIstart_INST_0 : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of DRW_INST_0 : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of Done_INST_0 : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_1\ : label is "soft_lutpair39";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "Idle:000,ReadStart:100,WriteStart:001,ReadData:110,ReadMem:101,WriteData:011,WriteMem:010";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "Idle:000,ReadStart:100,WriteStart:001,ReadData:110,ReadMem:101,WriteData:011,WriteMem:010";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[2]\ : label is "Idle:000,ReadStart:100,WriteStart:001,ReadData:110,ReadMem:101,WriteData:011,WriteMem:010";
begin
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
Done_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => state(0),
      I1 => state(2),
      I2 => state(1),
      O => Done
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
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder is
  port (
    O : out STD_LOGIC_VECTOR ( 2 downto 0 );
    wd3 : out STD_LOGIC_VECTOR ( 27 downto 0 );
    DI : in STD_LOGIC_VECTOR ( 2 downto 0 );
    rf_reg_r1_0_31_0_5_i_6_0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S : in STD_LOGIC_VECTOR ( 0 to 0 );
    rf_reg_r1_0_31_6_11_i_3_0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    rf_reg_r1_0_31_12_17_i_1_0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    rf_reg_r1_0_31_12_17_i_5_0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    rf_reg_r1_0_31_18_23_i_3_0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    rf_reg_r1_0_31_24_29_i_1_0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    rf_reg_r1_0_31_24_29_i_5 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    rf_reg_r1_0_31_24_29_i_5_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Jump : in STD_LOGIC;
    ReadData : in STD_LOGIC_VECTOR ( 27 downto 0 );
    Instr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ALUResult : in STD_LOGIC_VECTOR ( 27 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder is
  signal \y_carry__0_n_0\ : STD_LOGIC;
  signal \y_carry__0_n_1\ : STD_LOGIC;
  signal \y_carry__0_n_2\ : STD_LOGIC;
  signal \y_carry__0_n_3\ : STD_LOGIC;
  signal \y_carry__0_n_4\ : STD_LOGIC;
  signal \y_carry__0_n_5\ : STD_LOGIC;
  signal \y_carry__0_n_6\ : STD_LOGIC;
  signal \y_carry__0_n_7\ : STD_LOGIC;
  signal \y_carry__1_n_0\ : STD_LOGIC;
  signal \y_carry__1_n_1\ : STD_LOGIC;
  signal \y_carry__1_n_2\ : STD_LOGIC;
  signal \y_carry__1_n_3\ : STD_LOGIC;
  signal \y_carry__1_n_4\ : STD_LOGIC;
  signal \y_carry__1_n_5\ : STD_LOGIC;
  signal \y_carry__1_n_6\ : STD_LOGIC;
  signal \y_carry__1_n_7\ : STD_LOGIC;
  signal \y_carry__2_n_0\ : STD_LOGIC;
  signal \y_carry__2_n_1\ : STD_LOGIC;
  signal \y_carry__2_n_2\ : STD_LOGIC;
  signal \y_carry__2_n_3\ : STD_LOGIC;
  signal \y_carry__2_n_4\ : STD_LOGIC;
  signal \y_carry__2_n_5\ : STD_LOGIC;
  signal \y_carry__2_n_6\ : STD_LOGIC;
  signal \y_carry__2_n_7\ : STD_LOGIC;
  signal \y_carry__3_n_0\ : STD_LOGIC;
  signal \y_carry__3_n_1\ : STD_LOGIC;
  signal \y_carry__3_n_2\ : STD_LOGIC;
  signal \y_carry__3_n_3\ : STD_LOGIC;
  signal \y_carry__3_n_4\ : STD_LOGIC;
  signal \y_carry__3_n_5\ : STD_LOGIC;
  signal \y_carry__3_n_6\ : STD_LOGIC;
  signal \y_carry__3_n_7\ : STD_LOGIC;
  signal \y_carry__4_n_0\ : STD_LOGIC;
  signal \y_carry__4_n_1\ : STD_LOGIC;
  signal \y_carry__4_n_2\ : STD_LOGIC;
  signal \y_carry__4_n_3\ : STD_LOGIC;
  signal \y_carry__4_n_4\ : STD_LOGIC;
  signal \y_carry__4_n_5\ : STD_LOGIC;
  signal \y_carry__4_n_6\ : STD_LOGIC;
  signal \y_carry__4_n_7\ : STD_LOGIC;
  signal \y_carry__5_n_0\ : STD_LOGIC;
  signal \y_carry__5_n_1\ : STD_LOGIC;
  signal \y_carry__5_n_2\ : STD_LOGIC;
  signal \y_carry__5_n_3\ : STD_LOGIC;
  signal \y_carry__5_n_4\ : STD_LOGIC;
  signal \y_carry__5_n_5\ : STD_LOGIC;
  signal \y_carry__5_n_6\ : STD_LOGIC;
  signal \y_carry__5_n_7\ : STD_LOGIC;
  signal \y_carry__6_n_2\ : STD_LOGIC;
  signal \y_carry__6_n_3\ : STD_LOGIC;
  signal y_carry_n_0 : STD_LOGIC;
  signal y_carry_n_1 : STD_LOGIC;
  signal y_carry_n_2 : STD_LOGIC;
  signal y_carry_n_3 : STD_LOGIC;
  signal y_carry_n_4 : STD_LOGIC;
  signal y_carry_n_5 : STD_LOGIC;
  signal y_carry_n_6 : STD_LOGIC;
  signal y_carry_n_7 : STD_LOGIC;
  signal \NLW_y_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_y_carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of y_carry : label is 35;
  attribute ADDER_THRESHOLD of \y_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \y_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \y_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \y_carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \y_carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \y_carry__5\ : label is 35;
  attribute ADDER_THRESHOLD of \y_carry__6\ : label is 35;
begin
rf_reg_r1_0_31_0_5_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBB8888888B8"
    )
        port map (
      I0 => y_carry_n_7,
      I1 => Jump,
      I2 => ReadData(0),
      I3 => Instr(0),
      I4 => Instr(1),
      I5 => ALUResult(0),
      O => wd3(0)
    );
rf_reg_r1_0_31_0_5_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBB8888888B8"
    )
        port map (
      I0 => y_carry_n_5,
      I1 => Jump,
      I2 => ReadData(2),
      I3 => Instr(0),
      I4 => Instr(1),
      I5 => ALUResult(2),
      O => wd3(2)
    );
rf_reg_r1_0_31_0_5_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBB8888888B8"
    )
        port map (
      I0 => y_carry_n_6,
      I1 => Jump,
      I2 => ReadData(1),
      I3 => Instr(0),
      I4 => Instr(1),
      I5 => ALUResult(1),
      O => wd3(1)
    );
rf_reg_r1_0_31_0_5_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBB8888888B8"
    )
        port map (
      I0 => \y_carry__0_n_7\,
      I1 => Jump,
      I2 => ReadData(4),
      I3 => Instr(0),
      I4 => Instr(1),
      I5 => ALUResult(4),
      O => wd3(4)
    );
rf_reg_r1_0_31_0_5_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBB8888888B8"
    )
        port map (
      I0 => y_carry_n_4,
      I1 => Jump,
      I2 => ReadData(3),
      I3 => Instr(0),
      I4 => Instr(1),
      I5 => ALUResult(3),
      O => wd3(3)
    );
rf_reg_r1_0_31_12_17_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBB8888888B8"
    )
        port map (
      I0 => \y_carry__2_n_7\,
      I1 => Jump,
      I2 => ReadData(12),
      I3 => Instr(0),
      I4 => Instr(1),
      I5 => ALUResult(12),
      O => wd3(12)
    );
rf_reg_r1_0_31_12_17_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBB8888888B8"
    )
        port map (
      I0 => \y_carry__1_n_4\,
      I1 => Jump,
      I2 => ReadData(11),
      I3 => Instr(0),
      I4 => Instr(1),
      I5 => ALUResult(11),
      O => wd3(11)
    );
rf_reg_r1_0_31_12_17_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBB8888888B8"
    )
        port map (
      I0 => \y_carry__2_n_5\,
      I1 => Jump,
      I2 => ReadData(14),
      I3 => Instr(0),
      I4 => Instr(1),
      I5 => ALUResult(14),
      O => wd3(14)
    );
rf_reg_r1_0_31_12_17_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBB8888888B8"
    )
        port map (
      I0 => \y_carry__2_n_6\,
      I1 => Jump,
      I2 => ReadData(13),
      I3 => Instr(0),
      I4 => Instr(1),
      I5 => ALUResult(13),
      O => wd3(13)
    );
rf_reg_r1_0_31_12_17_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBB8888888B8"
    )
        port map (
      I0 => \y_carry__3_n_7\,
      I1 => Jump,
      I2 => ReadData(16),
      I3 => Instr(0),
      I4 => Instr(1),
      I5 => ALUResult(16),
      O => wd3(16)
    );
rf_reg_r1_0_31_12_17_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBB8888888B8"
    )
        port map (
      I0 => \y_carry__2_n_4\,
      I1 => Jump,
      I2 => ReadData(15),
      I3 => Instr(0),
      I4 => Instr(1),
      I5 => ALUResult(15),
      O => wd3(15)
    );
rf_reg_r1_0_31_18_23_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBB8888888B8"
    )
        port map (
      I0 => \y_carry__3_n_5\,
      I1 => Jump,
      I2 => ReadData(18),
      I3 => Instr(0),
      I4 => Instr(1),
      I5 => ALUResult(18),
      O => wd3(18)
    );
rf_reg_r1_0_31_18_23_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBB8888888B8"
    )
        port map (
      I0 => \y_carry__3_n_6\,
      I1 => Jump,
      I2 => ReadData(17),
      I3 => Instr(0),
      I4 => Instr(1),
      I5 => ALUResult(17),
      O => wd3(17)
    );
rf_reg_r1_0_31_18_23_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBB8888888B8"
    )
        port map (
      I0 => \y_carry__4_n_7\,
      I1 => Jump,
      I2 => ReadData(20),
      I3 => Instr(0),
      I4 => Instr(1),
      I5 => ALUResult(20),
      O => wd3(20)
    );
rf_reg_r1_0_31_18_23_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBB8888888B8"
    )
        port map (
      I0 => \y_carry__3_n_4\,
      I1 => Jump,
      I2 => ReadData(19),
      I3 => Instr(0),
      I4 => Instr(1),
      I5 => ALUResult(19),
      O => wd3(19)
    );
rf_reg_r1_0_31_18_23_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBB8888888B8"
    )
        port map (
      I0 => \y_carry__4_n_5\,
      I1 => Jump,
      I2 => ReadData(22),
      I3 => Instr(0),
      I4 => Instr(1),
      I5 => ALUResult(22),
      O => wd3(22)
    );
rf_reg_r1_0_31_18_23_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBB8888888B8"
    )
        port map (
      I0 => \y_carry__4_n_6\,
      I1 => Jump,
      I2 => ReadData(21),
      I3 => Instr(0),
      I4 => Instr(1),
      I5 => ALUResult(21),
      O => wd3(21)
    );
rf_reg_r1_0_31_24_29_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBB8888888B8"
    )
        port map (
      I0 => \y_carry__5_n_7\,
      I1 => Jump,
      I2 => ReadData(24),
      I3 => Instr(0),
      I4 => Instr(1),
      I5 => ALUResult(24),
      O => wd3(24)
    );
rf_reg_r1_0_31_24_29_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBB8888888B8"
    )
        port map (
      I0 => \y_carry__4_n_4\,
      I1 => Jump,
      I2 => ReadData(23),
      I3 => Instr(0),
      I4 => Instr(1),
      I5 => ALUResult(23),
      O => wd3(23)
    );
rf_reg_r1_0_31_24_29_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBB8888888B8"
    )
        port map (
      I0 => \y_carry__5_n_5\,
      I1 => Jump,
      I2 => ReadData(26),
      I3 => Instr(0),
      I4 => Instr(1),
      I5 => ALUResult(26),
      O => wd3(26)
    );
rf_reg_r1_0_31_24_29_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBB8888888B8"
    )
        port map (
      I0 => \y_carry__5_n_6\,
      I1 => Jump,
      I2 => ReadData(25),
      I3 => Instr(0),
      I4 => Instr(1),
      I5 => ALUResult(25),
      O => wd3(25)
    );
rf_reg_r1_0_31_24_29_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBB8888888B8"
    )
        port map (
      I0 => \y_carry__5_n_4\,
      I1 => Jump,
      I2 => ReadData(27),
      I3 => Instr(0),
      I4 => Instr(1),
      I5 => ALUResult(27),
      O => wd3(27)
    );
rf_reg_r1_0_31_6_11_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBB8888888B8"
    )
        port map (
      I0 => \y_carry__0_n_5\,
      I1 => Jump,
      I2 => ReadData(6),
      I3 => Instr(0),
      I4 => Instr(1),
      I5 => ALUResult(6),
      O => wd3(6)
    );
rf_reg_r1_0_31_6_11_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBB8888888B8"
    )
        port map (
      I0 => \y_carry__0_n_6\,
      I1 => Jump,
      I2 => ReadData(5),
      I3 => Instr(0),
      I4 => Instr(1),
      I5 => ALUResult(5),
      O => wd3(5)
    );
rf_reg_r1_0_31_6_11_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBB8888888B8"
    )
        port map (
      I0 => \y_carry__1_n_7\,
      I1 => Jump,
      I2 => ReadData(8),
      I3 => Instr(0),
      I4 => Instr(1),
      I5 => ALUResult(8),
      O => wd3(8)
    );
rf_reg_r1_0_31_6_11_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBB8888888B8"
    )
        port map (
      I0 => \y_carry__0_n_4\,
      I1 => Jump,
      I2 => ReadData(7),
      I3 => Instr(0),
      I4 => Instr(1),
      I5 => ALUResult(7),
      O => wd3(7)
    );
rf_reg_r1_0_31_6_11_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBB8888888B8"
    )
        port map (
      I0 => \y_carry__1_n_5\,
      I1 => Jump,
      I2 => ReadData(10),
      I3 => Instr(0),
      I4 => Instr(1),
      I5 => ALUResult(10),
      O => wd3(10)
    );
rf_reg_r1_0_31_6_11_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBB8888888B8"
    )
        port map (
      I0 => \y_carry__1_n_6\,
      I1 => Jump,
      I2 => ReadData(9),
      I3 => Instr(0),
      I4 => Instr(1),
      I5 => ALUResult(9),
      O => wd3(9)
    );
y_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => y_carry_n_0,
      CO(2) => y_carry_n_1,
      CO(1) => y_carry_n_2,
      CO(0) => y_carry_n_3,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => DI(1),
      DI(0) => '0',
      O(3) => y_carry_n_4,
      O(2) => y_carry_n_5,
      O(1) => y_carry_n_6,
      O(0) => y_carry_n_7,
      S(3) => rf_reg_r1_0_31_0_5_i_6_0(0),
      S(2) => DI(2),
      S(1) => S(0),
      S(0) => DI(0)
    );
\y_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => y_carry_n_0,
      CO(3) => \y_carry__0_n_0\,
      CO(2) => \y_carry__0_n_1\,
      CO(1) => \y_carry__0_n_2\,
      CO(0) => \y_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \y_carry__0_n_4\,
      O(2) => \y_carry__0_n_5\,
      O(1) => \y_carry__0_n_6\,
      O(0) => \y_carry__0_n_7\,
      S(3) => rf_reg_r1_0_31_6_11_i_3_0(0),
      S(2 downto 0) => rf_reg_r1_0_31_0_5_i_6_0(3 downto 1)
    );
\y_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \y_carry__0_n_0\,
      CO(3) => \y_carry__1_n_0\,
      CO(2) => \y_carry__1_n_1\,
      CO(1) => \y_carry__1_n_2\,
      CO(0) => \y_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \y_carry__1_n_4\,
      O(2) => \y_carry__1_n_5\,
      O(1) => \y_carry__1_n_6\,
      O(0) => \y_carry__1_n_7\,
      S(3) => rf_reg_r1_0_31_12_17_i_1_0(0),
      S(2 downto 0) => rf_reg_r1_0_31_6_11_i_3_0(3 downto 1)
    );
\y_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \y_carry__1_n_0\,
      CO(3) => \y_carry__2_n_0\,
      CO(2) => \y_carry__2_n_1\,
      CO(1) => \y_carry__2_n_2\,
      CO(0) => \y_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \y_carry__2_n_4\,
      O(2) => \y_carry__2_n_5\,
      O(1) => \y_carry__2_n_6\,
      O(0) => \y_carry__2_n_7\,
      S(3) => rf_reg_r1_0_31_12_17_i_5_0(0),
      S(2 downto 0) => rf_reg_r1_0_31_12_17_i_1_0(3 downto 1)
    );
\y_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \y_carry__2_n_0\,
      CO(3) => \y_carry__3_n_0\,
      CO(2) => \y_carry__3_n_1\,
      CO(1) => \y_carry__3_n_2\,
      CO(0) => \y_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \y_carry__3_n_4\,
      O(2) => \y_carry__3_n_5\,
      O(1) => \y_carry__3_n_6\,
      O(0) => \y_carry__3_n_7\,
      S(3) => rf_reg_r1_0_31_18_23_i_3_0(0),
      S(2 downto 0) => rf_reg_r1_0_31_12_17_i_5_0(3 downto 1)
    );
\y_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \y_carry__3_n_0\,
      CO(3) => \y_carry__4_n_0\,
      CO(2) => \y_carry__4_n_1\,
      CO(1) => \y_carry__4_n_2\,
      CO(0) => \y_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \y_carry__4_n_4\,
      O(2) => \y_carry__4_n_5\,
      O(1) => \y_carry__4_n_6\,
      O(0) => \y_carry__4_n_7\,
      S(3) => rf_reg_r1_0_31_24_29_i_1_0(0),
      S(2 downto 0) => rf_reg_r1_0_31_18_23_i_3_0(3 downto 1)
    );
\y_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \y_carry__4_n_0\,
      CO(3) => \y_carry__5_n_0\,
      CO(2) => \y_carry__5_n_1\,
      CO(1) => \y_carry__5_n_2\,
      CO(0) => \y_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \y_carry__5_n_4\,
      O(2) => \y_carry__5_n_5\,
      O(1) => \y_carry__5_n_6\,
      O(0) => \y_carry__5_n_7\,
      S(3) => rf_reg_r1_0_31_24_29_i_5(0),
      S(2 downto 0) => rf_reg_r1_0_31_24_29_i_1_0(3 downto 1)
    );
\y_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \y_carry__5_n_0\,
      CO(3 downto 2) => \NLW_y_carry__6_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \y_carry__6_n_2\,
      CO(0) => \y_carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_y_carry__6_O_UNCONNECTED\(3),
      O(2 downto 0) => O(2 downto 0),
      S(3) => '0',
      S(2) => rf_reg_r1_0_31_24_29_i_5_0(0),
      S(1 downto 0) => rf_reg_r1_0_31_24_29_i_5(2 downto 1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder_0 is
  port (
    d0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    sel0 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    DI : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \q[4]_i_8\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \q[4]_i_8_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \q[8]_i_6\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \q[8]_i_6_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \q[12]_i_6\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \q[12]_i_6_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \q[16]_i_6\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \q[16]_i_6_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \q[20]_i_6\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \q[20]_i_6_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \q[24]_i_6\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \q[24]_i_6_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \q[28]_i_6\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \q[28]_i_6_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Instr : in STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder_0 : entity is "adder";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder_0 is
  signal \y_carry__0_n_0\ : STD_LOGIC;
  signal \y_carry__0_n_1\ : STD_LOGIC;
  signal \y_carry__0_n_2\ : STD_LOGIC;
  signal \y_carry__0_n_3\ : STD_LOGIC;
  signal \y_carry__1_n_0\ : STD_LOGIC;
  signal \y_carry__1_n_1\ : STD_LOGIC;
  signal \y_carry__1_n_2\ : STD_LOGIC;
  signal \y_carry__1_n_3\ : STD_LOGIC;
  signal \y_carry__2_n_0\ : STD_LOGIC;
  signal \y_carry__2_n_1\ : STD_LOGIC;
  signal \y_carry__2_n_2\ : STD_LOGIC;
  signal \y_carry__2_n_3\ : STD_LOGIC;
  signal \y_carry__3_n_0\ : STD_LOGIC;
  signal \y_carry__3_n_1\ : STD_LOGIC;
  signal \y_carry__3_n_2\ : STD_LOGIC;
  signal \y_carry__3_n_3\ : STD_LOGIC;
  signal \y_carry__4_n_0\ : STD_LOGIC;
  signal \y_carry__4_n_1\ : STD_LOGIC;
  signal \y_carry__4_n_2\ : STD_LOGIC;
  signal \y_carry__4_n_3\ : STD_LOGIC;
  signal \y_carry__5_n_0\ : STD_LOGIC;
  signal \y_carry__5_n_1\ : STD_LOGIC;
  signal \y_carry__5_n_2\ : STD_LOGIC;
  signal \y_carry__5_n_3\ : STD_LOGIC;
  signal \y_carry__6_n_1\ : STD_LOGIC;
  signal \y_carry__6_n_2\ : STD_LOGIC;
  signal \y_carry__6_n_3\ : STD_LOGIC;
  signal y_carry_n_0 : STD_LOGIC;
  signal y_carry_n_1 : STD_LOGIC;
  signal y_carry_n_2 : STD_LOGIC;
  signal y_carry_n_3 : STD_LOGIC;
  signal \NLW_y_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of y_carry : label is 35;
  attribute ADDER_THRESHOLD of \y_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \y_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \y_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \y_carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \y_carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \y_carry__5\ : label is 35;
  attribute ADDER_THRESHOLD of \y_carry__6\ : label is 35;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of y_carry_i_6 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of y_carry_i_7 : label is "soft_lutpair2";
begin
y_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => y_carry_n_0,
      CO(2) => y_carry_n_1,
      CO(1) => y_carry_n_2,
      CO(0) => y_carry_n_3,
      CYINIT => '0',
      DI(3 downto 0) => DI(3 downto 0),
      O(3 downto 0) => d0(3 downto 0),
      S(3 downto 0) => S(3 downto 0)
    );
\y_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => y_carry_n_0,
      CO(3) => \y_carry__0_n_0\,
      CO(2) => \y_carry__0_n_1\,
      CO(1) => \y_carry__0_n_2\,
      CO(0) => \y_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \q[4]_i_8\(3 downto 0),
      O(3 downto 0) => d0(7 downto 4),
      S(3 downto 0) => \q[4]_i_8_0\(3 downto 0)
    );
\y_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \y_carry__0_n_0\,
      CO(3) => \y_carry__1_n_0\,
      CO(2) => \y_carry__1_n_1\,
      CO(1) => \y_carry__1_n_2\,
      CO(0) => \y_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \q[8]_i_6\(3 downto 0),
      O(3 downto 0) => d0(11 downto 8),
      S(3 downto 0) => \q[8]_i_6_0\(3 downto 0)
    );
\y_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \y_carry__1_n_0\,
      CO(3) => \y_carry__2_n_0\,
      CO(2) => \y_carry__2_n_1\,
      CO(1) => \y_carry__2_n_2\,
      CO(0) => \y_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \q[12]_i_6\(3 downto 0),
      O(3 downto 0) => d0(15 downto 12),
      S(3 downto 0) => \q[12]_i_6_0\(3 downto 0)
    );
\y_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \y_carry__2_n_0\,
      CO(3) => \y_carry__3_n_0\,
      CO(2) => \y_carry__3_n_1\,
      CO(1) => \y_carry__3_n_2\,
      CO(0) => \y_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \q[16]_i_6\(3 downto 0),
      O(3 downto 0) => d0(19 downto 16),
      S(3 downto 0) => \q[16]_i_6_0\(3 downto 0)
    );
\y_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \y_carry__3_n_0\,
      CO(3) => \y_carry__4_n_0\,
      CO(2) => \y_carry__4_n_1\,
      CO(1) => \y_carry__4_n_2\,
      CO(0) => \y_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \q[20]_i_6\(3 downto 0),
      O(3 downto 0) => d0(23 downto 20),
      S(3 downto 0) => \q[20]_i_6_0\(3 downto 0)
    );
\y_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \y_carry__4_n_0\,
      CO(3) => \y_carry__5_n_0\,
      CO(2) => \y_carry__5_n_1\,
      CO(1) => \y_carry__5_n_2\,
      CO(0) => \y_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \q[24]_i_6\(3 downto 0),
      O(3 downto 0) => d0(27 downto 24),
      S(3 downto 0) => \q[24]_i_6_0\(3 downto 0)
    );
\y_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \y_carry__5_n_0\,
      CO(3) => \NLW_y_carry__6_CO_UNCONNECTED\(3),
      CO(2) => \y_carry__6_n_1\,
      CO(1) => \y_carry__6_n_2\,
      CO(0) => \y_carry__6_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => \q[28]_i_6\(2 downto 0),
      O(3 downto 0) => d0(31 downto 28),
      S(3 downto 0) => \q[28]_i_6_0\(3 downto 0)
    );
y_carry_i_6: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Instr(1),
      I1 => Instr(0),
      I2 => Instr(4),
      O => sel0(1)
    );
y_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABAA"
    )
        port map (
      I0 => Instr(1),
      I1 => Instr(2),
      I2 => Instr(4),
      I3 => Instr(3),
      O => sel0(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_alu is
  port (
    O : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[7]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[11]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[15]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[19]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[23]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[27]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[30]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    CO : out STD_LOGIC_VECTOR ( 0 to 0 );
    ALUResult : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \ALUResult[31]_INST_0_i_12\ : out STD_LOGIC;
    \ALUResult[28]_INST_0\ : out STD_LOGIC;
    \ALUResult[0]_INST_0_i_1_0\ : out STD_LOGIC;
    immext : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ALUSrc : out STD_LOGIC_VECTOR ( 0 to 0 );
    rd21 : out STD_LOGIC;
    rd11 : out STD_LOGIC;
    d1 : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \q_reg[5]\ : out STD_LOGIC;
    \q_reg[5]_0\ : out STD_LOGIC;
    \q_reg[5]_1\ : out STD_LOGIC;
    \ALUResult[0]_INST_0_i_3\ : in STD_LOGIC;
    SrcA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \ALUResult[4]_INST_0_i_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \ALUResult[8]_INST_0_i_2\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \ALUResult[12]_INST_0_i_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \ALUResult[16]_INST_0_i_5\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \ALUResult[20]_INST_0_i_2\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \ALUResult[24]_INST_0_i_4\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \ALUResult[28]_INST_0_i_5\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    DI : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \sltuOut_carry__0_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \sltuOut_carry__1_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \sltuOut_carry__1_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \sltuOut_carry__2_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \sltuOut_carry__2_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \ALUResult[0]_INST_0_i_2_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \ALUResult[0]_INST_0_i_2_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \carried_carry__0_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \carried_carry__1_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \carried_carry__2_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \carried_carry__3_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \carried_carry__4_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \carried_carry__5_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \carried_carry__6_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \q[0]_i_9\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ALUControl : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \addressM[0]\ : in STD_LOGIC;
    \addressM[11]\ : in STD_LOGIC;
    \addressM[11]_0\ : in STD_LOGIC;
    \addressM[11]_1\ : in STD_LOGIC;
    \q[0]_i_7\ : in STD_LOGIC;
    \addressM[29]\ : in STD_LOGIC;
    \addressM[30]\ : in STD_LOGIC;
    \addressM[31]\ : in STD_LOGIC;
    \result0__33\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \ALUControl__0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \addressM[0]_0\ : in STD_LOGIC;
    SrcB : in STD_LOGIC_VECTOR ( 4 downto 0 );
    data7 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Instr : in STD_LOGIC_VECTOR ( 19 downto 0 );
    sel0 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    d0 : in STD_LOGIC_VECTOR ( 4 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_alu;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_alu is
  signal \^aluresult\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \ALUResult[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \ALUResult[0]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ALUResult[29]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ALUResult[30]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \^aluresult[31]_inst_0_i_12\ : STD_LOGIC;
  signal \ALUResult[31]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \^o\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \carried_carry__0_n_0\ : STD_LOGIC;
  signal \carried_carry__0_n_1\ : STD_LOGIC;
  signal \carried_carry__0_n_2\ : STD_LOGIC;
  signal \carried_carry__0_n_3\ : STD_LOGIC;
  signal \carried_carry__1_n_0\ : STD_LOGIC;
  signal \carried_carry__1_n_1\ : STD_LOGIC;
  signal \carried_carry__1_n_2\ : STD_LOGIC;
  signal \carried_carry__1_n_3\ : STD_LOGIC;
  signal \carried_carry__2_n_0\ : STD_LOGIC;
  signal \carried_carry__2_n_1\ : STD_LOGIC;
  signal \carried_carry__2_n_2\ : STD_LOGIC;
  signal \carried_carry__2_n_3\ : STD_LOGIC;
  signal \carried_carry__3_n_0\ : STD_LOGIC;
  signal \carried_carry__3_n_1\ : STD_LOGIC;
  signal \carried_carry__3_n_2\ : STD_LOGIC;
  signal \carried_carry__3_n_3\ : STD_LOGIC;
  signal \carried_carry__4_n_0\ : STD_LOGIC;
  signal \carried_carry__4_n_1\ : STD_LOGIC;
  signal \carried_carry__4_n_2\ : STD_LOGIC;
  signal \carried_carry__4_n_3\ : STD_LOGIC;
  signal \carried_carry__5_n_0\ : STD_LOGIC;
  signal \carried_carry__5_n_1\ : STD_LOGIC;
  signal \carried_carry__5_n_2\ : STD_LOGIC;
  signal \carried_carry__5_n_3\ : STD_LOGIC;
  signal \carried_carry__6_n_1\ : STD_LOGIC;
  signal \carried_carry__6_n_2\ : STD_LOGIC;
  signal \carried_carry__6_n_3\ : STD_LOGIC;
  signal carried_carry_n_0 : STD_LOGIC;
  signal carried_carry_n_1 : STD_LOGIC;
  signal carried_carry_n_2 : STD_LOGIC;
  signal carried_carry_n_3 : STD_LOGIC;
  signal data8 : STD_LOGIC;
  signal \^q_reg[11]\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^q_reg[30]\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^q_reg[5]_0\ : STD_LOGIC;
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
  signal \sum_carry__6_n_1\ : STD_LOGIC;
  signal \sum_carry__6_n_2\ : STD_LOGIC;
  signal \sum_carry__6_n_3\ : STD_LOGIC;
  signal sum_carry_n_0 : STD_LOGIC;
  signal sum_carry_n_1 : STD_LOGIC;
  signal sum_carry_n_2 : STD_LOGIC;
  signal sum_carry_n_3 : STD_LOGIC;
  signal NLW_carried_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_carried_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_carried_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_carried_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_carried_carry__3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_carried_carry__4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_carried_carry__5_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_carried_carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_sltuOut_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_sltuOut_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_sltuOut_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_sltuOut_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_sum_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ALUResult[28]_INST_0_i_10\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \q[0]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \q[31]_i_5\ : label is "soft_lutpair1";
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of sltuOut_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \sltuOut_carry__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \sltuOut_carry__1\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \sltuOut_carry__2\ : label is 11;
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of sum_carry : label is 35;
  attribute ADDER_THRESHOLD of \sum_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \sum_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \sum_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \sum_carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \sum_carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \sum_carry__5\ : label is 35;
  attribute ADDER_THRESHOLD of \sum_carry__6\ : label is 35;
  attribute SOFT_HLUTNM of y_carry_i_5 : label is "soft_lutpair1";
begin
  ALUResult(4 downto 0) <= \^aluresult\(4 downto 0);
  \ALUResult[31]_INST_0_i_12\ <= \^aluresult[31]_inst_0_i_12\;
  O(3 downto 0) <= \^o\(3 downto 0);
  \q_reg[11]\(3 downto 0) <= \^q_reg[11]\(3 downto 0);
  \q_reg[30]\(3 downto 0) <= \^q_reg[30]\(3 downto 0);
  \q_reg[5]_0\ <= \^q_reg[5]_0\;
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
      O => \^aluresult\(0)
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
\ALUResult[11]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \^aluresult[31]_inst_0_i_12\,
      I1 => ALUControl(2),
      I2 => \addressM[11]\,
      I3 => \addressM[11]_0\,
      I4 => \addressM[11]_1\,
      O => \^aluresult\(1)
    );
\ALUResult[11]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0C0F0C0BBFFBBCC"
    )
        port map (
      I0 => SrcB(1),
      I1 => ALUControl(1),
      I2 => \^q_reg[11]\(3),
      I3 => ALUControl(0),
      I4 => data7(0),
      I5 => \ALUControl__0\(0),
      O => \^aluresult[31]_inst_0_i_12\
    );
\ALUResult[12]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F1FDF9FDE0206020"
    )
        port map (
      I0 => Instr(0),
      I1 => Instr(4),
      I2 => Instr(6),
      I3 => sel0(0),
      I4 => Instr(1),
      I5 => Instr(19),
      O => immext(0)
    );
\ALUResult[13]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F1FDF9FDE0206020"
    )
        port map (
      I0 => Instr(0),
      I1 => Instr(4),
      I2 => Instr(7),
      I3 => sel0(0),
      I4 => Instr(1),
      I5 => Instr(19),
      O => immext(1)
    );
\ALUResult[14]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F1FDF9FDE0206020"
    )
        port map (
      I0 => Instr(0),
      I1 => Instr(4),
      I2 => Instr(8),
      I3 => sel0(0),
      I4 => Instr(1),
      I5 => Instr(19),
      O => immext(2)
    );
\ALUResult[15]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F1FDF9FDE0206020"
    )
        port map (
      I0 => Instr(0),
      I1 => Instr(4),
      I2 => Instr(9),
      I3 => sel0(0),
      I4 => Instr(1),
      I5 => Instr(19),
      O => immext(3)
    );
\ALUResult[28]_INST_0_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Instr(0),
      I1 => Instr(3),
      O => \q_reg[5]_1\
    );
\ALUResult[28]_INST_0_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => Instr(11),
      I1 => Instr(9),
      I2 => Instr(10),
      I3 => Instr(12),
      I4 => Instr(13),
      O => rd11
    );
\ALUResult[29]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \addressM[29]\,
      I1 => \ALUResult[29]_INST_0_i_2_n_0\,
      O => \^aluresult\(2),
      S => ALUControl(2)
    );
\ALUResult[29]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0C0F0C0BBFFBBCC"
    )
        port map (
      I0 => SrcB(2),
      I1 => ALUControl(1),
      I2 => \^q_reg[30]\(1),
      I3 => ALUControl(0),
      I4 => data7(1),
      I5 => \ALUControl__0\(0),
      O => \ALUResult[29]_INST_0_i_2_n_0\
    );
\ALUResult[30]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \addressM[30]\,
      I1 => \ALUResult[30]_INST_0_i_2_n_0\,
      O => \^aluresult\(3),
      S => ALUControl(2)
    );
\ALUResult[30]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0C0F0C0BBFFBBCC"
    )
        port map (
      I0 => SrcB(3),
      I1 => ALUControl(1),
      I2 => \^q_reg[30]\(2),
      I3 => ALUControl(0),
      I4 => data7(2),
      I5 => \ALUControl__0\(0),
      O => \ALUResult[30]_INST_0_i_2_n_0\
    );
\ALUResult[31]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \addressM[31]\,
      I1 => \ALUResult[31]_INST_0_i_3_n_0\,
      O => \^aluresult\(4),
      S => ALUControl(2)
    );
\ALUResult[31]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0C0F0C0BBFFBBCC"
    )
        port map (
      I0 => SrcB(4),
      I1 => ALUControl(1),
      I2 => \^q_reg[30]\(3),
      I3 => ALUControl(0),
      I4 => data7(3),
      I5 => \ALUControl__0\(0),
      O => \ALUResult[31]_INST_0_i_3_n_0\
    );
carried_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => carried_carry_n_0,
      CO(2) => carried_carry_n_1,
      CO(1) => carried_carry_n_2,
      CO(0) => carried_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => SrcA(3 downto 0),
      O(3 downto 0) => NLW_carried_carry_O_UNCONNECTED(3 downto 0),
      S(3 downto 0) => \carried_carry__0_0\(3 downto 0)
    );
\carried_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => carried_carry_n_0,
      CO(3) => \carried_carry__0_n_0\,
      CO(2) => \carried_carry__0_n_1\,
      CO(1) => \carried_carry__0_n_2\,
      CO(0) => \carried_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => SrcA(7 downto 4),
      O(3 downto 0) => \NLW_carried_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => \carried_carry__1_0\(3 downto 0)
    );
\carried_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \carried_carry__0_n_0\,
      CO(3) => \carried_carry__1_n_0\,
      CO(2) => \carried_carry__1_n_1\,
      CO(1) => \carried_carry__1_n_2\,
      CO(0) => \carried_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => SrcA(11 downto 8),
      O(3 downto 0) => \NLW_carried_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => \carried_carry__2_0\(3 downto 0)
    );
\carried_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \carried_carry__1_n_0\,
      CO(3) => \carried_carry__2_n_0\,
      CO(2) => \carried_carry__2_n_1\,
      CO(1) => \carried_carry__2_n_2\,
      CO(0) => \carried_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => SrcA(15 downto 12),
      O(3 downto 0) => \NLW_carried_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => \carried_carry__3_0\(3 downto 0)
    );
\carried_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \carried_carry__2_n_0\,
      CO(3) => \carried_carry__3_n_0\,
      CO(2) => \carried_carry__3_n_1\,
      CO(1) => \carried_carry__3_n_2\,
      CO(0) => \carried_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => SrcA(19 downto 16),
      O(3 downto 0) => \NLW_carried_carry__3_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => \carried_carry__4_0\(3 downto 0)
    );
\carried_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \carried_carry__3_n_0\,
      CO(3) => \carried_carry__4_n_0\,
      CO(2) => \carried_carry__4_n_1\,
      CO(1) => \carried_carry__4_n_2\,
      CO(0) => \carried_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => SrcA(23 downto 20),
      O(3 downto 0) => \NLW_carried_carry__4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => \carried_carry__5_0\(3 downto 0)
    );
\carried_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \carried_carry__4_n_0\,
      CO(3) => \carried_carry__5_n_0\,
      CO(2) => \carried_carry__5_n_1\,
      CO(1) => \carried_carry__5_n_2\,
      CO(0) => \carried_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => SrcA(27 downto 24),
      O(3 downto 0) => \NLW_carried_carry__5_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => \carried_carry__6_0\(3 downto 0)
    );
\carried_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \carried_carry__5_n_0\,
      CO(3) => CO(0),
      CO(2) => \carried_carry__6_n_1\,
      CO(1) => \carried_carry__6_n_2\,
      CO(0) => \carried_carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => SrcA(31 downto 28),
      O(3 downto 0) => \NLW_carried_carry__6_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => \q[0]_i_9\(3 downto 0)
    );
\q[0]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \^aluresult\(3),
      I1 => \^aluresult\(4),
      I2 => \^aluresult\(2),
      I3 => \q[0]_i_7\,
      O => \ALUResult[28]_INST_0\
    );
\q[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACCCCCCC"
    )
        port map (
      I0 => \^aluresult\(0),
      I1 => d0(0),
      I2 => Instr(0),
      I3 => Instr(3),
      I4 => Instr(4),
      O => d1(0)
    );
\q[12]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACCCCCCC"
    )
        port map (
      I0 => \^aluresult\(1),
      I1 => d0(1),
      I2 => Instr(0),
      I3 => Instr(3),
      I4 => Instr(4),
      O => d1(1)
    );
\q[31]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACCCCCCC"
    )
        port map (
      I0 => \^aluresult\(4),
      I1 => d0(4),
      I2 => Instr(0),
      I3 => Instr(3),
      I4 => Instr(4),
      O => d1(4)
    );
\q[31]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACCCCCCC"
    )
        port map (
      I0 => \^aluresult\(3),
      I1 => d0(3),
      I2 => Instr(0),
      I3 => Instr(3),
      I4 => Instr(4),
      O => d1(3)
    );
\q[31]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACCCCCCC"
    )
        port map (
      I0 => \^aluresult\(2),
      I1 => d0(2),
      I2 => Instr(0),
      I3 => Instr(3),
      I4 => Instr(4),
      O => d1(2)
    );
\q_reg[0]_i_20\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALUResult[0]_INST_0_i_2_n_0\,
      I1 => \ALUResult[0]_INST_0_i_1_n_0\,
      O => \ALUResult[0]_INST_0_i_1_0\,
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
      DI(3 downto 0) => DI(3 downto 0),
      O(3 downto 0) => NLW_sltuOut_carry_O_UNCONNECTED(3 downto 0),
      S(3 downto 0) => \sltuOut_carry__0_0\(3 downto 0)
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
sum_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => sum_carry_n_0,
      CO(2) => sum_carry_n_1,
      CO(1) => sum_carry_n_2,
      CO(0) => sum_carry_n_3,
      CYINIT => \ALUResult[0]_INST_0_i_3\,
      DI(3 downto 0) => SrcA(3 downto 0),
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
      DI(3 downto 0) => SrcA(7 downto 4),
      O(3 downto 0) => \q_reg[7]\(3 downto 0),
      S(3 downto 0) => \ALUResult[4]_INST_0_i_1\(3 downto 0)
    );
\sum_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum_carry__0_n_0\,
      CO(3) => \sum_carry__1_n_0\,
      CO(2) => \sum_carry__1_n_1\,
      CO(1) => \sum_carry__1_n_2\,
      CO(0) => \sum_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => SrcA(11 downto 8),
      O(3 downto 0) => \^q_reg[11]\(3 downto 0),
      S(3 downto 0) => \ALUResult[8]_INST_0_i_2\(3 downto 0)
    );
\sum_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum_carry__1_n_0\,
      CO(3) => \sum_carry__2_n_0\,
      CO(2) => \sum_carry__2_n_1\,
      CO(1) => \sum_carry__2_n_2\,
      CO(0) => \sum_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => SrcA(15 downto 12),
      O(3 downto 0) => \q_reg[15]\(3 downto 0),
      S(3 downto 0) => \ALUResult[12]_INST_0_i_1\(3 downto 0)
    );
\sum_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum_carry__2_n_0\,
      CO(3) => \sum_carry__3_n_0\,
      CO(2) => \sum_carry__3_n_1\,
      CO(1) => \sum_carry__3_n_2\,
      CO(0) => \sum_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => SrcA(19 downto 16),
      O(3 downto 0) => \q_reg[19]\(3 downto 0),
      S(3 downto 0) => \ALUResult[16]_INST_0_i_5\(3 downto 0)
    );
\sum_carry__3_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F1FDF9FDE0206020"
    )
        port map (
      I0 => Instr(0),
      I1 => Instr(4),
      I2 => Instr(13),
      I3 => sel0(0),
      I4 => Instr(1),
      I5 => Instr(19),
      O => immext(7)
    );
\sum_carry__3_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F1FDF9FDE0206020"
    )
        port map (
      I0 => Instr(0),
      I1 => Instr(4),
      I2 => Instr(12),
      I3 => sel0(0),
      I4 => Instr(1),
      I5 => Instr(19),
      O => immext(6)
    );
\sum_carry__3_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F1FDF9FDE0206020"
    )
        port map (
      I0 => Instr(0),
      I1 => Instr(4),
      I2 => Instr(11),
      I3 => sel0(0),
      I4 => Instr(1),
      I5 => Instr(19),
      O => immext(5)
    );
\sum_carry__3_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F1FDF9FDE0206020"
    )
        port map (
      I0 => Instr(0),
      I1 => Instr(4),
      I2 => Instr(10),
      I3 => sel0(0),
      I4 => Instr(1),
      I5 => Instr(19),
      O => immext(4)
    );
\sum_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum_carry__3_n_0\,
      CO(3) => \sum_carry__4_n_0\,
      CO(2) => \sum_carry__4_n_1\,
      CO(1) => \sum_carry__4_n_2\,
      CO(0) => \sum_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => SrcA(23 downto 20),
      O(3 downto 0) => \q_reg[23]\(3 downto 0),
      S(3 downto 0) => \ALUResult[20]_INST_0_i_2\(3 downto 0)
    );
\sum_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum_carry__4_n_0\,
      CO(3) => \sum_carry__5_n_0\,
      CO(2) => \sum_carry__5_n_1\,
      CO(1) => \sum_carry__5_n_2\,
      CO(0) => \sum_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => SrcA(27 downto 24),
      O(3 downto 0) => \q_reg[27]\(3 downto 0),
      S(3 downto 0) => \ALUResult[24]_INST_0_i_4\(3 downto 0)
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
      DI(2 downto 0) => SrcA(30 downto 28),
      O(3 downto 0) => \^q_reg[30]\(3 downto 0),
      S(3 downto 0) => \ALUResult[28]_INST_0_i_5\(3 downto 0)
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
\y_carry__1_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEE222E2"
    )
        port map (
      I0 => Instr(19),
      I1 => sel0(1),
      I2 => Instr(5),
      I3 => sel0(0),
      I4 => Instr(14),
      I5 => \^q_reg[5]_0\,
      O => \q_reg[5]\
    );
y_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Instr(0),
      I1 => Instr(4),
      O => \^q_reg[5]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_flopenr is
  port (
    DI : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[7]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[11]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[15]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[19]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[23]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[27]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[30]_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \q_reg[31]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    wd3 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[28]_0\ : out STD_LOGIC_VECTOR ( 10 downto 0 );
    \q_reg[0]_0\ : out STD_LOGIC;
    \ALUResult[31]_INST_0_i_10_0\ : out STD_LOGIC;
    \ALUResult[31]_INST_0_i_12_0\ : out STD_LOGIC;
    SrcA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ALUControl : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \q_reg[10]_0\ : out STD_LOGIC;
    \ALUResult[17]_INST_0_i_2_0\ : out STD_LOGIC;
    \ALUResult[17]_INST_0_i_6\ : out STD_LOGIC;
    \result0__33\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ALUControl__0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \q_reg[11]_1\ : out STD_LOGIC;
    \ALUResult[18]_INST_0_i_6\ : out STD_LOGIC;
    \ALUResult[19]_INST_0_i_6\ : out STD_LOGIC;
    \ALUResult[20]_INST_0_i_1\ : out STD_LOGIC;
    \ALUResult[31]_INST_0_i_12_1\ : out STD_LOGIC;
    \ALUResult[1]_INST_0_i_4\ : out STD_LOGIC;
    \ALUResult[23]_INST_0_i_5\ : out STD_LOGIC;
    \ALUResult[22]_INST_0_i_13_0\ : out STD_LOGIC;
    \ALUResult[24]_INST_0_i_5\ : out STD_LOGIC;
    \ALUResult[25]_INST_0_i_5\ : out STD_LOGIC;
    \ALUResult[26]_INST_0_i_5\ : out STD_LOGIC;
    \ALUResult[27]_INST_0_i_5\ : out STD_LOGIC;
    \ALUResult[31]_INST_0_i_19_0\ : out STD_LOGIC;
    \q_reg[31]_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ALUResult[11]_INST_0_i_25_0\ : out STD_LOGIC;
    \ALUResult[9]_INST_0_i_10_0\ : out STD_LOGIC;
    \ALUResult[8]_INST_0_i_10_0\ : out STD_LOGIC;
    \ALUResult[3]_INST_0_i_12_0\ : out STD_LOGIC;
    \ALUResult[2]_INST_0_i_12_0\ : out STD_LOGIC;
    \ALUResult[1]_INST_0_i_12_0\ : out STD_LOGIC;
    \q_reg[31]_2\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    S : out STD_LOGIC_VECTOR ( 0 to 0 );
    \q_reg[29]_0\ : out STD_LOGIC;
    \q_reg[25]_0\ : out STD_LOGIC;
    \q_reg[27]_1\ : out STD_LOGIC;
    \q_reg[25]_1\ : out STD_LOGIC;
    \q_reg[23]_1\ : out STD_LOGIC;
    \q_reg[21]_0\ : out STD_LOGIC;
    \q_reg[28]_1\ : out STD_LOGIC;
    \q_reg[26]_0\ : out STD_LOGIC;
    \q_reg[26]_1\ : out STD_LOGIC;
    data7 : out STD_LOGIC_VECTOR ( 6 downto 0 );
    \ALUResult[31]_INST_0_i_21_0\ : out STD_LOGIC;
    data5 : out STD_LOGIC_VECTOR ( 0 to 0 );
    \q_reg[30]_1\ : out STD_LOGIC;
    \q_reg[28]_2\ : out STD_LOGIC;
    \q_reg[29]_1\ : out STD_LOGIC;
    \q_reg[27]_2\ : out STD_LOGIC;
    \q_reg[7]_1\ : out STD_LOGIC;
    \q_reg[9]_0\ : out STD_LOGIC;
    \q_reg[13]_0\ : out STD_LOGIC;
    \q_reg[15]_1\ : out STD_LOGIC;
    \q_reg[1]_0\ : out STD_LOGIC;
    \q_reg[3]_0\ : out STD_LOGIC;
    \q_reg[30]_2\ : out STD_LOGIC;
    \ALUResult[23]_INST_0_i_12_0\ : out STD_LOGIC;
    \q_reg[30]_3\ : out STD_LOGIC;
    \q_reg[31]_3\ : out STD_LOGIC;
    \ALUResult[20]_INST_0_i_14_0\ : out STD_LOGIC;
    \q_reg[26]_2\ : out STD_LOGIC;
    \q_reg[24]_0\ : out STD_LOGIC;
    \ALUResult[21]_INST_0_i_14_0\ : out STD_LOGIC;
    \q_reg[27]_3\ : out STD_LOGIC;
    \q_reg[25]_2\ : out STD_LOGIC;
    \q_reg[5]_0\ : out STD_LOGIC;
    \q_reg[5]_1\ : out STD_LOGIC;
    \q_reg[4]_0\ : out STD_LOGIC;
    \q_reg[5]_2\ : out STD_LOGIC;
    \q_reg[5]_3\ : out STD_LOGIC;
    \q_reg[5]_4\ : out STD_LOGIC;
    \q_reg[5]_5\ : out STD_LOGIC;
    \q_reg[5]_6\ : out STD_LOGIC;
    \q_reg[5]_7\ : out STD_LOGIC;
    \q_reg[5]_8\ : out STD_LOGIC;
    \q_reg[5]_9\ : out STD_LOGIC;
    \q_reg[3]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[7]_2\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[11]_2\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[15]_2\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[19]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[23]_2\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[27]_4\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[2]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \q_reg[7]_3\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \q_reg[10]_1\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \q_reg[30]_4\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \q_reg[31]_4\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \q_reg[5]_10\ : out STD_LOGIC;
    PCReady : in STD_LOGIC;
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    \q_reg[31]_5\ : in STD_LOGIC_VECTOR ( 20 downto 0 );
    Instr : in STD_LOGIC_VECTOR ( 29 downto 0 );
    Jump : in STD_LOGIC;
    ReadData : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ALUResult : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[0]_1\ : in STD_LOGIC;
    \q[0]_i_3_0\ : in STD_LOGIC;
    \q[0]_i_3_1\ : in STD_LOGIC;
    O : in STD_LOGIC_VECTOR ( 0 to 0 );
    SrcB : in STD_LOGIC_VECTOR ( 14 downto 0 );
    \addressM[4]\ : in STD_LOGIC;
    \addressM[7]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \addressM[5]\ : in STD_LOGIC;
    \addressM[6]\ : in STD_LOGIC;
    \addressM[7]_0\ : in STD_LOGIC;
    \q[0]_i_3_2\ : in STD_LOGIC;
    \q[0]_i_3_3\ : in STD_LOGIC;
    \addressM[10]\ : in STD_LOGIC;
    \addressM[11]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \addressM[12]\ : in STD_LOGIC;
    \addressM[15]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \addressM[13]\ : in STD_LOGIC;
    \addressM[14]\ : in STD_LOGIC;
    \addressM[15]_0\ : in STD_LOGIC;
    \q[0]_i_7\ : in STD_LOGIC;
    \addressM[16]\ : in STD_LOGIC;
    \addressM[28]\ : in STD_LOGIC;
    \addressM[28]_0\ : in STD_LOGIC;
    \rf_reg_r2_0_31_30_31__0\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    \ALUResult[0]_INST_0_i_2\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \xorOut__31\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \ALUResult[19]_INST_0_i_2_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \ALUResult[10]_INST_0_i_1_0\ : in STD_LOGIC;
    \addressM[16]_0\ : in STD_LOGIC;
    \addressM[17]\ : in STD_LOGIC;
    \addressM[18]\ : in STD_LOGIC;
    \addressM[19]\ : in STD_LOGIC;
    \q[0]_i_17\ : in STD_LOGIC;
    \ALUResult[23]_INST_0_i_1_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \addressM[23]\ : in STD_LOGIC;
    \addressM[24]\ : in STD_LOGIC;
    \ALUResult[27]_INST_0_i_1_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \addressM[25]\ : in STD_LOGIC;
    \addressM[26]\ : in STD_LOGIC;
    \addressM[27]\ : in STD_LOGIC;
    \addressM[28]_1\ : in STD_LOGIC;
    ALUSrc : in STD_LOGIC_VECTOR ( 0 to 0 );
    rd21 : in STD_LOGIC;
    rd20 : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \ALUResult[16]_INST_0_i_4_0\ : in STD_LOGIC;
    \ALUResult[12]_INST_0_i_3_0\ : in STD_LOGIC;
    \ALUResult[17]_INST_0_i_7\ : in STD_LOGIC;
    rd11 : in STD_LOGIC;
    rd10 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    d0 : in STD_LOGIC_VECTOR ( 10 downto 0 );
    \carried_carry__1\ : in STD_LOGIC;
    sel0 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \y_carry__1\ : in STD_LOGIC;
    \ALUResult[10]_INST_0_i_2\ : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_flopenr;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_flopenr is
  signal \^alucontrol\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^alucontrol__0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \ALUResult[0]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \ALUResult[0]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \ALUResult[0]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \ALUResult[0]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \ALUResult[0]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \ALUResult[0]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \ALUResult[10]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \ALUResult[10]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \ALUResult[10]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \ALUResult[10]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult[10]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \ALUResult[10]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \ALUResult[11]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \ALUResult[11]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \ALUResult[11]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \ALUResult[11]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \ALUResult[11]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \ALUResult[11]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \ALUResult[11]_INST_0_i_18_n_0\ : STD_LOGIC;
  signal \ALUResult[11]_INST_0_i_19_n_0\ : STD_LOGIC;
  signal \ALUResult[11]_INST_0_i_20_n_0\ : STD_LOGIC;
  signal \ALUResult[11]_INST_0_i_22_n_0\ : STD_LOGIC;
  signal \ALUResult[11]_INST_0_i_23_n_0\ : STD_LOGIC;
  signal \ALUResult[11]_INST_0_i_24_n_0\ : STD_LOGIC;
  signal \^aluresult[11]_inst_0_i_25_0\ : STD_LOGIC;
  signal \ALUResult[11]_INST_0_i_28_n_0\ : STD_LOGIC;
  signal \ALUResult[11]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \ALUResult[11]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \ALUResult[12]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \ALUResult[12]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult[12]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \ALUResult[13]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \ALUResult[13]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult[13]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \ALUResult[13]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \ALUResult[13]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \ALUResult[14]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \ALUResult[14]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \ALUResult[14]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \ALUResult[14]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \ALUResult[14]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult[14]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \ALUResult[14]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \ALUResult[14]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \ALUResult[15]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \ALUResult[15]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \ALUResult[15]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \ALUResult[15]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \ALUResult[15]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \ALUResult[15]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult[15]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \ALUResult[15]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \ALUResult[15]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \ALUResult[16]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \ALUResult[16]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \ALUResult[16]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \ALUResult[16]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \ALUResult[16]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ALUResult[16]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \ALUResult[16]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \ALUResult[16]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \ALUResult[16]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \ALUResult[17]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \ALUResult[17]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \^aluresult[17]_inst_0_i_6\ : STD_LOGIC;
  signal \ALUResult[17]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \ALUResult[18]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \ALUResult[18]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \ALUResult[18]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \ALUResult[18]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \ALUResult[19]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \ALUResult[19]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \ALUResult[19]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \ALUResult[1]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \ALUResult[1]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \^aluresult[1]_inst_0_i_4\ : STD_LOGIC;
  signal \ALUResult[20]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \ALUResult[20]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \ALUResult[21]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \ALUResult[22]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \ALUResult[22]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \ALUResult[22]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \^aluresult[22]_inst_0_i_13_0\ : STD_LOGIC;
  signal \ALUResult[22]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \ALUResult[23]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \ALUResult[24]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \ALUResult[24]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \ALUResult[25]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \ALUResult[25]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \ALUResult[26]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \ALUResult[26]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \ALUResult[26]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \ALUResult[27]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \ALUResult[27]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \ALUResult[28]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \ALUResult[28]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \ALUResult[28]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \ALUResult[2]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \ALUResult[2]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \ALUResult[2]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \^aluresult[31]_inst_0_i_10_0\ : STD_LOGIC;
  signal \^aluresult[31]_inst_0_i_12_0\ : STD_LOGIC;
  signal \^aluresult[31]_inst_0_i_12_1\ : STD_LOGIC;
  signal \ALUResult[31]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \ALUResult[31]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \ALUResult[31]_INST_0_i_17_n_0\ : STD_LOGIC;
  signal \ALUResult[31]_INST_0_i_18_n_0\ : STD_LOGIC;
  signal \^aluresult[31]_inst_0_i_19_0\ : STD_LOGIC;
  signal \ALUResult[31]_INST_0_i_19_n_0\ : STD_LOGIC;
  signal \ALUResult[31]_INST_0_i_20_n_0\ : STD_LOGIC;
  signal \^aluresult[31]_inst_0_i_21_0\ : STD_LOGIC;
  signal \ALUResult[31]_INST_0_i_21_n_0\ : STD_LOGIC;
  signal \ALUResult[31]_INST_0_i_25_n_0\ : STD_LOGIC;
  signal \ALUResult[3]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \ALUResult[3]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \ALUResult[3]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \ALUResult[4]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \ALUResult[4]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \ALUResult[4]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \ALUResult[4]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \ALUResult[4]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult[4]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \ALUResult[5]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \ALUResult[5]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \ALUResult[5]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult[5]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \ALUResult[5]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \ALUResult[5]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \ALUResult[6]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \ALUResult[6]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \ALUResult[6]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult[6]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \ALUResult[6]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \ALUResult[6]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \ALUResult[7]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \ALUResult[7]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \ALUResult[7]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult[7]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \ALUResult[7]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \ALUResult[7]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \ALUResult[8]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \ALUResult[8]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \ALUResult[8]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \ALUResult[8]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \ALUResult[9]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \ALUResult[9]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \ALUResult[9]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \ALUResult[9]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \^di\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^srca\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \c/ALUOp\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \c/BranchControl__7\ : STD_LOGIC;
  signal \c/ad/RtypeSub__0\ : STD_LOGIC;
  signal d1 : STD_LOGIC_VECTOR ( 28 downto 4 );
  signal \q[0]_i_1_n_0\ : STD_LOGIC;
  signal \q[0]_i_4_n_0\ : STD_LOGIC;
  signal \q[0]_i_5_n_0\ : STD_LOGIC;
  signal \q[0]_i_6_n_0\ : STD_LOGIC;
  signal \q[0]_i_8_n_0\ : STD_LOGIC;
  signal \q[0]_i_9_n_0\ : STD_LOGIC;
  signal \q[12]_i_2_n_0\ : STD_LOGIC;
  signal \q[12]_i_3_n_0\ : STD_LOGIC;
  signal \q[12]_i_4_n_0\ : STD_LOGIC;
  signal \q[12]_i_5_n_0\ : STD_LOGIC;
  signal \q[16]_i_2_n_0\ : STD_LOGIC;
  signal \q[16]_i_3_n_0\ : STD_LOGIC;
  signal \q[16]_i_4_n_0\ : STD_LOGIC;
  signal \q[16]_i_5_n_0\ : STD_LOGIC;
  signal \q[20]_i_2_n_0\ : STD_LOGIC;
  signal \q[20]_i_3_n_0\ : STD_LOGIC;
  signal \q[20]_i_4_n_0\ : STD_LOGIC;
  signal \q[20]_i_5_n_0\ : STD_LOGIC;
  signal \q[24]_i_2_n_0\ : STD_LOGIC;
  signal \q[24]_i_3_n_0\ : STD_LOGIC;
  signal \q[24]_i_4_n_0\ : STD_LOGIC;
  signal \q[24]_i_5_n_0\ : STD_LOGIC;
  signal \q[28]_i_2_n_0\ : STD_LOGIC;
  signal \q[28]_i_3_n_0\ : STD_LOGIC;
  signal \q[28]_i_4_n_0\ : STD_LOGIC;
  signal \q[28]_i_5_n_0\ : STD_LOGIC;
  signal \q[31]_i_2_n_0\ : STD_LOGIC;
  signal \q[31]_i_3_n_0\ : STD_LOGIC;
  signal \q[31]_i_4_n_0\ : STD_LOGIC;
  signal \q[4]_i_2_n_0\ : STD_LOGIC;
  signal \q[4]_i_3_n_0\ : STD_LOGIC;
  signal \q[4]_i_4_n_0\ : STD_LOGIC;
  signal \q[4]_i_5_n_0\ : STD_LOGIC;
  signal \q[4]_i_6_n_0\ : STD_LOGIC;
  signal \q[8]_i_2_n_0\ : STD_LOGIC;
  signal \q[8]_i_3_n_0\ : STD_LOGIC;
  signal \q[8]_i_4_n_0\ : STD_LOGIC;
  signal \q[8]_i_5_n_0\ : STD_LOGIC;
  signal \^q_reg[10]_0\ : STD_LOGIC;
  signal \^q_reg[11]_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \q_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \q_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \q_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \q_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \q_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \q_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \q_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \q_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \^q_reg[13]_0\ : STD_LOGIC;
  signal \^q_reg[15]_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^q_reg[15]_1\ : STD_LOGIC;
  signal \q_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \q_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \q_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \q_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \q_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \q_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \q_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \q_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \^q_reg[19]_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^q_reg[1]_0\ : STD_LOGIC;
  signal \q_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \q_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \q_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \q_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \q_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \q_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \q_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \q_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \^q_reg[21]_0\ : STD_LOGIC;
  signal \^q_reg[23]_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^q_reg[23]_1\ : STD_LOGIC;
  signal \^q_reg[24]_0\ : STD_LOGIC;
  signal \q_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \q_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \q_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \q_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \q_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \q_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \q_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \q_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \^q_reg[25]_0\ : STD_LOGIC;
  signal \^q_reg[25]_1\ : STD_LOGIC;
  signal \^q_reg[25]_2\ : STD_LOGIC;
  signal \^q_reg[26]_0\ : STD_LOGIC;
  signal \^q_reg[26]_1\ : STD_LOGIC;
  signal \^q_reg[26]_2\ : STD_LOGIC;
  signal \^q_reg[27]_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^q_reg[27]_1\ : STD_LOGIC;
  signal \^q_reg[27]_2\ : STD_LOGIC;
  signal \^q_reg[27]_3\ : STD_LOGIC;
  signal \^q_reg[28]_0\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \^q_reg[28]_1\ : STD_LOGIC;
  signal \^q_reg[28]_2\ : STD_LOGIC;
  signal \q_reg[28]_i_1_n_0\ : STD_LOGIC;
  signal \q_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \q_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \q_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \q_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \q_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \q_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \q_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \^q_reg[29]_0\ : STD_LOGIC;
  signal \^q_reg[29]_1\ : STD_LOGIC;
  signal \^q_reg[30]_0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^q_reg[30]_1\ : STD_LOGIC;
  signal \^q_reg[30]_2\ : STD_LOGIC;
  signal \^q_reg[30]_3\ : STD_LOGIC;
  signal \^q_reg[31]_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^q_reg[31]_3\ : STD_LOGIC;
  signal \q_reg[31]_i_1_n_2\ : STD_LOGIC;
  signal \q_reg[31]_i_1_n_3\ : STD_LOGIC;
  signal \q_reg[31]_i_1_n_5\ : STD_LOGIC;
  signal \q_reg[31]_i_1_n_6\ : STD_LOGIC;
  signal \q_reg[31]_i_1_n_7\ : STD_LOGIC;
  signal \^q_reg[3]_0\ : STD_LOGIC;
  signal \^q_reg[4]_0\ : STD_LOGIC;
  signal \q_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \q_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \q_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \q_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \q_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \q_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \q_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \q_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \^q_reg[5]_2\ : STD_LOGIC;
  signal \^q_reg[5]_3\ : STD_LOGIC;
  signal \^q_reg[7]_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^q_reg[7]_1\ : STD_LOGIC;
  signal \q_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \q_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \q_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \q_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \q_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \q_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \q_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \q_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \^q_reg[9]_0\ : STD_LOGIC;
  signal \^result0__33\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_q_reg[31]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_q_reg[31]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ALUResult[0]_INST_0_i_10\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \ALUResult[0]_INST_0_i_9\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \ALUResult[10]_INST_0_i_12\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \ALUResult[11]_INST_0_i_19\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \ALUResult[11]_INST_0_i_21\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \ALUResult[11]_INST_0_i_22\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \ALUResult[11]_INST_0_i_23\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \ALUResult[11]_INST_0_i_24\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \ALUResult[11]_INST_0_i_25\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \ALUResult[11]_INST_0_i_26\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \ALUResult[11]_INST_0_i_27\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \ALUResult[13]_INST_0_i_3\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \ALUResult[14]_INST_0_i_12\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \ALUResult[15]_INST_0_i_12\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \ALUResult[15]_INST_0_i_13\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \ALUResult[16]_INST_0_i_12\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \ALUResult[16]_INST_0_i_9\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \ALUResult[17]_INST_0_i_11\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \ALUResult[17]_INST_0_i_8\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \ALUResult[18]_INST_0_i_13\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \ALUResult[18]_INST_0_i_14\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \ALUResult[18]_INST_0_i_9\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \ALUResult[19]_INST_0_i_8\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \ALUResult[20]_INST_0_i_11\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \ALUResult[20]_INST_0_i_5\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \ALUResult[21]_INST_0_i_11\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \ALUResult[22]_INST_0_i_11\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \ALUResult[22]_INST_0_i_13\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \ALUResult[22]_INST_0_i_16\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \ALUResult[22]_INST_0_i_20\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \ALUResult[30]_INST_0_i_11\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \ALUResult[31]_INST_0_i_15\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \ALUResult[31]_INST_0_i_16\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \ALUResult[31]_INST_0_i_17\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \ALUResult[31]_INST_0_i_4\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \ALUResult[31]_INST_0_i_5\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \ALUResult[31]_INST_0_i_6\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \ALUResult[31]_INST_0_i_8\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \ALUResult[8]_INST_0_i_12\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \ALUResult[9]_INST_0_i_12\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \q[0]_i_4\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \q[0]_i_8\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \q[0]_i_9\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \q[16]_i_6\ : label is "soft_lutpair16";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \q_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \q_reg[16]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \q_reg[20]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \q_reg[24]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \q_reg[28]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \q_reg[31]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \q_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \q_reg[8]_i_1\ : label is 11;
begin
  ALUControl(2 downto 0) <= \^alucontrol\(2 downto 0);
  \ALUControl__0\(0) <= \^alucontrol__0\(0);
  \ALUResult[11]_INST_0_i_25_0\ <= \^aluresult[11]_inst_0_i_25_0\;
  \ALUResult[17]_INST_0_i_6\ <= \^aluresult[17]_inst_0_i_6\;
  \ALUResult[1]_INST_0_i_4\ <= \^aluresult[1]_inst_0_i_4\;
  \ALUResult[22]_INST_0_i_13_0\ <= \^aluresult[22]_inst_0_i_13_0\;
  \ALUResult[31]_INST_0_i_10_0\ <= \^aluresult[31]_inst_0_i_10_0\;
  \ALUResult[31]_INST_0_i_12_0\ <= \^aluresult[31]_inst_0_i_12_0\;
  \ALUResult[31]_INST_0_i_12_1\ <= \^aluresult[31]_inst_0_i_12_1\;
  \ALUResult[31]_INST_0_i_19_0\ <= \^aluresult[31]_inst_0_i_19_0\;
  \ALUResult[31]_INST_0_i_21_0\ <= \^aluresult[31]_inst_0_i_21_0\;
  DI(3 downto 0) <= \^di\(3 downto 0);
  SrcA(31 downto 0) <= \^srca\(31 downto 0);
  \q_reg[10]_0\ <= \^q_reg[10]_0\;
  \q_reg[11]_0\(3 downto 0) <= \^q_reg[11]_0\(3 downto 0);
  \q_reg[13]_0\ <= \^q_reg[13]_0\;
  \q_reg[15]_0\(3 downto 0) <= \^q_reg[15]_0\(3 downto 0);
  \q_reg[15]_1\ <= \^q_reg[15]_1\;
  \q_reg[19]_0\(3 downto 0) <= \^q_reg[19]_0\(3 downto 0);
  \q_reg[1]_0\ <= \^q_reg[1]_0\;
  \q_reg[21]_0\ <= \^q_reg[21]_0\;
  \q_reg[23]_0\(3 downto 0) <= \^q_reg[23]_0\(3 downto 0);
  \q_reg[23]_1\ <= \^q_reg[23]_1\;
  \q_reg[24]_0\ <= \^q_reg[24]_0\;
  \q_reg[25]_0\ <= \^q_reg[25]_0\;
  \q_reg[25]_1\ <= \^q_reg[25]_1\;
  \q_reg[25]_2\ <= \^q_reg[25]_2\;
  \q_reg[26]_0\ <= \^q_reg[26]_0\;
  \q_reg[26]_1\ <= \^q_reg[26]_1\;
  \q_reg[26]_2\ <= \^q_reg[26]_2\;
  \q_reg[27]_0\(3 downto 0) <= \^q_reg[27]_0\(3 downto 0);
  \q_reg[27]_1\ <= \^q_reg[27]_1\;
  \q_reg[27]_2\ <= \^q_reg[27]_2\;
  \q_reg[27]_3\ <= \^q_reg[27]_3\;
  \q_reg[28]_0\(10 downto 0) <= \^q_reg[28]_0\(10 downto 0);
  \q_reg[28]_1\ <= \^q_reg[28]_1\;
  \q_reg[28]_2\ <= \^q_reg[28]_2\;
  \q_reg[29]_0\ <= \^q_reg[29]_0\;
  \q_reg[29]_1\ <= \^q_reg[29]_1\;
  \q_reg[30]_0\(2 downto 0) <= \^q_reg[30]_0\(2 downto 0);
  \q_reg[30]_1\ <= \^q_reg[30]_1\;
  \q_reg[30]_2\ <= \^q_reg[30]_2\;
  \q_reg[30]_3\ <= \^q_reg[30]_3\;
  \q_reg[31]_0\(0) <= \^q_reg[31]_0\(0);
  \q_reg[31]_3\ <= \^q_reg[31]_3\;
  \q_reg[3]_0\ <= \^q_reg[3]_0\;
  \q_reg[4]_0\ <= \^q_reg[4]_0\;
  \q_reg[5]_2\ <= \^q_reg[5]_2\;
  \q_reg[5]_3\ <= \^q_reg[5]_3\;
  \q_reg[7]_0\(3 downto 0) <= \^q_reg[7]_0\(3 downto 0);
  \q_reg[7]_1\ <= \^q_reg[7]_1\;
  \q_reg[9]_0\ <= \^q_reg[9]_0\;
  \result0__33\(0) <= \^result0__33\(0);
\ALUResult[0]_INST_0_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ALUResult[4]_INST_0_i_12_n_0\,
      I1 => SrcB(2),
      I2 => \ALUResult[0]_INST_0_i_11_n_0\,
      O => \ALUResult[0]_INST_0_i_10_n_0\
    );
\ALUResult[0]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^srca\(24),
      I1 => \^srca\(8),
      I2 => SrcB(3),
      I3 => \^srca\(16),
      I4 => SrcB(4),
      I5 => \^srca\(0),
      O => \ALUResult[0]_INST_0_i_11_n_0\
    );
\ALUResult[0]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFCFAFC0AFC0A0C0"
    )
        port map (
      I0 => \ALUResult[0]_INST_0_i_6_n_0\,
      I1 => O(0),
      I2 => \^aluresult[31]_inst_0_i_10_0\,
      I3 => \^aluresult[31]_inst_0_i_12_0\,
      I4 => \^srca\(0),
      I5 => SrcB(0),
      O => \q_reg[0]_0\
    );
\ALUResult[0]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFFFBE00080028"
    )
        port map (
      I0 => \^srca\(31),
      I1 => \^alucontrol__0\(0),
      I2 => SrcB(14),
      I3 => \^alucontrol\(0),
      I4 => \^alucontrol\(1),
      I5 => \ALUResult[0]_INST_0_i_2\(1),
      O => \^result0__33\(0)
    );
\ALUResult[0]_INST_0_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALUResult[0]_INST_0_i_7_n_0\,
      I1 => \ALUResult[0]_INST_0_i_8_n_0\,
      O => \ALUResult[0]_INST_0_i_6_n_0\,
      S => \^alucontrol\(0)
    );
\ALUResult[0]_INST_0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8BB8"
    )
        port map (
      I0 => \^result0__33\(0),
      I1 => \^alucontrol__0\(0),
      I2 => SrcB(0),
      I3 => \^srca\(0),
      O => \ALUResult[0]_INST_0_i_7_n_0\
    );
\ALUResult[0]_INST_0_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \ALUResult[1]_INST_0_i_12_n_0\,
      I1 => SrcB(0),
      I2 => \ALUResult[0]_INST_0_i_9_n_0\,
      I3 => SrcB(1),
      I4 => \ALUResult[0]_INST_0_i_10_n_0\,
      O => \ALUResult[0]_INST_0_i_8_n_0\
    );
\ALUResult[0]_INST_0_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ALUResult[6]_INST_0_i_10_n_0\,
      I1 => SrcB(2),
      I2 => \ALUResult[2]_INST_0_i_13_n_0\,
      O => \ALUResult[0]_INST_0_i_9_n_0\
    );
\ALUResult[10]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \^q_reg[10]_0\,
      I1 => \addressM[10]\,
      O => \^q_reg[28]_0\(4),
      S => \^alucontrol\(2)
    );
\ALUResult[10]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFCFAFC0AFC0A0C0"
    )
        port map (
      I0 => \ALUResult[10]_INST_0_i_3_n_0\,
      I1 => \addressM[11]\(0),
      I2 => \^aluresult[31]_inst_0_i_10_0\,
      I3 => \^aluresult[31]_inst_0_i_12_0\,
      I4 => \^srca\(10),
      I5 => SrcB(8),
      O => \^q_reg[10]_0\
    );
\ALUResult[10]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[11]_INST_0_i_23_n_0\,
      I1 => \ALUResult[11]_INST_0_i_24_n_0\,
      I2 => SrcB(1),
      I3 => \ALUResult[11]_INST_0_i_22_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[10]_INST_0_i_12_n_0\,
      O => \ALUResult[10]_INST_0_i_10_n_0\
    );
\ALUResult[10]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^srca\(31),
      I1 => \^srca\(18),
      I2 => SrcB(3),
      I3 => \^srca\(26),
      I4 => SrcB(4),
      I5 => \^srca\(10),
      O => \ALUResult[10]_INST_0_i_11_n_0\
    );
\ALUResult[10]_INST_0_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^srca\(18),
      I1 => SrcB(3),
      I2 => \^srca\(26),
      I3 => SrcB(4),
      I4 => \^srca\(10),
      O => \ALUResult[10]_INST_0_i_12_n_0\
    );
\ALUResult[10]_INST_0_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALUResult[10]_INST_0_i_1_0\,
      I1 => \ALUResult[10]_INST_0_i_7_n_0\,
      O => \ALUResult[10]_INST_0_i_3_n_0\,
      S => \^alucontrol\(0)
    );
\ALUResult[10]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF33CC00B8B8B8B8"
    )
        port map (
      I0 => \^q_reg[4]_0\,
      I1 => SrcB(1),
      I2 => \ALUResult[13]_INST_0_i_8_n_0\,
      I3 => \ALUResult[10]_INST_0_i_2\,
      I4 => \^q_reg[5]_2\,
      I5 => SrcB(0),
      O => data7(0)
    );
\ALUResult[10]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[11]_INST_0_i_10_n_0\,
      I1 => \ALUResult[10]_INST_0_i_9_n_0\,
      I2 => \^alucontrol__0\(0),
      I3 => \ALUResult[11]_INST_0_i_12_n_0\,
      I4 => SrcB(0),
      I5 => \ALUResult[10]_INST_0_i_10_n_0\,
      O => \ALUResult[10]_INST_0_i_7_n_0\
    );
\ALUResult[10]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[11]_INST_0_i_15_n_0\,
      I1 => \ALUResult[11]_INST_0_i_16_n_0\,
      I2 => SrcB(1),
      I3 => \ALUResult[11]_INST_0_i_14_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[10]_INST_0_i_11_n_0\,
      O => \ALUResult[10]_INST_0_i_9_n_0\
    );
\ALUResult[11]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^q_reg[25]_0\,
      I1 => \ALUResult[11]_INST_0_i_18_n_0\,
      I2 => SrcB(1),
      I3 => \ALUResult[11]_INST_0_i_19_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[11]_INST_0_i_20_n_0\,
      O => \ALUResult[11]_INST_0_i_10_n_0\
    );
\ALUResult[11]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^q_reg[26]_1\,
      I1 => \ALUResult[11]_INST_0_i_22_n_0\,
      I2 => SrcB(1),
      I3 => \ALUResult[11]_INST_0_i_23_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[11]_INST_0_i_24_n_0\,
      O => \ALUResult[11]_INST_0_i_11_n_0\
    );
\ALUResult[11]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^q_reg[25]_1\,
      I1 => \^q_reg[21]_0\,
      I2 => SrcB(1),
      I3 => \^q_reg[23]_1\,
      I4 => SrcB(2),
      I5 => \ALUResult[11]_INST_0_i_28_n_0\,
      O => \ALUResult[11]_INST_0_i_12_n_0\
    );
\ALUResult[11]_INST_0_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0BBF088"
    )
        port map (
      I0 => \^srca\(26),
      I1 => SrcB(3),
      I2 => \^srca\(31),
      I3 => SrcB(4),
      I4 => \^srca\(18),
      O => \^q_reg[26]_0\
    );
\ALUResult[11]_INST_0_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^srca\(31),
      I1 => \^srca\(22),
      I2 => SrcB(3),
      I3 => \^srca\(30),
      I4 => SrcB(4),
      I5 => \^srca\(14),
      O => \ALUResult[11]_INST_0_i_14_n_0\
    );
\ALUResult[11]_INST_0_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0BBF088"
    )
        port map (
      I0 => \^srca\(24),
      I1 => SrcB(3),
      I2 => \^srca\(31),
      I3 => SrcB(4),
      I4 => \^srca\(16),
      O => \ALUResult[11]_INST_0_i_15_n_0\
    );
\ALUResult[11]_INST_0_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^srca\(31),
      I1 => \^srca\(20),
      I2 => SrcB(3),
      I3 => \^srca\(28),
      I4 => SrcB(4),
      I5 => \^srca\(12),
      O => \ALUResult[11]_INST_0_i_16_n_0\
    );
\ALUResult[11]_INST_0_i_17\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0BBF088"
    )
        port map (
      I0 => \^srca\(25),
      I1 => SrcB(3),
      I2 => \^srca\(31),
      I3 => SrcB(4),
      I4 => \^srca\(17),
      O => \^q_reg[25]_0\
    );
\ALUResult[11]_INST_0_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^srca\(31),
      I1 => \^srca\(21),
      I2 => SrcB(3),
      I3 => \^srca\(29),
      I4 => SrcB(4),
      I5 => \^srca\(13),
      O => \ALUResult[11]_INST_0_i_18_n_0\
    );
\ALUResult[11]_INST_0_i_19\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0BBF088"
    )
        port map (
      I0 => \^srca\(23),
      I1 => SrcB(3),
      I2 => \^srca\(31),
      I3 => SrcB(4),
      I4 => \^srca\(15),
      O => \ALUResult[11]_INST_0_i_19_n_0\
    );
\ALUResult[11]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88B8FFFF88B80000"
    )
        port map (
      I0 => \ALUResult[11]_INST_0_i_6_n_0\,
      I1 => \^alucontrol\(0),
      I2 => \xorOut__31\(0),
      I3 => \^alucontrol__0\(0),
      I4 => \^aluresult[31]_inst_0_i_12_0\,
      I5 => \addressM[11]\(1),
      O => \q_reg[11]_1\
    );
\ALUResult[11]_INST_0_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^srca\(31),
      I1 => \^srca\(19),
      I2 => SrcB(3),
      I3 => \^srca\(27),
      I4 => SrcB(4),
      I5 => \^srca\(11),
      O => \ALUResult[11]_INST_0_i_20_n_0\
    );
\ALUResult[11]_INST_0_i_21\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => \^srca\(26),
      I1 => SrcB(3),
      I2 => \^srca\(18),
      I3 => SrcB(4),
      O => \^q_reg[26]_1\
    );
\ALUResult[11]_INST_0_i_22\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^srca\(22),
      I1 => SrcB(3),
      I2 => \^srca\(30),
      I3 => SrcB(4),
      I4 => \^srca\(14),
      O => \ALUResult[11]_INST_0_i_22_n_0\
    );
\ALUResult[11]_INST_0_i_23\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => \^srca\(24),
      I1 => SrcB(3),
      I2 => \^srca\(16),
      I3 => SrcB(4),
      O => \ALUResult[11]_INST_0_i_23_n_0\
    );
\ALUResult[11]_INST_0_i_24\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^srca\(20),
      I1 => SrcB(3),
      I2 => \^srca\(28),
      I3 => SrcB(4),
      I4 => \^srca\(12),
      O => \ALUResult[11]_INST_0_i_24_n_0\
    );
\ALUResult[11]_INST_0_i_25\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => \^srca\(25),
      I1 => SrcB(3),
      I2 => \^srca\(17),
      I3 => SrcB(4),
      O => \^q_reg[25]_1\
    );
\ALUResult[11]_INST_0_i_26\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^srca\(21),
      I1 => SrcB(3),
      I2 => \^srca\(29),
      I3 => SrcB(4),
      I4 => \^srca\(13),
      O => \^q_reg[21]_0\
    );
\ALUResult[11]_INST_0_i_27\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^srca\(23),
      I1 => SrcB(3),
      I2 => \^srca\(31),
      I3 => SrcB(4),
      I4 => \^srca\(15),
      O => \^q_reg[23]_1\
    );
\ALUResult[11]_INST_0_i_28\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^srca\(19),
      I1 => SrcB(3),
      I2 => \^srca\(27),
      I3 => SrcB(4),
      I4 => \^srca\(11),
      O => \ALUResult[11]_INST_0_i_28_n_0\
    );
\ALUResult[11]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF33CC00B8B8B8B8"
    )
        port map (
      I0 => \^q_reg[5]_2\,
      I1 => SrcB(1),
      I2 => \ALUResult[14]_INST_0_i_8_n_0\,
      I3 => \^q_reg[4]_0\,
      I4 => \ALUResult[13]_INST_0_i_8_n_0\,
      I5 => SrcB(0),
      O => data7(1)
    );
\ALUResult[11]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[11]_INST_0_i_9_n_0\,
      I1 => \ALUResult[11]_INST_0_i_10_n_0\,
      I2 => \^alucontrol__0\(0),
      I3 => \ALUResult[11]_INST_0_i_11_n_0\,
      I4 => SrcB(0),
      I5 => \ALUResult[11]_INST_0_i_12_n_0\,
      O => \ALUResult[11]_INST_0_i_6_n_0\
    );
\ALUResult[11]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000030BB3088"
    )
        port map (
      I0 => \^srca\(4),
      I1 => SrcB(2),
      I2 => \^srca\(0),
      I3 => SrcB(3),
      I4 => \^srca\(8),
      I5 => SrcB(4),
      O => \^q_reg[4]_0\
    );
\ALUResult[11]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^q_reg[26]_0\,
      I1 => \ALUResult[11]_INST_0_i_14_n_0\,
      I2 => SrcB(1),
      I3 => \ALUResult[11]_INST_0_i_15_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[11]_INST_0_i_16_n_0\,
      O => \ALUResult[11]_INST_0_i_9_n_0\
    );
\ALUResult[12]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALUResult[12]_INST_0_i_1_n_0\,
      I1 => \addressM[12]\,
      O => \^q_reg[28]_0\(5),
      S => \^alucontrol\(2)
    );
\ALUResult[12]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFCFAFC0AFC0A0C0"
    )
        port map (
      I0 => \ALUResult[12]_INST_0_i_3_n_0\,
      I1 => \addressM[15]\(0),
      I2 => \^aluresult[31]_inst_0_i_10_0\,
      I3 => \^aluresult[31]_inst_0_i_12_0\,
      I4 => \^srca\(12),
      I5 => SrcB(9),
      O => \ALUResult[12]_INST_0_i_1_n_0\
    );
\ALUResult[12]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88888BB8"
    )
        port map (
      I0 => \ALUResult[12]_INST_0_i_6_n_0\,
      I1 => \^alucontrol\(0),
      I2 => \^srca\(12),
      I3 => SrcB(9),
      I4 => \^alucontrol__0\(0),
      O => \ALUResult[12]_INST_0_i_3_n_0\
    );
\ALUResult[12]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF33CC00B8B8B8B8"
    )
        port map (
      I0 => \ALUResult[13]_INST_0_i_8_n_0\,
      I1 => SrcB(1),
      I2 => \ALUResult[15]_INST_0_i_8_n_0\,
      I3 => \^q_reg[5]_2\,
      I4 => \ALUResult[14]_INST_0_i_8_n_0\,
      I5 => SrcB(0),
      O => data7(2)
    );
\ALUResult[12]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[13]_INST_0_i_9_n_0\,
      I1 => \ALUResult[11]_INST_0_i_9_n_0\,
      I2 => \^alucontrol__0\(0),
      I3 => \ALUResult[12]_INST_0_i_3_0\,
      I4 => SrcB(0),
      I5 => \ALUResult[11]_INST_0_i_11_n_0\,
      O => \ALUResult[12]_INST_0_i_6_n_0\
    );
\ALUResult[12]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000030BB3088"
    )
        port map (
      I0 => \^srca\(5),
      I1 => SrcB(2),
      I2 => \^srca\(1),
      I3 => SrcB(3),
      I4 => \^srca\(9),
      I5 => SrcB(4),
      O => \^q_reg[5]_2\
    );
\ALUResult[13]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALUResult[13]_INST_0_i_1_n_0\,
      I1 => \addressM[13]\,
      O => \^q_reg[28]_0\(6),
      S => \^alucontrol\(2)
    );
\ALUResult[13]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFCFAFC0AFC0A0C0"
    )
        port map (
      I0 => \ALUResult[13]_INST_0_i_3_n_0\,
      I1 => \addressM[15]\(1),
      I2 => \^aluresult[31]_inst_0_i_10_0\,
      I3 => \^aluresult[31]_inst_0_i_12_0\,
      I4 => \^srca\(13),
      I5 => SrcB(10),
      O => \ALUResult[13]_INST_0_i_1_n_0\
    );
\ALUResult[13]_INST_0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88B8"
    )
        port map (
      I0 => \ALUResult[13]_INST_0_i_6_n_0\,
      I1 => \^alucontrol\(0),
      I2 => \xorOut__31\(1),
      I3 => \^alucontrol__0\(0),
      O => \ALUResult[13]_INST_0_i_3_n_0\
    );
\ALUResult[13]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF33CC00B8B8B8B8"
    )
        port map (
      I0 => \ALUResult[14]_INST_0_i_8_n_0\,
      I1 => SrcB(1),
      I2 => \ALUResult[14]_INST_0_i_9_n_0\,
      I3 => \ALUResult[13]_INST_0_i_8_n_0\,
      I4 => \ALUResult[15]_INST_0_i_8_n_0\,
      I5 => SrcB(0),
      O => data7(3)
    );
\ALUResult[13]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[14]_INST_0_i_10_n_0\,
      I1 => \ALUResult[13]_INST_0_i_9_n_0\,
      I2 => \^alucontrol__0\(0),
      I3 => \ALUResult[14]_INST_0_i_11_n_0\,
      I4 => SrcB(0),
      I5 => \ALUResult[12]_INST_0_i_3_0\,
      O => \ALUResult[13]_INST_0_i_6_n_0\
    );
\ALUResult[13]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000030BB3088"
    )
        port map (
      I0 => \^srca\(6),
      I1 => SrcB(2),
      I2 => \^srca\(2),
      I3 => SrcB(3),
      I4 => \^srca\(10),
      I5 => SrcB(4),
      O => \ALUResult[13]_INST_0_i_8_n_0\
    );
\ALUResult[13]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^q_reg[27]_1\,
      I1 => \ALUResult[11]_INST_0_i_19_n_0\,
      I2 => SrcB(1),
      I3 => \^q_reg[25]_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[11]_INST_0_i_18_n_0\,
      O => \ALUResult[13]_INST_0_i_9_n_0\
    );
\ALUResult[14]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALUResult[14]_INST_0_i_1_n_0\,
      I1 => \addressM[14]\,
      O => \^q_reg[28]_0\(7),
      S => \^alucontrol\(2)
    );
\ALUResult[14]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFCFAFC0AFC0A0C0"
    )
        port map (
      I0 => \ALUResult[14]_INST_0_i_3_n_0\,
      I1 => \addressM[15]\(2),
      I2 => \^aluresult[31]_inst_0_i_10_0\,
      I3 => \^aluresult[31]_inst_0_i_12_0\,
      I4 => \^srca\(14),
      I5 => SrcB(11),
      O => \ALUResult[14]_INST_0_i_1_n_0\
    );
\ALUResult[14]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^q_reg[28]_1\,
      I1 => \ALUResult[11]_INST_0_i_15_n_0\,
      I2 => SrcB(1),
      I3 => \^q_reg[26]_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[11]_INST_0_i_14_n_0\,
      O => \ALUResult[14]_INST_0_i_10_n_0\
    );
\ALUResult[14]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[16]_INST_0_i_12_n_0\,
      I1 => \ALUResult[11]_INST_0_i_23_n_0\,
      I2 => SrcB(1),
      I3 => \^q_reg[26]_1\,
      I4 => SrcB(2),
      I5 => \ALUResult[11]_INST_0_i_22_n_0\,
      O => \ALUResult[14]_INST_0_i_11_n_0\
    );
\ALUResult[14]_INST_0_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => \^srca\(5),
      I1 => SrcB(3),
      I2 => \^srca\(13),
      I3 => SrcB(4),
      O => \ALUResult[14]_INST_0_i_12_n_0\
    );
\ALUResult[14]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88888BB8"
    )
        port map (
      I0 => \ALUResult[14]_INST_0_i_6_n_0\,
      I1 => \^alucontrol\(0),
      I2 => \^srca\(14),
      I3 => SrcB(11),
      I4 => \^alucontrol__0\(0),
      O => \ALUResult[14]_INST_0_i_3_n_0\
    );
\ALUResult[14]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF33CC00B8B8B8B8"
    )
        port map (
      I0 => \ALUResult[15]_INST_0_i_8_n_0\,
      I1 => SrcB(1),
      I2 => \ALUResult[15]_INST_0_i_9_n_0\,
      I3 => \ALUResult[14]_INST_0_i_8_n_0\,
      I4 => \ALUResult[14]_INST_0_i_9_n_0\,
      I5 => SrcB(0),
      O => data7(4)
    );
\ALUResult[14]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[15]_INST_0_i_10_n_0\,
      I1 => \ALUResult[14]_INST_0_i_10_n_0\,
      I2 => \^alucontrol__0\(0),
      I3 => \ALUResult[15]_INST_0_i_11_n_0\,
      I4 => SrcB(0),
      I5 => \ALUResult[14]_INST_0_i_11_n_0\,
      O => \ALUResult[14]_INST_0_i_6_n_0\
    );
\ALUResult[14]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000030BB3088"
    )
        port map (
      I0 => \^srca\(7),
      I1 => SrcB(2),
      I2 => \^srca\(3),
      I3 => SrcB(3),
      I4 => \^srca\(11),
      I5 => SrcB(4),
      O => \ALUResult[14]_INST_0_i_8_n_0\
    );
\ALUResult[14]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00B8FFFF00B80000"
    )
        port map (
      I0 => \^srca\(1),
      I1 => SrcB(3),
      I2 => \^srca\(9),
      I3 => SrcB(4),
      I4 => SrcB(2),
      I5 => \ALUResult[14]_INST_0_i_12_n_0\,
      O => \ALUResult[14]_INST_0_i_9_n_0\
    );
\ALUResult[15]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALUResult[15]_INST_0_i_1_n_0\,
      I1 => \addressM[15]_0\,
      O => \^q_reg[28]_0\(8),
      S => \^alucontrol\(2)
    );
\ALUResult[15]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFCFAFC0AFC0A0C0"
    )
        port map (
      I0 => \ALUResult[15]_INST_0_i_3_n_0\,
      I1 => \addressM[15]\(3),
      I2 => \^aluresult[31]_inst_0_i_10_0\,
      I3 => \^aluresult[31]_inst_0_i_12_0\,
      I4 => \^srca\(15),
      I5 => SrcB(12),
      O => \ALUResult[15]_INST_0_i_1_n_0\
    );
\ALUResult[15]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^q_reg[29]_0\,
      I1 => \^q_reg[25]_0\,
      I2 => SrcB(1),
      I3 => \^q_reg[27]_1\,
      I4 => SrcB(2),
      I5 => \ALUResult[11]_INST_0_i_19_n_0\,
      O => \ALUResult[15]_INST_0_i_10_n_0\
    );
\ALUResult[15]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[17]_INST_0_i_11_n_0\,
      I1 => \^q_reg[25]_1\,
      I2 => SrcB(1),
      I3 => \ALUResult[17]_INST_0_i_7\,
      I4 => SrcB(2),
      I5 => \^q_reg[23]_1\,
      O => \ALUResult[15]_INST_0_i_11_n_0\
    );
\ALUResult[15]_INST_0_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => \^srca\(4),
      I1 => SrcB(3),
      I2 => \^srca\(12),
      I3 => SrcB(4),
      O => \ALUResult[15]_INST_0_i_12_n_0\
    );
\ALUResult[15]_INST_0_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => \^srca\(6),
      I1 => SrcB(3),
      I2 => \^srca\(14),
      I3 => SrcB(4),
      O => \ALUResult[15]_INST_0_i_13_n_0\
    );
\ALUResult[15]_INST_0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88B8"
    )
        port map (
      I0 => \ALUResult[15]_INST_0_i_6_n_0\,
      I1 => \^alucontrol\(0),
      I2 => \xorOut__31\(2),
      I3 => \^alucontrol__0\(0),
      O => \ALUResult[15]_INST_0_i_3_n_0\
    );
\ALUResult[15]_INST_0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \ALUResult[15]_INST_0_i_8_n_0\,
      I1 => SrcB(1),
      I2 => \ALUResult[15]_INST_0_i_9_n_0\,
      I3 => SrcB(0),
      I4 => \ALUResult[16]_INST_0_i_9_n_0\,
      O => data7(5)
    );
\ALUResult[15]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[16]_INST_0_i_10_n_0\,
      I1 => \ALUResult[15]_INST_0_i_10_n_0\,
      I2 => \^alucontrol__0\(0),
      I3 => \ALUResult[16]_INST_0_i_11_n_0\,
      I4 => SrcB(0),
      I5 => \ALUResult[15]_INST_0_i_11_n_0\,
      O => \ALUResult[15]_INST_0_i_6_n_0\
    );
\ALUResult[15]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00B8FFFF00B80000"
    )
        port map (
      I0 => \^srca\(0),
      I1 => SrcB(3),
      I2 => \^srca\(8),
      I3 => SrcB(4),
      I4 => SrcB(2),
      I5 => \ALUResult[15]_INST_0_i_12_n_0\,
      O => \ALUResult[15]_INST_0_i_8_n_0\
    );
\ALUResult[15]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00B8FFFF00B80000"
    )
        port map (
      I0 => \^srca\(2),
      I1 => SrcB(3),
      I2 => \^srca\(10),
      I3 => SrcB(4),
      I4 => SrcB(2),
      I5 => \ALUResult[15]_INST_0_i_13_n_0\,
      O => \ALUResult[15]_INST_0_i_9_n_0\
    );
\ALUResult[16]_INST_0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \ALUResult[16]_INST_0_i_1_n_0\,
      I1 => \ALUResult[16]_INST_0_i_2_n_0\,
      O => \^q_reg[28]_0\(9),
      S => \^alucontrol\(2)
    );
\ALUResult[16]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \addressM[16]\,
      I1 => \ALUResult[16]_INST_0_i_4_n_0\,
      O => \ALUResult[16]_INST_0_i_1_n_0\,
      S => \^aluresult[31]_inst_0_i_10_0\
    );
\ALUResult[16]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^q_reg[30]_2\,
      I1 => \^q_reg[26]_0\,
      I2 => SrcB(1),
      I3 => \^q_reg[28]_1\,
      I4 => SrcB(2),
      I5 => \ALUResult[11]_INST_0_i_15_n_0\,
      O => \ALUResult[16]_INST_0_i_10_n_0\
    );
\ALUResult[16]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^q_reg[30]_3\,
      I1 => \^q_reg[26]_1\,
      I2 => SrcB(1),
      I3 => \ALUResult[16]_INST_0_i_12_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[11]_INST_0_i_23_n_0\,
      O => \ALUResult[16]_INST_0_i_11_n_0\
    );
\ALUResult[16]_INST_0_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => \^srca\(28),
      I1 => SrcB(3),
      I2 => \^srca\(20),
      I3 => SrcB(4),
      O => \ALUResult[16]_INST_0_i_12_n_0\
    );
\ALUResult[16]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALUResult[16]_INST_0_i_5_n_0\,
      I1 => \addressM[16]_0\,
      O => \ALUResult[16]_INST_0_i_2_n_0\,
      S => \^alucontrol\(1)
    );
\ALUResult[16]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88B8FFFF88B80000"
    )
        port map (
      I0 => \ALUResult[16]_INST_0_i_7_n_0\,
      I1 => \^alucontrol\(0),
      I2 => \xorOut__31\(3),
      I3 => \^alucontrol__0\(0),
      I4 => \^aluresult[31]_inst_0_i_12_0\,
      I5 => \ALUResult[19]_INST_0_i_2_0\(0),
      O => \ALUResult[16]_INST_0_i_4_n_0\
    );
\ALUResult[16]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888888FFFCCCFC"
    )
        port map (
      I0 => \ALUResult[19]_INST_0_i_2_0\(0),
      I1 => \^alucontrol\(0),
      I2 => \ALUResult[17]_INST_0_i_8_n_0\,
      I3 => SrcB(0),
      I4 => \ALUResult[16]_INST_0_i_9_n_0\,
      I5 => \^alucontrol__0\(0),
      O => \ALUResult[16]_INST_0_i_5_n_0\
    );
\ALUResult[16]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[16]_INST_0_i_4_0\,
      I1 => \ALUResult[16]_INST_0_i_10_n_0\,
      I2 => \^alucontrol__0\(0),
      I3 => \^aluresult[11]_inst_0_i_25_0\,
      I4 => SrcB(0),
      I5 => \ALUResult[16]_INST_0_i_11_n_0\,
      O => \ALUResult[16]_INST_0_i_7_n_0\
    );
\ALUResult[16]_INST_0_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ALUResult[14]_INST_0_i_9_n_0\,
      I1 => SrcB(1),
      I2 => \ALUResult[18]_INST_0_i_12_n_0\,
      O => \ALUResult[16]_INST_0_i_9_n_0\
    );
\ALUResult[17]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^q_reg[31]_3\,
      I1 => \ALUResult[17]_INST_0_i_7\,
      I2 => SrcB(1),
      I3 => \ALUResult[17]_INST_0_i_11_n_0\,
      I4 => SrcB(2),
      I5 => \^q_reg[25]_1\,
      O => \^aluresult[11]_inst_0_i_25_0\
    );
\ALUResult[17]_INST_0_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => \^srca\(29),
      I1 => SrcB(3),
      I2 => \^srca\(21),
      I3 => SrcB(4),
      O => \ALUResult[17]_INST_0_i_11_n_0\
    );
\ALUResult[17]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALUResult[17]_INST_0_i_5_n_0\,
      I1 => \addressM[17]\,
      O => \^aluresult[17]_inst_0_i_6\,
      S => \^alucontrol\(1)
    );
\ALUResult[17]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888888FFFCCCFC"
    )
        port map (
      I0 => \ALUResult[19]_INST_0_i_2_0\(1),
      I1 => \^alucontrol\(0),
      I2 => \ALUResult[18]_INST_0_i_9_n_0\,
      I3 => SrcB(0),
      I4 => \ALUResult[17]_INST_0_i_8_n_0\,
      I5 => \^alucontrol__0\(0),
      O => \ALUResult[17]_INST_0_i_5_n_0\
    );
\ALUResult[17]_INST_0_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ALUResult[15]_INST_0_i_9_n_0\,
      I1 => SrcB(1),
      I2 => \ALUResult[19]_INST_0_i_11_n_0\,
      O => \ALUResult[17]_INST_0_i_8_n_0\
    );
\ALUResult[18]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00B8FFFF00B80000"
    )
        port map (
      I0 => \^srca\(3),
      I1 => SrcB(3),
      I2 => \^srca\(11),
      I3 => SrcB(4),
      I4 => SrcB(2),
      I5 => \ALUResult[18]_INST_0_i_14_n_0\,
      O => \ALUResult[18]_INST_0_i_12_n_0\
    );
\ALUResult[18]_INST_0_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => \^srca\(30),
      I1 => SrcB(3),
      I2 => \^srca\(22),
      I3 => SrcB(4),
      O => \^q_reg[30]_3\
    );
\ALUResult[18]_INST_0_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => \^srca\(7),
      I1 => SrcB(3),
      I2 => \^srca\(15),
      I3 => SrcB(4),
      O => \ALUResult[18]_INST_0_i_14_n_0\
    );
\ALUResult[18]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALUResult[18]_INST_0_i_5_n_0\,
      I1 => \addressM[18]\,
      O => \ALUResult[18]_INST_0_i_6\,
      S => \^alucontrol\(1)
    );
\ALUResult[18]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888888FFFCCCFC"
    )
        port map (
      I0 => \ALUResult[19]_INST_0_i_2_0\(2),
      I1 => \^alucontrol\(0),
      I2 => \ALUResult[19]_INST_0_i_8_n_0\,
      I3 => SrcB(0),
      I4 => \ALUResult[18]_INST_0_i_9_n_0\,
      I5 => \^alucontrol__0\(0),
      O => \ALUResult[18]_INST_0_i_5_n_0\
    );
\ALUResult[18]_INST_0_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ALUResult[18]_INST_0_i_12_n_0\,
      I1 => SrcB(1),
      I2 => \ALUResult[20]_INST_0_i_7_n_0\,
      O => \ALUResult[18]_INST_0_i_9_n_0\
    );
\ALUResult[19]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00B8FFFF00B80000"
    )
        port map (
      I0 => \^srca\(4),
      I1 => SrcB(3),
      I2 => \^srca\(12),
      I3 => SrcB(4),
      I4 => SrcB(2),
      I5 => \ALUResult[22]_INST_0_i_10_n_0\,
      O => \ALUResult[19]_INST_0_i_11_n_0\
    );
\ALUResult[19]_INST_0_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0BBF088"
    )
        port map (
      I0 => \^srca\(27),
      I1 => SrcB(3),
      I2 => \^srca\(31),
      I3 => SrcB(4),
      I4 => \^srca\(19),
      O => \^q_reg[27]_1\
    );
\ALUResult[19]_INST_0_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => \^srca\(31),
      I1 => SrcB(3),
      I2 => \^srca\(23),
      I3 => SrcB(4),
      O => \^q_reg[31]_3\
    );
\ALUResult[19]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALUResult[19]_INST_0_i_5_n_0\,
      I1 => \addressM[19]\,
      O => \ALUResult[19]_INST_0_i_6\,
      S => \^alucontrol\(1)
    );
\ALUResult[19]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888888FFFCCCFC"
    )
        port map (
      I0 => \ALUResult[19]_INST_0_i_2_0\(3),
      I1 => \^alucontrol\(0),
      I2 => \ALUResult[20]_INST_0_i_5_n_0\,
      I3 => SrcB(0),
      I4 => \ALUResult[19]_INST_0_i_8_n_0\,
      I5 => \^alucontrol__0\(0),
      O => \ALUResult[19]_INST_0_i_5_n_0\
    );
\ALUResult[19]_INST_0_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ALUResult[19]_INST_0_i_11_n_0\,
      I1 => SrcB(1),
      I2 => \ALUResult[21]_INST_0_i_7_n_0\,
      O => \ALUResult[19]_INST_0_i_8_n_0\
    );
\ALUResult[1]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[7]_INST_0_i_10_n_0\,
      I1 => \ALUResult[3]_INST_0_i_13_n_0\,
      I2 => SrcB(1),
      I3 => \ALUResult[5]_INST_0_i_10_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[1]_INST_0_i_13_n_0\,
      O => \ALUResult[1]_INST_0_i_12_n_0\
    );
\ALUResult[1]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^srca\(25),
      I1 => \^srca\(9),
      I2 => SrcB(3),
      I3 => \^srca\(17),
      I4 => SrcB(4),
      I5 => \^srca\(1),
      O => \ALUResult[1]_INST_0_i_13_n_0\
    );
\ALUResult[1]_INST_0_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \ALUResult[2]_INST_0_i_11_n_0\,
      I1 => \^alucontrol__0\(0),
      I2 => \ALUResult[2]_INST_0_i_12_n_0\,
      I3 => SrcB(0),
      I4 => \ALUResult[1]_INST_0_i_12_n_0\,
      O => \ALUResult[1]_INST_0_i_12_0\
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
      O => \q_reg[5]_0\
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
      O => \q_reg[5]_1\
    );
\ALUResult[20]_INST_0_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q_reg[26]_2\,
      I1 => SrcB(1),
      I2 => \^q_reg[24]_0\,
      O => \ALUResult[20]_INST_0_i_14_0\
    );
\ALUResult[20]_INST_0_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0BBF088"
    )
        port map (
      I0 => \^srca\(28),
      I1 => SrcB(3),
      I2 => \^srca\(31),
      I3 => SrcB(4),
      I4 => \^srca\(20),
      O => \^q_reg[28]_1\
    );
\ALUResult[20]_INST_0_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000030BB3088"
    )
        port map (
      I0 => \^srca\(24),
      I1 => SrcB(2),
      I2 => \^srca\(28),
      I3 => SrcB(3),
      I4 => \^srca\(20),
      I5 => SrcB(4),
      O => \^q_reg[24]_0\
    );
\ALUResult[20]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888888FFFCCCFC"
    )
        port map (
      I0 => \ALUResult[23]_INST_0_i_1_0\(0),
      I1 => \^alucontrol\(0),
      I2 => \^aluresult[1]_inst_0_i_4\,
      I3 => SrcB(0),
      I4 => \ALUResult[20]_INST_0_i_5_n_0\,
      I5 => \^alucontrol__0\(0),
      O => \^aluresult[31]_inst_0_i_12_1\
    );
\ALUResult[20]_INST_0_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ALUResult[20]_INST_0_i_7_n_0\,
      I1 => SrcB(1),
      I2 => \^q_reg[7]_1\,
      O => \ALUResult[20]_INST_0_i_5_n_0\
    );
\ALUResult[20]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00B8FFFF00B80000"
    )
        port map (
      I0 => \^srca\(5),
      I1 => SrcB(3),
      I2 => \^srca\(13),
      I3 => SrcB(4),
      I4 => SrcB(2),
      I5 => \^q_reg[9]_0\,
      O => \ALUResult[20]_INST_0_i_7_n_0\
    );
\ALUResult[21]_INST_0_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q_reg[27]_3\,
      I1 => SrcB(1),
      I2 => \^q_reg[25]_2\,
      O => \ALUResult[21]_INST_0_i_14_0\
    );
\ALUResult[21]_INST_0_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0BBF088"
    )
        port map (
      I0 => \^srca\(29),
      I1 => SrcB(3),
      I2 => \^srca\(31),
      I3 => SrcB(4),
      I4 => \^srca\(21),
      O => \^q_reg[29]_0\
    );
\ALUResult[21]_INST_0_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000030BB3088"
    )
        port map (
      I0 => \^srca\(25),
      I1 => SrcB(2),
      I2 => \^srca\(29),
      I3 => SrcB(3),
      I4 => \^srca\(21),
      I5 => SrcB(4),
      O => \^q_reg[25]_2\
    );
\ALUResult[21]_INST_0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00B8B8"
    )
        port map (
      I0 => \ALUResult[22]_INST_0_i_10_n_0\,
      I1 => SrcB(2),
      I2 => \ALUResult[22]_INST_0_i_11_n_0\,
      I3 => \ALUResult[21]_INST_0_i_7_n_0\,
      I4 => SrcB(1),
      O => \^aluresult[1]_inst_0_i_4\
    );
\ALUResult[21]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00B8FFFF00B80000"
    )
        port map (
      I0 => \^srca\(6),
      I1 => SrcB(3),
      I2 => \^srca\(14),
      I3 => SrcB(4),
      I4 => SrcB(2),
      I5 => \ALUResult[22]_INST_0_i_12_n_0\,
      O => \ALUResult[21]_INST_0_i_7_n_0\
    );
\ALUResult[22]_INST_0_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^srca\(8),
      I1 => SrcB(3),
      I2 => \^srca\(0),
      I3 => SrcB(4),
      I4 => \^srca\(16),
      O => \ALUResult[22]_INST_0_i_10_n_0\
    );
\ALUResult[22]_INST_0_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^srca\(12),
      I1 => SrcB(3),
      I2 => \^srca\(4),
      I3 => SrcB(4),
      I4 => \^srca\(20),
      O => \ALUResult[22]_INST_0_i_11_n_0\
    );
\ALUResult[22]_INST_0_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^srca\(10),
      I1 => SrcB(3),
      I2 => \^srca\(2),
      I3 => SrcB(4),
      I4 => \^srca\(18),
      O => \ALUResult[22]_INST_0_i_12_n_0\
    );
\ALUResult[22]_INST_0_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^srca\(14),
      I1 => SrcB(3),
      I2 => \^srca\(6),
      I3 => SrcB(4),
      I4 => \^srca\(22),
      O => \ALUResult[22]_INST_0_i_13_n_0\
    );
\ALUResult[22]_INST_0_i_14\: unisim.vcomponents.LUT6
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
      O => \q_reg[5]_10\
    );
\ALUResult[22]_INST_0_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^srca\(9),
      I1 => SrcB(3),
      I2 => \^srca\(1),
      I3 => SrcB(4),
      I4 => \^srca\(17),
      O => \^q_reg[9]_0\
    );
\ALUResult[22]_INST_0_i_16\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^srca\(13),
      I1 => SrcB(3),
      I2 => \^srca\(5),
      I3 => SrcB(4),
      I4 => \^srca\(21),
      O => \^q_reg[13]_0\
    );
\ALUResult[22]_INST_0_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00B8FFFF00B80000"
    )
        port map (
      I0 => \^srca\(7),
      I1 => SrcB(3),
      I2 => \^srca\(15),
      I3 => SrcB(4),
      I4 => SrcB(2),
      I5 => \ALUResult[26]_INST_0_i_12_n_0\,
      O => \^q_reg[7]_1\
    );
\ALUResult[22]_INST_0_i_2\: unisim.vcomponents.LUT6
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
\ALUResult[22]_INST_0_i_20\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q_reg[29]_1\,
      I1 => SrcB(1),
      I2 => \^q_reg[27]_2\,
      O => \ALUResult[23]_INST_0_i_12_0\
    );
\ALUResult[22]_INST_0_i_25\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0BBF088"
    )
        port map (
      I0 => \^srca\(30),
      I1 => SrcB(3),
      I2 => \^srca\(31),
      I3 => SrcB(4),
      I4 => \^srca\(22),
      O => \^q_reg[30]_2\
    );
\ALUResult[22]_INST_0_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000030BB3088"
    )
        port map (
      I0 => \^srca\(26),
      I1 => SrcB(2),
      I2 => \^srca\(30),
      I3 => SrcB(3),
      I4 => \^srca\(22),
      I5 => SrcB(4),
      O => \^q_reg[26]_2\
    );
\ALUResult[22]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[22]_INST_0_i_10_n_0\,
      I1 => \ALUResult[22]_INST_0_i_11_n_0\,
      I2 => SrcB(1),
      I3 => \ALUResult[22]_INST_0_i_12_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[22]_INST_0_i_13_n_0\,
      O => \^aluresult[22]_inst_0_i_13_0\
    );
\ALUResult[23]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALUResult[23]_INST_0_i_4_n_0\,
      I1 => \addressM[23]\,
      O => \ALUResult[23]_INST_0_i_5\,
      S => \^alucontrol\(1)
    );
\ALUResult[23]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^q_reg[30]_1\,
      I1 => \^q_reg[28]_2\,
      I2 => SrcB(0),
      I3 => \^q_reg[29]_1\,
      I4 => SrcB(1),
      I5 => \^q_reg[27]_2\,
      O => data5(0)
    );
\ALUResult[23]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000030BB3088"
    )
        port map (
      I0 => \^srca\(27),
      I1 => SrcB(2),
      I2 => \^srca\(31),
      I3 => SrcB(3),
      I4 => \^srca\(23),
      I5 => SrcB(4),
      O => \^q_reg[27]_3\
    );
\ALUResult[23]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FB0BFF00F808"
    )
        port map (
      I0 => \^srca\(27),
      I1 => SrcB(2),
      I2 => SrcB(3),
      I3 => \^srca\(31),
      I4 => SrcB(4),
      I5 => \^srca\(23),
      O => \^q_reg[27]_2\
    );
\ALUResult[23]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888888FFFCCCFC"
    )
        port map (
      I0 => \ALUResult[23]_INST_0_i_1_0\(1),
      I1 => \^alucontrol\(0),
      I2 => \ALUResult[24]_INST_0_i_9_n_0\,
      I3 => SrcB(0),
      I4 => \^aluresult[22]_inst_0_i_13_0\,
      I5 => \^alucontrol__0\(0),
      O => \ALUResult[23]_INST_0_i_4_n_0\
    );
\ALUResult[24]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALUResult[24]_INST_0_i_4_n_0\,
      I1 => \addressM[24]\,
      O => \ALUResult[24]_INST_0_i_5\,
      S => \^alucontrol\(1)
    );
\ALUResult[24]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FB0BFF00F808"
    )
        port map (
      I0 => \^srca\(28),
      I1 => SrcB(2),
      I2 => SrcB(3),
      I3 => \^srca\(31),
      I4 => SrcB(4),
      I5 => \^srca\(24),
      O => \^q_reg[28]_2\
    );
\ALUResult[24]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888888FFFCCCFC"
    )
        port map (
      I0 => \ALUResult[27]_INST_0_i_1_0\(0),
      I1 => \^alucontrol\(0),
      I2 => \ALUResult[25]_INST_0_i_9_n_0\,
      I3 => SrcB(0),
      I4 => \ALUResult[24]_INST_0_i_9_n_0\,
      I5 => \^alucontrol__0\(0),
      O => \ALUResult[24]_INST_0_i_4_n_0\
    );
\ALUResult[24]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^q_reg[9]_0\,
      I1 => \^q_reg[13]_0\,
      I2 => SrcB(1),
      I3 => \ALUResult[26]_INST_0_i_12_n_0\,
      I4 => SrcB(2),
      I5 => \^q_reg[15]_1\,
      O => \ALUResult[24]_INST_0_i_9_n_0\
    );
\ALUResult[25]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALUResult[25]_INST_0_i_4_n_0\,
      I1 => \addressM[25]\,
      O => \ALUResult[25]_INST_0_i_5\,
      S => \^alucontrol\(1)
    );
\ALUResult[25]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FB0BFF00F808"
    )
        port map (
      I0 => \^srca\(29),
      I1 => SrcB(2),
      I2 => SrcB(3),
      I3 => \^srca\(31),
      I4 => SrcB(4),
      I5 => \^srca\(25),
      O => \^q_reg[29]_1\
    );
\ALUResult[25]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888888FFFCCCFC"
    )
        port map (
      I0 => \ALUResult[27]_INST_0_i_1_0\(1),
      I1 => \^alucontrol\(0),
      I2 => \ALUResult[26]_INST_0_i_9_n_0\,
      I3 => SrcB(0),
      I4 => \ALUResult[25]_INST_0_i_9_n_0\,
      I5 => \^alucontrol__0\(0),
      O => \ALUResult[25]_INST_0_i_4_n_0\
    );
\ALUResult[25]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[22]_INST_0_i_12_n_0\,
      I1 => \ALUResult[22]_INST_0_i_13_n_0\,
      I2 => SrcB(1),
      I3 => \ALUResult[22]_INST_0_i_11_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[31]_INST_0_i_18_n_0\,
      O => \ALUResult[25]_INST_0_i_9_n_0\
    );
\ALUResult[26]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALUResult[26]_INST_0_i_4_n_0\,
      I1 => \addressM[26]\,
      O => \ALUResult[26]_INST_0_i_5\,
      S => \^alucontrol\(1)
    );
\ALUResult[26]_INST_0_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^srca\(11),
      I1 => SrcB(3),
      I2 => \^srca\(3),
      I3 => SrcB(4),
      I4 => \^srca\(19),
      O => \ALUResult[26]_INST_0_i_12_n_0\
    );
\ALUResult[26]_INST_0_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FB0BFF00F808"
    )
        port map (
      I0 => \^srca\(30),
      I1 => SrcB(2),
      I2 => SrcB(3),
      I3 => \^srca\(31),
      I4 => SrcB(4),
      I5 => \^srca\(26),
      O => \^q_reg[30]_1\
    );
\ALUResult[26]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888888FFFCCCFC"
    )
        port map (
      I0 => \ALUResult[27]_INST_0_i_1_0\(2),
      I1 => \^alucontrol\(0),
      I2 => \ALUResult[27]_INST_0_i_9_n_0\,
      I3 => SrcB(0),
      I4 => \ALUResult[26]_INST_0_i_9_n_0\,
      I5 => \^alucontrol__0\(0),
      O => \ALUResult[26]_INST_0_i_4_n_0\
    );
\ALUResult[26]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[26]_INST_0_i_12_n_0\,
      I1 => \^q_reg[15]_1\,
      I2 => SrcB(1),
      I3 => \^q_reg[13]_0\,
      I4 => SrcB(2),
      I5 => \^q_reg[1]_0\,
      O => \ALUResult[26]_INST_0_i_9_n_0\
    );
\ALUResult[27]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALUResult[27]_INST_0_i_4_n_0\,
      I1 => \addressM[27]\,
      O => \ALUResult[27]_INST_0_i_5\,
      S => \^alucontrol\(1)
    );
\ALUResult[27]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888888FFFCCCFC"
    )
        port map (
      I0 => \ALUResult[27]_INST_0_i_1_0\(3),
      I1 => \^alucontrol\(0),
      I2 => \ALUResult[28]_INST_0_i_12_n_0\,
      I3 => SrcB(0),
      I4 => \ALUResult[27]_INST_0_i_9_n_0\,
      I5 => \^alucontrol__0\(0),
      O => \ALUResult[27]_INST_0_i_4_n_0\
    );
\ALUResult[27]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[22]_INST_0_i_11_n_0\,
      I1 => \ALUResult[31]_INST_0_i_18_n_0\,
      I2 => SrcB(1),
      I3 => \ALUResult[22]_INST_0_i_13_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[31]_INST_0_i_20_n_0\,
      O => \ALUResult[27]_INST_0_i_9_n_0\
    );
\ALUResult[28]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \ALUResult[28]_INST_0_i_1_n_0\,
      I1 => \^alucontrol\(2),
      I2 => \addressM[28]\,
      I3 => \^aluresult[31]_inst_0_i_10_0\,
      I4 => \addressM[28]_0\,
      O => \^q_reg[28]_0\(10)
    );
\ALUResult[28]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALUResult[28]_INST_0_i_5_n_0\,
      I1 => \addressM[28]_1\,
      O => \ALUResult[28]_INST_0_i_1_n_0\,
      S => \^alucontrol\(1)
    );
\ALUResult[28]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^q_reg[13]_0\,
      I1 => \^q_reg[1]_0\,
      I2 => SrcB(1),
      I3 => \^q_reg[15]_1\,
      I4 => SrcB(2),
      I5 => \^q_reg[3]_0\,
      O => \ALUResult[28]_INST_0_i_12_n_0\
    );
\ALUResult[28]_INST_0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^alucontrol\(1),
      I1 => \^alucontrol\(0),
      O => \^aluresult[31]_inst_0_i_10_0\
    );
\ALUResult[28]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888888FFFCCCFC"
    )
        port map (
      I0 => \ALUResult[0]_INST_0_i_2\(0),
      I1 => \^alucontrol\(0),
      I2 => \^aluresult[31]_inst_0_i_19_0\,
      I3 => SrcB(0),
      I4 => \ALUResult[28]_INST_0_i_12_n_0\,
      I5 => \^alucontrol__0\(0),
      O => \ALUResult[28]_INST_0_i_5_n_0\
    );
\ALUResult[29]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[22]_INST_0_i_13_n_0\,
      I1 => \ALUResult[31]_INST_0_i_20_n_0\,
      I2 => SrcB(1),
      I3 => \ALUResult[31]_INST_0_i_18_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[31]_INST_0_i_19_n_0\,
      O => \^aluresult[31]_inst_0_i_19_0\
    );
\ALUResult[2]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[8]_INST_0_i_11_n_0\,
      I1 => \ALUResult[4]_INST_0_i_12_n_0\,
      I2 => SrcB(1),
      I3 => \ALUResult[6]_INST_0_i_10_n_0\,
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
      I1 => \ALUResult[4]_INST_0_i_12_n_0\,
      I2 => SrcB(1),
      I3 => \ALUResult[6]_INST_0_i_10_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[2]_INST_0_i_13_n_0\,
      O => \ALUResult[2]_INST_0_i_12_n_0\
    );
\ALUResult[2]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^srca\(26),
      I1 => \^srca\(10),
      I2 => SrcB(3),
      I3 => \^srca\(18),
      I4 => SrcB(4),
      I5 => \^srca\(2),
      O => \ALUResult[2]_INST_0_i_13_n_0\
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
      I4 => SrcB(0),
      I5 => \ALUResult[2]_INST_0_i_12_n_0\,
      O => \ALUResult[2]_INST_0_i_12_0\
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
      O => \q_reg[5]_4\
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
      O => \q_reg[5]_5\
    );
\ALUResult[30]_INST_0_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^srca\(15),
      I1 => SrcB(3),
      I2 => \^srca\(7),
      I3 => SrcB(4),
      I4 => \^srca\(23),
      O => \^q_reg[15]_1\
    );
\ALUResult[31]_INST_0_i_1\: unisim.vcomponents.LUT6
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
\ALUResult[31]_INST_0_i_10\: unisim.vcomponents.LUT6
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
\ALUResult[31]_INST_0_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \^aluresult[31]_inst_0_i_21_0\,
      I1 => SrcB(0),
      I2 => \ALUResult[31]_INST_0_i_15_n_0\,
      I3 => SrcB(1),
      I4 => \ALUResult[31]_INST_0_i_16_n_0\,
      O => data7(6)
    );
\ALUResult[31]_INST_0_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"83380038"
    )
        port map (
      I0 => Instr(3),
      I1 => Instr(0),
      I2 => Instr(4),
      I3 => Instr(2),
      I4 => \ALUResult[31]_INST_0_i_17_n_0\,
      O => \^alucontrol__0\(0)
    );
\ALUResult[31]_INST_0_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[31]_INST_0_i_18_n_0\,
      I1 => \ALUResult[31]_INST_0_i_19_n_0\,
      I2 => SrcB(1),
      I3 => \ALUResult[31]_INST_0_i_20_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[31]_INST_0_i_21_n_0\,
      O => \^aluresult[31]_inst_0_i_21_0\
    );
\ALUResult[31]_INST_0_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q_reg[1]_0\,
      I1 => SrcB(2),
      I2 => \^q_reg[5]_3\,
      O => \ALUResult[31]_INST_0_i_15_n_0\
    );
\ALUResult[31]_INST_0_i_16\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q_reg[3]_0\,
      I1 => SrcB(2),
      I2 => \ALUResult[31]_INST_0_i_25_n_0\,
      O => \ALUResult[31]_INST_0_i_16_n_0\
    );
\ALUResult[31]_INST_0_i_17\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"26449CCC"
    )
        port map (
      I0 => Instr(12),
      I1 => Instr(11),
      I2 => Instr(3),
      I3 => Instr(28),
      I4 => Instr(10),
      O => \ALUResult[31]_INST_0_i_17_n_0\
    );
\ALUResult[31]_INST_0_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^srca\(0),
      I1 => \^srca\(16),
      I2 => SrcB(3),
      I3 => \^srca\(8),
      I4 => SrcB(4),
      I5 => \^srca\(24),
      O => \ALUResult[31]_INST_0_i_18_n_0\
    );
\ALUResult[31]_INST_0_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^srca\(4),
      I1 => \^srca\(20),
      I2 => SrcB(3),
      I3 => \^srca\(12),
      I4 => SrcB(4),
      I5 => \^srca\(28),
      O => \ALUResult[31]_INST_0_i_19_n_0\
    );
\ALUResult[31]_INST_0_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^srca\(2),
      I1 => \^srca\(18),
      I2 => SrcB(3),
      I3 => \^srca\(10),
      I4 => SrcB(4),
      I5 => \^srca\(26),
      O => \ALUResult[31]_INST_0_i_20_n_0\
    );
\ALUResult[31]_INST_0_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^srca\(6),
      I1 => \^srca\(22),
      I2 => SrcB(3),
      I3 => \^srca\(14),
      I4 => SrcB(4),
      I5 => \^srca\(30),
      O => \ALUResult[31]_INST_0_i_21_n_0\
    );
\ALUResult[31]_INST_0_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^srca\(1),
      I1 => \^srca\(17),
      I2 => SrcB(3),
      I3 => \^srca\(9),
      I4 => SrcB(4),
      I5 => \^srca\(25),
      O => \^q_reg[1]_0\
    );
\ALUResult[31]_INST_0_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^srca\(5),
      I1 => \^srca\(21),
      I2 => SrcB(3),
      I3 => \^srca\(13),
      I4 => SrcB(4),
      I5 => \^srca\(29),
      O => \^q_reg[5]_3\
    );
\ALUResult[31]_INST_0_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^srca\(3),
      I1 => \^srca\(19),
      I2 => SrcB(3),
      I3 => \^srca\(11),
      I4 => SrcB(4),
      I5 => \^srca\(27),
      O => \^q_reg[3]_0\
    );
\ALUResult[31]_INST_0_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^srca\(7),
      I1 => \^srca\(23),
      I2 => SrcB(3),
      I3 => \^srca\(15),
      I4 => SrcB(4),
      I5 => \^srca\(31),
      O => \ALUResult[31]_INST_0_i_25_n_0\
    );
\ALUResult[31]_INST_0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"38"
    )
        port map (
      I0 => Instr(3),
      I1 => Instr(0),
      I2 => Instr(4),
      O => \c/ALUOp\(0)
    );
\ALUResult[31]_INST_0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Instr(28),
      I1 => Instr(3),
      O => \c/ad/RtypeSub__0\
    );
\ALUResult[31]_INST_0_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A2"
    )
        port map (
      I0 => Instr(2),
      I1 => Instr(0),
      I2 => Instr(3),
      O => \c/ALUOp\(1)
    );
\ALUResult[31]_INST_0_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => \^alucontrol\(1),
      I1 => \^alucontrol\(0),
      I2 => \^alucontrol__0\(0),
      O => \^aluresult[31]_inst_0_i_12_0\
    );
\ALUResult[3]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[9]_INST_0_i_11_n_0\,
      I1 => \ALUResult[5]_INST_0_i_10_n_0\,
      I2 => SrcB(1),
      I3 => \ALUResult[7]_INST_0_i_10_n_0\,
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
      I1 => \ALUResult[5]_INST_0_i_10_n_0\,
      I2 => SrcB(1),
      I3 => \ALUResult[7]_INST_0_i_10_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[3]_INST_0_i_13_n_0\,
      O => \ALUResult[3]_INST_0_i_12_n_0\
    );
\ALUResult[3]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^srca\(27),
      I1 => \^srca\(11),
      I2 => SrcB(3),
      I3 => \^srca\(19),
      I4 => SrcB(4),
      I5 => \^srca\(3),
      O => \ALUResult[3]_INST_0_i_13_n_0\
    );
\ALUResult[3]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[4]_INST_0_i_10_n_0\,
      I1 => \ALUResult[3]_INST_0_i_11_n_0\,
      I2 => \^alucontrol__0\(0),
      I3 => \ALUResult[4]_INST_0_i_11_n_0\,
      I4 => SrcB(0),
      I5 => \ALUResult[3]_INST_0_i_12_n_0\,
      O => \ALUResult[3]_INST_0_i_12_0\
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
      O => \q_reg[5]_6\
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
      O => \q_reg[5]_7\
    );
\ALUResult[4]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALUResult[4]_INST_0_i_1_n_0\,
      I1 => \addressM[4]\,
      O => \^q_reg[28]_0\(0),
      S => \^alucontrol\(2)
    );
\ALUResult[4]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFCFAFC0AFC0A0C0"
    )
        port map (
      I0 => \ALUResult[4]_INST_0_i_3_n_0\,
      I1 => \addressM[7]\(0),
      I2 => \^aluresult[31]_inst_0_i_10_0\,
      I3 => \^aluresult[31]_inst_0_i_12_0\,
      I4 => \^srca\(4),
      I5 => SrcB(4),
      O => \ALUResult[4]_INST_0_i_1_n_0\
    );
\ALUResult[4]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[10]_INST_0_i_11_n_0\,
      I1 => \ALUResult[6]_INST_0_i_10_n_0\,
      I2 => SrcB(1),
      I3 => \ALUResult[8]_INST_0_i_11_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[4]_INST_0_i_12_n_0\,
      O => \ALUResult[4]_INST_0_i_10_n_0\
    );
\ALUResult[4]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[10]_INST_0_i_12_n_0\,
      I1 => \ALUResult[6]_INST_0_i_10_n_0\,
      I2 => SrcB(1),
      I3 => \ALUResult[8]_INST_0_i_12_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[4]_INST_0_i_12_n_0\,
      O => \ALUResult[4]_INST_0_i_11_n_0\
    );
\ALUResult[4]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^srca\(28),
      I1 => \^srca\(12),
      I2 => SrcB(3),
      I3 => \^srca\(20),
      I4 => SrcB(4),
      I5 => \^srca\(4),
      O => \ALUResult[4]_INST_0_i_12_n_0\
    );
\ALUResult[4]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88888BB8"
    )
        port map (
      I0 => \ALUResult[4]_INST_0_i_6_n_0\,
      I1 => \^alucontrol\(0),
      I2 => \^srca\(4),
      I3 => SrcB(4),
      I4 => \^alucontrol__0\(0),
      O => \ALUResult[4]_INST_0_i_3_n_0\
    );
\ALUResult[4]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[5]_INST_0_i_8_n_0\,
      I1 => \ALUResult[4]_INST_0_i_10_n_0\,
      I2 => \^alucontrol__0\(0),
      I3 => \ALUResult[5]_INST_0_i_9_n_0\,
      I4 => SrcB(0),
      I5 => \ALUResult[4]_INST_0_i_11_n_0\,
      O => \ALUResult[4]_INST_0_i_6_n_0\
    );
\ALUResult[4]_INST_0_i_7\: unisim.vcomponents.LUT6
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
      O => \q_reg[5]_8\
    );
\ALUResult[4]_INST_0_i_8\: unisim.vcomponents.LUT6
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
      O => \q_reg[5]_9\
    );
\ALUResult[5]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALUResult[5]_INST_0_i_1_n_0\,
      I1 => \addressM[5]\,
      O => \^q_reg[28]_0\(1),
      S => \^alucontrol\(2)
    );
\ALUResult[5]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFCFAFC0AFC0A0C0"
    )
        port map (
      I0 => \ALUResult[5]_INST_0_i_3_n_0\,
      I1 => \addressM[7]\(1),
      I2 => \^aluresult[31]_inst_0_i_10_0\,
      I3 => \^aluresult[31]_inst_0_i_12_0\,
      I4 => \^srca\(5),
      I5 => SrcB(5),
      O => \ALUResult[5]_INST_0_i_1_n_0\
    );
\ALUResult[5]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^srca\(29),
      I1 => \^srca\(13),
      I2 => SrcB(3),
      I3 => \^srca\(21),
      I4 => SrcB(4),
      I5 => \^srca\(5),
      O => \ALUResult[5]_INST_0_i_10_n_0\
    );
\ALUResult[5]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88888BB8"
    )
        port map (
      I0 => \ALUResult[5]_INST_0_i_6_n_0\,
      I1 => \^alucontrol\(0),
      I2 => \^srca\(5),
      I3 => SrcB(5),
      I4 => \^alucontrol__0\(0),
      O => \ALUResult[5]_INST_0_i_3_n_0\
    );
\ALUResult[5]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[6]_INST_0_i_8_n_0\,
      I1 => \ALUResult[5]_INST_0_i_8_n_0\,
      I2 => \^alucontrol__0\(0),
      I3 => \ALUResult[6]_INST_0_i_9_n_0\,
      I4 => SrcB(0),
      I5 => \ALUResult[5]_INST_0_i_9_n_0\,
      O => \ALUResult[5]_INST_0_i_6_n_0\
    );
\ALUResult[5]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[11]_INST_0_i_20_n_0\,
      I1 => \ALUResult[7]_INST_0_i_10_n_0\,
      I2 => SrcB(1),
      I3 => \ALUResult[9]_INST_0_i_11_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[5]_INST_0_i_10_n_0\,
      O => \ALUResult[5]_INST_0_i_8_n_0\
    );
\ALUResult[5]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[11]_INST_0_i_28_n_0\,
      I1 => \ALUResult[7]_INST_0_i_10_n_0\,
      I2 => SrcB(1),
      I3 => \ALUResult[9]_INST_0_i_12_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[5]_INST_0_i_10_n_0\,
      O => \ALUResult[5]_INST_0_i_9_n_0\
    );
\ALUResult[6]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALUResult[6]_INST_0_i_1_n_0\,
      I1 => \addressM[6]\,
      O => \^q_reg[28]_0\(2),
      S => \^alucontrol\(2)
    );
\ALUResult[6]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFCFAFC0AFC0A0C0"
    )
        port map (
      I0 => \ALUResult[6]_INST_0_i_3_n_0\,
      I1 => \addressM[7]\(2),
      I2 => \^aluresult[31]_inst_0_i_10_0\,
      I3 => \^aluresult[31]_inst_0_i_12_0\,
      I4 => \^srca\(6),
      I5 => SrcB(6),
      O => \ALUResult[6]_INST_0_i_1_n_0\
    );
\ALUResult[6]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^srca\(30),
      I1 => \^srca\(14),
      I2 => SrcB(3),
      I3 => \^srca\(22),
      I4 => SrcB(4),
      I5 => \^srca\(6),
      O => \ALUResult[6]_INST_0_i_10_n_0\
    );
\ALUResult[6]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88888BB8"
    )
        port map (
      I0 => \ALUResult[6]_INST_0_i_6_n_0\,
      I1 => \^alucontrol\(0),
      I2 => \^srca\(6),
      I3 => SrcB(6),
      I4 => \^alucontrol__0\(0),
      O => \ALUResult[6]_INST_0_i_3_n_0\
    );
\ALUResult[6]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[7]_INST_0_i_8_n_0\,
      I1 => \ALUResult[6]_INST_0_i_8_n_0\,
      I2 => \^alucontrol__0\(0),
      I3 => \ALUResult[7]_INST_0_i_9_n_0\,
      I4 => SrcB(0),
      I5 => \ALUResult[6]_INST_0_i_9_n_0\,
      O => \ALUResult[6]_INST_0_i_6_n_0\
    );
\ALUResult[6]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[11]_INST_0_i_16_n_0\,
      I1 => \ALUResult[8]_INST_0_i_11_n_0\,
      I2 => SrcB(1),
      I3 => \ALUResult[10]_INST_0_i_11_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[6]_INST_0_i_10_n_0\,
      O => \ALUResult[6]_INST_0_i_8_n_0\
    );
\ALUResult[6]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[11]_INST_0_i_24_n_0\,
      I1 => \ALUResult[8]_INST_0_i_12_n_0\,
      I2 => SrcB(1),
      I3 => \ALUResult[10]_INST_0_i_12_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[6]_INST_0_i_10_n_0\,
      O => \ALUResult[6]_INST_0_i_9_n_0\
    );
\ALUResult[7]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALUResult[7]_INST_0_i_1_n_0\,
      I1 => \addressM[7]_0\,
      O => \^q_reg[28]_0\(3),
      S => \^alucontrol\(2)
    );
\ALUResult[7]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFCFAFC0AFC0A0C0"
    )
        port map (
      I0 => \ALUResult[7]_INST_0_i_3_n_0\,
      I1 => \addressM[7]\(3),
      I2 => \^aluresult[31]_inst_0_i_10_0\,
      I3 => \^aluresult[31]_inst_0_i_12_0\,
      I4 => \^srca\(7),
      I5 => SrcB(7),
      O => \ALUResult[7]_INST_0_i_1_n_0\
    );
\ALUResult[7]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^srca\(31),
      I1 => \^srca\(15),
      I2 => SrcB(3),
      I3 => \^srca\(23),
      I4 => SrcB(4),
      I5 => \^srca\(7),
      O => \ALUResult[7]_INST_0_i_10_n_0\
    );
\ALUResult[7]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88888BB8"
    )
        port map (
      I0 => \ALUResult[7]_INST_0_i_6_n_0\,
      I1 => \^alucontrol\(0),
      I2 => \^srca\(7),
      I3 => SrcB(7),
      I4 => \^alucontrol__0\(0),
      O => \ALUResult[7]_INST_0_i_3_n_0\
    );
\ALUResult[7]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[8]_INST_0_i_9_n_0\,
      I1 => \ALUResult[7]_INST_0_i_8_n_0\,
      I2 => \^alucontrol__0\(0),
      I3 => \ALUResult[8]_INST_0_i_10_n_0\,
      I4 => SrcB(0),
      I5 => \ALUResult[7]_INST_0_i_9_n_0\,
      O => \ALUResult[7]_INST_0_i_6_n_0\
    );
\ALUResult[7]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[11]_INST_0_i_18_n_0\,
      I1 => \ALUResult[9]_INST_0_i_11_n_0\,
      I2 => SrcB(1),
      I3 => \ALUResult[11]_INST_0_i_20_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[7]_INST_0_i_10_n_0\,
      O => \ALUResult[7]_INST_0_i_8_n_0\
    );
\ALUResult[7]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^q_reg[21]_0\,
      I1 => \ALUResult[9]_INST_0_i_12_n_0\,
      I2 => SrcB(1),
      I3 => \ALUResult[11]_INST_0_i_28_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[7]_INST_0_i_10_n_0\,
      O => \ALUResult[7]_INST_0_i_9_n_0\
    );
\ALUResult[8]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[11]_INST_0_i_22_n_0\,
      I1 => \ALUResult[10]_INST_0_i_12_n_0\,
      I2 => SrcB(1),
      I3 => \ALUResult[11]_INST_0_i_24_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[8]_INST_0_i_12_n_0\,
      O => \ALUResult[8]_INST_0_i_10_n_0\
    );
\ALUResult[8]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^srca\(31),
      I1 => \^srca\(16),
      I2 => SrcB(3),
      I3 => \^srca\(24),
      I4 => SrcB(4),
      I5 => \^srca\(8),
      O => \ALUResult[8]_INST_0_i_11_n_0\
    );
\ALUResult[8]_INST_0_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^srca\(16),
      I1 => SrcB(3),
      I2 => \^srca\(24),
      I3 => SrcB(4),
      I4 => \^srca\(8),
      O => \ALUResult[8]_INST_0_i_12_n_0\
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
      I4 => SrcB(0),
      I5 => \ALUResult[8]_INST_0_i_10_n_0\,
      O => \ALUResult[8]_INST_0_i_10_0\
    );
\ALUResult[8]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[11]_INST_0_i_14_n_0\,
      I1 => \ALUResult[10]_INST_0_i_11_n_0\,
      I2 => SrcB(1),
      I3 => \ALUResult[11]_INST_0_i_16_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[8]_INST_0_i_11_n_0\,
      O => \ALUResult[8]_INST_0_i_9_n_0\
    );
\ALUResult[9]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^q_reg[23]_1\,
      I1 => \ALUResult[11]_INST_0_i_28_n_0\,
      I2 => SrcB(1),
      I3 => \^q_reg[21]_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[9]_INST_0_i_12_n_0\,
      O => \ALUResult[9]_INST_0_i_10_n_0\
    );
\ALUResult[9]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^srca\(31),
      I1 => \^srca\(17),
      I2 => SrcB(3),
      I3 => \^srca\(25),
      I4 => SrcB(4),
      I5 => \^srca\(9),
      O => \ALUResult[9]_INST_0_i_11_n_0\
    );
\ALUResult[9]_INST_0_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^srca\(17),
      I1 => SrcB(3),
      I2 => \^srca\(25),
      I3 => SrcB(4),
      I4 => \^srca\(9),
      O => \ALUResult[9]_INST_0_i_12_n_0\
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
      I4 => SrcB(0),
      I5 => \ALUResult[9]_INST_0_i_10_n_0\,
      O => \ALUResult[9]_INST_0_i_10_0\
    );
\ALUResult[9]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[11]_INST_0_i_19_n_0\,
      I1 => \ALUResult[11]_INST_0_i_20_n_0\,
      I2 => SrcB(1),
      I3 => \ALUResult[11]_INST_0_i_18_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[9]_INST_0_i_11_n_0\,
      O => \ALUResult[9]_INST_0_i_9_n_0\
    );
\carried_carry__0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"59AA595559555955"
    )
        port map (
      I0 => \^srca\(7),
      I1 => Instr(25),
      I2 => \carried_carry__1\,
      I3 => ALUSrc(0),
      I4 => rd21,
      I5 => rd20(2),
      O => \q_reg[7]_3\(2)
    );
\carried_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"59AA595559555955"
    )
        port map (
      I0 => \^srca\(6),
      I1 => Instr(24),
      I2 => \carried_carry__1\,
      I3 => ALUSrc(0),
      I4 => rd21,
      I5 => rd20(1),
      O => \q_reg[7]_3\(1)
    );
\carried_carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"59AA595559555955"
    )
        port map (
      I0 => \^srca\(5),
      I1 => Instr(23),
      I2 => \carried_carry__1\,
      I3 => ALUSrc(0),
      I4 => rd21,
      I5 => rd20(0),
      O => \q_reg[7]_3\(0)
    );
\carried_carry__1_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"59AA595559555955"
    )
        port map (
      I0 => \^srca\(10),
      I1 => Instr(28),
      I2 => \carried_carry__1\,
      I3 => ALUSrc(0),
      I4 => rd21,
      I5 => rd20(5),
      O => \q_reg[10]_1\(2)
    );
\carried_carry__1_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"59AA595559555955"
    )
        port map (
      I0 => \^srca\(9),
      I1 => Instr(27),
      I2 => \carried_carry__1\,
      I3 => ALUSrc(0),
      I4 => rd21,
      I5 => rd20(4),
      O => \q_reg[10]_1\(1)
    );
\carried_carry__1_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"59AA595559555955"
    )
        port map (
      I0 => \^srca\(8),
      I1 => Instr(26),
      I2 => \carried_carry__1\,
      I3 => ALUSrc(0),
      I4 => rd21,
      I5 => rd20(3),
      O => \q_reg[10]_1\(0)
    );
\carried_carry__6_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FB080808"
    )
        port map (
      I0 => \^q_reg[31]_0\(0),
      I1 => Instr(0),
      I2 => Instr(3),
      I3 => rd11,
      I4 => rd10(31),
      O => \^srca\(31)
    );
\carried_carry__6_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"9A959595"
    )
        port map (
      I0 => \^srca\(31),
      I1 => Instr(29),
      I2 => ALUSrc(0),
      I3 => rd21,
      I4 => rd20(6),
      O => \q_reg[31]_4\(0)
    );
\q[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFBFA080"
    )
        port map (
      I0 => \q_reg[31]_5\(0),
      I1 => \c/BranchControl__7\,
      I2 => Instr(4),
      I3 => Instr(0),
      I4 => \^di\(0),
      O => \q[0]_i_1_n_0\
    );
\q[0]_i_19\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFACCFA"
    )
        port map (
      I0 => \ALUResult[16]_INST_0_i_1_n_0\,
      I1 => \ALUResult[16]_INST_0_i_2_n_0\,
      I2 => \q[0]_i_7\,
      I3 => \^alucontrol\(2),
      I4 => \^aluresult[17]_inst_0_i_6\,
      O => \ALUResult[17]_INST_0_i_2_0\
    );
\q[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAFFFF6AAA0000"
    )
        port map (
      I0 => \q[0]_i_4_n_0\,
      I1 => \q[0]_i_5_n_0\,
      I2 => \q[0]_i_6_n_0\,
      I3 => \q_reg[0]_1\,
      I4 => \q[0]_i_8_n_0\,
      I5 => \q[0]_i_9_n_0\,
      O => \c/BranchControl__7\
    );
\q[0]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => Instr(12),
      I1 => Instr(11),
      I2 => Instr(10),
      O => \q[0]_i_4_n_0\
    );
\q[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => \^q_reg[28]_0\(0),
      I1 => \^q_reg[28]_0\(1),
      I2 => \^q_reg[28]_0\(2),
      I3 => \^q_reg[28]_0\(3),
      I4 => \q[0]_i_3_0\,
      I5 => \q[0]_i_3_1\,
      O => \q[0]_i_5_n_0\
    );
\q[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => \^q_reg[28]_0\(5),
      I1 => \^q_reg[28]_0\(6),
      I2 => \^q_reg[28]_0\(7),
      I3 => \^q_reg[28]_0\(8),
      I4 => \q[0]_i_3_2\,
      I5 => \q[0]_i_3_3\,
      O => \q[0]_i_6_n_0\
    );
\q[0]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Instr(12),
      I1 => Instr(11),
      O => \q[0]_i_8_n_0\
    );
\q[0]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0380A38"
    )
        port map (
      I0 => Instr(12),
      I1 => \^result0__33\(0),
      I2 => Instr(10),
      I3 => Instr(11),
      I4 => CO(0),
      O => \q[0]_i_9_n_0\
    );
\q[12]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFBFA080"
    )
        port map (
      I0 => d1(12),
      I1 => \c/BranchControl__7\,
      I2 => Instr(4),
      I3 => Instr(0),
      I4 => \^q_reg[15]_0\(0),
      O => \q[12]_i_2_n_0\
    );
\q[12]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFBFA080"
    )
        port map (
      I0 => \q_reg[31]_5\(6),
      I1 => \c/BranchControl__7\,
      I2 => Instr(4),
      I3 => Instr(0),
      I4 => \^q_reg[11]_0\(3),
      O => \q[12]_i_3_n_0\
    );
\q[12]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFBFA080"
    )
        port map (
      I0 => d1(10),
      I1 => \c/BranchControl__7\,
      I2 => Instr(4),
      I3 => Instr(0),
      I4 => \^q_reg[11]_0\(2),
      O => \q[12]_i_4_n_0\
    );
\q[12]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFBFA080"
    )
        port map (
      I0 => \q_reg[31]_5\(5),
      I1 => \c/BranchControl__7\,
      I2 => Instr(4),
      I3 => Instr(0),
      I4 => \^q_reg[11]_0\(1),
      O => \q[12]_i_5_n_0\
    );
\q[12]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACCCCCCC"
    )
        port map (
      I0 => \^q_reg[28]_0\(5),
      I1 => d0(5),
      I2 => Instr(0),
      I3 => Instr(3),
      I4 => Instr(4),
      O => d1(12)
    );
\q[12]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACCCCCCC"
    )
        port map (
      I0 => \^q_reg[28]_0\(4),
      I1 => d0(4),
      I2 => Instr(0),
      I3 => Instr(3),
      I4 => Instr(4),
      O => d1(10)
    );
\q[16]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFBFA080"
    )
        port map (
      I0 => d1(16),
      I1 => \c/BranchControl__7\,
      I2 => Instr(4),
      I3 => Instr(0),
      I4 => \^q_reg[19]_0\(0),
      O => \q[16]_i_2_n_0\
    );
\q[16]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFBFA080"
    )
        port map (
      I0 => d1(15),
      I1 => \c/BranchControl__7\,
      I2 => Instr(4),
      I3 => Instr(0),
      I4 => \^q_reg[15]_0\(3),
      O => \q[16]_i_3_n_0\
    );
\q[16]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFBFA080"
    )
        port map (
      I0 => d1(14),
      I1 => \c/BranchControl__7\,
      I2 => Instr(4),
      I3 => Instr(0),
      I4 => \^q_reg[15]_0\(2),
      O => \q[16]_i_4_n_0\
    );
\q[16]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFBFA080"
    )
        port map (
      I0 => d1(13),
      I1 => \c/BranchControl__7\,
      I2 => Instr(4),
      I3 => Instr(0),
      I4 => \^q_reg[15]_0\(1),
      O => \q[16]_i_5_n_0\
    );
\q[16]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACCCCCCC"
    )
        port map (
      I0 => \^q_reg[28]_0\(9),
      I1 => d0(9),
      I2 => Instr(0),
      I3 => Instr(3),
      I4 => Instr(4),
      O => d1(16)
    );
\q[16]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACCCCCCC"
    )
        port map (
      I0 => \^q_reg[28]_0\(8),
      I1 => d0(8),
      I2 => Instr(0),
      I3 => Instr(3),
      I4 => Instr(4),
      O => d1(15)
    );
\q[16]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACCCCCCC"
    )
        port map (
      I0 => \^q_reg[28]_0\(7),
      I1 => d0(7),
      I2 => Instr(0),
      I3 => Instr(3),
      I4 => Instr(4),
      O => d1(14)
    );
\q[16]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACCCCCCC"
    )
        port map (
      I0 => \^q_reg[28]_0\(6),
      I1 => d0(6),
      I2 => Instr(0),
      I3 => Instr(3),
      I4 => Instr(4),
      O => d1(13)
    );
\q[20]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFBFA080"
    )
        port map (
      I0 => \q_reg[31]_5\(10),
      I1 => \c/BranchControl__7\,
      I2 => Instr(4),
      I3 => Instr(0),
      I4 => \^q_reg[23]_0\(0),
      O => \q[20]_i_2_n_0\
    );
\q[20]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFBFA080"
    )
        port map (
      I0 => \q_reg[31]_5\(9),
      I1 => \c/BranchControl__7\,
      I2 => Instr(4),
      I3 => Instr(0),
      I4 => \^q_reg[19]_0\(3),
      O => \q[20]_i_3_n_0\
    );
\q[20]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFBFA080"
    )
        port map (
      I0 => \q_reg[31]_5\(8),
      I1 => \c/BranchControl__7\,
      I2 => Instr(4),
      I3 => Instr(0),
      I4 => \^q_reg[19]_0\(2),
      O => \q[20]_i_4_n_0\
    );
\q[20]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFBFA080"
    )
        port map (
      I0 => \q_reg[31]_5\(7),
      I1 => \c/BranchControl__7\,
      I2 => Instr(4),
      I3 => Instr(0),
      I4 => \^q_reg[19]_0\(1),
      O => \q[20]_i_5_n_0\
    );
\q[24]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFBFA080"
    )
        port map (
      I0 => \q_reg[31]_5\(14),
      I1 => \c/BranchControl__7\,
      I2 => Instr(4),
      I3 => Instr(0),
      I4 => \^q_reg[27]_0\(0),
      O => \q[24]_i_2_n_0\
    );
\q[24]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFBFA080"
    )
        port map (
      I0 => \q_reg[31]_5\(13),
      I1 => \c/BranchControl__7\,
      I2 => Instr(4),
      I3 => Instr(0),
      I4 => \^q_reg[23]_0\(3),
      O => \q[24]_i_3_n_0\
    );
\q[24]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFBFA080"
    )
        port map (
      I0 => \q_reg[31]_5\(12),
      I1 => \c/BranchControl__7\,
      I2 => Instr(4),
      I3 => Instr(0),
      I4 => \^q_reg[23]_0\(2),
      O => \q[24]_i_4_n_0\
    );
\q[24]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFBFA080"
    )
        port map (
      I0 => \q_reg[31]_5\(11),
      I1 => \c/BranchControl__7\,
      I2 => Instr(4),
      I3 => Instr(0),
      I4 => \^q_reg[23]_0\(1),
      O => \q[24]_i_5_n_0\
    );
\q[28]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFBFA080"
    )
        port map (
      I0 => d1(28),
      I1 => \c/BranchControl__7\,
      I2 => Instr(4),
      I3 => Instr(0),
      I4 => \^q_reg[30]_0\(0),
      O => \q[28]_i_2_n_0\
    );
\q[28]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFBFA080"
    )
        port map (
      I0 => \q_reg[31]_5\(17),
      I1 => \c/BranchControl__7\,
      I2 => Instr(4),
      I3 => Instr(0),
      I4 => \^q_reg[27]_0\(3),
      O => \q[28]_i_3_n_0\
    );
\q[28]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFBFA080"
    )
        port map (
      I0 => \q_reg[31]_5\(16),
      I1 => \c/BranchControl__7\,
      I2 => Instr(4),
      I3 => Instr(0),
      I4 => \^q_reg[27]_0\(2),
      O => \q[28]_i_4_n_0\
    );
\q[28]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFBFA080"
    )
        port map (
      I0 => \q_reg[31]_5\(15),
      I1 => \c/BranchControl__7\,
      I2 => Instr(4),
      I3 => Instr(0),
      I4 => \^q_reg[27]_0\(1),
      O => \q[28]_i_5_n_0\
    );
\q[28]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACCCCCCC"
    )
        port map (
      I0 => \^q_reg[28]_0\(10),
      I1 => d0(10),
      I2 => Instr(0),
      I3 => Instr(3),
      I4 => Instr(4),
      O => d1(28)
    );
\q[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFBFA080"
    )
        port map (
      I0 => \q_reg[31]_5\(20),
      I1 => \c/BranchControl__7\,
      I2 => Instr(4),
      I3 => Instr(0),
      I4 => \^q_reg[31]_0\(0),
      O => \q[31]_i_2_n_0\
    );
\q[31]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFBFA080"
    )
        port map (
      I0 => \q_reg[31]_5\(19),
      I1 => \c/BranchControl__7\,
      I2 => Instr(4),
      I3 => Instr(0),
      I4 => \^q_reg[30]_0\(2),
      O => \q[31]_i_3_n_0\
    );
\q[31]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFBFA080"
    )
        port map (
      I0 => \q_reg[31]_5\(18),
      I1 => \c/BranchControl__7\,
      I2 => Instr(4),
      I3 => Instr(0),
      I4 => \^q_reg[30]_0\(1),
      O => \q[31]_i_4_n_0\
    );
\q[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFBFA080"
    )
        port map (
      I0 => \q_reg[31]_5\(2),
      I1 => \c/BranchControl__7\,
      I2 => Instr(4),
      I3 => Instr(0),
      I4 => \^di\(2),
      O => \q[4]_i_2_n_0\
    );
\q[4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFBFA080"
    )
        port map (
      I0 => d1(4),
      I1 => \c/BranchControl__7\,
      I2 => Instr(4),
      I3 => Instr(0),
      I4 => \^q_reg[7]_0\(0),
      O => \q[4]_i_3_n_0\
    );
\q[4]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFBFA080"
    )
        port map (
      I0 => \q_reg[31]_5\(3),
      I1 => \c/BranchControl__7\,
      I2 => Instr(4),
      I3 => Instr(0),
      I4 => \^di\(3),
      O => \q[4]_i_4_n_0\
    );
\q[4]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CC55C555"
    )
        port map (
      I0 => \^di\(2),
      I1 => \q_reg[31]_5\(2),
      I2 => Instr(0),
      I3 => Instr(4),
      I4 => \c/BranchControl__7\,
      O => \q[4]_i_5_n_0\
    );
\q[4]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFBFA080"
    )
        port map (
      I0 => \q_reg[31]_5\(1),
      I1 => \c/BranchControl__7\,
      I2 => Instr(4),
      I3 => Instr(0),
      I4 => \^di\(1),
      O => \q[4]_i_6_n_0\
    );
\q[4]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACCCCCCC"
    )
        port map (
      I0 => \^q_reg[28]_0\(0),
      I1 => d0(0),
      I2 => Instr(0),
      I3 => Instr(3),
      I4 => Instr(4),
      O => d1(4)
    );
\q[8]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFBFA080"
    )
        port map (
      I0 => \q_reg[31]_5\(4),
      I1 => \c/BranchControl__7\,
      I2 => Instr(4),
      I3 => Instr(0),
      I4 => \^q_reg[11]_0\(0),
      O => \q[8]_i_2_n_0\
    );
\q[8]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFBFA080"
    )
        port map (
      I0 => d1(7),
      I1 => \c/BranchControl__7\,
      I2 => Instr(4),
      I3 => Instr(0),
      I4 => \^q_reg[7]_0\(3),
      O => \q[8]_i_3_n_0\
    );
\q[8]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFBFA080"
    )
        port map (
      I0 => d1(6),
      I1 => \c/BranchControl__7\,
      I2 => Instr(4),
      I3 => Instr(0),
      I4 => \^q_reg[7]_0\(2),
      O => \q[8]_i_4_n_0\
    );
\q[8]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFBFA080"
    )
        port map (
      I0 => d1(5),
      I1 => \c/BranchControl__7\,
      I2 => Instr(4),
      I3 => Instr(0),
      I4 => \^q_reg[7]_0\(1),
      O => \q[8]_i_5_n_0\
    );
\q[8]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACCCCCCC"
    )
        port map (
      I0 => \^q_reg[28]_0\(3),
      I1 => d0(3),
      I2 => Instr(0),
      I3 => Instr(3),
      I4 => Instr(4),
      O => d1(7)
    );
\q[8]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACCCCCCC"
    )
        port map (
      I0 => \^q_reg[28]_0\(2),
      I1 => d0(2),
      I2 => Instr(0),
      I3 => Instr(3),
      I4 => Instr(4),
      O => d1(6)
    );
\q[8]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACCCCCCC"
    )
        port map (
      I0 => \^q_reg[28]_0\(1),
      I1 => d0(1),
      I2 => Instr(0),
      I3 => Instr(3),
      I4 => Instr(4),
      O => d1(5)
    );
\q_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReady,
      CLR => reset,
      D => \q[0]_i_1_n_0\,
      Q => \^di\(0)
    );
\q_reg[0]_i_22\: unisim.vcomponents.MUXF7
     port map (
      I0 => \^aluresult[31]_inst_0_i_12_1\,
      I1 => \q[0]_i_17\,
      O => \ALUResult[20]_INST_0_i_1\,
      S => \^alucontrol\(1)
    );
\q_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReady,
      CLR => reset,
      D => \q_reg[12]_i_1_n_6\,
      Q => \^q_reg[11]_0\(2)
    );
\q_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReady,
      CLR => reset,
      D => \q_reg[12]_i_1_n_5\,
      Q => \^q_reg[11]_0\(3)
    );
\q_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReady,
      CLR => reset,
      D => \q_reg[12]_i_1_n_4\,
      Q => \^q_reg[15]_0\(0)
    );
\q_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \q_reg[8]_i_1_n_0\,
      CO(3) => \q_reg[12]_i_1_n_0\,
      CO(2) => \q_reg[12]_i_1_n_1\,
      CO(1) => \q_reg[12]_i_1_n_2\,
      CO(0) => \q_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \q_reg[12]_i_1_n_4\,
      O(2) => \q_reg[12]_i_1_n_5\,
      O(1) => \q_reg[12]_i_1_n_6\,
      O(0) => \q_reg[12]_i_1_n_7\,
      S(3) => \q[12]_i_2_n_0\,
      S(2) => \q[12]_i_3_n_0\,
      S(1) => \q[12]_i_4_n_0\,
      S(0) => \q[12]_i_5_n_0\
    );
\q_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReady,
      CLR => reset,
      D => \q_reg[16]_i_1_n_7\,
      Q => \^q_reg[15]_0\(1)
    );
\q_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReady,
      CLR => reset,
      D => \q_reg[16]_i_1_n_6\,
      Q => \^q_reg[15]_0\(2)
    );
\q_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReady,
      CLR => reset,
      D => \q_reg[16]_i_1_n_5\,
      Q => \^q_reg[15]_0\(3)
    );
\q_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReady,
      CLR => reset,
      D => \q_reg[16]_i_1_n_4\,
      Q => \^q_reg[19]_0\(0)
    );
\q_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \q_reg[12]_i_1_n_0\,
      CO(3) => \q_reg[16]_i_1_n_0\,
      CO(2) => \q_reg[16]_i_1_n_1\,
      CO(1) => \q_reg[16]_i_1_n_2\,
      CO(0) => \q_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \q_reg[16]_i_1_n_4\,
      O(2) => \q_reg[16]_i_1_n_5\,
      O(1) => \q_reg[16]_i_1_n_6\,
      O(0) => \q_reg[16]_i_1_n_7\,
      S(3) => \q[16]_i_2_n_0\,
      S(2) => \q[16]_i_3_n_0\,
      S(1) => \q[16]_i_4_n_0\,
      S(0) => \q[16]_i_5_n_0\
    );
\q_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReady,
      CLR => reset,
      D => \q_reg[20]_i_1_n_7\,
      Q => \^q_reg[19]_0\(1)
    );
\q_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReady,
      CLR => reset,
      D => \q_reg[20]_i_1_n_6\,
      Q => \^q_reg[19]_0\(2)
    );
\q_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReady,
      CLR => reset,
      D => \q_reg[20]_i_1_n_5\,
      Q => \^q_reg[19]_0\(3)
    );
\q_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReady,
      CLR => reset,
      D => \q_reg[4]_i_1_n_7\,
      Q => \^di\(1)
    );
\q_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReady,
      CLR => reset,
      D => \q_reg[20]_i_1_n_4\,
      Q => \^q_reg[23]_0\(0)
    );
\q_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \q_reg[16]_i_1_n_0\,
      CO(3) => \q_reg[20]_i_1_n_0\,
      CO(2) => \q_reg[20]_i_1_n_1\,
      CO(1) => \q_reg[20]_i_1_n_2\,
      CO(0) => \q_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \q_reg[20]_i_1_n_4\,
      O(2) => \q_reg[20]_i_1_n_5\,
      O(1) => \q_reg[20]_i_1_n_6\,
      O(0) => \q_reg[20]_i_1_n_7\,
      S(3) => \q[20]_i_2_n_0\,
      S(2) => \q[20]_i_3_n_0\,
      S(1) => \q[20]_i_4_n_0\,
      S(0) => \q[20]_i_5_n_0\
    );
\q_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReady,
      CLR => reset,
      D => \q_reg[24]_i_1_n_7\,
      Q => \^q_reg[23]_0\(1)
    );
\q_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReady,
      CLR => reset,
      D => \q_reg[24]_i_1_n_6\,
      Q => \^q_reg[23]_0\(2)
    );
\q_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReady,
      CLR => reset,
      D => \q_reg[24]_i_1_n_5\,
      Q => \^q_reg[23]_0\(3)
    );
\q_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReady,
      CLR => reset,
      D => \q_reg[24]_i_1_n_4\,
      Q => \^q_reg[27]_0\(0)
    );
\q_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \q_reg[20]_i_1_n_0\,
      CO(3) => \q_reg[24]_i_1_n_0\,
      CO(2) => \q_reg[24]_i_1_n_1\,
      CO(1) => \q_reg[24]_i_1_n_2\,
      CO(0) => \q_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \q_reg[24]_i_1_n_4\,
      O(2) => \q_reg[24]_i_1_n_5\,
      O(1) => \q_reg[24]_i_1_n_6\,
      O(0) => \q_reg[24]_i_1_n_7\,
      S(3) => \q[24]_i_2_n_0\,
      S(2) => \q[24]_i_3_n_0\,
      S(1) => \q[24]_i_4_n_0\,
      S(0) => \q[24]_i_5_n_0\
    );
\q_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReady,
      CLR => reset,
      D => \q_reg[28]_i_1_n_7\,
      Q => \^q_reg[27]_0\(1)
    );
\q_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReady,
      CLR => reset,
      D => \q_reg[28]_i_1_n_6\,
      Q => \^q_reg[27]_0\(2)
    );
\q_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReady,
      CLR => reset,
      D => \q_reg[28]_i_1_n_5\,
      Q => \^q_reg[27]_0\(3)
    );
\q_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReady,
      CLR => reset,
      D => \q_reg[28]_i_1_n_4\,
      Q => \^q_reg[30]_0\(0)
    );
\q_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \q_reg[24]_i_1_n_0\,
      CO(3) => \q_reg[28]_i_1_n_0\,
      CO(2) => \q_reg[28]_i_1_n_1\,
      CO(1) => \q_reg[28]_i_1_n_2\,
      CO(0) => \q_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \q_reg[28]_i_1_n_4\,
      O(2) => \q_reg[28]_i_1_n_5\,
      O(1) => \q_reg[28]_i_1_n_6\,
      O(0) => \q_reg[28]_i_1_n_7\,
      S(3) => \q[28]_i_2_n_0\,
      S(2) => \q[28]_i_3_n_0\,
      S(1) => \q[28]_i_4_n_0\,
      S(0) => \q[28]_i_5_n_0\
    );
\q_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReady,
      CLR => reset,
      D => \q_reg[31]_i_1_n_7\,
      Q => \^q_reg[30]_0\(1)
    );
\q_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReady,
      CLR => reset,
      D => \q_reg[4]_i_1_n_6\,
      Q => \^di\(2)
    );
\q_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReady,
      CLR => reset,
      D => \q_reg[31]_i_1_n_6\,
      Q => \^q_reg[30]_0\(2)
    );
\q_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReady,
      CLR => reset,
      D => \q_reg[31]_i_1_n_5\,
      Q => \^q_reg[31]_0\(0)
    );
\q_reg[31]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \q_reg[28]_i_1_n_0\,
      CO(3 downto 2) => \NLW_q_reg[31]_i_1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \q_reg[31]_i_1_n_2\,
      CO(0) => \q_reg[31]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_q_reg[31]_i_1_O_UNCONNECTED\(3),
      O(2) => \q_reg[31]_i_1_n_5\,
      O(1) => \q_reg[31]_i_1_n_6\,
      O(0) => \q_reg[31]_i_1_n_7\,
      S(3) => '0',
      S(2) => \q[31]_i_2_n_0\,
      S(1) => \q[31]_i_3_n_0\,
      S(0) => \q[31]_i_4_n_0\
    );
\q_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReady,
      CLR => reset,
      D => \q_reg[4]_i_1_n_5\,
      Q => \^di\(3)
    );
\q_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReady,
      CLR => reset,
      D => \q_reg[4]_i_1_n_4\,
      Q => \^q_reg[7]_0\(0)
    );
\q_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \q_reg[4]_i_1_n_0\,
      CO(2) => \q_reg[4]_i_1_n_1\,
      CO(1) => \q_reg[4]_i_1_n_2\,
      CO(0) => \q_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \q[4]_i_2_n_0\,
      DI(0) => '0',
      O(3) => \q_reg[4]_i_1_n_4\,
      O(2) => \q_reg[4]_i_1_n_5\,
      O(1) => \q_reg[4]_i_1_n_6\,
      O(0) => \q_reg[4]_i_1_n_7\,
      S(3) => \q[4]_i_3_n_0\,
      S(2) => \q[4]_i_4_n_0\,
      S(1) => \q[4]_i_5_n_0\,
      S(0) => \q[4]_i_6_n_0\
    );
\q_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReady,
      CLR => reset,
      D => \q_reg[8]_i_1_n_7\,
      Q => \^q_reg[7]_0\(1)
    );
\q_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReady,
      CLR => reset,
      D => \q_reg[8]_i_1_n_6\,
      Q => \^q_reg[7]_0\(2)
    );
\q_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReady,
      CLR => reset,
      D => \q_reg[8]_i_1_n_5\,
      Q => \^q_reg[7]_0\(3)
    );
\q_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReady,
      CLR => reset,
      D => \q_reg[8]_i_1_n_4\,
      Q => \^q_reg[11]_0\(0)
    );
\q_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \q_reg[4]_i_1_n_0\,
      CO(3) => \q_reg[8]_i_1_n_0\,
      CO(2) => \q_reg[8]_i_1_n_1\,
      CO(1) => \q_reg[8]_i_1_n_2\,
      CO(0) => \q_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \q_reg[8]_i_1_n_4\,
      O(2) => \q_reg[8]_i_1_n_5\,
      O(1) => \q_reg[8]_i_1_n_6\,
      O(0) => \q_reg[8]_i_1_n_7\,
      S(3) => \q[8]_i_2_n_0\,
      S(2) => \q[8]_i_3_n_0\,
      S(1) => \q[8]_i_4_n_0\,
      S(0) => \q[8]_i_5_n_0\
    );
\q_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReady,
      CLR => reset,
      D => \q_reg[12]_i_1_n_7\,
      Q => \^q_reg[11]_0\(1)
    );
rf_reg_r1_0_31_0_5_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBB8888888B8"
    )
        port map (
      I0 => \^di\(0),
      I1 => Jump,
      I2 => ReadData(0),
      I3 => Instr(2),
      I4 => Instr(3),
      I5 => ALUResult(0),
      O => wd3(0)
    );
rf_reg_r1_0_31_24_29_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBB8888888B8"
    )
        port map (
      I0 => \rf_reg_r2_0_31_30_31__0\(0),
      I1 => Jump,
      I2 => ReadData(1),
      I3 => Instr(2),
      I4 => Instr(3),
      I5 => ALUResult(1),
      O => wd3(1)
    );
rf_reg_r1_0_31_30_31_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBB8888888B8"
    )
        port map (
      I0 => \rf_reg_r2_0_31_30_31__0\(1),
      I1 => Jump,
      I2 => ReadData(2),
      I3 => Instr(2),
      I4 => Instr(3),
      I5 => ALUResult(2),
      O => wd3(2)
    );
\rf_reg_r1_0_31_30_31_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBB8888888B8"
    )
        port map (
      I0 => \rf_reg_r2_0_31_30_31__0\(2),
      I1 => Jump,
      I2 => ReadData(3),
      I3 => Instr(2),
      I4 => Instr(3),
      I5 => ALUResult(3),
      O => wd3(3)
    );
\sltuOut_carry__2_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^srca\(30),
      I1 => SrcB(13),
      I2 => \^srca\(31),
      I3 => SrcB(14),
      O => \q_reg[30]_4\(0)
    );
sltuOut_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^srca\(2),
      I1 => SrcB(2),
      I2 => \^srca\(3),
      I3 => SrcB(3),
      O => \q_reg[2]_0\(1)
    );
sltuOut_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^srca\(0),
      I1 => SrcB(0),
      I2 => \^srca\(1),
      I3 => SrcB(1),
      O => \q_reg[2]_0\(0)
    );
\sum_carry__0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FB080808"
    )
        port map (
      I0 => \^q_reg[7]_0\(3),
      I1 => Instr(0),
      I2 => Instr(3),
      I3 => rd11,
      I4 => rd10(7),
      O => \^srca\(7)
    );
\sum_carry__0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FB080808"
    )
        port map (
      I0 => \^q_reg[7]_0\(2),
      I1 => Instr(0),
      I2 => Instr(3),
      I3 => rd11,
      I4 => rd10(6),
      O => \^srca\(6)
    );
\sum_carry__0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FB080808"
    )
        port map (
      I0 => \^q_reg[7]_0\(1),
      I1 => Instr(0),
      I2 => Instr(3),
      I3 => rd11,
      I4 => rd10(5),
      O => \^srca\(5)
    );
\sum_carry__0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FB080808"
    )
        port map (
      I0 => \^q_reg[7]_0\(0),
      I1 => Instr(0),
      I2 => Instr(3),
      I3 => rd11,
      I4 => rd10(4),
      O => \^srca\(4)
    );
\sum_carry__1_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FB080808"
    )
        port map (
      I0 => \^q_reg[11]_0\(3),
      I1 => Instr(0),
      I2 => Instr(3),
      I3 => rd11,
      I4 => rd10(11),
      O => \^srca\(11)
    );
\sum_carry__1_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FB080808"
    )
        port map (
      I0 => \^q_reg[11]_0\(2),
      I1 => Instr(0),
      I2 => Instr(3),
      I3 => rd11,
      I4 => rd10(10),
      O => \^srca\(10)
    );
\sum_carry__1_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FB080808"
    )
        port map (
      I0 => \^q_reg[11]_0\(1),
      I1 => Instr(0),
      I2 => Instr(3),
      I3 => rd11,
      I4 => rd10(9),
      O => \^srca\(9)
    );
\sum_carry__1_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FB080808"
    )
        port map (
      I0 => \^q_reg[11]_0\(0),
      I1 => Instr(0),
      I2 => Instr(3),
      I3 => rd11,
      I4 => rd10(8),
      O => \^srca\(8)
    );
\sum_carry__2_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FB080808"
    )
        port map (
      I0 => \^q_reg[15]_0\(3),
      I1 => Instr(0),
      I2 => Instr(3),
      I3 => rd11,
      I4 => rd10(15),
      O => \^srca\(15)
    );
\sum_carry__2_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FB080808"
    )
        port map (
      I0 => \^q_reg[15]_0\(2),
      I1 => Instr(0),
      I2 => Instr(3),
      I3 => rd11,
      I4 => rd10(14),
      O => \^srca\(14)
    );
\sum_carry__2_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FB080808"
    )
        port map (
      I0 => \^q_reg[15]_0\(1),
      I1 => Instr(0),
      I2 => Instr(3),
      I3 => rd11,
      I4 => rd10(13),
      O => \^srca\(13)
    );
\sum_carry__2_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FB080808"
    )
        port map (
      I0 => \^q_reg[15]_0\(0),
      I1 => Instr(0),
      I2 => Instr(3),
      I3 => rd11,
      I4 => rd10(12),
      O => \^srca\(12)
    );
\sum_carry__3_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FB080808"
    )
        port map (
      I0 => \^q_reg[19]_0\(3),
      I1 => Instr(0),
      I2 => Instr(3),
      I3 => rd11,
      I4 => rd10(19),
      O => \^srca\(19)
    );
\sum_carry__3_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FB080808"
    )
        port map (
      I0 => \^q_reg[19]_0\(2),
      I1 => Instr(0),
      I2 => Instr(3),
      I3 => rd11,
      I4 => rd10(18),
      O => \^srca\(18)
    );
\sum_carry__3_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FB080808"
    )
        port map (
      I0 => \^q_reg[19]_0\(1),
      I1 => Instr(0),
      I2 => Instr(3),
      I3 => rd11,
      I4 => rd10(17),
      O => \^srca\(17)
    );
\sum_carry__3_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FB080808"
    )
        port map (
      I0 => \^q_reg[19]_0\(0),
      I1 => Instr(0),
      I2 => Instr(3),
      I3 => rd11,
      I4 => rd10(16),
      O => \^srca\(16)
    );
\sum_carry__4_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FB080808"
    )
        port map (
      I0 => \^q_reg[23]_0\(3),
      I1 => Instr(0),
      I2 => Instr(3),
      I3 => rd11,
      I4 => rd10(23),
      O => \^srca\(23)
    );
\sum_carry__4_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FB080808"
    )
        port map (
      I0 => \^q_reg[23]_0\(2),
      I1 => Instr(0),
      I2 => Instr(3),
      I3 => rd11,
      I4 => rd10(22),
      O => \^srca\(22)
    );
\sum_carry__4_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FB080808"
    )
        port map (
      I0 => \^q_reg[23]_0\(1),
      I1 => Instr(0),
      I2 => Instr(3),
      I3 => rd11,
      I4 => rd10(21),
      O => \^srca\(21)
    );
\sum_carry__4_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FB080808"
    )
        port map (
      I0 => \^q_reg[23]_0\(0),
      I1 => Instr(0),
      I2 => Instr(3),
      I3 => rd11,
      I4 => rd10(20),
      O => \^srca\(20)
    );
\sum_carry__5_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FB080808"
    )
        port map (
      I0 => \^q_reg[27]_0\(3),
      I1 => Instr(0),
      I2 => Instr(3),
      I3 => rd11,
      I4 => rd10(27),
      O => \^srca\(27)
    );
\sum_carry__5_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FB080808"
    )
        port map (
      I0 => \^q_reg[27]_0\(2),
      I1 => Instr(0),
      I2 => Instr(3),
      I3 => rd11,
      I4 => rd10(26),
      O => \^srca\(26)
    );
\sum_carry__5_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FB080808"
    )
        port map (
      I0 => \^q_reg[27]_0\(1),
      I1 => Instr(0),
      I2 => Instr(3),
      I3 => rd11,
      I4 => rd10(25),
      O => \^srca\(25)
    );
\sum_carry__5_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FB080808"
    )
        port map (
      I0 => \^q_reg[27]_0\(0),
      I1 => Instr(0),
      I2 => Instr(3),
      I3 => rd11,
      I4 => rd10(24),
      O => \^srca\(24)
    );
\sum_carry__6_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FB080808"
    )
        port map (
      I0 => \^q_reg[30]_0\(2),
      I1 => Instr(0),
      I2 => Instr(3),
      I3 => rd11,
      I4 => rd10(30),
      O => \^srca\(30)
    );
\sum_carry__6_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FB080808"
    )
        port map (
      I0 => \^q_reg[30]_0\(1),
      I1 => Instr(0),
      I2 => Instr(3),
      I3 => rd11,
      I4 => rd10(29),
      O => \^srca\(29)
    );
\sum_carry__6_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FB080808"
    )
        port map (
      I0 => \^q_reg[30]_0\(0),
      I1 => Instr(0),
      I2 => Instr(3),
      I3 => rd11,
      I4 => rd10(28),
      O => \^srca\(28)
    );
\sum_carry__6_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9A959595656A6A6A"
    )
        port map (
      I0 => \^srca\(31),
      I1 => Instr(29),
      I2 => ALUSrc(0),
      I3 => rd21,
      I4 => rd20(6),
      I5 => \^alucontrol__0\(0),
      O => \q_reg[31]_1\(0)
    );
sum_carry_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FB080808"
    )
        port map (
      I0 => \^di\(3),
      I1 => Instr(0),
      I2 => Instr(3),
      I3 => rd11,
      I4 => rd10(3),
      O => \^srca\(3)
    );
sum_carry_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FB080808"
    )
        port map (
      I0 => \^di\(2),
      I1 => Instr(0),
      I2 => Instr(3),
      I3 => rd11,
      I4 => rd10(2),
      O => \^srca\(2)
    );
sum_carry_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FB080808"
    )
        port map (
      I0 => \^di\(1),
      I1 => Instr(0),
      I2 => Instr(3),
      I3 => rd11,
      I4 => rd10(1),
      O => \^srca\(1)
    );
sum_carry_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FB080808"
    )
        port map (
      I0 => \^di\(0),
      I1 => Instr(0),
      I2 => Instr(3),
      I3 => rd11,
      I4 => rd10(0),
      O => \^srca\(0)
    );
\y_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"59AA"
    )
        port map (
      I0 => \^q_reg[7]_0\(3),
      I1 => Instr(0),
      I2 => Instr(4),
      I3 => Instr(25),
      O => \q_reg[7]_2\(3)
    );
\y_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"59AA"
    )
        port map (
      I0 => \^q_reg[7]_0\(2),
      I1 => Instr(0),
      I2 => Instr(4),
      I3 => Instr(24),
      O => \q_reg[7]_2\(2)
    );
\y_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"59AA"
    )
        port map (
      I0 => \^q_reg[7]_0\(1),
      I1 => Instr(0),
      I2 => Instr(4),
      I3 => Instr(23),
      O => \q_reg[7]_2\(1)
    );
\y_carry__0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"999A99A9A9AA9AAA"
    )
        port map (
      I0 => \^q_reg[7]_0\(0),
      I1 => \carried_carry__1\,
      I2 => sel0(1),
      I3 => Instr(9),
      I4 => sel0(0),
      I5 => Instr(22),
      O => \q_reg[7]_2\(0)
    );
\y_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q_reg[11]_0\(3),
      I1 => \y_carry__1\,
      O => \q_reg[11]_2\(3)
    );
\y_carry__1_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"59AA"
    )
        port map (
      I0 => \^q_reg[11]_0\(2),
      I1 => Instr(0),
      I2 => Instr(4),
      I3 => Instr(28),
      O => \q_reg[11]_2\(2)
    );
\y_carry__1_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"59AA"
    )
        port map (
      I0 => \^q_reg[11]_0\(1),
      I1 => Instr(0),
      I2 => Instr(4),
      I3 => Instr(27),
      O => \q_reg[11]_2\(1)
    );
\y_carry__1_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"59AA"
    )
        port map (
      I0 => \^q_reg[11]_0\(0),
      I1 => Instr(0),
      I2 => Instr(4),
      I3 => Instr(26),
      O => \q_reg[11]_2\(0)
    );
\y_carry__2_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555AAAA5666A666"
    )
        port map (
      I0 => \^q_reg[15]_0\(3),
      I1 => Instr(29),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => Instr(13),
      I5 => \carried_carry__1\,
      O => \q_reg[15]_2\(3)
    );
\y_carry__2_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555AAAA5666A666"
    )
        port map (
      I0 => \^q_reg[15]_0\(2),
      I1 => Instr(29),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => Instr(12),
      I5 => \carried_carry__1\,
      O => \q_reg[15]_2\(2)
    );
\y_carry__2_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555AAAA5666A666"
    )
        port map (
      I0 => \^q_reg[15]_0\(1),
      I1 => Instr(29),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => Instr(11),
      I5 => \carried_carry__1\,
      O => \q_reg[15]_2\(1)
    );
\y_carry__2_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555AAAA5666A666"
    )
        port map (
      I0 => \^q_reg[15]_0\(0),
      I1 => Instr(29),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => Instr(10),
      I5 => \carried_carry__1\,
      O => \q_reg[15]_2\(0)
    );
\y_carry__3_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555AAAA5666A666"
    )
        port map (
      I0 => \^q_reg[19]_0\(3),
      I1 => Instr(29),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => Instr(17),
      I5 => \carried_carry__1\,
      O => \q_reg[19]_1\(3)
    );
\y_carry__3_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555AAAA5666A666"
    )
        port map (
      I0 => \^q_reg[19]_0\(2),
      I1 => Instr(29),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => Instr(16),
      I5 => \carried_carry__1\,
      O => \q_reg[19]_1\(2)
    );
\y_carry__3_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555AAAA5666A666"
    )
        port map (
      I0 => \^q_reg[19]_0\(1),
      I1 => Instr(29),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => Instr(15),
      I5 => \carried_carry__1\,
      O => \q_reg[19]_1\(1)
    );
\y_carry__3_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555AAAA5666A666"
    )
        port map (
      I0 => \^q_reg[19]_0\(0),
      I1 => Instr(29),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => Instr(14),
      I5 => \carried_carry__1\,
      O => \q_reg[19]_1\(0)
    );
\y_carry__4_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"65666A66"
    )
        port map (
      I0 => \^q_reg[23]_0\(3),
      I1 => Instr(29),
      I2 => Instr(4),
      I3 => Instr(0),
      I4 => Instr(21),
      O => \q_reg[23]_2\(3)
    );
\y_carry__4_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"65666A66"
    )
        port map (
      I0 => \^q_reg[23]_0\(2),
      I1 => Instr(29),
      I2 => Instr(4),
      I3 => Instr(0),
      I4 => Instr(20),
      O => \q_reg[23]_2\(2)
    );
\y_carry__4_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"65666A66"
    )
        port map (
      I0 => \^q_reg[23]_0\(1),
      I1 => Instr(29),
      I2 => Instr(4),
      I3 => Instr(0),
      I4 => Instr(19),
      O => \q_reg[23]_2\(1)
    );
\y_carry__4_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"65666A66"
    )
        port map (
      I0 => \^q_reg[23]_0\(0),
      I1 => Instr(29),
      I2 => Instr(4),
      I3 => Instr(0),
      I4 => Instr(18),
      O => \q_reg[23]_2\(0)
    );
\y_carry__5_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"65666A66"
    )
        port map (
      I0 => \^q_reg[27]_0\(3),
      I1 => Instr(29),
      I2 => Instr(4),
      I3 => Instr(0),
      I4 => Instr(25),
      O => \q_reg[27]_4\(3)
    );
\y_carry__5_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"65666A66"
    )
        port map (
      I0 => \^q_reg[27]_0\(2),
      I1 => Instr(29),
      I2 => Instr(4),
      I3 => Instr(0),
      I4 => Instr(24),
      O => \q_reg[27]_4\(2)
    );
\y_carry__5_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"65666A66"
    )
        port map (
      I0 => \^q_reg[27]_0\(1),
      I1 => Instr(29),
      I2 => Instr(4),
      I3 => Instr(0),
      I4 => Instr(23),
      O => \q_reg[27]_4\(1)
    );
\y_carry__5_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"65666A66"
    )
        port map (
      I0 => \^q_reg[27]_0\(0),
      I1 => Instr(29),
      I2 => Instr(4),
      I3 => Instr(0),
      I4 => Instr(22),
      O => \q_reg[27]_4\(0)
    );
\y_carry__6_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q_reg[31]_0\(0),
      I1 => Instr(29),
      O => \q_reg[31]_2\(3)
    );
\y_carry__6_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"65666A66"
    )
        port map (
      I0 => \^q_reg[30]_0\(2),
      I1 => Instr(29),
      I2 => Instr(4),
      I3 => Instr(0),
      I4 => Instr(28),
      O => \q_reg[31]_2\(2)
    );
\y_carry__6_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"65666A66"
    )
        port map (
      I0 => \^q_reg[30]_0\(1),
      I1 => Instr(29),
      I2 => Instr(4),
      I3 => Instr(0),
      I4 => Instr(27),
      O => \q_reg[31]_2\(1)
    );
\y_carry__6_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"65666A66"
    )
        port map (
      I0 => \^q_reg[30]_0\(0),
      I1 => Instr(29),
      I2 => Instr(4),
      I3 => Instr(0),
      I4 => Instr(26),
      O => \q_reg[31]_2\(0)
    );
y_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^di\(2),
      O => S(0)
    );
\y_carry_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"999A99A9A9AA9AAA"
    )
        port map (
      I0 => \^di\(3),
      I1 => \carried_carry__1\,
      I2 => sel0(1),
      I3 => Instr(8),
      I4 => sel0(0),
      I5 => Instr(21),
      O => \q_reg[3]_1\(3)
    );
y_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"999A99A9A9AA9AAA"
    )
        port map (
      I0 => \^di\(2),
      I1 => \carried_carry__1\,
      I2 => sel0(1),
      I3 => Instr(7),
      I4 => sel0(0),
      I5 => Instr(20),
      O => \q_reg[3]_1\(2)
    );
y_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"999A99A9A9AA9AAA"
    )
        port map (
      I0 => \^di\(1),
      I1 => \carried_carry__1\,
      I2 => sel0(1),
      I3 => Instr(6),
      I4 => sel0(0),
      I5 => Instr(19),
      O => \q_reg[3]_1\(1)
    );
y_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA999AAA9A"
    )
        port map (
      I0 => \^di\(0),
      I1 => \carried_carry__1\,
      I2 => Instr(18),
      I3 => sel0(0),
      I4 => Instr(5),
      I5 => sel0(1),
      O => \q_reg[3]_1\(0)
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
  attribute SOFT_HLUTNM of \rd[25]_INST_0\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \rd[28]_INST_0\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \rd[2]_INST_0\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \rd[4]_INST_0\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \rd[5]_INST_0\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \rd[6]_INST_0\ : label is "soft_lutpair36";
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
    rd10 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    clk_0 : out STD_LOGIC_VECTOR ( 6 downto 0 );
    \ALUResult[1]_INST_0_i_2_0\ : out STD_LOGIC;
    ALUResult : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \q_reg[5]\ : out STD_LOGIC_VECTOR ( 16 downto 0 );
    \ALUResult[3]_INST_0_i_2_0\ : out STD_LOGIC;
    \ALUResult[9]_INST_0_i_2_0\ : out STD_LOGIC;
    \ALUResult[11]_INST_0_i_1\ : out STD_LOGIC;
    \ALUResult[31]_INST_0_i_12\ : out STD_LOGIC;
    \q_reg[11]\ : out STD_LOGIC;
    \q[0]_i_19\ : out STD_LOGIC;
    \q_reg[17]\ : out STD_LOGIC;
    \ALUResult[31]_INST_0_i_12_0\ : out STD_LOGIC;
    \q_reg[29]\ : out STD_LOGIC;
    \q_reg[30]\ : out STD_LOGIC;
    \q_reg[31]\ : out STD_LOGIC;
    \q_reg[28]\ : out STD_LOGIC;
    \q_reg[16]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[28]_0\ : out STD_LOGIC;
    \q_reg[16]_0\ : out STD_LOGIC;
    \ALUResult[31]_INST_0_i_14\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \ALUResult[31]_INST_0_i_12_1\ : out STD_LOGIC;
    \ALUResult[31]_INST_0_i_12_2\ : out STD_LOGIC;
    \ALUResult[31]_INST_0_i_12_3\ : out STD_LOGIC;
    \ALUResult[31]_INST_0_i_12_4\ : out STD_LOGIC;
    \ALUResult[31]_INST_0_i_12_5\ : out STD_LOGIC;
    \ALUResult[31]_INST_0_i_12_6\ : out STD_LOGIC;
    \ALUResult[31]_INST_0_i_12_7\ : out STD_LOGIC;
    \ALUResult[31]_INST_0_i_12_8\ : out STD_LOGIC;
    \ALUResult[31]_INST_0_i_12_9\ : out STD_LOGIC;
    \ALUResult[31]_INST_0_i_12_10\ : out STD_LOGIC;
    \ALUResult[31]_INST_0_i_12_11\ : out STD_LOGIC;
    \ALUResult[31]_INST_0_i_12_12\ : out STD_LOGIC;
    \ALUResult[31]_INST_0_i_12_13\ : out STD_LOGIC;
    \ALUResult[31]_INST_0_i_12_14\ : out STD_LOGIC;
    \ALUResult[31]_INST_0_i_12_15\ : out STD_LOGIC;
    \ALUResult[31]_INST_0_i_12_16\ : out STD_LOGIC;
    \ALUResult[31]_INST_0_i_12_17\ : out STD_LOGIC;
    \ALUResult[31]_INST_0_i_12_18\ : out STD_LOGIC;
    \ALUResult[11]_INST_0_i_17\ : out STD_LOGIC;
    DI : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[14]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[22]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[30]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \ALUResult[11]_INST_0_i_26\ : out STD_LOGIC;
    \q_reg[27]\ : out STD_LOGIC;
    Jump : out STD_LOGIC;
    WriteData : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \q_reg[3]\ : out STD_LOGIC;
    \q_reg[27]_0\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    S : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[7]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[11]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[15]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[19]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[23]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[27]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[30]_1\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \ALUResult[22]_INST_0_i_7_0\ : out STD_LOGIC;
    \q_reg[10]\ : out STD_LOGIC;
    \q_reg[3]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[4]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \q_reg[6]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \q_reg[14]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[11]_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \q_reg[15]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[19]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[22]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[23]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[27]_2\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[28]_1\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \q_reg[30]_2\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \q_reg[0]\ : out STD_LOGIC;
    clk : in STD_LOGIC;
    wd3 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Instr : in STD_LOGIC_VECTOR ( 25 downto 0 );
    \q[0]_i_5\ : in STD_LOGIC;
    \q[0]_i_5_0\ : in STD_LOGIC;
    ALUControl : in STD_LOGIC_VECTOR ( 2 downto 0 );
    O : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \addressM[23]\ : in STD_LOGIC;
    \addressM[1]\ : in STD_LOGIC;
    SrcA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \addressM[10]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \q[0]_i_6\ : in STD_LOGIC;
    \q[0]_i_6_0\ : in STD_LOGIC;
    \q[0]_i_12_0\ : in STD_LOGIC;
    \q[0]_i_3\ : in STD_LOGIC;
    \q[0]_i_3_0\ : in STD_LOGIC;
    \addressM[17]\ : in STD_LOGIC;
    \addressM[18]\ : in STD_LOGIC;
    \addressM[19]\ : in STD_LOGIC;
    \q[0]_i_7_0\ : in STD_LOGIC;
    \addressM[20]\ : in STD_LOGIC;
    \addressM[23]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \addressM[23]_1\ : in STD_LOGIC;
    \addressM[24]\ : in STD_LOGIC;
    \addressM[25]\ : in STD_LOGIC;
    \addressM[26]\ : in STD_LOGIC;
    \addressM[27]\ : in STD_LOGIC;
    \addressM[31]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \ALUControl__0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    rd11 : in STD_LOGIC;
    \addressM[28]\ : in STD_LOGIC;
    \sum_carry__6\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \addressM[27]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \addressM[27]_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \addressM[23]_2\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \ALUResult[19]_INST_0_i_2\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \sum_carry__3\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \addressM[11]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \ALUResult[1]_INST_0_i_1_0\ : in STD_LOGIC;
    \addressM[15]\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \ALUResult[2]_INST_0_i_1_0\ : in STD_LOGIC;
    \ALUResult[3]_INST_0_i_1_0\ : in STD_LOGIC;
    \addressM[7]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \ALUResult[8]_INST_0_i_1_0\ : in STD_LOGIC;
    \ALUResult[9]_INST_0_i_1_0\ : in STD_LOGIC;
    \addressM[15]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \addressM[21]\ : in STD_LOGIC;
    \addressM[22]\ : in STD_LOGIC;
    \ALUResult[23]_INST_0_i_2_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \ALUResult[22]_INST_0_i_9_0\ : in STD_LOGIC;
    \ALUResult[20]_INST_0_i_6_0\ : in STD_LOGIC;
    \ALUResult[19]_INST_0_i_4_0\ : in STD_LOGIC;
    \ALUResult[17]_INST_0_i_4_0\ : in STD_LOGIC;
    \ALUResult[12]_INST_0_i_6\ : in STD_LOGIC;
    \ALUResult[12]_INST_0_i_6_0\ : in STD_LOGIC;
    \ALUResult[12]_INST_0_i_6_1\ : in STD_LOGIC;
    rd21 : in STD_LOGIC;
    ALUSrc : in STD_LOGIC_VECTOR ( 0 to 0 );
    \ALUResult[30]_INST_0_i_2\ : in STD_LOGIC;
    \sum_carry__2\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \ALUResult[29]_INST_0_i_2\ : in STD_LOGIC;
    \ALUResult[30]_INST_0_i_2_0\ : in STD_LOGIC;
    \ALUResult[25]_INST_0_i_6_0\ : in STD_LOGIC;
    \ALUResult[26]_INST_0_i_6_0\ : in STD_LOGIC;
    \ALUResult[22]_INST_0_i_19_0\ : in STD_LOGIC;
    \ALUResult[22]_INST_0_i_19_1\ : in STD_LOGIC;
    \ALUResult[0]_INST_0_i_1\ : in STD_LOGIC;
    \ALUResult[29]_INST_0_i_5_0\ : in STD_LOGIC;
    \ALUResult[29]_INST_0_i_5_1\ : in STD_LOGIC;
    \ALUResult[29]_INST_0_i_5_2\ : in STD_LOGIC;
    \ALUResult[29]_INST_0_i_5_3\ : in STD_LOGIC;
    \ALUResult[19]_INST_0_i_7_0\ : in STD_LOGIC;
    \ALUResult[21]_INST_0_i_9_0\ : in STD_LOGIC;
    \ALUResult[16]_INST_0_i_7\ : in STD_LOGIC;
    \ALUResult[20]_INST_0_i_9_0\ : in STD_LOGIC;
    \ALUResult[22]_INST_0_i_19_2\ : in STD_LOGIC;
    \ALUResult[18]_INST_0_i_7_0\ : in STD_LOGIC;
    \ALUResult[21]_INST_0_i_9_1\ : in STD_LOGIC;
    \ALUResult[18]_INST_0_i_7_1\ : in STD_LOGIC;
    \ALUResult[18]_INST_0_i_7_2\ : in STD_LOGIC;
    \ALUResult[18]_INST_0_i_7_3\ : in STD_LOGIC;
    \ALUResult[19]_INST_0_i_7_1\ : in STD_LOGIC;
    \ALUResult[19]_INST_0_i_7_2\ : in STD_LOGIC;
    \ALUResult[22]_INST_0_i_19_3\ : in STD_LOGIC;
    \ALUResult[21]_INST_0_i_5\ : in STD_LOGIC;
    sel0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    \ALUResult[21]_INST_0_i_5_0\ : in STD_LOGIC;
    \ALUResult[21]_INST_0_i_5_1\ : in STD_LOGIC;
    \ALUResult[21]_INST_0_i_5_2\ : in STD_LOGIC;
    \ALUResult[19]_INST_0_i_14\ : in STD_LOGIC;
    \ALUResult[19]_INST_0_i_14_0\ : in STD_LOGIC;
    \ALUResult[19]_INST_0_i_14_1\ : in STD_LOGIC;
    \ALUResult[19]_INST_0_i_14_2\ : in STD_LOGIC;
    \ALUResult[11]_INST_0_i_1_0\ : in STD_LOGIC;
    immext : in STD_LOGIC_VECTOR ( 7 downto 0 );
    d0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    sum_carry : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \sum_carry__0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \ALUResult[9]_INST_0_i_2_1\ : in STD_LOGIC;
    \ALUResult[9]_INST_0_i_2_2\ : in STD_LOGIC;
    \ALUResult[21]_INST_0_i_2_0\ : in STD_LOGIC;
    \ALUResult[21]_INST_0_i_2_1\ : in STD_LOGIC;
    \ALUResult[21]_INST_0_i_2_2\ : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_regfile;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_regfile is
  signal \^aluresult\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \^aluresult[11]_inst_0_i_17\ : STD_LOGIC;
  signal \ALUResult[17]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult[17]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \ALUResult[17]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \ALUResult[18]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \ALUResult[18]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \ALUResult[18]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \ALUResult[18]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult[18]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \ALUResult[18]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \ALUResult[19]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \ALUResult[19]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \ALUResult[19]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \ALUResult[19]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult[19]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \ALUResult[19]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \ALUResult[19]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \ALUResult[1]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \ALUResult[1]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \ALUResult[1]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \ALUResult[1]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ALUResult[1]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult[1]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \ALUResult[20]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \ALUResult[20]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \ALUResult[20]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult[20]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \ALUResult[20]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \ALUResult[20]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \ALUResult[21]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \ALUResult[21]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \ALUResult[21]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \ALUResult[21]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ALUResult[21]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult[21]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \ALUResult[21]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \ALUResult[21]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \ALUResult[22]_INST_0_i_18_n_0\ : STD_LOGIC;
  signal \ALUResult[22]_INST_0_i_19_n_0\ : STD_LOGIC;
  signal \ALUResult[22]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \ALUResult[22]_INST_0_i_21_n_0\ : STD_LOGIC;
  signal \ALUResult[22]_INST_0_i_22_n_0\ : STD_LOGIC;
  signal \ALUResult[22]_INST_0_i_23_n_0\ : STD_LOGIC;
  signal \ALUResult[22]_INST_0_i_24_n_0\ : STD_LOGIC;
  signal \ALUResult[22]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult[22]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \ALUResult[22]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \ALUResult[22]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \ALUResult[23]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ALUResult[23]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult[23]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \ALUResult[23]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \ALUResult[24]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \ALUResult[24]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \ALUResult[24]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ALUResult[24]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult[24]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \ALUResult[25]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \ALUResult[25]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \ALUResult[25]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ALUResult[25]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult[25]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \ALUResult[26]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \ALUResult[26]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \ALUResult[26]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \ALUResult[26]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ALUResult[26]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult[26]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \ALUResult[27]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \ALUResult[27]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \ALUResult[27]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \ALUResult[27]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \ALUResult[27]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \ALUResult[27]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ALUResult[27]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult[27]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \ALUResult[28]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \ALUResult[28]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \ALUResult[28]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \ALUResult[28]_INST_0_i_17_n_0\ : STD_LOGIC;
  signal \ALUResult[28]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \ALUResult[29]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \ALUResult[29]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult[29]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \ALUResult[29]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \ALUResult[29]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \ALUResult[2]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \ALUResult[2]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \ALUResult[2]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ALUResult[2]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult[2]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \ALUResult[30]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \ALUResult[30]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult[30]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \ALUResult[30]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \ALUResult[30]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \ALUResult[30]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \^aluresult[31]_inst_0_i_12\ : STD_LOGIC;
  signal \^aluresult[31]_inst_0_i_12_0\ : STD_LOGIC;
  signal \ALUResult[31]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \ALUResult[31]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \ALUResult[3]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \ALUResult[3]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \ALUResult[3]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ALUResult[3]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult[3]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \ALUResult[4]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \ALUResult[5]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \ALUResult[6]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \ALUResult[7]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \ALUResult[8]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \ALUResult[8]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ALUResult[8]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult[8]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \ALUResult[8]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \ALUResult[9]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \ALUResult[9]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ALUResult[9]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult[9]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \ALUResult[9]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal SrcB : STD_LOGIC_VECTOR ( 28 downto 8 );
  signal \^writedata\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \alu/xorOut__31\ : STD_LOGIC_VECTOR ( 29 downto 5 );
  signal \^clk_0\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal data5 : STD_LOGIC_VECTOR ( 28 downto 24 );
  signal data7 : STD_LOGIC_VECTOR ( 9 downto 1 );
  signal \q[0]_i_14_n_0\ : STD_LOGIC;
  signal \q[0]_i_16_n_0\ : STD_LOGIC;
  signal \q[0]_i_17_n_0\ : STD_LOGIC;
  signal \q[0]_i_18_n_0\ : STD_LOGIC;
  signal \q_reg[0]_i_21_n_0\ : STD_LOGIC;
  signal \q_reg[0]_i_23_n_0\ : STD_LOGIC;
  signal \^q_reg[11]\ : STD_LOGIC;
  signal \^q_reg[16]\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^q_reg[17]\ : STD_LOGIC;
  signal \^q_reg[27]\ : STD_LOGIC;
  signal \^q_reg[3]\ : STD_LOGIC;
  signal \^q_reg[5]\ : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal \^rd10\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal rd20 : STD_LOGIC_VECTOR ( 30 downto 0 );
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
  attribute SOFT_HLUTNM of \ALUResult[19]_INST_0_i_12\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \ALUResult[20]_INST_0_i_12\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \ALUResult[21]_INST_0_i_12\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \ALUResult[22]_INST_0_i_22\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \ALUResult[22]_INST_0_i_23\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \ALUResult[22]_INST_0_i_24\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \ALUResult[26]_INST_0_i_13\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \ALUResult[27]_INST_0_i_12\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \ALUResult[27]_INST_0_i_13\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \ALUResult[27]_INST_0_i_14\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \ALUResult[27]_INST_0_i_15\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \ALUResult[28]_INST_0_i_17\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \ALUResult[29]_INST_0_i_5\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \ALUResult[2]_INST_0_i_5\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \ALUResult[30]_INST_0_i_5\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \ALUResult[3]_INST_0_i_5\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \ALUResult[4]_INST_0_i_5\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \ALUResult[5]_INST_0_i_5\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \q[8]_i_6\ : label is "soft_lutpair28";
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
  attribute SOFT_HLUTNM of rf_reg_r1_0_31_0_5_i_8 : label is "soft_lutpair28";
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
  ALUResult(15 downto 0) <= \^aluresult\(15 downto 0);
  \ALUResult[11]_INST_0_i_17\ <= \^aluresult[11]_inst_0_i_17\;
  \ALUResult[31]_INST_0_i_12\ <= \^aluresult[31]_inst_0_i_12\;
  \ALUResult[31]_INST_0_i_12_0\ <= \^aluresult[31]_inst_0_i_12_0\;
  WriteData(31 downto 0) <= \^writedata\(31 downto 0);
  clk_0(6 downto 0) <= \^clk_0\(6 downto 0);
  \q_reg[11]\ <= \^q_reg[11]\;
  \q_reg[16]\(3 downto 0) <= \^q_reg[16]\(3 downto 0);
  \q_reg[17]\ <= \^q_reg[17]\;
  \q_reg[27]\ <= \^q_reg[27]\;
  \q_reg[3]\ <= \^q_reg[3]\;
  \q_reg[5]\(16 downto 0) <= \^q_reg[5]\(16 downto 0);
  rd10(31 downto 0) <= \^rd10\(31 downto 0);
\ALUResult[0]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => \^q_reg[5]\(1),
      I1 => \^q_reg[5]\(3),
      I2 => SrcA(0),
      I3 => \^q_reg[5]\(4),
      I4 => \^q_reg[5]\(2),
      I5 => \^q_reg[5]\(0),
      O => \q_reg[0]\
    );
\ALUResult[10]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0C0F0C0BBFFBBCC"
    )
        port map (
      I0 => \^q_reg[5]\(8),
      I1 => ALUControl(1),
      I2 => \addressM[10]\(2),
      I3 => ALUControl(0),
      I4 => \addressM[15]\(0),
      I5 => \ALUControl__0\(0),
      O => \^aluresult[31]_inst_0_i_12\
    );
\ALUResult[10]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8AFF8A008A008A00"
    )
        port map (
      I0 => Instr(24),
      I1 => Instr(3),
      I2 => Instr(0),
      I3 => ALUSrc(0),
      I4 => rd21,
      I5 => \^clk_0\(5),
      O => \^q_reg[5]\(8)
    );
\ALUResult[10]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000004777B888"
    )
        port map (
      I0 => \addressM[11]\(2),
      I1 => \addressM[28]\,
      I2 => rd11,
      I3 => \^rd10\(10),
      I4 => \^q_reg[5]\(8),
      I5 => \ALUControl__0\(0),
      O => \q_reg[10]\
    );
\ALUResult[10]_INST_0_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000B08"
    )
        port map (
      I0 => SrcA(3),
      I1 => \^q_reg[5]\(2),
      I2 => \^q_reg[5]\(4),
      I3 => SrcA(7),
      I4 => \^q_reg[5]\(3),
      O => \^q_reg[3]\
    );
\ALUResult[11]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEAAAEAAA800080"
    )
        port map (
      I0 => \addressM[1]\,
      I1 => \^rd10\(11),
      I2 => rd11,
      I3 => \addressM[28]\,
      I4 => \addressM[11]\(3),
      I5 => \^q_reg[5]\(9),
      O => \^q_reg[11]\
    );
\ALUResult[11]_INST_0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => \ALUResult[11]_INST_0_i_1_0\,
      I1 => ALUSrc(0),
      I2 => rd21,
      I3 => rd20(11),
      O => \^q_reg[5]\(9)
    );
\ALUResult[11]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6A556A6A6AAA6A6A"
    )
        port map (
      I0 => \^q_reg[5]\(9),
      I1 => \^rd10\(11),
      I2 => rd11,
      I3 => Instr(2),
      I4 => Instr(0),
      I5 => \addressM[11]\(3),
      O => \^q_reg[16]\(0)
    );
\ALUResult[12]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0C0F0C0BBFFBBCC"
    )
        port map (
      I0 => \^q_reg[5]\(10),
      I1 => ALUControl(1),
      I2 => \addressM[15]_0\(0),
      I3 => ALUControl(0),
      I4 => \addressM[15]\(1),
      I5 => \ALUControl__0\(0),
      O => \ALUResult[31]_INST_0_i_12_5\
    );
\ALUResult[12]_INST_0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => immext(0),
      I1 => ALUSrc(0),
      I2 => rd21,
      I3 => rd20(12),
      O => \^q_reg[5]\(10)
    );
\ALUResult[13]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^q_reg[27]\,
      I1 => \ALUResult[12]_INST_0_i_6\,
      I2 => \^q_reg[5]\(1),
      I3 => \ALUResult[12]_INST_0_i_6_0\,
      I4 => \^q_reg[5]\(2),
      I5 => \ALUResult[12]_INST_0_i_6_1\,
      O => \ALUResult[11]_INST_0_i_26\
    );
\ALUResult[13]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0C0F0C0BBFFBBCC"
    )
        port map (
      I0 => \^q_reg[5]\(11),
      I1 => ALUControl(1),
      I2 => \addressM[15]_0\(1),
      I3 => ALUControl(0),
      I4 => \addressM[15]\(2),
      I5 => \ALUControl__0\(0),
      O => \ALUResult[31]_INST_0_i_12_6\
    );
\ALUResult[13]_INST_0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => immext(1),
      I1 => ALUSrc(0),
      I2 => rd21,
      I3 => rd20(13),
      O => \^q_reg[5]\(11)
    );
\ALUResult[14]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0C0F0C0BBFFBBCC"
    )
        port map (
      I0 => \^q_reg[5]\(12),
      I1 => ALUControl(1),
      I2 => \addressM[15]_0\(2),
      I3 => ALUControl(0),
      I4 => \addressM[15]\(3),
      I5 => \ALUControl__0\(0),
      O => \ALUResult[31]_INST_0_i_12_7\
    );
\ALUResult[14]_INST_0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => immext(2),
      I1 => ALUSrc(0),
      I2 => rd21,
      I3 => rd20(14),
      O => \^q_reg[5]\(12)
    );
\ALUResult[15]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0C0F0C0BBFFBBCC"
    )
        port map (
      I0 => \^q_reg[5]\(13),
      I1 => ALUControl(1),
      I2 => \addressM[15]_0\(3),
      I3 => ALUControl(0),
      I4 => \addressM[15]\(4),
      I5 => \ALUControl__0\(0),
      O => \ALUResult[31]_INST_0_i_12_8\
    );
\ALUResult[15]_INST_0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => immext(3),
      I1 => ALUSrc(0),
      I2 => rd21,
      I3 => rd20(15),
      O => \^q_reg[5]\(13)
    );
\ALUResult[16]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEAAAEAAA800080"
    )
        port map (
      I0 => \addressM[1]\,
      I1 => \^rd10\(16),
      I2 => rd11,
      I3 => \addressM[28]\,
      I4 => \sum_carry__3\(0),
      I5 => SrcB(16),
      O => \q_reg[16]_0\
    );
\ALUResult[16]_INST_0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F0BB"
    )
        port map (
      I0 => SrcB(16),
      I1 => ALUControl(0),
      I2 => \ALUResult[19]_INST_0_i_2\(0),
      I3 => \ALUControl__0\(0),
      O => \ALUResult[31]_INST_0_i_12_9\
    );
\ALUResult[16]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6A556A6A6AAA6A6A"
    )
        port map (
      I0 => SrcB(16),
      I1 => \^rd10\(16),
      I2 => rd11,
      I3 => Instr(2),
      I4 => Instr(0),
      I5 => \sum_carry__3\(0),
      O => \^q_reg[16]\(3)
    );
\ALUResult[17]_INST_0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \^q_reg[17]\,
      I1 => \addressM[17]\,
      O => \^aluresult\(5),
      S => ALUControl(2)
    );
\ALUResult[17]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALUResult[17]_INST_0_i_3_n_0\,
      I1 => \ALUResult[17]_INST_0_i_4_n_0\,
      O => \^q_reg[17]\,
      S => \addressM[23]\
    );
\ALUResult[17]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEAAAEAAA800080"
    )
        port map (
      I0 => \addressM[1]\,
      I1 => \^rd10\(17),
      I2 => rd11,
      I3 => \addressM[28]\,
      I4 => \sum_carry__3\(1),
      I5 => SrcB(17),
      O => \ALUResult[17]_INST_0_i_3_n_0\
    );
\ALUResult[17]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88B8FFFF88B80000"
    )
        port map (
      I0 => \ALUResult[17]_INST_0_i_7_n_0\,
      I1 => ALUControl(0),
      I2 => \alu/xorOut__31\(17),
      I3 => \ALUControl__0\(0),
      I4 => \addressM[1]\,
      I5 => \ALUResult[19]_INST_0_i_2\(1),
      O => \ALUResult[17]_INST_0_i_4_n_0\
    );
\ALUResult[17]_INST_0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F0BB"
    )
        port map (
      I0 => SrcB(17),
      I1 => ALUControl(0),
      I2 => \ALUResult[19]_INST_0_i_2\(1),
      I3 => \ALUControl__0\(0),
      O => \ALUResult[31]_INST_0_i_12_10\
    );
\ALUResult[17]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[18]_INST_0_i_10_n_0\,
      I1 => \^aluresult[11]_inst_0_i_17\,
      I2 => \ALUControl__0\(0),
      I3 => \ALUResult[18]_INST_0_i_11_n_0\,
      I4 => \^q_reg[5]\(0),
      I5 => \ALUResult[17]_INST_0_i_4_0\,
      O => \ALUResult[17]_INST_0_i_7_n_0\
    );
\ALUResult[17]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[19]_INST_0_i_12_n_0\,
      I1 => \ALUResult[19]_INST_0_i_7_0\,
      I2 => \^q_reg[5]\(1),
      I3 => \ALUResult[21]_INST_0_i_9_0\,
      I4 => \^q_reg[5]\(2),
      I5 => \ALUResult[16]_INST_0_i_7\,
      O => \^aluresult[11]_inst_0_i_17\
    );
\ALUResult[18]_INST_0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \ALUResult[18]_INST_0_i_1_n_0\,
      I1 => \addressM[18]\,
      O => \^aluresult\(6),
      S => ALUControl(2)
    );
\ALUResult[18]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALUResult[18]_INST_0_i_3_n_0\,
      I1 => \ALUResult[18]_INST_0_i_4_n_0\,
      O => \ALUResult[18]_INST_0_i_1_n_0\,
      S => \addressM[23]\
    );
\ALUResult[18]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[20]_INST_0_i_12_n_0\,
      I1 => \ALUResult[20]_INST_0_i_9_0\,
      I2 => \^q_reg[5]\(1),
      I3 => \ALUResult[22]_INST_0_i_19_2\,
      I4 => \^q_reg[5]\(2),
      I5 => \ALUResult[18]_INST_0_i_7_0\,
      O => \ALUResult[18]_INST_0_i_10_n_0\
    );
\ALUResult[18]_INST_0_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \ALUResult[18]_INST_0_i_7_1\,
      I1 => \^q_reg[5]\(1),
      I2 => \ALUResult[18]_INST_0_i_7_2\,
      I3 => \^q_reg[5]\(2),
      I4 => \ALUResult[18]_INST_0_i_7_3\,
      O => \ALUResult[18]_INST_0_i_11_n_0\
    );
\ALUResult[18]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEAAAEAAA800080"
    )
        port map (
      I0 => \addressM[1]\,
      I1 => \^rd10\(18),
      I2 => rd11,
      I3 => \addressM[28]\,
      I4 => \sum_carry__3\(2),
      I5 => SrcB(18),
      O => \ALUResult[18]_INST_0_i_3_n_0\
    );
\ALUResult[18]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88B8FFFF88B80000"
    )
        port map (
      I0 => \ALUResult[18]_INST_0_i_7_n_0\,
      I1 => ALUControl(0),
      I2 => \alu/xorOut__31\(18),
      I3 => \ALUControl__0\(0),
      I4 => \addressM[1]\,
      I5 => \ALUResult[19]_INST_0_i_2\(2),
      O => \ALUResult[18]_INST_0_i_4_n_0\
    );
\ALUResult[18]_INST_0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F0BB"
    )
        port map (
      I0 => SrcB(18),
      I1 => ALUControl(0),
      I2 => \ALUResult[19]_INST_0_i_2\(2),
      I3 => \ALUControl__0\(0),
      O => \ALUResult[31]_INST_0_i_12_11\
    );
\ALUResult[18]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[19]_INST_0_i_9_n_0\,
      I1 => \ALUResult[18]_INST_0_i_10_n_0\,
      I2 => \ALUControl__0\(0),
      I3 => \ALUResult[19]_INST_0_i_10_n_0\,
      I4 => \^q_reg[5]\(0),
      I5 => \ALUResult[18]_INST_0_i_11_n_0\,
      O => \ALUResult[18]_INST_0_i_7_n_0\
    );
\ALUResult[18]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6A556A6A6AAA6A6A"
    )
        port map (
      I0 => SrcB(18),
      I1 => \^rd10\(18),
      I2 => rd11,
      I3 => Instr(2),
      I4 => Instr(0),
      I5 => \sum_carry__3\(2),
      O => \alu/xorOut__31\(18)
    );
\ALUResult[19]_INST_0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \ALUResult[19]_INST_0_i_1_n_0\,
      I1 => \addressM[19]\,
      O => \^aluresult\(7),
      S => ALUControl(2)
    );
\ALUResult[19]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALUResult[19]_INST_0_i_3_n_0\,
      I1 => \ALUResult[19]_INST_0_i_4_n_0\,
      O => \ALUResult[19]_INST_0_i_1_n_0\,
      S => \addressM[23]\
    );
\ALUResult[19]_INST_0_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \ALUResult[19]_INST_0_i_7_1\,
      I1 => \^q_reg[5]\(1),
      I2 => \ALUResult[19]_INST_0_i_7_2\,
      I3 => \^q_reg[5]\(2),
      I4 => \^q_reg[27]\,
      O => \ALUResult[19]_INST_0_i_10_n_0\
    );
\ALUResult[19]_INST_0_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CDC8"
    )
        port map (
      I0 => \^q_reg[5]\(3),
      I1 => SrcA(31),
      I2 => \^q_reg[5]\(4),
      I3 => SrcA(23),
      O => \ALUResult[19]_INST_0_i_12_n_0\
    );
\ALUResult[19]_INST_0_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => SrcA(27),
      I1 => \^q_reg[5]\(3),
      I2 => SrcA(19),
      I3 => \^q_reg[5]\(4),
      O => \^q_reg[27]\
    );
\ALUResult[19]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEAAAEAAA800080"
    )
        port map (
      I0 => \addressM[1]\,
      I1 => \^rd10\(19),
      I2 => rd11,
      I3 => \addressM[28]\,
      I4 => \sum_carry__3\(3),
      I5 => SrcB(19),
      O => \ALUResult[19]_INST_0_i_3_n_0\
    );
\ALUResult[19]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88B8FFFF88B80000"
    )
        port map (
      I0 => \ALUResult[19]_INST_0_i_7_n_0\,
      I1 => ALUControl(0),
      I2 => \alu/xorOut__31\(19),
      I3 => \ALUControl__0\(0),
      I4 => \addressM[1]\,
      I5 => \ALUResult[19]_INST_0_i_2\(3),
      O => \ALUResult[19]_INST_0_i_4_n_0\
    );
\ALUResult[19]_INST_0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F0BB"
    )
        port map (
      I0 => SrcB(19),
      I1 => ALUControl(0),
      I2 => \ALUResult[19]_INST_0_i_2\(3),
      I3 => \ALUControl__0\(0),
      O => \ALUResult[31]_INST_0_i_12_12\
    );
\ALUResult[19]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[20]_INST_0_i_10_n_0\,
      I1 => \ALUResult[19]_INST_0_i_9_n_0\,
      I2 => \ALUControl__0\(0),
      I3 => \ALUResult[19]_INST_0_i_4_0\,
      I4 => \^q_reg[5]\(0),
      I5 => \ALUResult[19]_INST_0_i_10_n_0\,
      O => \ALUResult[19]_INST_0_i_7_n_0\
    );
\ALUResult[19]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[21]_INST_0_i_12_n_0\,
      I1 => \ALUResult[21]_INST_0_i_9_0\,
      I2 => \^q_reg[5]\(1),
      I3 => \ALUResult[19]_INST_0_i_12_n_0\,
      I4 => \^q_reg[5]\(2),
      I5 => \ALUResult[19]_INST_0_i_7_0\,
      O => \ALUResult[19]_INST_0_i_9_n_0\
    );
\ALUResult[1]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALUResult[1]_INST_0_i_1_n_0\,
      I1 => \ALUResult[1]_INST_0_i_2_n_0\,
      O => \^aluresult\(0),
      S => ALUControl(2)
    );
\ALUResult[1]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFCFAFC0AFC0A0C0"
    )
        port map (
      I0 => \ALUResult[1]_INST_0_i_3_n_0\,
      I1 => O(0),
      I2 => \addressM[23]\,
      I3 => \addressM[1]\,
      I4 => SrcA(1),
      I5 => \^q_reg[5]\(1),
      O => \ALUResult[1]_INST_0_i_1_n_0\
    );
\ALUResult[1]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000008F888088"
    )
        port map (
      I0 => \^rd10\(0),
      I1 => rd11,
      I2 => Instr(2),
      I3 => Instr(0),
      I4 => sum_carry(0),
      I5 => \^q_reg[5]\(4),
      O => \ALUResult[1]_INST_0_i_10_n_0\
    );
\ALUResult[1]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000008F888088"
    )
        port map (
      I0 => \^rd10\(1),
      I1 => rd11,
      I2 => Instr(2),
      I3 => Instr(0),
      I4 => sum_carry(1),
      I5 => \^q_reg[5]\(4),
      O => \ALUResult[1]_INST_0_i_11_n_0\
    );
\ALUResult[1]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0C0F0C0BBFFBBCC"
    )
        port map (
      I0 => \^q_reg[5]\(1),
      I1 => ALUControl(1),
      I2 => O(0),
      I3 => ALUControl(0),
      I4 => data7(1),
      I5 => \ALUControl__0\(0),
      O => \ALUResult[1]_INST_0_i_2_n_0\
    );
\ALUResult[1]_INST_0_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALUResult[1]_INST_0_i_6_n_0\,
      I1 => \ALUResult[1]_INST_0_i_1_0\,
      O => \ALUResult[1]_INST_0_i_3_n_0\,
      S => ALUControl(0)
    );
\ALUResult[1]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E2FFFF00E20000"
    )
        port map (
      I0 => \ALUResult[21]_INST_0_i_5\,
      I1 => sel0(0),
      I2 => \ALUResult[21]_INST_0_i_5_0\,
      I3 => \ALUResult[30]_INST_0_i_2\,
      I4 => ALUSrc(0),
      I5 => \^writedata\(1),
      O => \^q_reg[5]\(1)
    );
\ALUResult[1]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000B08"
    )
        port map (
      I0 => \ALUResult[1]_INST_0_i_10_n_0\,
      I1 => \^q_reg[5]\(0),
      I2 => \^q_reg[5]\(2),
      I3 => \ALUResult[1]_INST_0_i_11_n_0\,
      I4 => \^q_reg[5]\(3),
      I5 => \^q_reg[5]\(1),
      O => data7(1)
    );
\ALUResult[1]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000004777B888"
    )
        port map (
      I0 => sum_carry(1),
      I1 => \addressM[28]\,
      I2 => rd11,
      I3 => \^rd10\(1),
      I4 => \^q_reg[5]\(1),
      I5 => \ALUControl__0\(0),
      O => \ALUResult[1]_INST_0_i_6_n_0\
    );
\ALUResult[20]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \^aluresult[31]_inst_0_i_12_0\,
      I1 => ALUControl(1),
      I2 => \addressM[20]\,
      I3 => ALUControl(2),
      I4 => \ALUResult[20]_INST_0_i_3_n_0\,
      O => \^aluresult\(8)
    );
\ALUResult[20]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F0BB"
    )
        port map (
      I0 => SrcB(20),
      I1 => ALUControl(0),
      I2 => \addressM[23]_0\(0),
      I3 => \ALUControl__0\(0),
      O => \^aluresult[31]_inst_0_i_12_0\
    );
\ALUResult[20]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[22]_INST_0_i_24_n_0\,
      I1 => \ALUResult[22]_INST_0_i_19_2\,
      I2 => \^q_reg[5]\(1),
      I3 => \ALUResult[20]_INST_0_i_12_n_0\,
      I4 => \^q_reg[5]\(2),
      I5 => \ALUResult[20]_INST_0_i_9_0\,
      O => \ALUResult[20]_INST_0_i_10_n_0\
    );
\ALUResult[20]_INST_0_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CDC8"
    )
        port map (
      I0 => \^q_reg[5]\(3),
      I1 => SrcA(31),
      I2 => \^q_reg[5]\(4),
      I3 => SrcA(24),
      O => \ALUResult[20]_INST_0_i_12_n_0\
    );
\ALUResult[20]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFCFAFC0AFC0A0C0"
    )
        port map (
      I0 => \ALUResult[20]_INST_0_i_6_n_0\,
      I1 => \addressM[23]_0\(0),
      I2 => \addressM[23]\,
      I3 => \addressM[1]\,
      I4 => SrcA(20),
      I5 => SrcB(20),
      O => \ALUResult[20]_INST_0_i_3_n_0\
    );
\ALUResult[20]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB800B800B800"
    )
        port map (
      I0 => Instr(14),
      I1 => \ALUResult[30]_INST_0_i_2\,
      I2 => Instr(25),
      I3 => ALUSrc(0),
      I4 => rd21,
      I5 => rd20(20),
      O => SrcB(20)
    );
\ALUResult[20]_INST_0_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALUResult[20]_INST_0_i_8_n_0\,
      I1 => \ALUResult[20]_INST_0_i_9_n_0\,
      O => \ALUResult[20]_INST_0_i_6_n_0\,
      S => ALUControl(0)
    );
\ALUResult[20]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000004777B888"
    )
        port map (
      I0 => \addressM[23]_2\(0),
      I1 => \addressM[28]\,
      I2 => rd11,
      I3 => \^rd10\(20),
      I4 => SrcB(20),
      I5 => \ALUControl__0\(0),
      O => \ALUResult[20]_INST_0_i_8_n_0\
    );
\ALUResult[20]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[21]_INST_0_i_10_n_0\,
      I1 => \ALUResult[20]_INST_0_i_10_n_0\,
      I2 => \ALUControl__0\(0),
      I3 => \ALUResult[20]_INST_0_i_6_0\,
      I4 => \^q_reg[5]\(0),
      I5 => \ALUResult[19]_INST_0_i_4_0\,
      O => \ALUResult[20]_INST_0_i_9_n_0\
    );
\ALUResult[21]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \ALUResult[21]_INST_0_i_1_n_0\,
      I1 => ALUControl(1),
      I2 => \ALUResult[21]_INST_0_i_2_n_0\,
      I3 => ALUControl(2),
      I4 => \ALUResult[21]_INST_0_i_3_n_0\,
      O => \^aluresult\(9)
    );
\ALUResult[21]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F0BB"
    )
        port map (
      I0 => SrcB(21),
      I1 => ALUControl(0),
      I2 => \addressM[23]_0\(1),
      I3 => \ALUControl__0\(0),
      O => \ALUResult[21]_INST_0_i_1_n_0\
    );
\ALUResult[21]_INST_0_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \ALUResult[21]_INST_0_i_9_1\,
      I1 => \^q_reg[5]\(1),
      I2 => \ALUResult[21]_INST_0_i_12_n_0\,
      I3 => \^q_reg[5]\(2),
      I4 => \ALUResult[21]_INST_0_i_9_0\,
      O => \ALUResult[21]_INST_0_i_10_n_0\
    );
\ALUResult[21]_INST_0_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CDC8"
    )
        port map (
      I0 => \^q_reg[5]\(3),
      I1 => SrcA(31),
      I2 => \^q_reg[5]\(4),
      I3 => SrcA(25),
      O => \ALUResult[21]_INST_0_i_12_n_0\
    );
\ALUResult[21]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888888FFFCCCFC"
    )
        port map (
      I0 => \addressM[23]_0\(1),
      I1 => ALUControl(0),
      I2 => \ALUResult[22]_INST_0_i_8_n_0\,
      I3 => \^q_reg[5]\(0),
      I4 => \addressM[21]\,
      I5 => \ALUControl__0\(0),
      O => \ALUResult[21]_INST_0_i_2_n_0\
    );
\ALUResult[21]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFCFAFC0AFC0A0C0"
    )
        port map (
      I0 => \ALUResult[21]_INST_0_i_6_n_0\,
      I1 => \addressM[23]_0\(1),
      I2 => \addressM[23]\,
      I3 => \addressM[1]\,
      I4 => SrcA(21),
      I5 => SrcB(21),
      O => \ALUResult[21]_INST_0_i_3_n_0\
    );
\ALUResult[21]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB800B800B800"
    )
        port map (
      I0 => Instr(15),
      I1 => \ALUResult[30]_INST_0_i_2\,
      I2 => Instr(25),
      I3 => ALUSrc(0),
      I4 => rd21,
      I5 => rd20(21),
      O => SrcB(21)
    );
\ALUResult[21]_INST_0_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALUResult[21]_INST_0_i_8_n_0\,
      I1 => \ALUResult[21]_INST_0_i_9_n_0\,
      O => \ALUResult[21]_INST_0_i_6_n_0\,
      S => ALUControl(0)
    );
\ALUResult[21]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000004777B888"
    )
        port map (
      I0 => \addressM[23]_2\(1),
      I1 => \addressM[28]\,
      I2 => rd11,
      I3 => \^rd10\(21),
      I4 => SrcB(21),
      I5 => \ALUControl__0\(0),
      O => \ALUResult[21]_INST_0_i_8_n_0\
    );
\ALUResult[21]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[22]_INST_0_i_21_n_0\,
      I1 => \ALUResult[21]_INST_0_i_10_n_0\,
      I2 => \ALUControl__0\(0),
      I3 => \ALUResult[22]_INST_0_i_23_n_0\,
      I4 => \^q_reg[5]\(0),
      I5 => \ALUResult[20]_INST_0_i_6_0\,
      O => \ALUResult[21]_INST_0_i_9_n_0\
    );
\ALUResult[22]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \ALUResult[22]_INST_0_i_1_n_0\,
      I1 => ALUControl(1),
      I2 => \ALUResult[22]_INST_0_i_3_n_0\,
      I3 => ALUControl(2),
      I4 => \ALUResult[22]_INST_0_i_4_n_0\,
      O => \^aluresult\(10)
    );
\ALUResult[22]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F0BB"
    )
        port map (
      I0 => SrcB(22),
      I1 => ALUControl(0),
      I2 => \addressM[23]_0\(2),
      I3 => \ALUControl__0\(0),
      O => \ALUResult[22]_INST_0_i_1_n_0\
    );
\ALUResult[22]_INST_0_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000004777B888"
    )
        port map (
      I0 => \addressM[23]_2\(2),
      I1 => \addressM[28]\,
      I2 => rd11,
      I3 => \^rd10\(22),
      I4 => SrcB(22),
      I5 => \ALUControl__0\(0),
      O => \ALUResult[22]_INST_0_i_18_n_0\
    );
\ALUResult[22]_INST_0_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[22]_INST_0_i_9_0\,
      I1 => \ALUResult[22]_INST_0_i_21_n_0\,
      I2 => \ALUControl__0\(0),
      I3 => \ALUResult[22]_INST_0_i_22_n_0\,
      I4 => \^q_reg[5]\(0),
      I5 => \ALUResult[22]_INST_0_i_23_n_0\,
      O => \ALUResult[22]_INST_0_i_19_n_0\
    );
\ALUResult[22]_INST_0_i_21\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \ALUResult[22]_INST_0_i_19_0\,
      I1 => \^q_reg[5]\(1),
      I2 => \ALUResult[22]_INST_0_i_24_n_0\,
      I3 => \^q_reg[5]\(2),
      I4 => \ALUResult[22]_INST_0_i_19_2\,
      O => \ALUResult[22]_INST_0_i_21_n_0\
    );
\ALUResult[22]_INST_0_i_22\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ALUResult[25]_INST_0_i_12_n_0\,
      I1 => \^q_reg[5]\(1),
      I2 => \ALUResult[22]_INST_0_i_19_1\,
      O => \ALUResult[22]_INST_0_i_22_n_0\
    );
\ALUResult[22]_INST_0_i_23\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ALUResult[24]_INST_0_i_12_n_0\,
      I1 => \^q_reg[5]\(1),
      I2 => \ALUResult[22]_INST_0_i_19_3\,
      O => \ALUResult[22]_INST_0_i_23_n_0\
    );
\ALUResult[22]_INST_0_i_24\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CDC8"
    )
        port map (
      I0 => \^q_reg[5]\(3),
      I1 => SrcA(31),
      I2 => \^q_reg[5]\(4),
      I3 => SrcA(26),
      O => \ALUResult[22]_INST_0_i_24_n_0\
    );
\ALUResult[22]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888888FFFCCCFC"
    )
        port map (
      I0 => \addressM[23]_0\(2),
      I1 => ALUControl(0),
      I2 => \addressM[22]\,
      I3 => \^q_reg[5]\(0),
      I4 => \ALUResult[22]_INST_0_i_8_n_0\,
      I5 => \ALUControl__0\(0),
      O => \ALUResult[22]_INST_0_i_3_n_0\
    );
\ALUResult[22]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFCFAFC0AFC0A0C0"
    )
        port map (
      I0 => \ALUResult[22]_INST_0_i_9_n_0\,
      I1 => \addressM[23]_0\(2),
      I2 => \addressM[23]\,
      I3 => \addressM[1]\,
      I4 => SrcA(22),
      I5 => SrcB(22),
      O => \ALUResult[22]_INST_0_i_4_n_0\
    );
\ALUResult[22]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB800B800B800"
    )
        port map (
      I0 => Instr(16),
      I1 => \ALUResult[30]_INST_0_i_2\,
      I2 => Instr(25),
      I3 => ALUSrc(0),
      I4 => rd21,
      I5 => rd20(22),
      O => SrcB(22)
    );
\ALUResult[22]_INST_0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => \ALUResult[0]_INST_0_i_1\,
      I1 => ALUSrc(0),
      I2 => rd21,
      I3 => rd20(0),
      O => \^q_reg[5]\(0)
    );
\ALUResult[22]_INST_0_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00B8B8"
    )
        port map (
      I0 => \ALUResult[21]_INST_0_i_2_0\,
      I1 => \^q_reg[5]\(2),
      I2 => \ALUResult[21]_INST_0_i_2_1\,
      I3 => \ALUResult[21]_INST_0_i_2_2\,
      I4 => \^q_reg[5]\(1),
      O => \ALUResult[22]_INST_0_i_8_n_0\
    );
\ALUResult[22]_INST_0_i_9\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALUResult[22]_INST_0_i_18_n_0\,
      I1 => \ALUResult[22]_INST_0_i_19_n_0\,
      O => \ALUResult[22]_INST_0_i_9_n_0\,
      S => ALUControl(0)
    );
\ALUResult[23]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \addressM[23]_1\,
      I1 => ALUControl(2),
      I2 => \ALUResult[23]_INST_0_i_2_n_0\,
      I3 => \addressM[23]\,
      I4 => \ALUResult[23]_INST_0_i_3_n_0\,
      O => \^aluresult\(11)
    );
\ALUResult[23]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88B8FFFF88B80000"
    )
        port map (
      I0 => \ALUResult[23]_INST_0_i_6_n_0\,
      I1 => ALUControl(0),
      I2 => \alu/xorOut__31\(23),
      I3 => \ALUControl__0\(0),
      I4 => \addressM[1]\,
      I5 => \addressM[23]_0\(3),
      O => \ALUResult[23]_INST_0_i_2_n_0\
    );
\ALUResult[23]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEAAAEAAA800080"
    )
        port map (
      I0 => \addressM[1]\,
      I1 => \^rd10\(23),
      I2 => rd11,
      I3 => \addressM[28]\,
      I4 => \addressM[23]_2\(3),
      I5 => SrcB(23),
      O => \ALUResult[23]_INST_0_i_3_n_0\
    );
\ALUResult[23]_INST_0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F0BB"
    )
        port map (
      I0 => SrcB(23),
      I1 => ALUControl(0),
      I2 => \addressM[23]_0\(3),
      I3 => \ALUControl__0\(0),
      O => \ALUResult[31]_INST_0_i_12_13\
    );
\ALUResult[23]_INST_0_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALUResult[23]_INST_0_i_9_n_0\,
      I1 => \ALUResult[23]_INST_0_i_2_0\(0),
      O => \ALUResult[23]_INST_0_i_6_n_0\,
      S => \ALUControl__0\(0)
    );
\ALUResult[23]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6A556A6A6AAA6A6A"
    )
        port map (
      I0 => SrcB(23),
      I1 => \^rd10\(23),
      I2 => rd11,
      I3 => Instr(2),
      I4 => Instr(0),
      I5 => \addressM[23]_2\(3),
      O => \alu/xorOut__31\(23)
    );
\ALUResult[23]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB800B800B800"
    )
        port map (
      I0 => Instr(17),
      I1 => \ALUResult[30]_INST_0_i_2\,
      I2 => Instr(25),
      I3 => ALUSrc(0),
      I4 => rd21,
      I5 => rd20(23),
      O => SrcB(23)
    );
\ALUResult[23]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[26]_INST_0_i_14_n_0\,
      I1 => \ALUResult[24]_INST_0_i_12_n_0\,
      I2 => \^q_reg[5]\(0),
      I3 => \ALUResult[25]_INST_0_i_12_n_0\,
      I4 => \^q_reg[5]\(1),
      I5 => \ALUResult[22]_INST_0_i_19_1\,
      O => \ALUResult[23]_INST_0_i_9_n_0\
    );
\ALUResult[24]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \addressM[24]\,
      I1 => ALUControl(2),
      I2 => \ALUResult[24]_INST_0_i_2_n_0\,
      I3 => \addressM[23]\,
      I4 => \ALUResult[24]_INST_0_i_3_n_0\,
      O => \^aluresult\(12)
    );
\ALUResult[24]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[27]_INST_0_i_13_n_0\,
      I1 => \ALUResult[25]_INST_0_i_12_n_0\,
      I2 => \^q_reg[5]\(0),
      I3 => \ALUResult[26]_INST_0_i_14_n_0\,
      I4 => \^q_reg[5]\(1),
      I5 => \ALUResult[24]_INST_0_i_12_n_0\,
      O => \ALUResult[24]_INST_0_i_10_n_0\
    );
\ALUResult[24]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[27]_INST_0_i_15_n_0\,
      I1 => \ALUResult[25]_INST_0_i_6_0\,
      I2 => \^q_reg[5]\(0),
      I3 => \ALUResult[26]_INST_0_i_6_0\,
      I4 => \^q_reg[5]\(1),
      I5 => \ALUResult[22]_INST_0_i_19_0\,
      O => data5(24)
    );
\ALUResult[24]_INST_0_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000B08"
    )
        port map (
      I0 => SrcA(28),
      I1 => \^q_reg[5]\(2),
      I2 => \^q_reg[5]\(4),
      I3 => SrcA(24),
      I4 => \^q_reg[5]\(3),
      O => \ALUResult[24]_INST_0_i_12_n_0\
    );
\ALUResult[24]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88B8FFFF88B80000"
    )
        port map (
      I0 => \ALUResult[24]_INST_0_i_6_n_0\,
      I1 => ALUControl(0),
      I2 => \alu/xorOut__31\(24),
      I3 => \ALUControl__0\(0),
      I4 => \addressM[1]\,
      I5 => \addressM[27]_0\(0),
      O => \ALUResult[24]_INST_0_i_2_n_0\
    );
\ALUResult[24]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEAAAEAAA800080"
    )
        port map (
      I0 => \addressM[1]\,
      I1 => \^rd10\(24),
      I2 => rd11,
      I3 => \addressM[28]\,
      I4 => \addressM[27]_1\(0),
      I5 => SrcB(24),
      O => \ALUResult[24]_INST_0_i_3_n_0\
    );
\ALUResult[24]_INST_0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F0BB"
    )
        port map (
      I0 => SrcB(24),
      I1 => ALUControl(0),
      I2 => \addressM[27]_0\(0),
      I3 => \ALUControl__0\(0),
      O => \ALUResult[31]_INST_0_i_12_14\
    );
\ALUResult[24]_INST_0_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALUResult[24]_INST_0_i_10_n_0\,
      I1 => data5(24),
      O => \ALUResult[24]_INST_0_i_6_n_0\,
      S => \ALUControl__0\(0)
    );
\ALUResult[24]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6A556A6A6AAA6A6A"
    )
        port map (
      I0 => SrcB(24),
      I1 => \^rd10\(24),
      I2 => rd11,
      I3 => Instr(2),
      I4 => Instr(0),
      I5 => \addressM[27]_1\(0),
      O => \alu/xorOut__31\(24)
    );
\ALUResult[24]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB800B800B800"
    )
        port map (
      I0 => Instr(18),
      I1 => \ALUResult[30]_INST_0_i_2\,
      I2 => Instr(25),
      I3 => ALUSrc(0),
      I4 => rd21,
      I5 => rd20(24),
      O => SrcB(24)
    );
\ALUResult[25]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \addressM[25]\,
      I1 => ALUControl(2),
      I2 => \ALUResult[25]_INST_0_i_2_n_0\,
      I3 => \addressM[23]\,
      I4 => \ALUResult[25]_INST_0_i_3_n_0\,
      O => \^aluresult\(13)
    );
\ALUResult[25]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[26]_INST_0_i_13_n_0\,
      I1 => \ALUResult[26]_INST_0_i_14_n_0\,
      I2 => \^q_reg[5]\(0),
      I3 => \ALUResult[27]_INST_0_i_13_n_0\,
      I4 => \^q_reg[5]\(1),
      I5 => \ALUResult[25]_INST_0_i_12_n_0\,
      O => \ALUResult[25]_INST_0_i_10_n_0\
    );
\ALUResult[25]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[28]_INST_0_i_17_n_0\,
      I1 => \ALUResult[26]_INST_0_i_6_0\,
      I2 => \^q_reg[5]\(0),
      I3 => \ALUResult[27]_INST_0_i_15_n_0\,
      I4 => \^q_reg[5]\(1),
      I5 => \ALUResult[25]_INST_0_i_6_0\,
      O => data5(25)
    );
\ALUResult[25]_INST_0_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000B08"
    )
        port map (
      I0 => SrcA(29),
      I1 => \^q_reg[5]\(2),
      I2 => \^q_reg[5]\(4),
      I3 => SrcA(25),
      I4 => \^q_reg[5]\(3),
      O => \ALUResult[25]_INST_0_i_12_n_0\
    );
\ALUResult[25]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88B8FFFF88B80000"
    )
        port map (
      I0 => \ALUResult[25]_INST_0_i_6_n_0\,
      I1 => ALUControl(0),
      I2 => \alu/xorOut__31\(25),
      I3 => \ALUControl__0\(0),
      I4 => \addressM[1]\,
      I5 => \addressM[27]_0\(1),
      O => \ALUResult[25]_INST_0_i_2_n_0\
    );
\ALUResult[25]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEAAAEAAA800080"
    )
        port map (
      I0 => \addressM[1]\,
      I1 => \^rd10\(25),
      I2 => rd11,
      I3 => \addressM[28]\,
      I4 => \addressM[27]_1\(1),
      I5 => SrcB(25),
      O => \ALUResult[25]_INST_0_i_3_n_0\
    );
\ALUResult[25]_INST_0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F0BB"
    )
        port map (
      I0 => SrcB(25),
      I1 => ALUControl(0),
      I2 => \addressM[27]_0\(1),
      I3 => \ALUControl__0\(0),
      O => \ALUResult[31]_INST_0_i_12_15\
    );
\ALUResult[25]_INST_0_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALUResult[25]_INST_0_i_10_n_0\,
      I1 => data5(25),
      O => \ALUResult[25]_INST_0_i_6_n_0\,
      S => \ALUControl__0\(0)
    );
\ALUResult[25]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6A556A6A6AAA6A6A"
    )
        port map (
      I0 => SrcB(25),
      I1 => \^rd10\(25),
      I2 => rd11,
      I3 => Instr(2),
      I4 => Instr(0),
      I5 => \addressM[27]_1\(1),
      O => \alu/xorOut__31\(25)
    );
\ALUResult[25]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB800B800B800"
    )
        port map (
      I0 => Instr(19),
      I1 => \ALUResult[30]_INST_0_i_2\,
      I2 => Instr(25),
      I3 => ALUSrc(0),
      I4 => rd21,
      I5 => rd20(25),
      O => SrcB(25)
    );
\ALUResult[26]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \addressM[26]\,
      I1 => ALUControl(2),
      I2 => \ALUResult[26]_INST_0_i_2_n_0\,
      I3 => \addressM[23]\,
      I4 => \ALUResult[26]_INST_0_i_3_n_0\,
      O => \^aluresult\(14)
    );
\ALUResult[26]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[27]_INST_0_i_12_n_0\,
      I1 => \ALUResult[27]_INST_0_i_13_n_0\,
      I2 => \^q_reg[5]\(0),
      I3 => \ALUResult[26]_INST_0_i_13_n_0\,
      I4 => \^q_reg[5]\(1),
      I5 => \ALUResult[26]_INST_0_i_14_n_0\,
      O => \ALUResult[26]_INST_0_i_10_n_0\
    );
\ALUResult[26]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[27]_INST_0_i_14_n_0\,
      I1 => \ALUResult[27]_INST_0_i_15_n_0\,
      I2 => \^q_reg[5]\(0),
      I3 => \ALUResult[28]_INST_0_i_17_n_0\,
      I4 => \^q_reg[5]\(1),
      I5 => \ALUResult[26]_INST_0_i_6_0\,
      O => data5(26)
    );
\ALUResult[26]_INST_0_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \^q_reg[5]\(3),
      I1 => SrcA(28),
      I2 => \^q_reg[5]\(4),
      I3 => \^q_reg[5]\(2),
      O => \ALUResult[26]_INST_0_i_13_n_0\
    );
\ALUResult[26]_INST_0_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000B08"
    )
        port map (
      I0 => SrcA(30),
      I1 => \^q_reg[5]\(2),
      I2 => \^q_reg[5]\(4),
      I3 => SrcA(26),
      I4 => \^q_reg[5]\(3),
      O => \ALUResult[26]_INST_0_i_14_n_0\
    );
\ALUResult[26]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88B8FFFF88B80000"
    )
        port map (
      I0 => \ALUResult[26]_INST_0_i_6_n_0\,
      I1 => ALUControl(0),
      I2 => \alu/xorOut__31\(26),
      I3 => \ALUControl__0\(0),
      I4 => \addressM[1]\,
      I5 => \addressM[27]_0\(2),
      O => \ALUResult[26]_INST_0_i_2_n_0\
    );
\ALUResult[26]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEAAAEAAA800080"
    )
        port map (
      I0 => \addressM[1]\,
      I1 => \^rd10\(26),
      I2 => rd11,
      I3 => \addressM[28]\,
      I4 => \addressM[27]_1\(2),
      I5 => SrcB(26),
      O => \ALUResult[26]_INST_0_i_3_n_0\
    );
\ALUResult[26]_INST_0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F0BB"
    )
        port map (
      I0 => SrcB(26),
      I1 => ALUControl(0),
      I2 => \addressM[27]_0\(2),
      I3 => \ALUControl__0\(0),
      O => \ALUResult[31]_INST_0_i_12_16\
    );
\ALUResult[26]_INST_0_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALUResult[26]_INST_0_i_10_n_0\,
      I1 => data5(26),
      O => \ALUResult[26]_INST_0_i_6_n_0\,
      S => \ALUControl__0\(0)
    );
\ALUResult[26]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6A556A6A6AAA6A6A"
    )
        port map (
      I0 => SrcB(26),
      I1 => \^rd10\(26),
      I2 => rd11,
      I3 => Instr(2),
      I4 => Instr(0),
      I5 => \addressM[27]_1\(2),
      O => \alu/xorOut__31\(26)
    );
\ALUResult[26]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB800B800B800"
    )
        port map (
      I0 => Instr(20),
      I1 => \ALUResult[30]_INST_0_i_2\,
      I2 => Instr(25),
      I3 => ALUSrc(0),
      I4 => rd21,
      I5 => rd20(26),
      O => SrcB(26)
    );
\ALUResult[27]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \addressM[27]\,
      I1 => ALUControl(2),
      I2 => \ALUResult[27]_INST_0_i_2_n_0\,
      I3 => \addressM[23]\,
      I4 => \ALUResult[27]_INST_0_i_3_n_0\,
      O => \^aluresult\(15)
    );
\ALUResult[27]_INST_0_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \ALUResult[28]_INST_0_i_15_n_0\,
      I1 => \^q_reg[5]\(0),
      I2 => \ALUResult[27]_INST_0_i_12_n_0\,
      I3 => \^q_reg[5]\(1),
      I4 => \ALUResult[27]_INST_0_i_13_n_0\,
      O => \ALUResult[27]_INST_0_i_10_n_0\
    );
\ALUResult[27]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[28]_INST_0_i_16_n_0\,
      I1 => \ALUResult[28]_INST_0_i_17_n_0\,
      I2 => \^q_reg[5]\(0),
      I3 => \ALUResult[27]_INST_0_i_14_n_0\,
      I4 => \^q_reg[5]\(1),
      I5 => \ALUResult[27]_INST_0_i_15_n_0\,
      O => data5(27)
    );
\ALUResult[27]_INST_0_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \^q_reg[5]\(3),
      I1 => SrcA(29),
      I2 => \^q_reg[5]\(4),
      I3 => \^q_reg[5]\(2),
      O => \ALUResult[27]_INST_0_i_12_n_0\
    );
\ALUResult[27]_INST_0_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000B08"
    )
        port map (
      I0 => SrcA(31),
      I1 => \^q_reg[5]\(2),
      I2 => \^q_reg[5]\(4),
      I3 => SrcA(27),
      I4 => \^q_reg[5]\(3),
      O => \ALUResult[27]_INST_0_i_13_n_0\
    );
\ALUResult[27]_INST_0_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F1F0E0"
    )
        port map (
      I0 => \^q_reg[5]\(2),
      I1 => \^q_reg[5]\(3),
      I2 => SrcA(31),
      I3 => \^q_reg[5]\(4),
      I4 => SrcA(29),
      O => \ALUResult[27]_INST_0_i_14_n_0\
    );
\ALUResult[27]_INST_0_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F1F0E0"
    )
        port map (
      I0 => \^q_reg[5]\(2),
      I1 => \^q_reg[5]\(3),
      I2 => SrcA(31),
      I3 => \^q_reg[5]\(4),
      I4 => SrcA(27),
      O => \ALUResult[27]_INST_0_i_15_n_0\
    );
\ALUResult[27]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88B8FFFF88B80000"
    )
        port map (
      I0 => \ALUResult[27]_INST_0_i_6_n_0\,
      I1 => ALUControl(0),
      I2 => \alu/xorOut__31\(27),
      I3 => \ALUControl__0\(0),
      I4 => \addressM[1]\,
      I5 => \addressM[27]_0\(3),
      O => \ALUResult[27]_INST_0_i_2_n_0\
    );
\ALUResult[27]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEAAAEAAA800080"
    )
        port map (
      I0 => \addressM[1]\,
      I1 => \^rd10\(27),
      I2 => rd11,
      I3 => \addressM[28]\,
      I4 => \addressM[27]_1\(3),
      I5 => SrcB(27),
      O => \ALUResult[27]_INST_0_i_3_n_0\
    );
\ALUResult[27]_INST_0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F0BB"
    )
        port map (
      I0 => SrcB(27),
      I1 => ALUControl(0),
      I2 => \addressM[27]_0\(3),
      I3 => \ALUControl__0\(0),
      O => \ALUResult[31]_INST_0_i_12_17\
    );
\ALUResult[27]_INST_0_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALUResult[27]_INST_0_i_10_n_0\,
      I1 => data5(27),
      O => \ALUResult[27]_INST_0_i_6_n_0\,
      S => \ALUControl__0\(0)
    );
\ALUResult[27]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6A556A6A6AAA6A6A"
    )
        port map (
      I0 => SrcB(27),
      I1 => \^rd10\(27),
      I2 => rd11,
      I3 => Instr(2),
      I4 => Instr(0),
      I5 => \addressM[27]_1\(3),
      O => \alu/xorOut__31\(27)
    );
\ALUResult[27]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB800B800B800"
    )
        port map (
      I0 => Instr(21),
      I1 => \ALUResult[30]_INST_0_i_2\,
      I2 => Instr(25),
      I3 => ALUSrc(0),
      I4 => rd21,
      I5 => rd20(27),
      O => SrcB(27)
    );
\ALUResult[28]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB800B800B800"
    )
        port map (
      I0 => Instr(22),
      I1 => \ALUResult[30]_INST_0_i_2\,
      I2 => Instr(25),
      I3 => ALUSrc(0),
      I4 => rd21,
      I5 => rd20(28),
      O => SrcB(28)
    );
\ALUResult[28]_INST_0_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ALUResult[29]_INST_0_i_10_n_0\,
      I1 => \^q_reg[5]\(0),
      I2 => \ALUResult[28]_INST_0_i_15_n_0\,
      O => \ALUResult[28]_INST_0_i_13_n_0\
    );
\ALUResult[28]_INST_0_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \ALUResult[29]_INST_0_i_9_n_0\,
      I1 => \^q_reg[5]\(0),
      I2 => \ALUResult[28]_INST_0_i_16_n_0\,
      I3 => \^q_reg[5]\(1),
      I4 => \ALUResult[28]_INST_0_i_17_n_0\,
      O => data5(28)
    );
\ALUResult[28]_INST_0_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000B08"
    )
        port map (
      I0 => SrcA(30),
      I1 => \^q_reg[5]\(1),
      I2 => \^q_reg[5]\(3),
      I3 => SrcA(28),
      I4 => \^q_reg[5]\(4),
      I5 => \^q_reg[5]\(2),
      O => \ALUResult[28]_INST_0_i_15_n_0\
    );
\ALUResult[28]_INST_0_i_16\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F1F0E0"
    )
        port map (
      I0 => \^q_reg[5]\(2),
      I1 => \^q_reg[5]\(3),
      I2 => SrcA(31),
      I3 => \^q_reg[5]\(4),
      I4 => SrcA(30),
      O => \ALUResult[28]_INST_0_i_16_n_0\
    );
\ALUResult[28]_INST_0_i_17\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F1F0E0"
    )
        port map (
      I0 => \^q_reg[5]\(2),
      I1 => \^q_reg[5]\(3),
      I2 => SrcA(31),
      I3 => \^q_reg[5]\(4),
      I4 => SrcA(28),
      O => \ALUResult[28]_INST_0_i_17_n_0\
    );
\ALUResult[28]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88B8FFFF88B80000"
    )
        port map (
      I0 => \ALUResult[28]_INST_0_i_7_n_0\,
      I1 => ALUControl(0),
      I2 => \alu/xorOut__31\(28),
      I3 => \ALUControl__0\(0),
      I4 => \addressM[1]\,
      I5 => \addressM[31]\(0),
      O => \q_reg[28]\
    );
\ALUResult[28]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEAAAEAAA800080"
    )
        port map (
      I0 => \addressM[1]\,
      I1 => \^rd10\(28),
      I2 => rd11,
      I3 => \addressM[28]\,
      I4 => \sum_carry__6\(0),
      I5 => SrcB(28),
      O => \q_reg[28]_0\
    );
\ALUResult[28]_INST_0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F0BB"
    )
        port map (
      I0 => SrcB(28),
      I1 => ALUControl(0),
      I2 => \addressM[31]\(0),
      I3 => \ALUControl__0\(0),
      O => \ALUResult[31]_INST_0_i_12_18\
    );
\ALUResult[28]_INST_0_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALUResult[28]_INST_0_i_13_n_0\,
      I1 => data5(28),
      O => \ALUResult[28]_INST_0_i_7_n_0\,
      S => \ALUControl__0\(0)
    );
\ALUResult[28]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6A556A6A6AAA6A6A"
    )
        port map (
      I0 => SrcB(28),
      I1 => \^rd10\(28),
      I2 => rd11,
      I3 => Instr(2),
      I4 => Instr(0),
      I5 => \sum_carry__6\(0),
      O => \alu/xorOut__31\(28)
    );
\ALUResult[29]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFCFAFC0AFC0A0C0"
    )
        port map (
      I0 => \ALUResult[29]_INST_0_i_3_n_0\,
      I1 => \addressM[31]\(1),
      I2 => \addressM[23]\,
      I3 => \addressM[1]\,
      I4 => SrcA(29),
      I5 => \^q_reg[5]\(14),
      O => \q_reg[29]\
    );
\ALUResult[29]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000B08"
    )
        port map (
      I0 => SrcA(31),
      I1 => \^q_reg[5]\(1),
      I2 => \^q_reg[5]\(3),
      I3 => SrcA(29),
      I4 => \^q_reg[5]\(4),
      I5 => \^q_reg[5]\(2),
      O => \ALUResult[29]_INST_0_i_10_n_0\
    );
\ALUResult[29]_INST_0_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALUResult[29]_INST_0_i_6_n_0\,
      I1 => \ALUResult[29]_INST_0_i_7_n_0\,
      O => \ALUResult[29]_INST_0_i_3_n_0\,
      S => ALUControl(0)
    );
\ALUResult[29]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB800B800B800"
    )
        port map (
      I0 => Instr(23),
      I1 => \ALUResult[30]_INST_0_i_2\,
      I2 => Instr(25),
      I3 => ALUSrc(0),
      I4 => rd21,
      I5 => rd20(29),
      O => \^q_reg[5]\(14)
    );
\ALUResult[29]_INST_0_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ALUResult[29]_INST_0_i_2\,
      I1 => \^q_reg[5]\(0),
      I2 => \ALUResult[30]_INST_0_i_8_n_0\,
      O => \ALUResult[31]_INST_0_i_14\(0)
    );
\ALUResult[29]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000004777B888"
    )
        port map (
      I0 => \sum_carry__6\(1),
      I1 => \addressM[28]\,
      I2 => rd11,
      I3 => \^rd10\(29),
      I4 => \^q_reg[5]\(14),
      I5 => \ALUControl__0\(0),
      O => \ALUResult[29]_INST_0_i_6_n_0\
    );
\ALUResult[29]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[30]_INST_0_i_9_n_0\,
      I1 => \ALUResult[29]_INST_0_i_9_n_0\,
      I2 => \ALUControl__0\(0),
      I3 => \ALUResult[30]_INST_0_i_10_n_0\,
      I4 => \^q_reg[5]\(0),
      I5 => \ALUResult[29]_INST_0_i_10_n_0\,
      O => \ALUResult[29]_INST_0_i_7_n_0\
    );
\ALUResult[29]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FF01FF00FE00"
    )
        port map (
      I0 => \^q_reg[5]\(1),
      I1 => \^q_reg[5]\(2),
      I2 => \^q_reg[5]\(3),
      I3 => SrcA(31),
      I4 => \^q_reg[5]\(4),
      I5 => SrcA(29),
      O => \ALUResult[29]_INST_0_i_9_n_0\
    );
\ALUResult[2]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALUResult[2]_INST_0_i_1_n_0\,
      I1 => \ALUResult[2]_INST_0_i_2_n_0\,
      O => \^aluresult\(1),
      S => ALUControl(2)
    );
\ALUResult[2]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFCFAFC0AFC0A0C0"
    )
        port map (
      I0 => \ALUResult[2]_INST_0_i_3_n_0\,
      I1 => O(1),
      I2 => \addressM[23]\,
      I3 => \addressM[1]\,
      I4 => SrcA(2),
      I5 => \^q_reg[5]\(2),
      O => \ALUResult[2]_INST_0_i_1_n_0\
    );
\ALUResult[2]_INST_0_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => \^q_reg[5]\(2),
      I1 => \^q_reg[5]\(4),
      I2 => SrcA(1),
      I3 => \^q_reg[5]\(3),
      I4 => \^q_reg[5]\(1),
      O => \ALUResult[2]_INST_0_i_10_n_0\
    );
\ALUResult[2]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0C0F0C0BBFFBBCC"
    )
        port map (
      I0 => \^q_reg[5]\(2),
      I1 => ALUControl(1),
      I2 => O(1),
      I3 => ALUControl(0),
      I4 => data7(2),
      I5 => \ALUControl__0\(0),
      O => \ALUResult[2]_INST_0_i_2_n_0\
    );
\ALUResult[2]_INST_0_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALUResult[2]_INST_0_i_6_n_0\,
      I1 => \ALUResult[2]_INST_0_i_1_0\,
      O => \ALUResult[2]_INST_0_i_3_n_0\,
      S => ALUControl(0)
    );
\ALUResult[2]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E2FFFF00E20000"
    )
        port map (
      I0 => \ALUResult[21]_INST_0_i_5_1\,
      I1 => sel0(0),
      I2 => \ALUResult[21]_INST_0_i_5_2\,
      I3 => \ALUResult[30]_INST_0_i_2\,
      I4 => ALUSrc(0),
      I5 => \^writedata\(2),
      O => \^q_reg[5]\(2)
    );
\ALUResult[2]_INST_0_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ALUResult[2]_INST_0_i_10_n_0\,
      I1 => \^q_reg[5]\(0),
      I2 => \ALUResult[3]_INST_0_i_10_n_0\,
      O => data7(2)
    );
\ALUResult[2]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000004777B888"
    )
        port map (
      I0 => sum_carry(2),
      I1 => \addressM[28]\,
      I2 => rd11,
      I3 => \^rd10\(2),
      I4 => \^q_reg[5]\(2),
      I5 => \ALUControl__0\(0),
      O => \ALUResult[2]_INST_0_i_6_n_0\
    );
\ALUResult[30]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFCFAFC0AFC0A0C0"
    )
        port map (
      I0 => \ALUResult[30]_INST_0_i_3_n_0\,
      I1 => \addressM[31]\(2),
      I2 => \addressM[23]\,
      I3 => \addressM[1]\,
      I4 => SrcA(30),
      I5 => \^q_reg[5]\(15),
      O => \q_reg[30]\
    );
\ALUResult[30]_INST_0_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => \^q_reg[5]\(2),
      I1 => \^q_reg[5]\(4),
      I2 => SrcA(30),
      I3 => \^q_reg[5]\(3),
      I4 => \^q_reg[5]\(1),
      O => \ALUResult[30]_INST_0_i_10_n_0\
    );
\ALUResult[30]_INST_0_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALUResult[30]_INST_0_i_6_n_0\,
      I1 => \ALUResult[30]_INST_0_i_7_n_0\,
      O => \ALUResult[30]_INST_0_i_3_n_0\,
      S => ALUControl(0)
    );
\ALUResult[30]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB800B800B800"
    )
        port map (
      I0 => Instr(24),
      I1 => \ALUResult[30]_INST_0_i_2\,
      I2 => Instr(25),
      I3 => ALUSrc(0),
      I4 => rd21,
      I5 => rd20(30),
      O => \^q_reg[5]\(15)
    );
\ALUResult[30]_INST_0_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ALUResult[30]_INST_0_i_8_n_0\,
      I1 => \^q_reg[5]\(0),
      I2 => \ALUResult[30]_INST_0_i_2_0\,
      O => \ALUResult[31]_INST_0_i_14\(1)
    );
\ALUResult[30]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000004777B888"
    )
        port map (
      I0 => \sum_carry__6\(2),
      I1 => \addressM[28]\,
      I2 => rd11,
      I3 => \^rd10\(30),
      I4 => \^q_reg[5]\(15),
      I5 => \ALUControl__0\(0),
      O => \ALUResult[30]_INST_0_i_6_n_0\
    );
\ALUResult[30]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => SrcA(31),
      I1 => \ALUResult[30]_INST_0_i_9_n_0\,
      I2 => \ALUControl__0\(0),
      I3 => \ALUResult[31]_INST_0_i_13_n_0\,
      I4 => \^q_reg[5]\(0),
      I5 => \ALUResult[30]_INST_0_i_10_n_0\,
      O => \ALUResult[30]_INST_0_i_7_n_0\
    );
\ALUResult[30]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[29]_INST_0_i_5_0\,
      I1 => \ALUResult[29]_INST_0_i_5_1\,
      I2 => \^q_reg[5]\(1),
      I3 => \ALUResult[29]_INST_0_i_5_2\,
      I4 => \^q_reg[5]\(2),
      I5 => \ALUResult[29]_INST_0_i_5_3\,
      O => \ALUResult[30]_INST_0_i_8_n_0\
    );
\ALUResult[30]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FF01FF00FE00"
    )
        port map (
      I0 => \^q_reg[5]\(1),
      I1 => \^q_reg[5]\(2),
      I2 => \^q_reg[5]\(3),
      I3 => SrcA(31),
      I4 => \^q_reg[5]\(4),
      I5 => SrcA(30),
      O => \ALUResult[30]_INST_0_i_9_n_0\
    );
\ALUResult[31]_INST_0_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => \^q_reg[5]\(2),
      I1 => \^q_reg[5]\(4),
      I2 => SrcA(31),
      I3 => \^q_reg[5]\(3),
      I4 => \^q_reg[5]\(1),
      O => \ALUResult[31]_INST_0_i_13_n_0\
    );
\ALUResult[31]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFCFAFC0AFC0A0C0"
    )
        port map (
      I0 => \ALUResult[31]_INST_0_i_7_n_0\,
      I1 => \addressM[31]\(3),
      I2 => \addressM[23]\,
      I3 => \addressM[1]\,
      I4 => SrcA(31),
      I5 => \^q_reg[5]\(16),
      O => \q_reg[31]\
    );
\ALUResult[31]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F000F000202F2F20"
    )
        port map (
      I0 => \ALUResult[31]_INST_0_i_13_n_0\,
      I1 => \^q_reg[5]\(0),
      I2 => ALUControl(0),
      I3 => SrcA(31),
      I4 => \^q_reg[5]\(16),
      I5 => \ALUControl__0\(0),
      O => \ALUResult[31]_INST_0_i_7_n_0\
    );
\ALUResult[31]_INST_0_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => Instr(25),
      I1 => ALUSrc(0),
      I2 => rd21,
      I3 => \^clk_0\(6),
      O => \^q_reg[5]\(16)
    );
\ALUResult[3]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALUResult[3]_INST_0_i_1_n_0\,
      I1 => \ALUResult[3]_INST_0_i_2_n_0\,
      O => \^aluresult\(2),
      S => ALUControl(2)
    );
\ALUResult[3]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFCFAFC0AFC0A0C0"
    )
        port map (
      I0 => \ALUResult[3]_INST_0_i_3_n_0\,
      I1 => O(2),
      I2 => \addressM[23]\,
      I3 => \addressM[1]\,
      I4 => SrcA(3),
      I5 => \^q_reg[5]\(3),
      O => \ALUResult[3]_INST_0_i_1_n_0\
    );
\ALUResult[3]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000B08"
    )
        port map (
      I0 => SrcA(0),
      I1 => \^q_reg[5]\(1),
      I2 => \^q_reg[5]\(3),
      I3 => SrcA(2),
      I4 => \^q_reg[5]\(4),
      I5 => \^q_reg[5]\(2),
      O => \ALUResult[3]_INST_0_i_10_n_0\
    );
\ALUResult[3]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0C0F0C0BBFFBBCC"
    )
        port map (
      I0 => \^q_reg[5]\(3),
      I1 => ALUControl(1),
      I2 => O(2),
      I3 => ALUControl(0),
      I4 => data7(3),
      I5 => \ALUControl__0\(0),
      O => \ALUResult[3]_INST_0_i_2_n_0\
    );
\ALUResult[3]_INST_0_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALUResult[3]_INST_0_i_6_n_0\,
      I1 => \ALUResult[3]_INST_0_i_1_0\,
      O => \ALUResult[3]_INST_0_i_3_n_0\,
      S => ALUControl(0)
    );
\ALUResult[3]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E2FFFF00E20000"
    )
        port map (
      I0 => \ALUResult[19]_INST_0_i_14\,
      I1 => sel0(0),
      I2 => \ALUResult[19]_INST_0_i_14_0\,
      I3 => \ALUResult[30]_INST_0_i_2\,
      I4 => ALUSrc(0),
      I5 => \^writedata\(3),
      O => \^q_reg[5]\(3)
    );
\ALUResult[3]_INST_0_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ALUResult[3]_INST_0_i_10_n_0\,
      I1 => \^q_reg[5]\(0),
      I2 => \ALUResult[4]_INST_0_i_9_n_0\,
      O => data7(3)
    );
\ALUResult[3]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000004777B888"
    )
        port map (
      I0 => sum_carry(3),
      I1 => \addressM[28]\,
      I2 => rd11,
      I3 => \^rd10\(3),
      I4 => \^q_reg[5]\(3),
      I5 => \ALUControl__0\(0),
      O => \ALUResult[3]_INST_0_i_6_n_0\
    );
\ALUResult[4]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0C0F0C0BBFFBBCC"
    )
        port map (
      I0 => \^q_reg[5]\(4),
      I1 => ALUControl(1),
      I2 => \addressM[7]\(0),
      I3 => ALUControl(0),
      I4 => data7(4),
      I5 => \ALUControl__0\(0),
      O => \ALUResult[31]_INST_0_i_12_1\
    );
\ALUResult[4]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E2FFFF00E20000"
    )
        port map (
      I0 => \ALUResult[19]_INST_0_i_14_1\,
      I1 => sel0(0),
      I2 => \ALUResult[19]_INST_0_i_14_2\,
      I3 => \ALUResult[30]_INST_0_i_2\,
      I4 => ALUSrc(0),
      I5 => \^writedata\(4),
      O => \^q_reg[5]\(4)
    );
\ALUResult[4]_INST_0_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ALUResult[4]_INST_0_i_9_n_0\,
      I1 => \^q_reg[5]\(0),
      I2 => \ALUResult[5]_INST_0_i_7_n_0\,
      O => data7(4)
    );
\ALUResult[4]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000B08"
    )
        port map (
      I0 => SrcA(1),
      I1 => \^q_reg[5]\(1),
      I2 => \^q_reg[5]\(3),
      I3 => SrcA(3),
      I4 => \^q_reg[5]\(4),
      I5 => \^q_reg[5]\(2),
      O => \ALUResult[4]_INST_0_i_9_n_0\
    );
\ALUResult[5]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0C0F0C0BBFFBBCC"
    )
        port map (
      I0 => \^q_reg[5]\(5),
      I1 => ALUControl(1),
      I2 => \addressM[7]\(1),
      I3 => ALUControl(0),
      I4 => data7(5),
      I5 => \ALUControl__0\(0),
      O => \ALUResult[31]_INST_0_i_12_2\
    );
\ALUResult[5]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8AFF8A008A008A00"
    )
        port map (
      I0 => Instr(19),
      I1 => Instr(3),
      I2 => Instr(0),
      I3 => ALUSrc(0),
      I4 => rd21,
      I5 => \^clk_0\(0),
      O => \^q_reg[5]\(5)
    );
\ALUResult[5]_INST_0_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ALUResult[5]_INST_0_i_7_n_0\,
      I1 => \^q_reg[5]\(0),
      I2 => \ALUResult[6]_INST_0_i_7_n_0\,
      O => data7(5)
    );
\ALUResult[5]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004FFFF00040000"
    )
        port map (
      I0 => \^q_reg[5]\(3),
      I1 => SrcA(2),
      I2 => \^q_reg[5]\(4),
      I3 => \^q_reg[5]\(2),
      I4 => \^q_reg[5]\(1),
      I5 => \ALUResult[7]_INST_0_i_7_n_0\,
      O => \ALUResult[5]_INST_0_i_7_n_0\
    );
\ALUResult[6]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0C0F0C0BBFFBBCC"
    )
        port map (
      I0 => \^q_reg[5]\(6),
      I1 => ALUControl(1),
      I2 => \addressM[7]\(2),
      I3 => ALUControl(0),
      I4 => data7(6),
      I5 => \ALUControl__0\(0),
      O => \ALUResult[31]_INST_0_i_12_3\
    );
\ALUResult[6]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8AFF8A008A008A00"
    )
        port map (
      I0 => Instr(20),
      I1 => Instr(3),
      I2 => Instr(0),
      I3 => ALUSrc(0),
      I4 => rd21,
      I5 => \^clk_0\(1),
      O => \^q_reg[5]\(6)
    );
\ALUResult[6]_INST_0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00B8B8"
    )
        port map (
      I0 => \ALUResult[7]_INST_0_i_7_n_0\,
      I1 => \^q_reg[5]\(1),
      I2 => \ALUResult[9]_INST_0_i_8_n_0\,
      I3 => \ALUResult[6]_INST_0_i_7_n_0\,
      I4 => \^q_reg[5]\(0),
      O => data7(6)
    );
\ALUResult[6]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004FFFF00040000"
    )
        port map (
      I0 => \^q_reg[5]\(3),
      I1 => SrcA(3),
      I2 => \^q_reg[5]\(4),
      I3 => \^q_reg[5]\(2),
      I4 => \^q_reg[5]\(1),
      I5 => \ALUResult[8]_INST_0_i_8_n_0\,
      O => \ALUResult[6]_INST_0_i_7_n_0\
    );
\ALUResult[7]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0C0F0C0BBFFBBCC"
    )
        port map (
      I0 => \^q_reg[5]\(7),
      I1 => ALUControl(1),
      I2 => \addressM[7]\(3),
      I3 => ALUControl(0),
      I4 => data7(7),
      I5 => \ALUControl__0\(0),
      O => \ALUResult[31]_INST_0_i_12_4\
    );
\ALUResult[7]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8AFF8A008A008A00"
    )
        port map (
      I0 => Instr(21),
      I1 => Instr(3),
      I2 => Instr(0),
      I3 => ALUSrc(0),
      I4 => rd21,
      I5 => \^clk_0\(2),
      O => \^q_reg[5]\(7)
    );
\ALUResult[7]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF33CC00B8B8B8B8"
    )
        port map (
      I0 => \ALUResult[8]_INST_0_i_8_n_0\,
      I1 => \^q_reg[5]\(1),
      I2 => \^q_reg[3]\,
      I3 => \ALUResult[7]_INST_0_i_7_n_0\,
      I4 => \ALUResult[9]_INST_0_i_8_n_0\,
      I5 => \^q_reg[5]\(0),
      O => data7(7)
    );
\ALUResult[7]_INST_0_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000B08"
    )
        port map (
      I0 => SrcA(0),
      I1 => \^q_reg[5]\(2),
      I2 => \^q_reg[5]\(4),
      I3 => SrcA(4),
      I4 => \^q_reg[5]\(3),
      O => \ALUResult[7]_INST_0_i_7_n_0\
    );
\ALUResult[8]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALUResult[8]_INST_0_i_1_n_0\,
      I1 => \ALUResult[8]_INST_0_i_2_n_0\,
      O => \^aluresult\(3),
      S => ALUControl(2)
    );
\ALUResult[8]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFCFAFC0AFC0A0C0"
    )
        port map (
      I0 => \ALUResult[8]_INST_0_i_3_n_0\,
      I1 => \addressM[10]\(0),
      I2 => \addressM[23]\,
      I3 => \addressM[1]\,
      I4 => SrcA(8),
      I5 => SrcB(8),
      O => \ALUResult[8]_INST_0_i_1_n_0\
    );
\ALUResult[8]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0C0F0C0BBFFBBCC"
    )
        port map (
      I0 => SrcB(8),
      I1 => ALUControl(1),
      I2 => \addressM[10]\(0),
      I3 => ALUControl(0),
      I4 => data7(8),
      I5 => \ALUControl__0\(0),
      O => \ALUResult[8]_INST_0_i_2_n_0\
    );
\ALUResult[8]_INST_0_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALUResult[8]_INST_0_i_6_n_0\,
      I1 => \ALUResult[8]_INST_0_i_1_0\,
      O => \ALUResult[8]_INST_0_i_3_n_0\,
      S => ALUControl(0)
    );
\ALUResult[8]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8AFF8A008A008A00"
    )
        port map (
      I0 => Instr(22),
      I1 => Instr(3),
      I2 => Instr(0),
      I3 => ALUSrc(0),
      I4 => rd21,
      I5 => \^clk_0\(3),
      O => SrcB(8)
    );
\ALUResult[8]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF33CC00B8B8B8B8"
    )
        port map (
      I0 => \ALUResult[9]_INST_0_i_8_n_0\,
      I1 => \^q_reg[5]\(1),
      I2 => \ALUResult[9]_INST_0_i_2_1\,
      I3 => \ALUResult[8]_INST_0_i_8_n_0\,
      I4 => \^q_reg[3]\,
      I5 => \^q_reg[5]\(0),
      O => data7(8)
    );
\ALUResult[8]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000004777B888"
    )
        port map (
      I0 => \addressM[11]\(0),
      I1 => \addressM[28]\,
      I2 => rd11,
      I3 => \^rd10\(8),
      I4 => SrcB(8),
      I5 => \ALUControl__0\(0),
      O => \ALUResult[8]_INST_0_i_6_n_0\
    );
\ALUResult[8]_INST_0_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000B08"
    )
        port map (
      I0 => SrcA(1),
      I1 => \^q_reg[5]\(2),
      I2 => \^q_reg[5]\(4),
      I3 => SrcA(5),
      I4 => \^q_reg[5]\(3),
      O => \ALUResult[8]_INST_0_i_8_n_0\
    );
\ALUResult[9]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALUResult[9]_INST_0_i_1_n_0\,
      I1 => \ALUResult[9]_INST_0_i_2_n_0\,
      O => \^aluresult\(4),
      S => ALUControl(2)
    );
\ALUResult[9]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFCFAFC0AFC0A0C0"
    )
        port map (
      I0 => \ALUResult[9]_INST_0_i_3_n_0\,
      I1 => \addressM[10]\(1),
      I2 => \addressM[23]\,
      I3 => \addressM[1]\,
      I4 => SrcA(9),
      I5 => SrcB(9),
      O => \ALUResult[9]_INST_0_i_1_n_0\
    );
\ALUResult[9]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0C0F0C0BBFFBBCC"
    )
        port map (
      I0 => SrcB(9),
      I1 => ALUControl(1),
      I2 => \addressM[10]\(1),
      I3 => ALUControl(0),
      I4 => data7(9),
      I5 => \ALUControl__0\(0),
      O => \ALUResult[9]_INST_0_i_2_n_0\
    );
\ALUResult[9]_INST_0_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALUResult[9]_INST_0_i_6_n_0\,
      I1 => \ALUResult[9]_INST_0_i_1_0\,
      O => \ALUResult[9]_INST_0_i_3_n_0\,
      S => ALUControl(0)
    );
\ALUResult[9]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8AFF8A008A008A00"
    )
        port map (
      I0 => Instr(23),
      I1 => Instr(3),
      I2 => Instr(0),
      I3 => ALUSrc(0),
      I4 => rd21,
      I5 => \^clk_0\(4),
      O => SrcB(9)
    );
\ALUResult[9]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF33CC00B8B8B8B8"
    )
        port map (
      I0 => \^q_reg[3]\,
      I1 => \^q_reg[5]\(1),
      I2 => \ALUResult[9]_INST_0_i_2_2\,
      I3 => \ALUResult[9]_INST_0_i_8_n_0\,
      I4 => \ALUResult[9]_INST_0_i_2_1\,
      I5 => \^q_reg[5]\(0),
      O => data7(9)
    );
\ALUResult[9]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000004777B888"
    )
        port map (
      I0 => \addressM[11]\(1),
      I1 => \addressM[28]\,
      I2 => rd11,
      I3 => \^rd10\(9),
      I4 => SrcB(9),
      I5 => \ALUControl__0\(0),
      O => \ALUResult[9]_INST_0_i_6_n_0\
    );
\ALUResult[9]_INST_0_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000B08"
    )
        port map (
      I0 => SrcA(2),
      I1 => \^q_reg[5]\(2),
      I2 => \^q_reg[5]\(4),
      I3 => SrcA(6),
      I4 => \^q_reg[5]\(3),
      O => \ALUResult[9]_INST_0_i_8_n_0\
    );
\WriteData[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(18),
      I1 => Instr(17),
      I2 => Instr(15),
      I3 => Instr(14),
      I4 => Instr(16),
      I5 => rd20(0),
      O => \^writedata\(0)
    );
\WriteData[10]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(18),
      I1 => Instr(17),
      I2 => Instr(15),
      I3 => Instr(14),
      I4 => Instr(16),
      I5 => \^clk_0\(5),
      O => \^writedata\(10)
    );
\WriteData[11]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(18),
      I1 => Instr(17),
      I2 => Instr(15),
      I3 => Instr(14),
      I4 => Instr(16),
      I5 => rd20(11),
      O => \^writedata\(11)
    );
\WriteData[12]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(18),
      I1 => Instr(17),
      I2 => Instr(15),
      I3 => Instr(14),
      I4 => Instr(16),
      I5 => rd20(12),
      O => \^writedata\(12)
    );
\WriteData[13]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(18),
      I1 => Instr(17),
      I2 => Instr(15),
      I3 => Instr(14),
      I4 => Instr(16),
      I5 => rd20(13),
      O => \^writedata\(13)
    );
\WriteData[14]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(18),
      I1 => Instr(17),
      I2 => Instr(15),
      I3 => Instr(14),
      I4 => Instr(16),
      I5 => rd20(14),
      O => \^writedata\(14)
    );
\WriteData[15]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(18),
      I1 => Instr(17),
      I2 => Instr(15),
      I3 => Instr(14),
      I4 => Instr(16),
      I5 => rd20(15),
      O => \^writedata\(15)
    );
\WriteData[16]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(18),
      I1 => Instr(17),
      I2 => Instr(15),
      I3 => Instr(14),
      I4 => Instr(16),
      I5 => rd20(16),
      O => \^writedata\(16)
    );
\WriteData[17]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(18),
      I1 => Instr(17),
      I2 => Instr(15),
      I3 => Instr(14),
      I4 => Instr(16),
      I5 => rd20(17),
      O => \^writedata\(17)
    );
\WriteData[18]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(18),
      I1 => Instr(17),
      I2 => Instr(15),
      I3 => Instr(14),
      I4 => Instr(16),
      I5 => rd20(18),
      O => \^writedata\(18)
    );
\WriteData[19]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(18),
      I1 => Instr(17),
      I2 => Instr(15),
      I3 => Instr(14),
      I4 => Instr(16),
      I5 => rd20(19),
      O => \^writedata\(19)
    );
\WriteData[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(18),
      I1 => Instr(17),
      I2 => Instr(15),
      I3 => Instr(14),
      I4 => Instr(16),
      I5 => rd20(1),
      O => \^writedata\(1)
    );
\WriteData[20]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(18),
      I1 => Instr(17),
      I2 => Instr(15),
      I3 => Instr(14),
      I4 => Instr(16),
      I5 => rd20(20),
      O => \^writedata\(20)
    );
\WriteData[21]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(18),
      I1 => Instr(17),
      I2 => Instr(15),
      I3 => Instr(14),
      I4 => Instr(16),
      I5 => rd20(21),
      O => \^writedata\(21)
    );
\WriteData[22]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(18),
      I1 => Instr(17),
      I2 => Instr(15),
      I3 => Instr(14),
      I4 => Instr(16),
      I5 => rd20(22),
      O => \^writedata\(22)
    );
\WriteData[23]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(18),
      I1 => Instr(17),
      I2 => Instr(15),
      I3 => Instr(14),
      I4 => Instr(16),
      I5 => rd20(23),
      O => \^writedata\(23)
    );
\WriteData[24]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(18),
      I1 => Instr(17),
      I2 => Instr(15),
      I3 => Instr(14),
      I4 => Instr(16),
      I5 => rd20(24),
      O => \^writedata\(24)
    );
\WriteData[25]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(18),
      I1 => Instr(17),
      I2 => Instr(15),
      I3 => Instr(14),
      I4 => Instr(16),
      I5 => rd20(25),
      O => \^writedata\(25)
    );
\WriteData[26]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(18),
      I1 => Instr(17),
      I2 => Instr(15),
      I3 => Instr(14),
      I4 => Instr(16),
      I5 => rd20(26),
      O => \^writedata\(26)
    );
\WriteData[27]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(18),
      I1 => Instr(17),
      I2 => Instr(15),
      I3 => Instr(14),
      I4 => Instr(16),
      I5 => rd20(27),
      O => \^writedata\(27)
    );
\WriteData[28]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(18),
      I1 => Instr(17),
      I2 => Instr(15),
      I3 => Instr(14),
      I4 => Instr(16),
      I5 => rd20(28),
      O => \^writedata\(28)
    );
\WriteData[29]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(18),
      I1 => Instr(17),
      I2 => Instr(15),
      I3 => Instr(14),
      I4 => Instr(16),
      I5 => rd20(29),
      O => \^writedata\(29)
    );
\WriteData[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(18),
      I1 => Instr(17),
      I2 => Instr(15),
      I3 => Instr(14),
      I4 => Instr(16),
      I5 => rd20(2),
      O => \^writedata\(2)
    );
\WriteData[30]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(18),
      I1 => Instr(17),
      I2 => Instr(15),
      I3 => Instr(14),
      I4 => Instr(16),
      I5 => rd20(30),
      O => \^writedata\(30)
    );
\WriteData[31]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(18),
      I1 => Instr(17),
      I2 => Instr(15),
      I3 => Instr(14),
      I4 => Instr(16),
      I5 => \^clk_0\(6),
      O => \^writedata\(31)
    );
\WriteData[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(18),
      I1 => Instr(17),
      I2 => Instr(15),
      I3 => Instr(14),
      I4 => Instr(16),
      I5 => rd20(3),
      O => \^writedata\(3)
    );
\WriteData[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(18),
      I1 => Instr(17),
      I2 => Instr(15),
      I3 => Instr(14),
      I4 => Instr(16),
      I5 => rd20(4),
      O => \^writedata\(4)
    );
\WriteData[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(18),
      I1 => Instr(17),
      I2 => Instr(15),
      I3 => Instr(14),
      I4 => Instr(16),
      I5 => \^clk_0\(0),
      O => \^writedata\(5)
    );
\WriteData[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(18),
      I1 => Instr(17),
      I2 => Instr(15),
      I3 => Instr(14),
      I4 => Instr(16),
      I5 => \^clk_0\(1),
      O => \^writedata\(6)
    );
\WriteData[7]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(18),
      I1 => Instr(17),
      I2 => Instr(15),
      I3 => Instr(14),
      I4 => Instr(16),
      I5 => \^clk_0\(2),
      O => \^writedata\(7)
    );
\WriteData[8]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(18),
      I1 => Instr(17),
      I2 => Instr(15),
      I3 => Instr(14),
      I4 => Instr(16),
      I5 => \^clk_0\(3),
      O => \^writedata\(8)
    );
\WriteData[9]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(18),
      I1 => Instr(17),
      I2 => Instr(15),
      I3 => Instr(14),
      I4 => Instr(16),
      I5 => \^clk_0\(4),
      O => \^writedata\(9)
    );
\carried_carry__0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08080804F7F7F7"
    )
        port map (
      I0 => \sum_carry__0\(0),
      I1 => Instr(0),
      I2 => Instr(2),
      I3 => rd11,
      I4 => \^rd10\(4),
      I5 => \^q_reg[5]\(4),
      O => \q_reg[4]\(0)
    );
\carried_carry__1_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08080804F7F7F7"
    )
        port map (
      I0 => \addressM[11]\(3),
      I1 => Instr(0),
      I2 => Instr(2),
      I3 => rd11,
      I4 => \^rd10\(11),
      I5 => \^q_reg[5]\(9),
      O => \q_reg[11]_1\(0)
    );
\carried_carry__2_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08080804F7F7F7"
    )
        port map (
      I0 => \sum_carry__2\(3),
      I1 => Instr(0),
      I2 => Instr(2),
      I3 => rd11,
      I4 => \^rd10\(15),
      I5 => \^q_reg[5]\(13),
      O => \q_reg[15]_0\(3)
    );
\carried_carry__2_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08080804F7F7F7"
    )
        port map (
      I0 => \sum_carry__2\(2),
      I1 => Instr(0),
      I2 => Instr(2),
      I3 => rd11,
      I4 => \^rd10\(14),
      I5 => \^q_reg[5]\(12),
      O => \q_reg[15]_0\(2)
    );
\carried_carry__2_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08080804F7F7F7"
    )
        port map (
      I0 => \sum_carry__2\(1),
      I1 => Instr(0),
      I2 => Instr(2),
      I3 => rd11,
      I4 => \^rd10\(13),
      I5 => \^q_reg[5]\(11),
      O => \q_reg[15]_0\(1)
    );
\carried_carry__2_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08080804F7F7F7"
    )
        port map (
      I0 => \sum_carry__2\(0),
      I1 => Instr(0),
      I2 => Instr(2),
      I3 => rd11,
      I4 => \^rd10\(12),
      I5 => \^q_reg[5]\(10),
      O => \q_reg[15]_0\(0)
    );
\carried_carry__3_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08080804F7F7F7"
    )
        port map (
      I0 => \sum_carry__3\(3),
      I1 => Instr(0),
      I2 => Instr(2),
      I3 => rd11,
      I4 => \^rd10\(19),
      I5 => SrcB(19),
      O => \q_reg[19]_0\(3)
    );
\carried_carry__3_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08080804F7F7F7"
    )
        port map (
      I0 => \sum_carry__3\(2),
      I1 => Instr(0),
      I2 => Instr(2),
      I3 => rd11,
      I4 => \^rd10\(18),
      I5 => SrcB(18),
      O => \q_reg[19]_0\(2)
    );
\carried_carry__3_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08080804F7F7F7"
    )
        port map (
      I0 => \sum_carry__3\(1),
      I1 => Instr(0),
      I2 => Instr(2),
      I3 => rd11,
      I4 => \^rd10\(17),
      I5 => SrcB(17),
      O => \q_reg[19]_0\(1)
    );
\carried_carry__3_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08080804F7F7F7"
    )
        port map (
      I0 => \sum_carry__3\(0),
      I1 => Instr(0),
      I2 => Instr(2),
      I3 => rd11,
      I4 => \^rd10\(16),
      I5 => SrcB(16),
      O => \q_reg[19]_0\(0)
    );
\carried_carry__4_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08080804F7F7F7"
    )
        port map (
      I0 => \addressM[23]_2\(3),
      I1 => Instr(0),
      I2 => Instr(2),
      I3 => rd11,
      I4 => \^rd10\(23),
      I5 => SrcB(23),
      O => \q_reg[23]_0\(3)
    );
\carried_carry__4_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08080804F7F7F7"
    )
        port map (
      I0 => \addressM[23]_2\(2),
      I1 => Instr(0),
      I2 => Instr(2),
      I3 => rd11,
      I4 => \^rd10\(22),
      I5 => SrcB(22),
      O => \q_reg[23]_0\(2)
    );
\carried_carry__4_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08080804F7F7F7"
    )
        port map (
      I0 => \addressM[23]_2\(1),
      I1 => Instr(0),
      I2 => Instr(2),
      I3 => rd11,
      I4 => \^rd10\(21),
      I5 => SrcB(21),
      O => \q_reg[23]_0\(1)
    );
\carried_carry__4_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08080804F7F7F7"
    )
        port map (
      I0 => \addressM[23]_2\(0),
      I1 => Instr(0),
      I2 => Instr(2),
      I3 => rd11,
      I4 => \^rd10\(20),
      I5 => SrcB(20),
      O => \q_reg[23]_0\(0)
    );
\carried_carry__5_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08080804F7F7F7"
    )
        port map (
      I0 => \addressM[27]_1\(3),
      I1 => Instr(0),
      I2 => Instr(2),
      I3 => rd11,
      I4 => \^rd10\(27),
      I5 => SrcB(27),
      O => \q_reg[27]_2\(3)
    );
\carried_carry__5_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08080804F7F7F7"
    )
        port map (
      I0 => \addressM[27]_1\(2),
      I1 => Instr(0),
      I2 => Instr(2),
      I3 => rd11,
      I4 => \^rd10\(26),
      I5 => SrcB(26),
      O => \q_reg[27]_2\(2)
    );
\carried_carry__5_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08080804F7F7F7"
    )
        port map (
      I0 => \addressM[27]_1\(1),
      I1 => Instr(0),
      I2 => Instr(2),
      I3 => rd11,
      I4 => \^rd10\(25),
      I5 => SrcB(25),
      O => \q_reg[27]_2\(1)
    );
\carried_carry__5_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08080804F7F7F7"
    )
        port map (
      I0 => \addressM[27]_1\(0),
      I1 => Instr(0),
      I2 => Instr(2),
      I3 => rd11,
      I4 => \^rd10\(24),
      I5 => SrcB(24),
      O => \q_reg[27]_2\(0)
    );
\carried_carry__6_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08080804F7F7F7"
    )
        port map (
      I0 => \sum_carry__6\(2),
      I1 => Instr(0),
      I2 => Instr(2),
      I3 => rd11,
      I4 => \^rd10\(30),
      I5 => \^q_reg[5]\(15),
      O => \q_reg[30]_2\(2)
    );
\carried_carry__6_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08080804F7F7F7"
    )
        port map (
      I0 => \sum_carry__6\(1),
      I1 => Instr(0),
      I2 => Instr(2),
      I3 => rd11,
      I4 => \^rd10\(29),
      I5 => \^q_reg[5]\(14),
      O => \q_reg[30]_2\(1)
    );
\carried_carry__6_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08080804F7F7F7"
    )
        port map (
      I0 => \sum_carry__6\(0),
      I1 => Instr(0),
      I2 => Instr(2),
      I3 => rd11,
      I4 => \^rd10\(28),
      I5 => SrcB(28),
      O => \q_reg[30]_2\(0)
    );
carried_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08080804F7F7F7"
    )
        port map (
      I0 => sum_carry(3),
      I1 => Instr(0),
      I2 => Instr(2),
      I3 => rd11,
      I4 => \^rd10\(3),
      I5 => \^q_reg[5]\(3),
      O => \q_reg[3]_0\(3)
    );
carried_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08080804F7F7F7"
    )
        port map (
      I0 => sum_carry(2),
      I1 => Instr(0),
      I2 => Instr(2),
      I3 => rd11,
      I4 => \^rd10\(2),
      I5 => \^q_reg[5]\(2),
      O => \q_reg[3]_0\(2)
    );
carried_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08080804F7F7F7"
    )
        port map (
      I0 => sum_carry(1),
      I1 => Instr(0),
      I2 => Instr(2),
      I3 => rd11,
      I4 => \^rd10\(1),
      I5 => \^q_reg[5]\(1),
      O => \q_reg[3]_0\(1)
    );
carried_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08080804F7F7F7"
    )
        port map (
      I0 => sum_carry(0),
      I1 => Instr(0),
      I2 => Instr(2),
      I3 => rd11,
      I4 => \^rd10\(0),
      I5 => \^q_reg[5]\(0),
      O => \q_reg[3]_0\(0)
    );
\q[0]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00053305"
    )
        port map (
      I0 => \ALUResult[2]_INST_0_i_1_n_0\,
      I1 => \ALUResult[2]_INST_0_i_2_n_0\,
      I2 => \ALUResult[3]_INST_0_i_1_n_0\,
      I3 => ALUControl(2),
      I4 => \ALUResult[3]_INST_0_i_2_n_0\,
      O => \ALUResult[3]_INST_0_i_2_0\
    );
\q[0]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00053305"
    )
        port map (
      I0 => \q[0]_i_5\,
      I1 => \q[0]_i_5_0\,
      I2 => \ALUResult[1]_INST_0_i_1_n_0\,
      I3 => ALUControl(2),
      I4 => \ALUResult[1]_INST_0_i_2_n_0\,
      O => \ALUResult[1]_INST_0_i_2_0\
    );
\q[0]_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00053305"
    )
        port map (
      I0 => \q[0]_i_6\,
      I1 => \^aluresult[31]_inst_0_i_12\,
      I2 => \q_reg[0]_i_21_n_0\,
      I3 => ALUControl(2),
      I4 => \q[0]_i_6_0\,
      O => \ALUResult[11]_INST_0_i_1\
    );
\q[0]_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00053305"
    )
        port map (
      I0 => \ALUResult[8]_INST_0_i_1_n_0\,
      I1 => \ALUResult[8]_INST_0_i_2_n_0\,
      I2 => \ALUResult[9]_INST_0_i_1_n_0\,
      I3 => ALUControl(2),
      I4 => \ALUResult[9]_INST_0_i_2_n_0\,
      O => \ALUResult[9]_INST_0_i_2_0\
    );
\q[0]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^aluresult\(13),
      I1 => \^aluresult\(12),
      I2 => \^aluresult\(15),
      I3 => \^aluresult\(14),
      O => \q[0]_i_14_n_0\
    );
\q[0]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000111DDD1D"
    )
        port map (
      I0 => \ALUResult[22]_INST_0_i_4_n_0\,
      I1 => ALUControl(2),
      I2 => \ALUResult[22]_INST_0_i_3_n_0\,
      I3 => ALUControl(1),
      I4 => \ALUResult[22]_INST_0_i_1_n_0\,
      I5 => \^aluresult\(11),
      O => \q[0]_i_16_n_0\
    );
\q[0]_i_17\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFACCFA"
    )
        port map (
      I0 => \ALUResult[20]_INST_0_i_3_n_0\,
      I1 => \q[0]_i_7_0\,
      I2 => \ALUResult[21]_INST_0_i_3_n_0\,
      I3 => ALUControl(2),
      I4 => \q_reg[0]_i_23_n_0\,
      O => \q[0]_i_17_n_0\
    );
\q[0]_i_18\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00053305"
    )
        port map (
      I0 => \ALUResult[18]_INST_0_i_1_n_0\,
      I1 => \addressM[18]\,
      I2 => \ALUResult[19]_INST_0_i_1_n_0\,
      I3 => ALUControl(2),
      I4 => \addressM[19]\,
      O => \q[0]_i_18_n_0\
    );
\q[0]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000400000"
    )
        port map (
      I0 => \q[0]_i_14_n_0\,
      I1 => \q[0]_i_3\,
      I2 => \q[0]_i_16_n_0\,
      I3 => \q[0]_i_17_n_0\,
      I4 => \q[0]_i_18_n_0\,
      I5 => \q[0]_i_3_0\,
      O => \q[0]_i_19\
    );
\q[12]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACCCCCCC"
    )
        port map (
      I0 => \^aluresult\(4),
      I1 => d0(4),
      I2 => Instr(0),
      I3 => Instr(2),
      I4 => Instr(3),
      O => \q_reg[27]_0\(4)
    );
\q[20]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACCCCCCC"
    )
        port map (
      I0 => \^aluresult\(8),
      I1 => d0(8),
      I2 => Instr(0),
      I3 => Instr(2),
      I4 => Instr(3),
      O => \q_reg[27]_0\(8)
    );
\q[20]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACCCCCCC"
    )
        port map (
      I0 => \^aluresult\(7),
      I1 => d0(7),
      I2 => Instr(0),
      I3 => Instr(2),
      I4 => Instr(3),
      O => \q_reg[27]_0\(7)
    );
\q[20]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACCCCCCC"
    )
        port map (
      I0 => \^aluresult\(6),
      I1 => d0(6),
      I2 => Instr(0),
      I3 => Instr(2),
      I4 => Instr(3),
      O => \q_reg[27]_0\(6)
    );
\q[20]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACCCCCCC"
    )
        port map (
      I0 => \^aluresult\(5),
      I1 => d0(5),
      I2 => Instr(0),
      I3 => Instr(2),
      I4 => Instr(3),
      O => \q_reg[27]_0\(5)
    );
\q[24]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACCCCCCC"
    )
        port map (
      I0 => \^aluresult\(12),
      I1 => d0(12),
      I2 => Instr(0),
      I3 => Instr(2),
      I4 => Instr(3),
      O => \q_reg[27]_0\(12)
    );
\q[24]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACCCCCCC"
    )
        port map (
      I0 => \^aluresult\(11),
      I1 => d0(11),
      I2 => Instr(0),
      I3 => Instr(2),
      I4 => Instr(3),
      O => \q_reg[27]_0\(11)
    );
\q[24]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACCCCCCC"
    )
        port map (
      I0 => \^aluresult\(10),
      I1 => d0(10),
      I2 => Instr(0),
      I3 => Instr(2),
      I4 => Instr(3),
      O => \q_reg[27]_0\(10)
    );
\q[24]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACCCCCCC"
    )
        port map (
      I0 => \^aluresult\(9),
      I1 => d0(9),
      I2 => Instr(0),
      I3 => Instr(2),
      I4 => Instr(3),
      O => \q_reg[27]_0\(9)
    );
\q[28]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACCCCCCC"
    )
        port map (
      I0 => \^aluresult\(15),
      I1 => d0(15),
      I2 => Instr(0),
      I3 => Instr(2),
      I4 => Instr(3),
      O => \q_reg[27]_0\(15)
    );
\q[28]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACCCCCCC"
    )
        port map (
      I0 => \^aluresult\(14),
      I1 => d0(14),
      I2 => Instr(0),
      I3 => Instr(2),
      I4 => Instr(3),
      O => \q_reg[27]_0\(14)
    );
\q[28]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACCCCCCC"
    )
        port map (
      I0 => \^aluresult\(13),
      I1 => d0(13),
      I2 => Instr(0),
      I3 => Instr(2),
      I4 => Instr(3),
      O => \q_reg[27]_0\(13)
    );
\q[4]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACCCCCCC"
    )
        port map (
      I0 => \^aluresult\(0),
      I1 => d0(0),
      I2 => Instr(0),
      I3 => Instr(2),
      I4 => Instr(3),
      O => \q_reg[27]_0\(0)
    );
\q[4]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACCCCCCC"
    )
        port map (
      I0 => \^aluresult\(1),
      I1 => d0(1),
      I2 => Instr(0),
      I3 => Instr(2),
      I4 => Instr(3),
      O => \q_reg[27]_0\(1)
    );
\q[4]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACCCCCCC"
    )
        port map (
      I0 => \^aluresult\(2),
      I1 => d0(2),
      I2 => Instr(0),
      I3 => Instr(2),
      I4 => Instr(3),
      O => \q_reg[27]_0\(2)
    );
\q[8]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACCCCCCC"
    )
        port map (
      I0 => \^aluresult\(3),
      I1 => d0(3),
      I2 => Instr(0),
      I3 => Instr(2),
      I4 => Instr(3),
      O => \q_reg[27]_0\(3)
    );
\q_reg[0]_i_21\: unisim.vcomponents.MUXF7
     port map (
      I0 => \^q_reg[11]\,
      I1 => \q[0]_i_12_0\,
      O => \q_reg[0]_i_21_n_0\,
      S => \addressM[23]\
    );
\q_reg[0]_i_23\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALUResult[21]_INST_0_i_2_n_0\,
      I1 => \ALUResult[21]_INST_0_i_1_n_0\,
      O => \q_reg[0]_i_23_n_0\,
      S => ALUControl(1)
    );
rf_reg_r1_0_31_0_5: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 0) => Instr(13 downto 9),
      ADDRB(4 downto 0) => Instr(13 downto 9),
      ADDRC(4 downto 0) => Instr(13 downto 9),
      ADDRD(4 downto 0) => Instr(8 downto 4),
      DIA(1 downto 0) => wd3(1 downto 0),
      DIB(1 downto 0) => wd3(3 downto 2),
      DIC(1 downto 0) => wd3(5 downto 4),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => \^rd10\(1 downto 0),
      DOB(1 downto 0) => \^rd10\(3 downto 2),
      DOC(1 downto 0) => \^rd10\(5 downto 4),
      DOD(1 downto 0) => NLW_rf_reg_r1_0_31_0_5_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => we3
    );
rf_reg_r1_0_31_0_5_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => Instr(2),
      I1 => Instr(0),
      I2 => Instr(1),
      O => we3
    );
rf_reg_r1_0_31_0_5_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Instr(0),
      I1 => Instr(3),
      O => Jump
    );
rf_reg_r1_0_31_12_17: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 0) => Instr(13 downto 9),
      ADDRB(4 downto 0) => Instr(13 downto 9),
      ADDRC(4 downto 0) => Instr(13 downto 9),
      ADDRD(4 downto 0) => Instr(8 downto 4),
      DIA(1 downto 0) => wd3(13 downto 12),
      DIB(1 downto 0) => wd3(15 downto 14),
      DIC(1 downto 0) => wd3(17 downto 16),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => \^rd10\(13 downto 12),
      DOB(1 downto 0) => \^rd10\(15 downto 14),
      DOC(1 downto 0) => \^rd10\(17 downto 16),
      DOD(1 downto 0) => NLW_rf_reg_r1_0_31_12_17_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => we3
    );
rf_reg_r1_0_31_18_23: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 0) => Instr(13 downto 9),
      ADDRB(4 downto 0) => Instr(13 downto 9),
      ADDRC(4 downto 0) => Instr(13 downto 9),
      ADDRD(4 downto 0) => Instr(8 downto 4),
      DIA(1 downto 0) => wd3(19 downto 18),
      DIB(1 downto 0) => wd3(21 downto 20),
      DIC(1 downto 0) => wd3(23 downto 22),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => \^rd10\(19 downto 18),
      DOB(1 downto 0) => \^rd10\(21 downto 20),
      DOC(1 downto 0) => \^rd10\(23 downto 22),
      DOD(1 downto 0) => NLW_rf_reg_r1_0_31_18_23_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => we3
    );
rf_reg_r1_0_31_24_29: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 0) => Instr(13 downto 9),
      ADDRB(4 downto 0) => Instr(13 downto 9),
      ADDRC(4 downto 0) => Instr(13 downto 9),
      ADDRD(4 downto 0) => Instr(8 downto 4),
      DIA(1 downto 0) => wd3(25 downto 24),
      DIB(1 downto 0) => wd3(27 downto 26),
      DIC(1 downto 0) => wd3(29 downto 28),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => \^rd10\(25 downto 24),
      DOB(1 downto 0) => \^rd10\(27 downto 26),
      DOC(1 downto 0) => \^rd10\(29 downto 28),
      DOD(1 downto 0) => NLW_rf_reg_r1_0_31_24_29_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => we3
    );
rf_reg_r1_0_31_30_31: unisim.vcomponents.RAM32X1D
     port map (
      A0 => Instr(4),
      A1 => Instr(5),
      A2 => Instr(6),
      A3 => Instr(7),
      A4 => Instr(8),
      D => wd3(30),
      DPO => \^rd10\(30),
      DPRA0 => Instr(9),
      DPRA1 => Instr(10),
      DPRA2 => Instr(11),
      DPRA3 => Instr(12),
      DPRA4 => Instr(13),
      SPO => NLW_rf_reg_r1_0_31_30_31_SPO_UNCONNECTED,
      WCLK => clk,
      WE => we3
    );
\rf_reg_r1_0_31_30_31__0\: unisim.vcomponents.RAM32X1D
     port map (
      A0 => Instr(4),
      A1 => Instr(5),
      A2 => Instr(6),
      A3 => Instr(7),
      A4 => Instr(8),
      D => wd3(31),
      DPO => \^rd10\(31),
      DPRA0 => Instr(9),
      DPRA1 => Instr(10),
      DPRA2 => Instr(11),
      DPRA3 => Instr(12),
      DPRA4 => Instr(13),
      SPO => \NLW_rf_reg_r1_0_31_30_31__0_SPO_UNCONNECTED\,
      WCLK => clk,
      WE => we3
    );
rf_reg_r1_0_31_6_11: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 0) => Instr(13 downto 9),
      ADDRB(4 downto 0) => Instr(13 downto 9),
      ADDRC(4 downto 0) => Instr(13 downto 9),
      ADDRD(4 downto 0) => Instr(8 downto 4),
      DIA(1 downto 0) => wd3(7 downto 6),
      DIB(1 downto 0) => wd3(9 downto 8),
      DIC(1 downto 0) => wd3(11 downto 10),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => \^rd10\(7 downto 6),
      DOB(1 downto 0) => \^rd10\(9 downto 8),
      DOC(1 downto 0) => \^rd10\(11 downto 10),
      DOD(1 downto 0) => NLW_rf_reg_r1_0_31_6_11_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => we3
    );
rf_reg_r2_0_31_0_5: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 0) => Instr(18 downto 14),
      ADDRB(4 downto 0) => Instr(18 downto 14),
      ADDRC(4 downto 0) => Instr(18 downto 14),
      ADDRD(4 downto 0) => Instr(8 downto 4),
      DIA(1 downto 0) => wd3(1 downto 0),
      DIB(1 downto 0) => wd3(3 downto 2),
      DIC(1 downto 0) => wd3(5 downto 4),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => rd20(1 downto 0),
      DOB(1 downto 0) => rd20(3 downto 2),
      DOC(1) => \^clk_0\(0),
      DOC(0) => rd20(4),
      DOD(1 downto 0) => NLW_rf_reg_r2_0_31_0_5_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => we3
    );
rf_reg_r2_0_31_12_17: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 0) => Instr(18 downto 14),
      ADDRB(4 downto 0) => Instr(18 downto 14),
      ADDRC(4 downto 0) => Instr(18 downto 14),
      ADDRD(4 downto 0) => Instr(8 downto 4),
      DIA(1 downto 0) => wd3(13 downto 12),
      DIB(1 downto 0) => wd3(15 downto 14),
      DIC(1 downto 0) => wd3(17 downto 16),
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
      ADDRA(4 downto 0) => Instr(18 downto 14),
      ADDRB(4 downto 0) => Instr(18 downto 14),
      ADDRC(4 downto 0) => Instr(18 downto 14),
      ADDRD(4 downto 0) => Instr(8 downto 4),
      DIA(1 downto 0) => wd3(19 downto 18),
      DIB(1 downto 0) => wd3(21 downto 20),
      DIC(1 downto 0) => wd3(23 downto 22),
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
      ADDRA(4 downto 0) => Instr(18 downto 14),
      ADDRB(4 downto 0) => Instr(18 downto 14),
      ADDRC(4 downto 0) => Instr(18 downto 14),
      ADDRD(4 downto 0) => Instr(8 downto 4),
      DIA(1 downto 0) => wd3(25 downto 24),
      DIB(1 downto 0) => wd3(27 downto 26),
      DIC(1 downto 0) => wd3(29 downto 28),
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
      A0 => Instr(4),
      A1 => Instr(5),
      A2 => Instr(6),
      A3 => Instr(7),
      A4 => Instr(8),
      D => wd3(30),
      DPO => rd20(30),
      DPRA0 => Instr(14),
      DPRA1 => Instr(15),
      DPRA2 => Instr(16),
      DPRA3 => Instr(17),
      DPRA4 => Instr(18),
      SPO => NLW_rf_reg_r2_0_31_30_31_SPO_UNCONNECTED,
      WCLK => clk,
      WE => we3
    );
\rf_reg_r2_0_31_30_31__0\: unisim.vcomponents.RAM32X1D
     port map (
      A0 => Instr(4),
      A1 => Instr(5),
      A2 => Instr(6),
      A3 => Instr(7),
      A4 => Instr(8),
      D => wd3(31),
      DPO => \^clk_0\(6),
      DPRA0 => Instr(14),
      DPRA1 => Instr(15),
      DPRA2 => Instr(16),
      DPRA3 => Instr(17),
      DPRA4 => Instr(18),
      SPO => \NLW_rf_reg_r2_0_31_30_31__0_SPO_UNCONNECTED\,
      WCLK => clk,
      WE => we3
    );
rf_reg_r2_0_31_6_11: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 0) => Instr(18 downto 14),
      ADDRB(4 downto 0) => Instr(18 downto 14),
      ADDRC(4 downto 0) => Instr(18 downto 14),
      ADDRD(4 downto 0) => Instr(8 downto 4),
      DIA(1 downto 0) => wd3(7 downto 6),
      DIB(1 downto 0) => wd3(9 downto 8),
      DIC(1 downto 0) => wd3(11 downto 10),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => \^clk_0\(2 downto 1),
      DOB(1 downto 0) => \^clk_0\(4 downto 3),
      DOC(1) => rd20(11),
      DOC(0) => \^clk_0\(5),
      DOD(1 downto 0) => NLW_rf_reg_r2_0_31_6_11_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => we3
    );
\sltuOut_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^q_reg[5]\(12),
      I1 => SrcA(14),
      I2 => SrcA(15),
      I3 => \^q_reg[5]\(13),
      O => \q_reg[14]\(3)
    );
\sltuOut_carry__0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6A556A6A6AAA6A6A"
    )
        port map (
      I0 => \^q_reg[5]\(11),
      I1 => \^rd10\(13),
      I2 => rd11,
      I3 => Instr(2),
      I4 => Instr(0),
      I5 => \sum_carry__2\(1),
      O => \^q_reg[16]\(1)
    );
\sltuOut_carry__0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F707F7F708F80808"
    )
        port map (
      I0 => \^clk_0\(4),
      I1 => rd21,
      I2 => ALUSrc(0),
      I3 => \ALUResult[30]_INST_0_i_2\,
      I4 => Instr(23),
      I5 => SrcA(9),
      O => \alu/xorOut__31\(9)
    );
\sltuOut_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^q_reg[5]\(10),
      I1 => SrcA(12),
      I2 => SrcA(13),
      I3 => \^q_reg[5]\(11),
      O => \q_reg[14]\(2)
    );
\sltuOut_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^q_reg[5]\(8),
      I1 => SrcA(10),
      I2 => SrcA(11),
      I3 => \^q_reg[5]\(9),
      O => \q_reg[14]\(1)
    );
\sltuOut_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => SrcB(8),
      I1 => SrcA(8),
      I2 => SrcA(9),
      I3 => SrcB(9),
      O => \q_reg[14]\(0)
    );
\sltuOut_carry__0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000B8884777"
    )
        port map (
      I0 => \sum_carry__2\(2),
      I1 => \addressM[28]\,
      I2 => rd11,
      I3 => \^rd10\(14),
      I4 => \^q_reg[5]\(12),
      I5 => \^q_reg[16]\(2),
      O => \q_reg[14]_0\(3)
    );
\sltuOut_carry__0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000B8884777"
    )
        port map (
      I0 => \sum_carry__2\(0),
      I1 => \addressM[28]\,
      I2 => rd11,
      I3 => \^rd10\(12),
      I4 => \^q_reg[5]\(10),
      I5 => \^q_reg[16]\(1),
      O => \q_reg[14]_0\(2)
    );
\sltuOut_carry__0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000B8884777"
    )
        port map (
      I0 => \addressM[11]\(2),
      I1 => \addressM[28]\,
      I2 => rd11,
      I3 => \^rd10\(10),
      I4 => \^q_reg[5]\(8),
      I5 => \^q_reg[16]\(0),
      O => \q_reg[14]_0\(1)
    );
\sltuOut_carry__0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000B8884777"
    )
        port map (
      I0 => \addressM[11]\(0),
      I1 => \addressM[28]\,
      I2 => rd11,
      I3 => \^rd10\(8),
      I4 => SrcB(8),
      I5 => \alu/xorOut__31\(9),
      O => \q_reg[14]_0\(0)
    );
\sltuOut_carry__0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6A556A6A6AAA6A6A"
    )
        port map (
      I0 => \^q_reg[5]\(13),
      I1 => \^rd10\(15),
      I2 => rd11,
      I3 => Instr(2),
      I4 => Instr(0),
      I5 => \sum_carry__2\(3),
      O => \^q_reg[16]\(2)
    );
\sltuOut_carry__1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => SrcB(22),
      I1 => SrcA(22),
      I2 => SrcA(23),
      I3 => SrcB(23),
      O => \q_reg[22]\(3)
    );
\sltuOut_carry__1_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6A556A6A6AAA6A6A"
    )
        port map (
      I0 => SrcB(19),
      I1 => \^rd10\(19),
      I2 => rd11,
      I3 => Instr(2),
      I4 => Instr(0),
      I5 => \sum_carry__3\(3),
      O => \alu/xorOut__31\(19)
    );
\sltuOut_carry__1_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6A556A6A6AAA6A6A"
    )
        port map (
      I0 => SrcB(17),
      I1 => \^rd10\(17),
      I2 => rd11,
      I3 => Instr(2),
      I4 => Instr(0),
      I5 => \sum_carry__3\(1),
      O => \alu/xorOut__31\(17)
    );
\sltuOut_carry__1_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => SrcB(20),
      I1 => SrcA(20),
      I2 => SrcA(21),
      I3 => SrcB(21),
      O => \q_reg[22]\(2)
    );
\sltuOut_carry__1_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => SrcB(18),
      I1 => SrcA(18),
      I2 => SrcA(19),
      I3 => SrcB(19),
      O => \q_reg[22]\(1)
    );
\sltuOut_carry__1_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => SrcB(16),
      I1 => SrcA(16),
      I2 => SrcA(17),
      I3 => SrcB(17),
      O => \q_reg[22]\(0)
    );
\sltuOut_carry__1_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000B8884777"
    )
        port map (
      I0 => \addressM[23]_2\(2),
      I1 => \addressM[28]\,
      I2 => rd11,
      I3 => \^rd10\(22),
      I4 => SrcB(22),
      I5 => \alu/xorOut__31\(23),
      O => \q_reg[22]_0\(3)
    );
\sltuOut_carry__1_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000B8884777"
    )
        port map (
      I0 => \addressM[23]_2\(0),
      I1 => \addressM[28]\,
      I2 => rd11,
      I3 => \^rd10\(20),
      I4 => SrcB(20),
      I5 => \alu/xorOut__31\(21),
      O => \q_reg[22]_0\(2)
    );
\sltuOut_carry__1_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000B8884777"
    )
        port map (
      I0 => \sum_carry__3\(2),
      I1 => \addressM[28]\,
      I2 => rd11,
      I3 => \^rd10\(18),
      I4 => SrcB(18),
      I5 => \alu/xorOut__31\(19),
      O => \q_reg[22]_0\(1)
    );
\sltuOut_carry__1_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000B8884777"
    )
        port map (
      I0 => \sum_carry__3\(0),
      I1 => \addressM[28]\,
      I2 => rd11,
      I3 => \^rd10\(16),
      I4 => SrcB(16),
      I5 => \alu/xorOut__31\(17),
      O => \q_reg[22]_0\(0)
    );
\sltuOut_carry__1_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6A556A6A6AAA6A6A"
    )
        port map (
      I0 => SrcB(21),
      I1 => \^rd10\(21),
      I2 => rd11,
      I3 => Instr(2),
      I4 => Instr(0),
      I5 => \addressM[23]_2\(1),
      O => \alu/xorOut__31\(21)
    );
\sltuOut_carry__2_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^q_reg[5]\(15),
      I1 => SrcA(30),
      I2 => SrcA(31),
      I3 => \^q_reg[5]\(16),
      O => \q_reg[30]_0\(3)
    );
\sltuOut_carry__2_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => SrcB(28),
      I1 => SrcA(28),
      I2 => SrcA(29),
      I3 => \^q_reg[5]\(14),
      O => \q_reg[30]_0\(2)
    );
\sltuOut_carry__2_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => SrcB(26),
      I1 => SrcA(26),
      I2 => SrcA(27),
      I3 => SrcB(27),
      O => \q_reg[30]_0\(1)
    );
\sltuOut_carry__2_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => SrcB(24),
      I1 => SrcA(24),
      I2 => SrcA(25),
      I3 => SrcB(25),
      O => \q_reg[30]_0\(0)
    );
\sltuOut_carry__2_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000B8884777"
    )
        port map (
      I0 => \sum_carry__6\(0),
      I1 => \addressM[28]\,
      I2 => rd11,
      I3 => \^rd10\(28),
      I4 => SrcB(28),
      I5 => \alu/xorOut__31\(29),
      O => \q_reg[28]_1\(2)
    );
\sltuOut_carry__2_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000B8884777"
    )
        port map (
      I0 => \addressM[27]_1\(2),
      I1 => \addressM[28]\,
      I2 => rd11,
      I3 => \^rd10\(26),
      I4 => SrcB(26),
      I5 => \alu/xorOut__31\(27),
      O => \q_reg[28]_1\(1)
    );
\sltuOut_carry__2_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000B8884777"
    )
        port map (
      I0 => \addressM[27]_1\(0),
      I1 => \addressM[28]\,
      I2 => rd11,
      I3 => \^rd10\(24),
      I4 => SrcB(24),
      I5 => \alu/xorOut__31\(25),
      O => \q_reg[28]_1\(0)
    );
\sltuOut_carry__2_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6A556A6A6AAA6A6A"
    )
        port map (
      I0 => \^q_reg[5]\(14),
      I1 => \^rd10\(29),
      I2 => rd11,
      I3 => Instr(2),
      I4 => Instr(0),
      I5 => \sum_carry__6\(1),
      O => \alu/xorOut__31\(29)
    );
sltuOut_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^q_reg[5]\(6),
      I1 => SrcA(6),
      I2 => SrcA(7),
      I3 => \^q_reg[5]\(7),
      O => DI(3)
    );
sltuOut_carry_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F707F7F708F80808"
    )
        port map (
      I0 => \^clk_0\(0),
      I1 => rd21,
      I2 => ALUSrc(0),
      I3 => \ALUResult[30]_INST_0_i_2\,
      I4 => Instr(19),
      I5 => SrcA(5),
      O => \alu/xorOut__31\(5)
    );
sltuOut_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^q_reg[5]\(4),
      I1 => SrcA(4),
      I2 => SrcA(5),
      I3 => \^q_reg[5]\(5),
      O => DI(2)
    );
sltuOut_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^q_reg[5]\(2),
      I1 => SrcA(2),
      I2 => SrcA(3),
      I3 => \^q_reg[5]\(3),
      O => DI(1)
    );
sltuOut_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^q_reg[5]\(0),
      I1 => SrcA(0),
      I2 => SrcA(1),
      I3 => \^q_reg[5]\(1),
      O => DI(0)
    );
sltuOut_carry_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000B8884777"
    )
        port map (
      I0 => \sum_carry__0\(2),
      I1 => \addressM[28]\,
      I2 => rd11,
      I3 => \^rd10\(6),
      I4 => \^q_reg[5]\(6),
      I5 => \alu/xorOut__31\(7),
      O => \q_reg[6]\(1)
    );
sltuOut_carry_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000B8884777"
    )
        port map (
      I0 => \sum_carry__0\(0),
      I1 => \addressM[28]\,
      I2 => rd11,
      I3 => \^rd10\(4),
      I4 => \^q_reg[5]\(4),
      I5 => \alu/xorOut__31\(5),
      O => \q_reg[6]\(0)
    );
sltuOut_carry_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F707F7F708F80808"
    )
        port map (
      I0 => \^clk_0\(2),
      I1 => rd21,
      I2 => ALUSrc(0),
      I3 => \ALUResult[30]_INST_0_i_2\,
      I4 => Instr(21),
      I5 => SrcA(7),
      O => \alu/xorOut__31\(7)
    );
\sum_carry__0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F80807F707F7F808"
    )
        port map (
      I0 => \^rd10\(7),
      I1 => rd11,
      I2 => \addressM[28]\,
      I3 => \sum_carry__0\(3),
      I4 => \^q_reg[5]\(7),
      I5 => \ALUControl__0\(0),
      O => \q_reg[7]\(3)
    );
\sum_carry__0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F80807F707F7F808"
    )
        port map (
      I0 => \^rd10\(6),
      I1 => rd11,
      I2 => \addressM[28]\,
      I3 => \sum_carry__0\(2),
      I4 => \^q_reg[5]\(6),
      I5 => \ALUControl__0\(0),
      O => \q_reg[7]\(2)
    );
\sum_carry__0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F80807F707F7F808"
    )
        port map (
      I0 => \^rd10\(5),
      I1 => rd11,
      I2 => \addressM[28]\,
      I3 => \sum_carry__0\(1),
      I4 => \^q_reg[5]\(5),
      I5 => \ALUControl__0\(0),
      O => \q_reg[7]\(1)
    );
\sum_carry__0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F80807F707F7F808"
    )
        port map (
      I0 => \^rd10\(4),
      I1 => rd11,
      I2 => \addressM[28]\,
      I3 => \sum_carry__0\(0),
      I4 => \^q_reg[5]\(4),
      I5 => \ALUControl__0\(0),
      O => \q_reg[7]\(0)
    );
\sum_carry__1_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F80807F707F7F808"
    )
        port map (
      I0 => \^rd10\(11),
      I1 => rd11,
      I2 => \addressM[28]\,
      I3 => \addressM[11]\(3),
      I4 => \^q_reg[5]\(9),
      I5 => \ALUControl__0\(0),
      O => \q_reg[11]_0\(3)
    );
\sum_carry__1_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F80807F707F7F808"
    )
        port map (
      I0 => \^rd10\(10),
      I1 => rd11,
      I2 => \addressM[28]\,
      I3 => \addressM[11]\(2),
      I4 => \^q_reg[5]\(8),
      I5 => \ALUControl__0\(0),
      O => \q_reg[11]_0\(2)
    );
\sum_carry__1_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F80807F707F7F808"
    )
        port map (
      I0 => \^rd10\(9),
      I1 => rd11,
      I2 => \addressM[28]\,
      I3 => \addressM[11]\(1),
      I4 => SrcB(9),
      I5 => \ALUControl__0\(0),
      O => \q_reg[11]_0\(1)
    );
\sum_carry__1_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F80807F707F7F808"
    )
        port map (
      I0 => \^rd10\(8),
      I1 => rd11,
      I2 => \addressM[28]\,
      I3 => \addressM[11]\(0),
      I4 => SrcB(8),
      I5 => \ALUControl__0\(0),
      O => \q_reg[11]_0\(0)
    );
\sum_carry__2_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F80807F707F7F808"
    )
        port map (
      I0 => \^rd10\(15),
      I1 => rd11,
      I2 => \addressM[28]\,
      I3 => \sum_carry__2\(3),
      I4 => \^q_reg[5]\(13),
      I5 => \ALUControl__0\(0),
      O => \q_reg[15]\(3)
    );
\sum_carry__2_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F80807F707F7F808"
    )
        port map (
      I0 => \^rd10\(14),
      I1 => rd11,
      I2 => \addressM[28]\,
      I3 => \sum_carry__2\(2),
      I4 => \^q_reg[5]\(12),
      I5 => \ALUControl__0\(0),
      O => \q_reg[15]\(2)
    );
\sum_carry__2_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F80807F707F7F808"
    )
        port map (
      I0 => \^rd10\(13),
      I1 => rd11,
      I2 => \addressM[28]\,
      I3 => \sum_carry__2\(1),
      I4 => \^q_reg[5]\(11),
      I5 => \ALUControl__0\(0),
      O => \q_reg[15]\(1)
    );
\sum_carry__2_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F80807F707F7F808"
    )
        port map (
      I0 => \^rd10\(12),
      I1 => rd11,
      I2 => \addressM[28]\,
      I3 => \sum_carry__2\(0),
      I4 => \^q_reg[5]\(10),
      I5 => \ALUControl__0\(0),
      O => \q_reg[15]\(0)
    );
\sum_carry__3_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => immext(6),
      I1 => ALUSrc(0),
      I2 => rd21,
      I3 => rd20(18),
      O => SrcB(18)
    );
\sum_carry__3_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => immext(5),
      I1 => ALUSrc(0),
      I2 => rd21,
      I3 => rd20(17),
      O => SrcB(17)
    );
\sum_carry__3_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => immext(4),
      I1 => ALUSrc(0),
      I2 => rd21,
      I3 => rd20(16),
      O => SrcB(16)
    );
\sum_carry__3_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F80807F707F7F808"
    )
        port map (
      I0 => \^rd10\(19),
      I1 => rd11,
      I2 => \addressM[28]\,
      I3 => \sum_carry__3\(3),
      I4 => SrcB(19),
      I5 => \ALUControl__0\(0),
      O => \q_reg[19]\(3)
    );
\sum_carry__3_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F80807F707F7F808"
    )
        port map (
      I0 => \^rd10\(18),
      I1 => rd11,
      I2 => \addressM[28]\,
      I3 => \sum_carry__3\(2),
      I4 => SrcB(18),
      I5 => \ALUControl__0\(0),
      O => \q_reg[19]\(2)
    );
\sum_carry__3_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F80807F707F7F808"
    )
        port map (
      I0 => \^rd10\(17),
      I1 => rd11,
      I2 => \addressM[28]\,
      I3 => \sum_carry__3\(1),
      I4 => SrcB(17),
      I5 => \ALUControl__0\(0),
      O => \q_reg[19]\(1)
    );
\sum_carry__3_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F80807F707F7F808"
    )
        port map (
      I0 => \^rd10\(16),
      I1 => rd11,
      I2 => \addressM[28]\,
      I3 => \sum_carry__3\(0),
      I4 => SrcB(16),
      I5 => \ALUControl__0\(0),
      O => \q_reg[19]\(0)
    );
\sum_carry__3_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => immext(7),
      I1 => ALUSrc(0),
      I2 => rd21,
      I3 => rd20(19),
      O => SrcB(19)
    );
\sum_carry__4_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F80807F707F7F808"
    )
        port map (
      I0 => \^rd10\(23),
      I1 => rd11,
      I2 => \addressM[28]\,
      I3 => \addressM[23]_2\(3),
      I4 => SrcB(23),
      I5 => \ALUControl__0\(0),
      O => \q_reg[23]\(3)
    );
\sum_carry__4_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F80807F707F7F808"
    )
        port map (
      I0 => \^rd10\(22),
      I1 => rd11,
      I2 => \addressM[28]\,
      I3 => \addressM[23]_2\(2),
      I4 => SrcB(22),
      I5 => \ALUControl__0\(0),
      O => \q_reg[23]\(2)
    );
\sum_carry__4_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F80807F707F7F808"
    )
        port map (
      I0 => \^rd10\(21),
      I1 => rd11,
      I2 => \addressM[28]\,
      I3 => \addressM[23]_2\(1),
      I4 => SrcB(21),
      I5 => \ALUControl__0\(0),
      O => \q_reg[23]\(1)
    );
\sum_carry__4_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F80807F707F7F808"
    )
        port map (
      I0 => \^rd10\(20),
      I1 => rd11,
      I2 => \addressM[28]\,
      I3 => \addressM[23]_2\(0),
      I4 => SrcB(20),
      I5 => \ALUControl__0\(0),
      O => \q_reg[23]\(0)
    );
\sum_carry__5_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F80807F707F7F808"
    )
        port map (
      I0 => \^rd10\(27),
      I1 => rd11,
      I2 => \addressM[28]\,
      I3 => \addressM[27]_1\(3),
      I4 => SrcB(27),
      I5 => \ALUControl__0\(0),
      O => \q_reg[27]_1\(3)
    );
\sum_carry__5_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F80807F707F7F808"
    )
        port map (
      I0 => \^rd10\(26),
      I1 => rd11,
      I2 => \addressM[28]\,
      I3 => \addressM[27]_1\(2),
      I4 => SrcB(26),
      I5 => \ALUControl__0\(0),
      O => \q_reg[27]_1\(2)
    );
\sum_carry__5_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F80807F707F7F808"
    )
        port map (
      I0 => \^rd10\(25),
      I1 => rd11,
      I2 => \addressM[28]\,
      I3 => \addressM[27]_1\(1),
      I4 => SrcB(25),
      I5 => \ALUControl__0\(0),
      O => \q_reg[27]_1\(1)
    );
\sum_carry__5_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F80807F707F7F808"
    )
        port map (
      I0 => \^rd10\(24),
      I1 => rd11,
      I2 => \addressM[28]\,
      I3 => \addressM[27]_1\(0),
      I4 => SrcB(24),
      I5 => \ALUControl__0\(0),
      O => \q_reg[27]_1\(0)
    );
\sum_carry__6_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F80807F707F7F808"
    )
        port map (
      I0 => \^rd10\(30),
      I1 => rd11,
      I2 => \addressM[28]\,
      I3 => \sum_carry__6\(2),
      I4 => \^q_reg[5]\(15),
      I5 => \ALUControl__0\(0),
      O => \q_reg[30]_1\(2)
    );
\sum_carry__6_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F80807F707F7F808"
    )
        port map (
      I0 => \^rd10\(29),
      I1 => rd11,
      I2 => \addressM[28]\,
      I3 => \sum_carry__6\(1),
      I4 => \^q_reg[5]\(14),
      I5 => \ALUControl__0\(0),
      O => \q_reg[30]_1\(1)
    );
\sum_carry__6_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F80807F707F7F808"
    )
        port map (
      I0 => \^rd10\(28),
      I1 => rd11,
      I2 => \addressM[28]\,
      I3 => \sum_carry__6\(0),
      I4 => SrcB(28),
      I5 => \ALUControl__0\(0),
      O => \q_reg[30]_1\(0)
    );
sum_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \ALUControl__0\(0),
      I1 => \^q_reg[5]\(0),
      O => \ALUResult[22]_INST_0_i_7_0\
    );
sum_carry_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F80807F707F7F808"
    )
        port map (
      I0 => \^rd10\(3),
      I1 => rd11,
      I2 => \addressM[28]\,
      I3 => sum_carry(3),
      I4 => \^q_reg[5]\(3),
      I5 => \ALUControl__0\(0),
      O => S(3)
    );
sum_carry_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F80807F707F7F808"
    )
        port map (
      I0 => \^rd10\(2),
      I1 => rd11,
      I2 => \addressM[28]\,
      I3 => sum_carry(2),
      I4 => \^q_reg[5]\(2),
      I5 => \ALUControl__0\(0),
      O => S(2)
    );
sum_carry_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F80807F707F7F808"
    )
        port map (
      I0 => \^rd10\(1),
      I1 => rd11,
      I2 => \addressM[28]\,
      I3 => sum_carry(1),
      I4 => \^q_reg[5]\(1),
      I5 => \ALUControl__0\(0),
      O => S(1)
    );
sum_carry_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"70777F778F888088"
    )
        port map (
      I0 => \^rd10\(0),
      I1 => rd11,
      I2 => Instr(2),
      I3 => Instr(0),
      I4 => sum_carry(0),
      I5 => \ALUControl__0\(0),
      O => S(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath is
  port (
    \q_reg[0]\ : out STD_LOGIC;
    \q_reg[1]\ : out STD_LOGIC;
    \q_reg[2]\ : out STD_LOGIC;
    \q_reg[3]\ : out STD_LOGIC;
    \q_reg[4]\ : out STD_LOGIC;
    \q_reg[5]\ : out STD_LOGIC;
    \q_reg[6]\ : out STD_LOGIC;
    \q_reg[7]\ : out STD_LOGIC;
    \q_reg[8]\ : out STD_LOGIC;
    \q_reg[9]\ : out STD_LOGIC;
    \q_reg[10]\ : out STD_LOGIC;
    \q_reg[11]\ : out STD_LOGIC;
    \q_reg[12]\ : out STD_LOGIC;
    \q_reg[13]\ : out STD_LOGIC;
    \q_reg[14]\ : out STD_LOGIC;
    \q_reg[15]\ : out STD_LOGIC;
    \q_reg[16]\ : out STD_LOGIC;
    \q_reg[17]\ : out STD_LOGIC;
    \q_reg[18]\ : out STD_LOGIC;
    \q_reg[19]\ : out STD_LOGIC;
    \q_reg[20]\ : out STD_LOGIC;
    \q_reg[21]\ : out STD_LOGIC;
    \q_reg[22]\ : out STD_LOGIC;
    \q_reg[23]\ : out STD_LOGIC;
    \q_reg[24]\ : out STD_LOGIC;
    \q_reg[25]\ : out STD_LOGIC;
    \q_reg[26]\ : out STD_LOGIC;
    \q_reg[27]\ : out STD_LOGIC;
    \q_reg[28]\ : out STD_LOGIC;
    \q_reg[29]\ : out STD_LOGIC;
    \q_reg[30]\ : out STD_LOGIC;
    \q_reg[31]\ : out STD_LOGIC;
    ALUResult : out STD_LOGIC_VECTOR ( 31 downto 0 );
    WriteData : out STD_LOGIC_VECTOR ( 31 downto 0 );
    PCReady : in STD_LOGIC;
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    Instr : in STD_LOGIC_VECTOR ( 29 downto 0 );
    ReadData : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath is
  signal ALUControl : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \ALUControl__0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^aluresult\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ALUSrc : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Jump : STD_LOGIC;
  signal Neg : STD_LOGIC;
  signal SrcA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal SrcB : STD_LOGIC_VECTOR ( 31 downto 0 );
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
  signal alu_n_32 : STD_LOGIC;
  signal alu_n_38 : STD_LOGIC;
  signal alu_n_39 : STD_LOGIC;
  signal alu_n_4 : STD_LOGIC;
  signal alu_n_40 : STD_LOGIC;
  signal alu_n_5 : STD_LOGIC;
  signal alu_n_57 : STD_LOGIC;
  signal alu_n_58 : STD_LOGIC;
  signal alu_n_59 : STD_LOGIC;
  signal alu_n_6 : STD_LOGIC;
  signal alu_n_7 : STD_LOGIC;
  signal alu_n_8 : STD_LOGIC;
  signal alu_n_9 : STD_LOGIC;
  signal d0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal d1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal data5 : STD_LOGIC_VECTOR ( 23 to 23 );
  signal data7 : STD_LOGIC_VECTOR ( 31 downto 10 );
  signal \ext/immext\ : STD_LOGIC_VECTOR ( 19 downto 12 );
  signal pcadd4_n_0 : STD_LOGIC;
  signal pcadd4_n_1 : STD_LOGIC;
  signal pcadd4_n_2 : STD_LOGIC;
  signal pcreg_n_100 : STD_LOGIC;
  signal pcreg_n_101 : STD_LOGIC;
  signal pcreg_n_102 : STD_LOGIC;
  signal pcreg_n_103 : STD_LOGIC;
  signal pcreg_n_104 : STD_LOGIC;
  signal pcreg_n_105 : STD_LOGIC;
  signal pcreg_n_106 : STD_LOGIC;
  signal pcreg_n_107 : STD_LOGIC;
  signal pcreg_n_108 : STD_LOGIC;
  signal pcreg_n_109 : STD_LOGIC;
  signal pcreg_n_110 : STD_LOGIC;
  signal pcreg_n_111 : STD_LOGIC;
  signal pcreg_n_112 : STD_LOGIC;
  signal pcreg_n_113 : STD_LOGIC;
  signal pcreg_n_114 : STD_LOGIC;
  signal pcreg_n_115 : STD_LOGIC;
  signal pcreg_n_116 : STD_LOGIC;
  signal pcreg_n_117 : STD_LOGIC;
  signal pcreg_n_118 : STD_LOGIC;
  signal pcreg_n_119 : STD_LOGIC;
  signal pcreg_n_120 : STD_LOGIC;
  signal pcreg_n_121 : STD_LOGIC;
  signal pcreg_n_122 : STD_LOGIC;
  signal pcreg_n_123 : STD_LOGIC;
  signal pcreg_n_131 : STD_LOGIC;
  signal pcreg_n_133 : STD_LOGIC;
  signal pcreg_n_134 : STD_LOGIC;
  signal pcreg_n_135 : STD_LOGIC;
  signal pcreg_n_136 : STD_LOGIC;
  signal pcreg_n_137 : STD_LOGIC;
  signal pcreg_n_138 : STD_LOGIC;
  signal pcreg_n_139 : STD_LOGIC;
  signal pcreg_n_140 : STD_LOGIC;
  signal pcreg_n_141 : STD_LOGIC;
  signal pcreg_n_142 : STD_LOGIC;
  signal pcreg_n_143 : STD_LOGIC;
  signal pcreg_n_144 : STD_LOGIC;
  signal pcreg_n_145 : STD_LOGIC;
  signal pcreg_n_146 : STD_LOGIC;
  signal pcreg_n_147 : STD_LOGIC;
  signal pcreg_n_148 : STD_LOGIC;
  signal pcreg_n_149 : STD_LOGIC;
  signal pcreg_n_150 : STD_LOGIC;
  signal pcreg_n_151 : STD_LOGIC;
  signal pcreg_n_152 : STD_LOGIC;
  signal pcreg_n_153 : STD_LOGIC;
  signal pcreg_n_154 : STD_LOGIC;
  signal pcreg_n_155 : STD_LOGIC;
  signal pcreg_n_156 : STD_LOGIC;
  signal pcreg_n_157 : STD_LOGIC;
  signal pcreg_n_158 : STD_LOGIC;
  signal pcreg_n_159 : STD_LOGIC;
  signal pcreg_n_160 : STD_LOGIC;
  signal pcreg_n_161 : STD_LOGIC;
  signal pcreg_n_162 : STD_LOGIC;
  signal pcreg_n_163 : STD_LOGIC;
  signal pcreg_n_164 : STD_LOGIC;
  signal pcreg_n_165 : STD_LOGIC;
  signal pcreg_n_166 : STD_LOGIC;
  signal pcreg_n_167 : STD_LOGIC;
  signal pcreg_n_168 : STD_LOGIC;
  signal pcreg_n_169 : STD_LOGIC;
  signal pcreg_n_170 : STD_LOGIC;
  signal pcreg_n_171 : STD_LOGIC;
  signal pcreg_n_172 : STD_LOGIC;
  signal pcreg_n_173 : STD_LOGIC;
  signal pcreg_n_174 : STD_LOGIC;
  signal pcreg_n_175 : STD_LOGIC;
  signal pcreg_n_176 : STD_LOGIC;
  signal pcreg_n_177 : STD_LOGIC;
  signal pcreg_n_178 : STD_LOGIC;
  signal pcreg_n_179 : STD_LOGIC;
  signal pcreg_n_180 : STD_LOGIC;
  signal pcreg_n_181 : STD_LOGIC;
  signal pcreg_n_182 : STD_LOGIC;
  signal pcreg_n_183 : STD_LOGIC;
  signal pcreg_n_184 : STD_LOGIC;
  signal pcreg_n_185 : STD_LOGIC;
  signal pcreg_n_186 : STD_LOGIC;
  signal pcreg_n_187 : STD_LOGIC;
  signal pcreg_n_188 : STD_LOGIC;
  signal pcreg_n_189 : STD_LOGIC;
  signal pcreg_n_190 : STD_LOGIC;
  signal pcreg_n_191 : STD_LOGIC;
  signal pcreg_n_192 : STD_LOGIC;
  signal pcreg_n_193 : STD_LOGIC;
  signal pcreg_n_194 : STD_LOGIC;
  signal pcreg_n_195 : STD_LOGIC;
  signal pcreg_n_196 : STD_LOGIC;
  signal pcreg_n_197 : STD_LOGIC;
  signal pcreg_n_198 : STD_LOGIC;
  signal pcreg_n_199 : STD_LOGIC;
  signal pcreg_n_200 : STD_LOGIC;
  signal pcreg_n_201 : STD_LOGIC;
  signal pcreg_n_202 : STD_LOGIC;
  signal pcreg_n_47 : STD_LOGIC;
  signal pcreg_n_48 : STD_LOGIC;
  signal pcreg_n_49 : STD_LOGIC;
  signal pcreg_n_85 : STD_LOGIC;
  signal pcreg_n_86 : STD_LOGIC;
  signal pcreg_n_87 : STD_LOGIC;
  signal pcreg_n_90 : STD_LOGIC;
  signal pcreg_n_91 : STD_LOGIC;
  signal pcreg_n_92 : STD_LOGIC;
  signal pcreg_n_93 : STD_LOGIC;
  signal pcreg_n_94 : STD_LOGIC;
  signal pcreg_n_95 : STD_LOGIC;
  signal pcreg_n_96 : STD_LOGIC;
  signal pcreg_n_97 : STD_LOGIC;
  signal pcreg_n_98 : STD_LOGIC;
  signal pcreg_n_99 : STD_LOGIC;
  signal \^q_reg[0]\ : STD_LOGIC;
  signal \^q_reg[10]\ : STD_LOGIC;
  signal \^q_reg[11]\ : STD_LOGIC;
  signal \^q_reg[12]\ : STD_LOGIC;
  signal \^q_reg[13]\ : STD_LOGIC;
  signal \^q_reg[14]\ : STD_LOGIC;
  signal \^q_reg[15]\ : STD_LOGIC;
  signal \^q_reg[16]\ : STD_LOGIC;
  signal \^q_reg[17]\ : STD_LOGIC;
  signal \^q_reg[18]\ : STD_LOGIC;
  signal \^q_reg[19]\ : STD_LOGIC;
  signal \^q_reg[1]\ : STD_LOGIC;
  signal \^q_reg[20]\ : STD_LOGIC;
  signal \^q_reg[21]\ : STD_LOGIC;
  signal \^q_reg[22]\ : STD_LOGIC;
  signal \^q_reg[23]\ : STD_LOGIC;
  signal \^q_reg[24]\ : STD_LOGIC;
  signal \^q_reg[25]\ : STD_LOGIC;
  signal \^q_reg[26]\ : STD_LOGIC;
  signal \^q_reg[27]\ : STD_LOGIC;
  signal \^q_reg[28]\ : STD_LOGIC;
  signal \^q_reg[29]\ : STD_LOGIC;
  signal \^q_reg[2]\ : STD_LOGIC;
  signal \^q_reg[30]\ : STD_LOGIC;
  signal \^q_reg[31]\ : STD_LOGIC;
  signal \^q_reg[3]\ : STD_LOGIC;
  signal \^q_reg[4]\ : STD_LOGIC;
  signal \^q_reg[5]\ : STD_LOGIC;
  signal \^q_reg[6]\ : STD_LOGIC;
  signal \^q_reg[7]\ : STD_LOGIC;
  signal \^q_reg[8]\ : STD_LOGIC;
  signal \^q_reg[9]\ : STD_LOGIC;
  signal rd10 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal rd11 : STD_LOGIC;
  signal rd20 : STD_LOGIC_VECTOR ( 31 downto 5 );
  signal rd21 : STD_LOGIC;
  signal \result0__33\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal rf_n_100 : STD_LOGIC;
  signal rf_n_101 : STD_LOGIC;
  signal rf_n_102 : STD_LOGIC;
  signal rf_n_103 : STD_LOGIC;
  signal rf_n_104 : STD_LOGIC;
  signal rf_n_105 : STD_LOGIC;
  signal rf_n_106 : STD_LOGIC;
  signal rf_n_107 : STD_LOGIC;
  signal rf_n_108 : STD_LOGIC;
  signal rf_n_109 : STD_LOGIC;
  signal rf_n_110 : STD_LOGIC;
  signal rf_n_111 : STD_LOGIC;
  signal rf_n_112 : STD_LOGIC;
  signal rf_n_113 : STD_LOGIC;
  signal rf_n_114 : STD_LOGIC;
  signal rf_n_115 : STD_LOGIC;
  signal rf_n_116 : STD_LOGIC;
  signal rf_n_117 : STD_LOGIC;
  signal rf_n_118 : STD_LOGIC;
  signal rf_n_119 : STD_LOGIC;
  signal rf_n_120 : STD_LOGIC;
  signal rf_n_121 : STD_LOGIC;
  signal rf_n_122 : STD_LOGIC;
  signal rf_n_123 : STD_LOGIC;
  signal rf_n_124 : STD_LOGIC;
  signal rf_n_125 : STD_LOGIC;
  signal rf_n_126 : STD_LOGIC;
  signal rf_n_127 : STD_LOGIC;
  signal rf_n_128 : STD_LOGIC;
  signal rf_n_129 : STD_LOGIC;
  signal rf_n_163 : STD_LOGIC;
  signal rf_n_180 : STD_LOGIC;
  signal rf_n_181 : STD_LOGIC;
  signal rf_n_182 : STD_LOGIC;
  signal rf_n_183 : STD_LOGIC;
  signal rf_n_184 : STD_LOGIC;
  signal rf_n_185 : STD_LOGIC;
  signal rf_n_186 : STD_LOGIC;
  signal rf_n_187 : STD_LOGIC;
  signal rf_n_188 : STD_LOGIC;
  signal rf_n_189 : STD_LOGIC;
  signal rf_n_190 : STD_LOGIC;
  signal rf_n_191 : STD_LOGIC;
  signal rf_n_192 : STD_LOGIC;
  signal rf_n_193 : STD_LOGIC;
  signal rf_n_194 : STD_LOGIC;
  signal rf_n_195 : STD_LOGIC;
  signal rf_n_196 : STD_LOGIC;
  signal rf_n_197 : STD_LOGIC;
  signal rf_n_198 : STD_LOGIC;
  signal rf_n_199 : STD_LOGIC;
  signal rf_n_200 : STD_LOGIC;
  signal rf_n_201 : STD_LOGIC;
  signal rf_n_202 : STD_LOGIC;
  signal rf_n_203 : STD_LOGIC;
  signal rf_n_204 : STD_LOGIC;
  signal rf_n_205 : STD_LOGIC;
  signal rf_n_206 : STD_LOGIC;
  signal rf_n_207 : STD_LOGIC;
  signal rf_n_208 : STD_LOGIC;
  signal rf_n_209 : STD_LOGIC;
  signal rf_n_210 : STD_LOGIC;
  signal rf_n_211 : STD_LOGIC;
  signal rf_n_212 : STD_LOGIC;
  signal rf_n_213 : STD_LOGIC;
  signal rf_n_214 : STD_LOGIC;
  signal rf_n_215 : STD_LOGIC;
  signal rf_n_216 : STD_LOGIC;
  signal rf_n_217 : STD_LOGIC;
  signal rf_n_218 : STD_LOGIC;
  signal rf_n_219 : STD_LOGIC;
  signal rf_n_220 : STD_LOGIC;
  signal rf_n_221 : STD_LOGIC;
  signal rf_n_222 : STD_LOGIC;
  signal rf_n_223 : STD_LOGIC;
  signal rf_n_224 : STD_LOGIC;
  signal rf_n_225 : STD_LOGIC;
  signal rf_n_226 : STD_LOGIC;
  signal rf_n_227 : STD_LOGIC;
  signal rf_n_228 : STD_LOGIC;
  signal rf_n_229 : STD_LOGIC;
  signal rf_n_230 : STD_LOGIC;
  signal rf_n_231 : STD_LOGIC;
  signal rf_n_232 : STD_LOGIC;
  signal rf_n_233 : STD_LOGIC;
  signal rf_n_234 : STD_LOGIC;
  signal rf_n_235 : STD_LOGIC;
  signal rf_n_236 : STD_LOGIC;
  signal rf_n_237 : STD_LOGIC;
  signal rf_n_238 : STD_LOGIC;
  signal rf_n_239 : STD_LOGIC;
  signal rf_n_240 : STD_LOGIC;
  signal rf_n_241 : STD_LOGIC;
  signal rf_n_242 : STD_LOGIC;
  signal rf_n_243 : STD_LOGIC;
  signal rf_n_244 : STD_LOGIC;
  signal rf_n_245 : STD_LOGIC;
  signal rf_n_246 : STD_LOGIC;
  signal rf_n_247 : STD_LOGIC;
  signal rf_n_248 : STD_LOGIC;
  signal rf_n_249 : STD_LOGIC;
  signal rf_n_250 : STD_LOGIC;
  signal rf_n_251 : STD_LOGIC;
  signal rf_n_39 : STD_LOGIC;
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
  signal rf_n_89 : STD_LOGIC;
  signal rf_n_90 : STD_LOGIC;
  signal rf_n_93 : STD_LOGIC;
  signal rf_n_94 : STD_LOGIC;
  signal rf_n_95 : STD_LOGIC;
  signal rf_n_96 : STD_LOGIC;
  signal rf_n_97 : STD_LOGIC;
  signal rf_n_98 : STD_LOGIC;
  signal rf_n_99 : STD_LOGIC;
  signal sel0 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal wd3 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \xorOut__31\ : STD_LOGIC_VECTOR ( 16 downto 11 );
begin
  ALUResult(31 downto 0) <= \^aluresult\(31 downto 0);
  \q_reg[0]\ <= \^q_reg[0]\;
  \q_reg[10]\ <= \^q_reg[10]\;
  \q_reg[11]\ <= \^q_reg[11]\;
  \q_reg[12]\ <= \^q_reg[12]\;
  \q_reg[13]\ <= \^q_reg[13]\;
  \q_reg[14]\ <= \^q_reg[14]\;
  \q_reg[15]\ <= \^q_reg[15]\;
  \q_reg[16]\ <= \^q_reg[16]\;
  \q_reg[17]\ <= \^q_reg[17]\;
  \q_reg[18]\ <= \^q_reg[18]\;
  \q_reg[19]\ <= \^q_reg[19]\;
  \q_reg[1]\ <= \^q_reg[1]\;
  \q_reg[20]\ <= \^q_reg[20]\;
  \q_reg[21]\ <= \^q_reg[21]\;
  \q_reg[22]\ <= \^q_reg[22]\;
  \q_reg[23]\ <= \^q_reg[23]\;
  \q_reg[24]\ <= \^q_reg[24]\;
  \q_reg[25]\ <= \^q_reg[25]\;
  \q_reg[26]\ <= \^q_reg[26]\;
  \q_reg[27]\ <= \^q_reg[27]\;
  \q_reg[28]\ <= \^q_reg[28]\;
  \q_reg[29]\ <= \^q_reg[29]\;
  \q_reg[2]\ <= \^q_reg[2]\;
  \q_reg[30]\ <= \^q_reg[30]\;
  \q_reg[31]\ <= \^q_reg[31]\;
  \q_reg[3]\ <= \^q_reg[3]\;
  \q_reg[4]\ <= \^q_reg[4]\;
  \q_reg[5]\ <= \^q_reg[5]\;
  \q_reg[6]\ <= \^q_reg[6]\;
  \q_reg[7]\ <= \^q_reg[7]\;
  \q_reg[8]\ <= \^q_reg[8]\;
  \q_reg[9]\ <= \^q_reg[9]\;
alu: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_alu
     port map (
      ALUControl(2 downto 0) => ALUControl(3 downto 1),
      \ALUControl__0\(0) => \ALUControl__0\(0),
      ALUResult(4 downto 2) => \^aluresult\(31 downto 29),
      ALUResult(1) => \^aluresult\(11),
      ALUResult(0) => \^aluresult\(0),
      \ALUResult[0]_INST_0_i_1_0\ => alu_n_40,
      \ALUResult[0]_INST_0_i_2_0\(3) => rf_n_124,
      \ALUResult[0]_INST_0_i_2_0\(2) => rf_n_125,
      \ALUResult[0]_INST_0_i_2_0\(1) => rf_n_126,
      \ALUResult[0]_INST_0_i_2_0\(0) => rf_n_127,
      \ALUResult[0]_INST_0_i_2_1\(3) => pcreg_n_200,
      \ALUResult[0]_INST_0_i_2_1\(2) => rf_n_245,
      \ALUResult[0]_INST_0_i_2_1\(1) => rf_n_246,
      \ALUResult[0]_INST_0_i_2_1\(0) => rf_n_247,
      \ALUResult[0]_INST_0_i_3\ => rf_n_211,
      \ALUResult[12]_INST_0_i_1\(3) => rf_n_192,
      \ALUResult[12]_INST_0_i_1\(2) => rf_n_193,
      \ALUResult[12]_INST_0_i_1\(1) => rf_n_194,
      \ALUResult[12]_INST_0_i_1\(0) => rf_n_195,
      \ALUResult[16]_INST_0_i_5\(3) => rf_n_196,
      \ALUResult[16]_INST_0_i_5\(2) => rf_n_197,
      \ALUResult[16]_INST_0_i_5\(1) => rf_n_198,
      \ALUResult[16]_INST_0_i_5\(0) => rf_n_199,
      \ALUResult[20]_INST_0_i_2\(3) => rf_n_200,
      \ALUResult[20]_INST_0_i_2\(2) => rf_n_201,
      \ALUResult[20]_INST_0_i_2\(1) => rf_n_202,
      \ALUResult[20]_INST_0_i_2\(0) => rf_n_203,
      \ALUResult[24]_INST_0_i_4\(3) => rf_n_204,
      \ALUResult[24]_INST_0_i_4\(2) => rf_n_205,
      \ALUResult[24]_INST_0_i_4\(1) => rf_n_206,
      \ALUResult[24]_INST_0_i_4\(0) => rf_n_207,
      \ALUResult[28]_INST_0\ => alu_n_39,
      \ALUResult[28]_INST_0_i_5\(3) => pcreg_n_103,
      \ALUResult[28]_INST_0_i_5\(2) => rf_n_208,
      \ALUResult[28]_INST_0_i_5\(1) => rf_n_209,
      \ALUResult[28]_INST_0_i_5\(0) => rf_n_210,
      \ALUResult[31]_INST_0_i_12\ => alu_n_38,
      \ALUResult[4]_INST_0_i_1\(3) => rf_n_184,
      \ALUResult[4]_INST_0_i_1\(2) => rf_n_185,
      \ALUResult[4]_INST_0_i_1\(1) => rf_n_186,
      \ALUResult[4]_INST_0_i_1\(0) => rf_n_187,
      \ALUResult[8]_INST_0_i_2\(3) => rf_n_188,
      \ALUResult[8]_INST_0_i_2\(2) => rf_n_189,
      \ALUResult[8]_INST_0_i_2\(1) => rf_n_190,
      \ALUResult[8]_INST_0_i_2\(0) => rf_n_191,
      ALUSrc(0) => ALUSrc(0),
      CO(0) => alu_n_32,
      DI(3) => rf_n_112,
      DI(2) => rf_n_113,
      DI(1) => rf_n_114,
      DI(0) => rf_n_115,
      Instr(19) => Instr(29),
      Instr(18 downto 6) => Instr(22 downto 10),
      Instr(5 downto 0) => Instr(5 downto 0),
      O(3) => alu_n_0,
      O(2) => alu_n_1,
      O(1) => alu_n_2,
      O(0) => alu_n_3,
      S(3) => rf_n_180,
      S(2) => rf_n_181,
      S(1) => rf_n_182,
      S(0) => rf_n_183,
      SrcA(31 downto 0) => SrcA(31 downto 0),
      SrcB(4 downto 2) => SrcB(31 downto 29),
      SrcB(1) => SrcB(11),
      SrcB(0) => SrcB(0),
      \addressM[0]\ => pcreg_n_47,
      \addressM[0]_0\ => rf_n_251,
      \addressM[11]\ => pcreg_n_90,
      \addressM[11]_0\ => pcreg_n_48,
      \addressM[11]_1\ => rf_n_77,
      \addressM[29]\ => rf_n_81,
      \addressM[30]\ => rf_n_82,
      \addressM[31]\ => rf_n_83,
      \carried_carry__0_0\(3) => rf_n_213,
      \carried_carry__0_0\(2) => rf_n_214,
      \carried_carry__0_0\(1) => rf_n_215,
      \carried_carry__0_0\(0) => rf_n_216,
      \carried_carry__1_0\(3) => pcreg_n_194,
      \carried_carry__1_0\(2) => pcreg_n_195,
      \carried_carry__1_0\(1) => pcreg_n_196,
      \carried_carry__1_0\(0) => rf_n_217,
      \carried_carry__2_0\(3) => rf_n_224,
      \carried_carry__2_0\(2) => pcreg_n_197,
      \carried_carry__2_0\(1) => pcreg_n_198,
      \carried_carry__2_0\(0) => pcreg_n_199,
      \carried_carry__3_0\(3) => rf_n_225,
      \carried_carry__3_0\(2) => rf_n_226,
      \carried_carry__3_0\(1) => rf_n_227,
      \carried_carry__3_0\(0) => rf_n_228,
      \carried_carry__4_0\(3) => rf_n_229,
      \carried_carry__4_0\(2) => rf_n_230,
      \carried_carry__4_0\(1) => rf_n_231,
      \carried_carry__4_0\(0) => rf_n_232,
      \carried_carry__5_0\(3) => rf_n_237,
      \carried_carry__5_0\(2) => rf_n_238,
      \carried_carry__5_0\(1) => rf_n_239,
      \carried_carry__5_0\(0) => rf_n_240,
      \carried_carry__6_0\(3) => rf_n_241,
      \carried_carry__6_0\(2) => rf_n_242,
      \carried_carry__6_0\(1) => rf_n_243,
      \carried_carry__6_0\(0) => rf_n_244,
      d0(4 downto 2) => d0(31 downto 29),
      d0(1) => d0(11),
      d0(0) => d0(0),
      d1(4 downto 2) => d1(31 downto 29),
      d1(1) => d1(11),
      d1(0) => d1(0),
      data7(3 downto 1) => data7(31 downto 29),
      data7(0) => data7(11),
      immext(7 downto 0) => \ext/immext\(19 downto 12),
      \q[0]_i_7\ => \^aluresult\(28),
      \q[0]_i_9\(3) => pcreg_n_201,
      \q[0]_i_9\(2) => rf_n_248,
      \q[0]_i_9\(1) => rf_n_249,
      \q[0]_i_9\(0) => rf_n_250,
      \q_reg[11]\(3) => alu_n_8,
      \q_reg[11]\(2) => alu_n_9,
      \q_reg[11]\(1) => alu_n_10,
      \q_reg[11]\(0) => alu_n_11,
      \q_reg[15]\(3) => alu_n_12,
      \q_reg[15]\(2) => alu_n_13,
      \q_reg[15]\(1) => alu_n_14,
      \q_reg[15]\(0) => alu_n_15,
      \q_reg[19]\(3) => alu_n_16,
      \q_reg[19]\(2) => alu_n_17,
      \q_reg[19]\(1) => alu_n_18,
      \q_reg[19]\(0) => alu_n_19,
      \q_reg[23]\(3) => alu_n_20,
      \q_reg[23]\(2) => alu_n_21,
      \q_reg[23]\(1) => alu_n_22,
      \q_reg[23]\(0) => alu_n_23,
      \q_reg[27]\(3) => alu_n_24,
      \q_reg[27]\(2) => alu_n_25,
      \q_reg[27]\(1) => alu_n_26,
      \q_reg[27]\(0) => alu_n_27,
      \q_reg[30]\(3) => Neg,
      \q_reg[30]\(2) => alu_n_29,
      \q_reg[30]\(1) => alu_n_30,
      \q_reg[30]\(0) => alu_n_31,
      \q_reg[5]\ => alu_n_57,
      \q_reg[5]_0\ => alu_n_58,
      \q_reg[5]_1\ => alu_n_59,
      \q_reg[7]\(3) => alu_n_4,
      \q_reg[7]\(2) => alu_n_5,
      \q_reg[7]\(1) => alu_n_6,
      \q_reg[7]\(0) => alu_n_7,
      rd11 => rd11,
      rd21 => rd21,
      \result0__33\(0) => \result0__33\(0),
      sel0(1 downto 0) => sel0(1 downto 0),
      \sltuOut_carry__0_0\(3) => rf_n_218,
      \sltuOut_carry__0_0\(2) => rf_n_219,
      \sltuOut_carry__0_0\(1) => pcreg_n_192,
      \sltuOut_carry__0_0\(0) => pcreg_n_193,
      \sltuOut_carry__1_0\(3) => rf_n_116,
      \sltuOut_carry__1_0\(2) => rf_n_117,
      \sltuOut_carry__1_0\(1) => rf_n_118,
      \sltuOut_carry__1_0\(0) => rf_n_119,
      \sltuOut_carry__1_1\(3) => rf_n_220,
      \sltuOut_carry__1_1\(2) => rf_n_221,
      \sltuOut_carry__1_1\(1) => rf_n_222,
      \sltuOut_carry__1_1\(0) => rf_n_223,
      \sltuOut_carry__2_0\(3) => rf_n_120,
      \sltuOut_carry__2_0\(2) => rf_n_121,
      \sltuOut_carry__2_0\(1) => rf_n_122,
      \sltuOut_carry__2_0\(0) => rf_n_123,
      \sltuOut_carry__2_1\(3) => rf_n_233,
      \sltuOut_carry__2_1\(2) => rf_n_234,
      \sltuOut_carry__2_1\(1) => rf_n_235,
      \sltuOut_carry__2_1\(0) => rf_n_236
    );
pcadd4: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder
     port map (
      ALUResult(27 downto 0) => \^aluresult\(28 downto 1),
      DI(2) => \^q_reg[3]\,
      DI(1) => \^q_reg[2]\,
      DI(0) => \^q_reg[1]\,
      Instr(1 downto 0) => Instr(3 downto 2),
      Jump => Jump,
      O(2) => pcadd4_n_0,
      O(1) => pcadd4_n_1,
      O(0) => pcadd4_n_2,
      ReadData(27 downto 0) => ReadData(28 downto 1),
      S(0) => pcreg_n_114,
      rf_reg_r1_0_31_0_5_i_6_0(3) => \^q_reg[7]\,
      rf_reg_r1_0_31_0_5_i_6_0(2) => \^q_reg[6]\,
      rf_reg_r1_0_31_0_5_i_6_0(1) => \^q_reg[5]\,
      rf_reg_r1_0_31_0_5_i_6_0(0) => \^q_reg[4]\,
      rf_reg_r1_0_31_12_17_i_1_0(3) => \^q_reg[15]\,
      rf_reg_r1_0_31_12_17_i_1_0(2) => \^q_reg[14]\,
      rf_reg_r1_0_31_12_17_i_1_0(1) => \^q_reg[13]\,
      rf_reg_r1_0_31_12_17_i_1_0(0) => \^q_reg[12]\,
      rf_reg_r1_0_31_12_17_i_5_0(3) => \^q_reg[19]\,
      rf_reg_r1_0_31_12_17_i_5_0(2) => \^q_reg[18]\,
      rf_reg_r1_0_31_12_17_i_5_0(1) => \^q_reg[17]\,
      rf_reg_r1_0_31_12_17_i_5_0(0) => \^q_reg[16]\,
      rf_reg_r1_0_31_18_23_i_3_0(3) => \^q_reg[23]\,
      rf_reg_r1_0_31_18_23_i_3_0(2) => \^q_reg[22]\,
      rf_reg_r1_0_31_18_23_i_3_0(1) => \^q_reg[21]\,
      rf_reg_r1_0_31_18_23_i_3_0(0) => \^q_reg[20]\,
      rf_reg_r1_0_31_24_29_i_1_0(3) => \^q_reg[27]\,
      rf_reg_r1_0_31_24_29_i_1_0(2) => \^q_reg[26]\,
      rf_reg_r1_0_31_24_29_i_1_0(1) => \^q_reg[25]\,
      rf_reg_r1_0_31_24_29_i_1_0(0) => \^q_reg[24]\,
      rf_reg_r1_0_31_24_29_i_5(2) => \^q_reg[30]\,
      rf_reg_r1_0_31_24_29_i_5(1) => \^q_reg[29]\,
      rf_reg_r1_0_31_24_29_i_5(0) => \^q_reg[28]\,
      rf_reg_r1_0_31_24_29_i_5_0(0) => \^q_reg[31]\,
      rf_reg_r1_0_31_6_11_i_3_0(3) => \^q_reg[11]\,
      rf_reg_r1_0_31_6_11_i_3_0(2) => \^q_reg[10]\,
      rf_reg_r1_0_31_6_11_i_3_0(1) => \^q_reg[9]\,
      rf_reg_r1_0_31_6_11_i_3_0(0) => \^q_reg[8]\,
      wd3(27 downto 0) => wd3(28 downto 1)
    );
pcaddbranch: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder_0
     port map (
      DI(3) => \^q_reg[3]\,
      DI(2) => \^q_reg[2]\,
      DI(1) => \^q_reg[1]\,
      DI(0) => \^q_reg[0]\,
      Instr(4 downto 0) => Instr(4 downto 0),
      S(3) => pcreg_n_164,
      S(2) => pcreg_n_165,
      S(1) => pcreg_n_166,
      S(0) => pcreg_n_167,
      d0(31 downto 0) => d0(31 downto 0),
      \q[12]_i_6\(3) => \^q_reg[15]\,
      \q[12]_i_6\(2) => \^q_reg[14]\,
      \q[12]_i_6\(1) => \^q_reg[13]\,
      \q[12]_i_6\(0) => \^q_reg[12]\,
      \q[12]_i_6_0\(3) => pcreg_n_176,
      \q[12]_i_6_0\(2) => pcreg_n_177,
      \q[12]_i_6_0\(1) => pcreg_n_178,
      \q[12]_i_6_0\(0) => pcreg_n_179,
      \q[16]_i_6\(3) => \^q_reg[19]\,
      \q[16]_i_6\(2) => \^q_reg[18]\,
      \q[16]_i_6\(1) => \^q_reg[17]\,
      \q[16]_i_6\(0) => \^q_reg[16]\,
      \q[16]_i_6_0\(3) => pcreg_n_180,
      \q[16]_i_6_0\(2) => pcreg_n_181,
      \q[16]_i_6_0\(1) => pcreg_n_182,
      \q[16]_i_6_0\(0) => pcreg_n_183,
      \q[20]_i_6\(3) => \^q_reg[23]\,
      \q[20]_i_6\(2) => \^q_reg[22]\,
      \q[20]_i_6\(1) => \^q_reg[21]\,
      \q[20]_i_6\(0) => \^q_reg[20]\,
      \q[20]_i_6_0\(3) => pcreg_n_184,
      \q[20]_i_6_0\(2) => pcreg_n_185,
      \q[20]_i_6_0\(1) => pcreg_n_186,
      \q[20]_i_6_0\(0) => pcreg_n_187,
      \q[24]_i_6\(3) => \^q_reg[27]\,
      \q[24]_i_6\(2) => \^q_reg[26]\,
      \q[24]_i_6\(1) => \^q_reg[25]\,
      \q[24]_i_6\(0) => \^q_reg[24]\,
      \q[24]_i_6_0\(3) => pcreg_n_188,
      \q[24]_i_6_0\(2) => pcreg_n_189,
      \q[24]_i_6_0\(1) => pcreg_n_190,
      \q[24]_i_6_0\(0) => pcreg_n_191,
      \q[28]_i_6\(2) => \^q_reg[30]\,
      \q[28]_i_6\(1) => \^q_reg[29]\,
      \q[28]_i_6\(0) => \^q_reg[28]\,
      \q[28]_i_6_0\(3) => pcreg_n_110,
      \q[28]_i_6_0\(2) => pcreg_n_111,
      \q[28]_i_6_0\(1) => pcreg_n_112,
      \q[28]_i_6_0\(0) => pcreg_n_113,
      \q[4]_i_8\(3) => \^q_reg[7]\,
      \q[4]_i_8\(2) => \^q_reg[6]\,
      \q[4]_i_8\(1) => \^q_reg[5]\,
      \q[4]_i_8\(0) => \^q_reg[4]\,
      \q[4]_i_8_0\(3) => pcreg_n_168,
      \q[4]_i_8_0\(2) => pcreg_n_169,
      \q[4]_i_8_0\(1) => pcreg_n_170,
      \q[4]_i_8_0\(0) => pcreg_n_171,
      \q[8]_i_6\(3) => \^q_reg[11]\,
      \q[8]_i_6\(2) => \^q_reg[10]\,
      \q[8]_i_6\(1) => \^q_reg[9]\,
      \q[8]_i_6\(0) => \^q_reg[8]\,
      \q[8]_i_6_0\(3) => pcreg_n_172,
      \q[8]_i_6_0\(2) => pcreg_n_173,
      \q[8]_i_6_0\(1) => pcreg_n_174,
      \q[8]_i_6_0\(0) => pcreg_n_175,
      sel0(1 downto 0) => sel0(1 downto 0)
    );
pcreg: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_flopenr
     port map (
      ALUControl(2 downto 0) => ALUControl(3 downto 1),
      \ALUControl__0\(0) => \ALUControl__0\(0),
      ALUResult(3 downto 1) => \^aluresult\(31 downto 29),
      ALUResult(0) => \^aluresult\(0),
      \ALUResult[0]_INST_0_i_2\(1) => Neg,
      \ALUResult[0]_INST_0_i_2\(0) => alu_n_31,
      \ALUResult[10]_INST_0_i_1_0\ => rf_n_212,
      \ALUResult[10]_INST_0_i_2\ => rf_n_163,
      \ALUResult[11]_INST_0_i_25_0\ => pcreg_n_104,
      \ALUResult[12]_INST_0_i_3_0\ => rf_n_128,
      \ALUResult[16]_INST_0_i_4_0\ => rf_n_111,
      \ALUResult[17]_INST_0_i_2_0\ => pcreg_n_86,
      \ALUResult[17]_INST_0_i_6\ => pcreg_n_87,
      \ALUResult[17]_INST_0_i_7\ => rf_n_129,
      \ALUResult[18]_INST_0_i_6\ => pcreg_n_91,
      \ALUResult[19]_INST_0_i_2_0\(3) => alu_n_16,
      \ALUResult[19]_INST_0_i_2_0\(2) => alu_n_17,
      \ALUResult[19]_INST_0_i_2_0\(1) => alu_n_18,
      \ALUResult[19]_INST_0_i_2_0\(0) => alu_n_19,
      \ALUResult[19]_INST_0_i_6\ => pcreg_n_92,
      \ALUResult[1]_INST_0_i_12_0\ => pcreg_n_109,
      \ALUResult[1]_INST_0_i_4\ => pcreg_n_95,
      \ALUResult[20]_INST_0_i_1\ => pcreg_n_93,
      \ALUResult[20]_INST_0_i_14_0\ => pcreg_n_147,
      \ALUResult[21]_INST_0_i_14_0\ => pcreg_n_150,
      \ALUResult[22]_INST_0_i_13_0\ => pcreg_n_97,
      \ALUResult[23]_INST_0_i_12_0\ => pcreg_n_144,
      \ALUResult[23]_INST_0_i_1_0\(1) => alu_n_20,
      \ALUResult[23]_INST_0_i_1_0\(0) => alu_n_23,
      \ALUResult[23]_INST_0_i_5\ => pcreg_n_96,
      \ALUResult[24]_INST_0_i_5\ => pcreg_n_98,
      \ALUResult[25]_INST_0_i_5\ => pcreg_n_99,
      \ALUResult[26]_INST_0_i_5\ => pcreg_n_100,
      \ALUResult[27]_INST_0_i_1_0\(3) => alu_n_24,
      \ALUResult[27]_INST_0_i_1_0\(2) => alu_n_25,
      \ALUResult[27]_INST_0_i_1_0\(1) => alu_n_26,
      \ALUResult[27]_INST_0_i_1_0\(0) => alu_n_27,
      \ALUResult[27]_INST_0_i_5\ => pcreg_n_101,
      \ALUResult[2]_INST_0_i_12_0\ => pcreg_n_108,
      \ALUResult[31]_INST_0_i_10_0\ => pcreg_n_48,
      \ALUResult[31]_INST_0_i_12_0\ => pcreg_n_49,
      \ALUResult[31]_INST_0_i_12_1\ => pcreg_n_94,
      \ALUResult[31]_INST_0_i_19_0\ => pcreg_n_102,
      \ALUResult[31]_INST_0_i_21_0\ => pcreg_n_131,
      \ALUResult[3]_INST_0_i_12_0\ => pcreg_n_107,
      \ALUResult[8]_INST_0_i_10_0\ => pcreg_n_106,
      \ALUResult[9]_INST_0_i_10_0\ => pcreg_n_105,
      ALUSrc(0) => ALUSrc(0),
      CO(0) => alu_n_32,
      DI(3) => \^q_reg[3]\,
      DI(2) => \^q_reg[2]\,
      DI(1) => \^q_reg[1]\,
      DI(0) => \^q_reg[0]\,
      Instr(29 downto 0) => Instr(29 downto 0),
      Jump => Jump,
      O(0) => alu_n_3,
      PCReady => PCReady,
      ReadData(3 downto 1) => ReadData(31 downto 29),
      ReadData(0) => ReadData(0),
      S(0) => pcreg_n_114,
      SrcA(31 downto 0) => SrcA(31 downto 0),
      SrcB(14 downto 13) => SrcB(31 downto 30),
      SrcB(12 downto 9) => SrcB(15 downto 12),
      SrcB(8) => SrcB(10),
      SrcB(7 downto 0) => SrcB(7 downto 0),
      \addressM[10]\ => rf_n_76,
      \addressM[11]\(1) => alu_n_8,
      \addressM[11]\(0) => alu_n_9,
      \addressM[12]\ => rf_n_97,
      \addressM[13]\ => rf_n_98,
      \addressM[14]\ => rf_n_99,
      \addressM[15]\(3) => alu_n_12,
      \addressM[15]\(2) => alu_n_13,
      \addressM[15]\(1) => alu_n_14,
      \addressM[15]\(0) => alu_n_15,
      \addressM[15]_0\ => rf_n_100,
      \addressM[16]\ => rf_n_90,
      \addressM[16]_0\ => rf_n_101,
      \addressM[17]\ => rf_n_102,
      \addressM[18]\ => rf_n_103,
      \addressM[19]\ => rf_n_104,
      \addressM[23]\ => rf_n_105,
      \addressM[24]\ => rf_n_106,
      \addressM[25]\ => rf_n_107,
      \addressM[26]\ => rf_n_108,
      \addressM[27]\ => rf_n_109,
      \addressM[28]\ => rf_n_84,
      \addressM[28]_0\ => rf_n_89,
      \addressM[28]_1\ => rf_n_110,
      \addressM[4]\ => rf_n_93,
      \addressM[5]\ => rf_n_94,
      \addressM[6]\ => rf_n_95,
      \addressM[7]\(3) => alu_n_4,
      \addressM[7]\(2) => alu_n_5,
      \addressM[7]\(1) => alu_n_6,
      \addressM[7]\(0) => alu_n_7,
      \addressM[7]_0\ => rf_n_96,
      \carried_carry__1\ => alu_n_58,
      clk => clk,
      d0(10) => d0(28),
      d0(9 downto 5) => d0(16 downto 12),
      d0(4) => d0(10),
      d0(3 downto 0) => d0(7 downto 4),
      data5(0) => data5(23),
      data7(6) => data7(31),
      data7(5 downto 0) => data7(15 downto 10),
      \q[0]_i_17\ => rf_n_80,
      \q[0]_i_3_0\ => rf_n_73,
      \q[0]_i_3_1\ => rf_n_39,
      \q[0]_i_3_2\ => rf_n_75,
      \q[0]_i_3_3\ => rf_n_74,
      \q[0]_i_7\ => rf_n_79,
      \q_reg[0]_0\ => pcreg_n_47,
      \q_reg[0]_1\ => rf_n_78,
      \q_reg[10]_0\ => pcreg_n_85,
      \q_reg[10]_1\(2) => pcreg_n_197,
      \q_reg[10]_1\(1) => pcreg_n_198,
      \q_reg[10]_1\(0) => pcreg_n_199,
      \q_reg[11]_0\(3) => \^q_reg[11]\,
      \q_reg[11]_0\(2) => \^q_reg[10]\,
      \q_reg[11]_0\(1) => \^q_reg[9]\,
      \q_reg[11]_0\(0) => \^q_reg[8]\,
      \q_reg[11]_1\ => pcreg_n_90,
      \q_reg[11]_2\(3) => pcreg_n_172,
      \q_reg[11]_2\(2) => pcreg_n_173,
      \q_reg[11]_2\(1) => pcreg_n_174,
      \q_reg[11]_2\(0) => pcreg_n_175,
      \q_reg[13]_0\ => pcreg_n_139,
      \q_reg[15]_0\(3) => \^q_reg[15]\,
      \q_reg[15]_0\(2) => \^q_reg[14]\,
      \q_reg[15]_0\(1) => \^q_reg[13]\,
      \q_reg[15]_0\(0) => \^q_reg[12]\,
      \q_reg[15]_1\ => pcreg_n_140,
      \q_reg[15]_2\(3) => pcreg_n_176,
      \q_reg[15]_2\(2) => pcreg_n_177,
      \q_reg[15]_2\(1) => pcreg_n_178,
      \q_reg[15]_2\(0) => pcreg_n_179,
      \q_reg[19]_0\(3) => \^q_reg[19]\,
      \q_reg[19]_0\(2) => \^q_reg[18]\,
      \q_reg[19]_0\(1) => \^q_reg[17]\,
      \q_reg[19]_0\(0) => \^q_reg[16]\,
      \q_reg[19]_1\(3) => pcreg_n_180,
      \q_reg[19]_1\(2) => pcreg_n_181,
      \q_reg[19]_1\(1) => pcreg_n_182,
      \q_reg[19]_1\(0) => pcreg_n_183,
      \q_reg[1]_0\ => pcreg_n_141,
      \q_reg[21]_0\ => pcreg_n_120,
      \q_reg[23]_0\(3) => \^q_reg[23]\,
      \q_reg[23]_0\(2) => \^q_reg[22]\,
      \q_reg[23]_0\(1) => \^q_reg[21]\,
      \q_reg[23]_0\(0) => \^q_reg[20]\,
      \q_reg[23]_1\ => pcreg_n_119,
      \q_reg[23]_2\(3) => pcreg_n_184,
      \q_reg[23]_2\(2) => pcreg_n_185,
      \q_reg[23]_2\(1) => pcreg_n_186,
      \q_reg[23]_2\(0) => pcreg_n_187,
      \q_reg[24]_0\ => pcreg_n_149,
      \q_reg[25]_0\ => pcreg_n_116,
      \q_reg[25]_1\ => pcreg_n_118,
      \q_reg[25]_2\ => pcreg_n_152,
      \q_reg[26]_0\ => pcreg_n_122,
      \q_reg[26]_1\ => pcreg_n_123,
      \q_reg[26]_2\ => pcreg_n_148,
      \q_reg[27]_0\(3) => \^q_reg[27]\,
      \q_reg[27]_0\(2) => \^q_reg[26]\,
      \q_reg[27]_0\(1) => \^q_reg[25]\,
      \q_reg[27]_0\(0) => \^q_reg[24]\,
      \q_reg[27]_1\ => pcreg_n_117,
      \q_reg[27]_2\ => pcreg_n_136,
      \q_reg[27]_3\ => pcreg_n_151,
      \q_reg[27]_4\(3) => pcreg_n_188,
      \q_reg[27]_4\(2) => pcreg_n_189,
      \q_reg[27]_4\(1) => pcreg_n_190,
      \q_reg[27]_4\(0) => pcreg_n_191,
      \q_reg[28]_0\(10) => \^aluresult\(28),
      \q_reg[28]_0\(9 downto 5) => \^aluresult\(16 downto 12),
      \q_reg[28]_0\(4) => \^aluresult\(10),
      \q_reg[28]_0\(3 downto 0) => \^aluresult\(7 downto 4),
      \q_reg[28]_1\ => pcreg_n_121,
      \q_reg[28]_2\ => pcreg_n_134,
      \q_reg[29]_0\ => pcreg_n_115,
      \q_reg[29]_1\ => pcreg_n_135,
      \q_reg[2]_0\(1) => pcreg_n_192,
      \q_reg[2]_0\(0) => pcreg_n_193,
      \q_reg[30]_0\(2) => \^q_reg[30]\,
      \q_reg[30]_0\(1) => \^q_reg[29]\,
      \q_reg[30]_0\(0) => \^q_reg[28]\,
      \q_reg[30]_1\ => pcreg_n_133,
      \q_reg[30]_2\ => pcreg_n_143,
      \q_reg[30]_3\ => pcreg_n_145,
      \q_reg[30]_4\(0) => pcreg_n_200,
      \q_reg[31]_0\(0) => \^q_reg[31]\,
      \q_reg[31]_1\(0) => pcreg_n_103,
      \q_reg[31]_2\(3) => pcreg_n_110,
      \q_reg[31]_2\(2) => pcreg_n_111,
      \q_reg[31]_2\(1) => pcreg_n_112,
      \q_reg[31]_2\(0) => pcreg_n_113,
      \q_reg[31]_3\ => pcreg_n_146,
      \q_reg[31]_4\(0) => pcreg_n_201,
      \q_reg[31]_5\(20 downto 18) => d1(31 downto 29),
      \q_reg[31]_5\(17 downto 7) => d1(27 downto 17),
      \q_reg[31]_5\(6) => d1(11),
      \q_reg[31]_5\(5 downto 4) => d1(9 downto 8),
      \q_reg[31]_5\(3 downto 0) => d1(3 downto 0),
      \q_reg[3]_0\ => pcreg_n_142,
      \q_reg[3]_1\(3) => pcreg_n_164,
      \q_reg[3]_1\(2) => pcreg_n_165,
      \q_reg[3]_1\(1) => pcreg_n_166,
      \q_reg[3]_1\(0) => pcreg_n_167,
      \q_reg[4]_0\ => pcreg_n_155,
      \q_reg[5]_0\ => pcreg_n_153,
      \q_reg[5]_1\ => pcreg_n_154,
      \q_reg[5]_10\ => pcreg_n_202,
      \q_reg[5]_2\ => pcreg_n_156,
      \q_reg[5]_3\ => pcreg_n_157,
      \q_reg[5]_4\ => pcreg_n_158,
      \q_reg[5]_5\ => pcreg_n_159,
      \q_reg[5]_6\ => pcreg_n_160,
      \q_reg[5]_7\ => pcreg_n_161,
      \q_reg[5]_8\ => pcreg_n_162,
      \q_reg[5]_9\ => pcreg_n_163,
      \q_reg[7]_0\(3) => \^q_reg[7]\,
      \q_reg[7]_0\(2) => \^q_reg[6]\,
      \q_reg[7]_0\(1) => \^q_reg[5]\,
      \q_reg[7]_0\(0) => \^q_reg[4]\,
      \q_reg[7]_1\ => pcreg_n_137,
      \q_reg[7]_2\(3) => pcreg_n_168,
      \q_reg[7]_2\(2) => pcreg_n_169,
      \q_reg[7]_2\(1) => pcreg_n_170,
      \q_reg[7]_2\(0) => pcreg_n_171,
      \q_reg[7]_3\(2) => pcreg_n_194,
      \q_reg[7]_3\(1) => pcreg_n_195,
      \q_reg[7]_3\(0) => pcreg_n_196,
      \q_reg[9]_0\ => pcreg_n_138,
      rd10(31 downto 0) => rd10(31 downto 0),
      rd11 => rd11,
      rd20(6) => rd20(31),
      rd20(5 downto 0) => rd20(10 downto 5),
      rd21 => rd21,
      reset => reset,
      \result0__33\(0) => \result0__33\(0),
      \rf_reg_r2_0_31_30_31__0\(2) => pcadd4_n_0,
      \rf_reg_r2_0_31_30_31__0\(1) => pcadd4_n_1,
      \rf_reg_r2_0_31_30_31__0\(0) => pcadd4_n_2,
      sel0(1 downto 0) => sel0(1 downto 0),
      wd3(3 downto 1) => wd3(31 downto 29),
      wd3(0) => wd3(0),
      \xorOut__31\(3 downto 2) => \xorOut__31\(16 downto 15),
      \xorOut__31\(1) => \xorOut__31\(13),
      \xorOut__31\(0) => \xorOut__31\(11),
      \y_carry__1\ => alu_n_57
    );
rf: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_regfile
     port map (
      ALUControl(2 downto 0) => ALUControl(3 downto 1),
      \ALUControl__0\(0) => \ALUControl__0\(0),
      ALUResult(15 downto 5) => \^aluresult\(27 downto 17),
      ALUResult(4 downto 3) => \^aluresult\(9 downto 8),
      ALUResult(2 downto 0) => \^aluresult\(3 downto 1),
      \ALUResult[0]_INST_0_i_1\ => pcreg_n_202,
      \ALUResult[11]_INST_0_i_1\ => rf_n_75,
      \ALUResult[11]_INST_0_i_17\ => rf_n_111,
      \ALUResult[11]_INST_0_i_1_0\ => alu_n_57,
      \ALUResult[11]_INST_0_i_26\ => rf_n_128,
      \ALUResult[12]_INST_0_i_6\ => pcreg_n_119,
      \ALUResult[12]_INST_0_i_6_0\ => pcreg_n_118,
      \ALUResult[12]_INST_0_i_6_1\ => pcreg_n_120,
      \ALUResult[16]_INST_0_i_7\ => pcreg_n_116,
      \ALUResult[17]_INST_0_i_4_0\ => pcreg_n_104,
      \ALUResult[18]_INST_0_i_7_0\ => pcreg_n_122,
      \ALUResult[18]_INST_0_i_7_1\ => pcreg_n_149,
      \ALUResult[18]_INST_0_i_7_2\ => pcreg_n_145,
      \ALUResult[18]_INST_0_i_7_3\ => pcreg_n_123,
      \ALUResult[19]_INST_0_i_14\ => pcreg_n_160,
      \ALUResult[19]_INST_0_i_14_0\ => pcreg_n_161,
      \ALUResult[19]_INST_0_i_14_1\ => pcreg_n_162,
      \ALUResult[19]_INST_0_i_14_2\ => pcreg_n_163,
      \ALUResult[19]_INST_0_i_2\(3) => alu_n_16,
      \ALUResult[19]_INST_0_i_2\(2) => alu_n_17,
      \ALUResult[19]_INST_0_i_2\(1) => alu_n_18,
      \ALUResult[19]_INST_0_i_2\(0) => alu_n_19,
      \ALUResult[19]_INST_0_i_4_0\ => pcreg_n_147,
      \ALUResult[19]_INST_0_i_7_0\ => pcreg_n_117,
      \ALUResult[19]_INST_0_i_7_1\ => pcreg_n_152,
      \ALUResult[19]_INST_0_i_7_2\ => pcreg_n_146,
      \ALUResult[1]_INST_0_i_1_0\ => pcreg_n_109,
      \ALUResult[1]_INST_0_i_2_0\ => rf_n_39,
      \ALUResult[20]_INST_0_i_6_0\ => pcreg_n_150,
      \ALUResult[20]_INST_0_i_9_0\ => pcreg_n_121,
      \ALUResult[21]_INST_0_i_2_0\ => pcreg_n_138,
      \ALUResult[21]_INST_0_i_2_1\ => pcreg_n_139,
      \ALUResult[21]_INST_0_i_2_2\ => pcreg_n_137,
      \ALUResult[21]_INST_0_i_5\ => pcreg_n_153,
      \ALUResult[21]_INST_0_i_5_0\ => pcreg_n_154,
      \ALUResult[21]_INST_0_i_5_1\ => pcreg_n_158,
      \ALUResult[21]_INST_0_i_5_2\ => pcreg_n_159,
      \ALUResult[21]_INST_0_i_9_0\ => pcreg_n_115,
      \ALUResult[21]_INST_0_i_9_1\ => pcreg_n_136,
      \ALUResult[22]_INST_0_i_19_0\ => pcreg_n_134,
      \ALUResult[22]_INST_0_i_19_1\ => pcreg_n_151,
      \ALUResult[22]_INST_0_i_19_2\ => pcreg_n_143,
      \ALUResult[22]_INST_0_i_19_3\ => pcreg_n_148,
      \ALUResult[22]_INST_0_i_7_0\ => rf_n_211,
      \ALUResult[22]_INST_0_i_9_0\ => pcreg_n_144,
      \ALUResult[23]_INST_0_i_2_0\(0) => data5(23),
      \ALUResult[25]_INST_0_i_6_0\ => pcreg_n_135,
      \ALUResult[26]_INST_0_i_6_0\ => pcreg_n_133,
      \ALUResult[29]_INST_0_i_2\ => pcreg_n_102,
      \ALUResult[29]_INST_0_i_5_0\ => pcreg_n_140,
      \ALUResult[29]_INST_0_i_5_1\ => pcreg_n_142,
      \ALUResult[29]_INST_0_i_5_2\ => pcreg_n_141,
      \ALUResult[29]_INST_0_i_5_3\ => pcreg_n_157,
      \ALUResult[2]_INST_0_i_1_0\ => pcreg_n_108,
      \ALUResult[30]_INST_0_i_2\ => alu_n_58,
      \ALUResult[30]_INST_0_i_2_0\ => pcreg_n_131,
      \ALUResult[31]_INST_0_i_12\ => rf_n_76,
      \ALUResult[31]_INST_0_i_12_0\ => rf_n_80,
      \ALUResult[31]_INST_0_i_12_1\ => rf_n_93,
      \ALUResult[31]_INST_0_i_12_10\ => rf_n_102,
      \ALUResult[31]_INST_0_i_12_11\ => rf_n_103,
      \ALUResult[31]_INST_0_i_12_12\ => rf_n_104,
      \ALUResult[31]_INST_0_i_12_13\ => rf_n_105,
      \ALUResult[31]_INST_0_i_12_14\ => rf_n_106,
      \ALUResult[31]_INST_0_i_12_15\ => rf_n_107,
      \ALUResult[31]_INST_0_i_12_16\ => rf_n_108,
      \ALUResult[31]_INST_0_i_12_17\ => rf_n_109,
      \ALUResult[31]_INST_0_i_12_18\ => rf_n_110,
      \ALUResult[31]_INST_0_i_12_2\ => rf_n_94,
      \ALUResult[31]_INST_0_i_12_3\ => rf_n_95,
      \ALUResult[31]_INST_0_i_12_4\ => rf_n_96,
      \ALUResult[31]_INST_0_i_12_5\ => rf_n_97,
      \ALUResult[31]_INST_0_i_12_6\ => rf_n_98,
      \ALUResult[31]_INST_0_i_12_7\ => rf_n_99,
      \ALUResult[31]_INST_0_i_12_8\ => rf_n_100,
      \ALUResult[31]_INST_0_i_12_9\ => rf_n_101,
      \ALUResult[31]_INST_0_i_14\(1 downto 0) => data7(30 downto 29),
      \ALUResult[3]_INST_0_i_1_0\ => pcreg_n_107,
      \ALUResult[3]_INST_0_i_2_0\ => rf_n_73,
      \ALUResult[8]_INST_0_i_1_0\ => pcreg_n_106,
      \ALUResult[9]_INST_0_i_1_0\ => pcreg_n_105,
      \ALUResult[9]_INST_0_i_2_0\ => rf_n_74,
      \ALUResult[9]_INST_0_i_2_1\ => pcreg_n_155,
      \ALUResult[9]_INST_0_i_2_2\ => pcreg_n_156,
      ALUSrc(0) => ALUSrc(0),
      DI(3) => rf_n_112,
      DI(2) => rf_n_113,
      DI(1) => rf_n_114,
      DI(0) => rf_n_115,
      Instr(25 downto 9) => Instr(29 downto 13),
      Instr(8 downto 1) => Instr(9 downto 2),
      Instr(0) => Instr(0),
      Jump => Jump,
      O(2) => alu_n_0,
      O(1) => alu_n_1,
      O(0) => alu_n_2,
      S(3) => rf_n_180,
      S(2) => rf_n_181,
      S(1) => rf_n_182,
      S(0) => rf_n_183,
      SrcA(31 downto 0) => SrcA(31 downto 0),
      WriteData(31 downto 0) => WriteData(31 downto 0),
      \addressM[10]\(2) => alu_n_9,
      \addressM[10]\(1) => alu_n_10,
      \addressM[10]\(0) => alu_n_11,
      \addressM[11]\(3) => \^q_reg[11]\,
      \addressM[11]\(2) => \^q_reg[10]\,
      \addressM[11]\(1) => \^q_reg[9]\,
      \addressM[11]\(0) => \^q_reg[8]\,
      \addressM[15]\(4 downto 1) => data7(15 downto 12),
      \addressM[15]\(0) => data7(10),
      \addressM[15]_0\(3) => alu_n_12,
      \addressM[15]_0\(2) => alu_n_13,
      \addressM[15]_0\(1) => alu_n_14,
      \addressM[15]_0\(0) => alu_n_15,
      \addressM[17]\ => pcreg_n_87,
      \addressM[18]\ => pcreg_n_91,
      \addressM[19]\ => pcreg_n_92,
      \addressM[1]\ => pcreg_n_49,
      \addressM[20]\ => pcreg_n_94,
      \addressM[21]\ => pcreg_n_95,
      \addressM[22]\ => pcreg_n_97,
      \addressM[23]\ => pcreg_n_48,
      \addressM[23]_0\(3) => alu_n_20,
      \addressM[23]_0\(2) => alu_n_21,
      \addressM[23]_0\(1) => alu_n_22,
      \addressM[23]_0\(0) => alu_n_23,
      \addressM[23]_1\ => pcreg_n_96,
      \addressM[23]_2\(3) => \^q_reg[23]\,
      \addressM[23]_2\(2) => \^q_reg[22]\,
      \addressM[23]_2\(1) => \^q_reg[21]\,
      \addressM[23]_2\(0) => \^q_reg[20]\,
      \addressM[24]\ => pcreg_n_98,
      \addressM[25]\ => pcreg_n_99,
      \addressM[26]\ => pcreg_n_100,
      \addressM[27]\ => pcreg_n_101,
      \addressM[27]_0\(3) => alu_n_24,
      \addressM[27]_0\(2) => alu_n_25,
      \addressM[27]_0\(1) => alu_n_26,
      \addressM[27]_0\(0) => alu_n_27,
      \addressM[27]_1\(3) => \^q_reg[27]\,
      \addressM[27]_1\(2) => \^q_reg[26]\,
      \addressM[27]_1\(1) => \^q_reg[25]\,
      \addressM[27]_1\(0) => \^q_reg[24]\,
      \addressM[28]\ => alu_n_59,
      \addressM[31]\(3) => Neg,
      \addressM[31]\(2) => alu_n_29,
      \addressM[31]\(1) => alu_n_30,
      \addressM[31]\(0) => alu_n_31,
      \addressM[7]\(3) => alu_n_4,
      \addressM[7]\(2) => alu_n_5,
      \addressM[7]\(1) => alu_n_6,
      \addressM[7]\(0) => alu_n_7,
      clk => clk,
      clk_0(6) => rd20(31),
      clk_0(5 downto 0) => rd20(10 downto 5),
      d0(15 downto 5) => d0(27 downto 17),
      d0(4 downto 3) => d0(9 downto 8),
      d0(2 downto 0) => d0(3 downto 1),
      immext(7 downto 0) => \ext/immext\(19 downto 12),
      \q[0]_i_12_0\ => pcreg_n_90,
      \q[0]_i_19\ => rf_n_78,
      \q[0]_i_3\ => alu_n_39,
      \q[0]_i_3_0\ => pcreg_n_86,
      \q[0]_i_5\ => pcreg_n_47,
      \q[0]_i_5_0\ => alu_n_40,
      \q[0]_i_6\ => pcreg_n_85,
      \q[0]_i_6_0\ => alu_n_38,
      \q[0]_i_7_0\ => pcreg_n_93,
      \q_reg[0]\ => rf_n_251,
      \q_reg[10]\ => rf_n_212,
      \q_reg[11]\ => rf_n_77,
      \q_reg[11]_0\(3) => rf_n_188,
      \q_reg[11]_0\(2) => rf_n_189,
      \q_reg[11]_0\(1) => rf_n_190,
      \q_reg[11]_0\(0) => rf_n_191,
      \q_reg[11]_1\(0) => rf_n_224,
      \q_reg[14]\(3) => rf_n_116,
      \q_reg[14]\(2) => rf_n_117,
      \q_reg[14]\(1) => rf_n_118,
      \q_reg[14]\(0) => rf_n_119,
      \q_reg[14]_0\(3) => rf_n_220,
      \q_reg[14]_0\(2) => rf_n_221,
      \q_reg[14]_0\(1) => rf_n_222,
      \q_reg[14]_0\(0) => rf_n_223,
      \q_reg[15]\(3) => rf_n_192,
      \q_reg[15]\(2) => rf_n_193,
      \q_reg[15]\(1) => rf_n_194,
      \q_reg[15]\(0) => rf_n_195,
      \q_reg[15]_0\(3) => rf_n_225,
      \q_reg[15]_0\(2) => rf_n_226,
      \q_reg[15]_0\(1) => rf_n_227,
      \q_reg[15]_0\(0) => rf_n_228,
      \q_reg[16]\(3 downto 2) => \xorOut__31\(16 downto 15),
      \q_reg[16]\(1) => \xorOut__31\(13),
      \q_reg[16]\(0) => \xorOut__31\(11),
      \q_reg[16]_0\ => rf_n_90,
      \q_reg[17]\ => rf_n_79,
      \q_reg[19]\(3) => rf_n_196,
      \q_reg[19]\(2) => rf_n_197,
      \q_reg[19]\(1) => rf_n_198,
      \q_reg[19]\(0) => rf_n_199,
      \q_reg[19]_0\(3) => rf_n_229,
      \q_reg[19]_0\(2) => rf_n_230,
      \q_reg[19]_0\(1) => rf_n_231,
      \q_reg[19]_0\(0) => rf_n_232,
      \q_reg[22]\(3) => rf_n_120,
      \q_reg[22]\(2) => rf_n_121,
      \q_reg[22]\(1) => rf_n_122,
      \q_reg[22]\(0) => rf_n_123,
      \q_reg[22]_0\(3) => rf_n_233,
      \q_reg[22]_0\(2) => rf_n_234,
      \q_reg[22]_0\(1) => rf_n_235,
      \q_reg[22]_0\(0) => rf_n_236,
      \q_reg[23]\(3) => rf_n_200,
      \q_reg[23]\(2) => rf_n_201,
      \q_reg[23]\(1) => rf_n_202,
      \q_reg[23]\(0) => rf_n_203,
      \q_reg[23]_0\(3) => rf_n_237,
      \q_reg[23]_0\(2) => rf_n_238,
      \q_reg[23]_0\(1) => rf_n_239,
      \q_reg[23]_0\(0) => rf_n_240,
      \q_reg[27]\ => rf_n_129,
      \q_reg[27]_0\(15 downto 5) => d1(27 downto 17),
      \q_reg[27]_0\(4 downto 3) => d1(9 downto 8),
      \q_reg[27]_0\(2 downto 0) => d1(3 downto 1),
      \q_reg[27]_1\(3) => rf_n_204,
      \q_reg[27]_1\(2) => rf_n_205,
      \q_reg[27]_1\(1) => rf_n_206,
      \q_reg[27]_1\(0) => rf_n_207,
      \q_reg[27]_2\(3) => rf_n_241,
      \q_reg[27]_2\(2) => rf_n_242,
      \q_reg[27]_2\(1) => rf_n_243,
      \q_reg[27]_2\(0) => rf_n_244,
      \q_reg[28]\ => rf_n_84,
      \q_reg[28]_0\ => rf_n_89,
      \q_reg[28]_1\(2) => rf_n_245,
      \q_reg[28]_1\(1) => rf_n_246,
      \q_reg[28]_1\(0) => rf_n_247,
      \q_reg[29]\ => rf_n_81,
      \q_reg[30]\ => rf_n_82,
      \q_reg[30]_0\(3) => rf_n_124,
      \q_reg[30]_0\(2) => rf_n_125,
      \q_reg[30]_0\(1) => rf_n_126,
      \q_reg[30]_0\(0) => rf_n_127,
      \q_reg[30]_1\(2) => rf_n_208,
      \q_reg[30]_1\(1) => rf_n_209,
      \q_reg[30]_1\(0) => rf_n_210,
      \q_reg[30]_2\(2) => rf_n_248,
      \q_reg[30]_2\(1) => rf_n_249,
      \q_reg[30]_2\(0) => rf_n_250,
      \q_reg[31]\ => rf_n_83,
      \q_reg[3]\ => rf_n_163,
      \q_reg[3]_0\(3) => rf_n_213,
      \q_reg[3]_0\(2) => rf_n_214,
      \q_reg[3]_0\(1) => rf_n_215,
      \q_reg[3]_0\(0) => rf_n_216,
      \q_reg[4]\(0) => rf_n_217,
      \q_reg[5]\(16 downto 14) => SrcB(31 downto 29),
      \q_reg[5]\(13 downto 8) => SrcB(15 downto 10),
      \q_reg[5]\(7 downto 0) => SrcB(7 downto 0),
      \q_reg[6]\(1) => rf_n_218,
      \q_reg[6]\(0) => rf_n_219,
      \q_reg[7]\(3) => rf_n_184,
      \q_reg[7]\(2) => rf_n_185,
      \q_reg[7]\(1) => rf_n_186,
      \q_reg[7]\(0) => rf_n_187,
      rd10(31 downto 0) => rd10(31 downto 0),
      rd11 => rd11,
      rd21 => rd21,
      sel0(0) => sel0(1),
      sum_carry(3) => \^q_reg[3]\,
      sum_carry(2) => \^q_reg[2]\,
      sum_carry(1) => \^q_reg[1]\,
      sum_carry(0) => \^q_reg[0]\,
      \sum_carry__0\(3) => \^q_reg[7]\,
      \sum_carry__0\(2) => \^q_reg[6]\,
      \sum_carry__0\(1) => \^q_reg[5]\,
      \sum_carry__0\(0) => \^q_reg[4]\,
      \sum_carry__2\(3) => \^q_reg[15]\,
      \sum_carry__2\(2) => \^q_reg[14]\,
      \sum_carry__2\(1) => \^q_reg[13]\,
      \sum_carry__2\(0) => \^q_reg[12]\,
      \sum_carry__3\(3) => \^q_reg[19]\,
      \sum_carry__3\(2) => \^q_reg[18]\,
      \sum_carry__3\(1) => \^q_reg[17]\,
      \sum_carry__3\(0) => \^q_reg[16]\,
      \sum_carry__6\(2) => \^q_reg[30]\,
      \sum_carry__6\(1) => \^q_reg[29]\,
      \sum_carry__6\(0) => \^q_reg[28]\,
      wd3(31 downto 0) => wd3(31 downto 0)
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
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of MemStrobe_INST_0 : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of MemWrite_INST_0 : label is "soft_lutpair35";
begin
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
      PCReady => PCReady,
      ReadData(31 downto 0) => ReadData(31 downto 0),
      WriteData(31 downto 0) => WriteData(31 downto 0),
      clk => clk,
      \q_reg[0]\ => PC(0),
      \q_reg[10]\ => PC(10),
      \q_reg[11]\ => PC(11),
      \q_reg[12]\ => PC(12),
      \q_reg[13]\ => PC(13),
      \q_reg[14]\ => PC(14),
      \q_reg[15]\ => PC(15),
      \q_reg[16]\ => PC(16),
      \q_reg[17]\ => PC(17),
      \q_reg[18]\ => PC(18),
      \q_reg[19]\ => PC(19),
      \q_reg[1]\ => PC(1),
      \q_reg[20]\ => PC(20),
      \q_reg[21]\ => PC(21),
      \q_reg[22]\ => PC(22),
      \q_reg[23]\ => PC(23),
      \q_reg[24]\ => PC(24),
      \q_reg[25]\ => PC(25),
      \q_reg[26]\ => PC(26),
      \q_reg[27]\ => PC(27),
      \q_reg[28]\ => PC(28),
      \q_reg[29]\ => PC(29),
      \q_reg[2]\ => PC(2),
      \q_reg[30]\ => PC(30),
      \q_reg[31]\ => PC(31),
      \q_reg[3]\ => PC(3),
      \q_reg[4]\ => PC(4),
      \q_reg[5]\ => PC(5),
      \q_reg[6]\ => PC(6),
      \q_reg[7]\ => PC(7),
      \q_reg[8]\ => PC(8),
      \q_reg[9]\ => PC(9),
      reset => reset
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
  signal PCReady : STD_LOGIC;
  attribute MARK_DEBUG of PCReady : signal is std.standard.true;
  signal NLW_imem_rd_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
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
      Done => PCReady,
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
      PC(31 downto 0) => PC(31 downto 0),
      PCReady => PCReady,
      ReadData(31 downto 0) => readDataM(31 downto 0),
      WriteData(31 downto 0) => writeDataM(31 downto 0),
      clk => clk,
      reset => reset
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
