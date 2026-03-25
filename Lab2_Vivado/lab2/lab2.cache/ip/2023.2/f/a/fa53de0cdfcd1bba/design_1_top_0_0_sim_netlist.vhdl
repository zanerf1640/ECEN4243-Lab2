-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
-- Date        : Wed Mar 25 15:10:45 2026
-- Host        : CEAT-ENDV350-05 running 64-bit major release  (build 9200)
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
  attribute SOFT_HLUTNM of AXIstart_INST_0 : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of DRW_INST_0 : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of Done_INST_0 : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_1\ : label is "soft_lutpair64";
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
    PCPlus4 : out STD_LOGIC_VECTOR ( 28 downto 0 );
    Result : out STD_LOGIC_VECTOR ( 24 downto 0 );
    \q_reg[10]\ : out STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 29 downto 0 );
    Instr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    rf_reg_r1_0_31_12_17 : in STD_LOGIC;
    rf_reg_r1_0_31_12_17_0 : in STD_LOGIC;
    rf_reg_r1_0_31_12_17_1 : in STD_LOGIC;
    rf_reg_r1_0_31_0_5_i_4_0 : in STD_LOGIC;
    rf_reg_r1_0_31_6_11 : in STD_LOGIC;
    rf_reg_r1_0_31_6_11_0 : in STD_LOGIC;
    rf_reg_r1_0_31_6_11_i_1 : in STD_LOGIC;
    rf_reg_r1_0_31_6_11_1 : in STD_LOGIC;
    rf_reg_r1_0_31_6_11_2 : in STD_LOGIC;
    rf_reg_r1_0_31_0_5_i_6_0 : in STD_LOGIC;
    rf_reg_r1_0_31_6_11_i_2_0 : in STD_LOGIC;
    rf_reg_r1_0_31_0_5_i_7_0 : in STD_LOGIC;
    ResultSrc : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \rf_reg_r2_0_31_30_31__0\ : in STD_LOGIC;
    rf_reg_r1_0_31_18_23 : in STD_LOGIC;
    rf_reg_r1_0_31_18_23_0 : in STD_LOGIC;
    rf_reg_r1_0_31_18_23_1 : in STD_LOGIC;
    rf_reg_r1_0_31_18_23_2 : in STD_LOGIC;
    rf_reg_r1_0_31_18_23_3 : in STD_LOGIC;
    rf_reg_r1_0_31_18_23_4 : in STD_LOGIC;
    rf_reg_r1_0_31_18_23_5 : in STD_LOGIC;
    rf_reg_r1_0_31_18_23_6 : in STD_LOGIC;
    rf_reg_r1_0_31_12_17_2 : in STD_LOGIC;
    rf_reg_r1_0_31_12_17_3 : in STD_LOGIC;
    rf_reg_r1_0_31_12_17_4 : in STD_LOGIC;
    rf_reg_r1_0_31_12_17_5 : in STD_LOGIC;
    rf_reg_r1_0_31_24_29 : in STD_LOGIC;
    rf_reg_r1_0_31_24_29_0 : in STD_LOGIC;
    rf_reg_r1_0_31_24_29_1 : in STD_LOGIC;
    rf_reg_r1_0_31_24_29_2 : in STD_LOGIC;
    rf_reg_r1_0_31_24_29_3 : in STD_LOGIC;
    rf_reg_r1_0_31_24_29_4 : in STD_LOGIC;
    rf_reg_r1_0_31_24_29_5 : in STD_LOGIC;
    rf_reg_r1_0_31_24_29_6 : in STD_LOGIC;
    rf_reg_r1_0_31_24_29_7 : in STD_LOGIC;
    rf_reg_r1_0_31_24_29_8 : in STD_LOGIC;
    rf_reg_r1_0_31_24_29_9 : in STD_LOGIC;
    rf_reg_r1_0_31_24_29_10 : in STD_LOGIC;
    rf_reg_r2_0_31_30_31 : in STD_LOGIC;
    rf_reg_r2_0_31_30_31_0 : in STD_LOGIC;
    \rf_reg_r2_0_31_30_31__0_0\ : in STD_LOGIC;
    \rf_reg_r2_0_31_30_31__0_1\ : in STD_LOGIC;
    rf_reg_r1_0_31_0_5 : in STD_LOGIC;
    ReadData : in STD_LOGIC_VECTOR ( 3 downto 0 );
    rf_reg_r1_0_31_6_11_3 : in STD_LOGIC;
    rf_reg_r1_0_31_0_5_0 : in STD_LOGIC;
    rf_reg_r1_0_31_0_5_1 : in STD_LOGIC;
    rf_reg_r1_0_31_6_11_4 : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder is
  signal \^pcplus4\ : STD_LOGIC_VECTOR ( 28 downto 0 );
  signal rf_reg_r1_0_31_0_5_i_14_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_31_0_5_i_18_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_31_0_5_i_20_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_31_6_11_i_9_n_0 : STD_LOGIC;
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
  signal y_carry_n_0 : STD_LOGIC;
  signal y_carry_n_1 : STD_LOGIC;
  signal y_carry_n_2 : STD_LOGIC;
  signal y_carry_n_3 : STD_LOGIC;
  signal \NLW_y_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_y_carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
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
  PCPlus4(28 downto 0) <= \^pcplus4\(28 downto 0);
rf_reg_r1_0_31_0_5_i_14: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA0CCC0CCC0CCC0"
    )
        port map (
      I0 => \^pcplus4\(0),
      I1 => rf_reg_r1_0_31_0_5_i_4_0,
      I2 => Instr(2),
      I3 => Instr(1),
      I4 => Instr(3),
      I5 => Instr(0),
      O => rf_reg_r1_0_31_0_5_i_14_n_0
    );
rf_reg_r1_0_31_0_5_i_18: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA0CCC0CCC0CCC0"
    )
        port map (
      I0 => \^pcplus4\(2),
      I1 => rf_reg_r1_0_31_0_5_i_6_0,
      I2 => Instr(2),
      I3 => Instr(1),
      I4 => Instr(3),
      I5 => Instr(0),
      O => rf_reg_r1_0_31_0_5_i_18_n_0
    );
rf_reg_r1_0_31_0_5_i_20: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA0CCC0CCC0CCC0"
    )
        port map (
      I0 => \^pcplus4\(1),
      I1 => rf_reg_r1_0_31_0_5_i_7_0,
      I2 => Instr(2),
      I3 => Instr(1),
      I4 => Instr(3),
      I5 => Instr(0),
      O => rf_reg_r1_0_31_0_5_i_20_n_0
    );
rf_reg_r1_0_31_0_5_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEAEAAAA"
    )
        port map (
      I0 => rf_reg_r1_0_31_0_5_i_14_n_0,
      I1 => rf_reg_r1_0_31_0_5,
      I2 => Instr(4),
      I3 => ReadData(0),
      I4 => rf_reg_r1_0_31_6_11_3,
      O => Result(0)
    );
rf_reg_r1_0_31_0_5_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEAEAAAA"
    )
        port map (
      I0 => rf_reg_r1_0_31_0_5_i_18_n_0,
      I1 => rf_reg_r1_0_31_0_5_0,
      I2 => Instr(4),
      I3 => ReadData(2),
      I4 => rf_reg_r1_0_31_6_11_3,
      O => Result(2)
    );
rf_reg_r1_0_31_0_5_i_7: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEAEAAAA"
    )
        port map (
      I0 => rf_reg_r1_0_31_0_5_i_20_n_0,
      I1 => rf_reg_r1_0_31_0_5_1,
      I2 => Instr(4),
      I3 => ReadData(1),
      I4 => rf_reg_r1_0_31_6_11_3,
      O => Result(1)
    );
rf_reg_r1_0_31_12_17_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8FFFFFFA8000000"
    )
        port map (
      I0 => \^pcplus4\(10),
      I1 => Instr(2),
      I2 => Instr(1),
      I3 => Instr(0),
      I4 => Instr(3),
      I5 => rf_reg_r1_0_31_12_17_1,
      O => Result(9)
    );
rf_reg_r1_0_31_12_17_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8FFFFFFA8000000"
    )
        port map (
      I0 => \^pcplus4\(9),
      I1 => Instr(2),
      I2 => Instr(1),
      I3 => Instr(0),
      I4 => Instr(3),
      I5 => rf_reg_r1_0_31_12_17_0,
      O => Result(8)
    );
rf_reg_r1_0_31_12_17_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8FFFFFFA8000000"
    )
        port map (
      I0 => \^pcplus4\(11),
      I1 => Instr(2),
      I2 => Instr(1),
      I3 => Instr(0),
      I4 => Instr(3),
      I5 => rf_reg_r1_0_31_12_17,
      O => Result(10)
    );
rf_reg_r1_0_31_12_17_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3333BBBB3030BBB8"
    )
        port map (
      I0 => \^pcplus4\(14),
      I1 => ResultSrc(1),
      I2 => \rf_reg_r2_0_31_30_31__0\,
      I3 => rf_reg_r1_0_31_12_17_4,
      I4 => ResultSrc(0),
      I5 => rf_reg_r1_0_31_12_17_5,
      O => Result(12)
    );
rf_reg_r1_0_31_12_17_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3333BBBB3030BBB8"
    )
        port map (
      I0 => \^pcplus4\(13),
      I1 => ResultSrc(1),
      I2 => \rf_reg_r2_0_31_30_31__0\,
      I3 => rf_reg_r1_0_31_12_17_2,
      I4 => ResultSrc(0),
      I5 => rf_reg_r1_0_31_12_17_3,
      O => Result(11)
    );
rf_reg_r1_0_31_18_23_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3333BBBB3030BBB8"
    )
        port map (
      I0 => \^pcplus4\(15),
      I1 => ResultSrc(1),
      I2 => \rf_reg_r2_0_31_30_31__0\,
      I3 => rf_reg_r1_0_31_18_23_5,
      I4 => ResultSrc(0),
      I5 => rf_reg_r1_0_31_18_23_6,
      O => Result(13)
    );
rf_reg_r1_0_31_18_23_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3333BBBB3030BBB8"
    )
        port map (
      I0 => \^pcplus4\(18),
      I1 => ResultSrc(1),
      I2 => \rf_reg_r2_0_31_30_31__0\,
      I3 => rf_reg_r1_0_31_18_23,
      I4 => ResultSrc(0),
      I5 => rf_reg_r1_0_31_18_23_0,
      O => Result(14)
    );
rf_reg_r1_0_31_18_23_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3333BBBB3030BBB8"
    )
        port map (
      I0 => \^pcplus4\(20),
      I1 => ResultSrc(1),
      I2 => \rf_reg_r2_0_31_30_31__0\,
      I3 => rf_reg_r1_0_31_18_23_3,
      I4 => ResultSrc(0),
      I5 => rf_reg_r1_0_31_18_23_4,
      O => Result(16)
    );
rf_reg_r1_0_31_18_23_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3333BBBB3030BBB8"
    )
        port map (
      I0 => \^pcplus4\(19),
      I1 => ResultSrc(1),
      I2 => \rf_reg_r2_0_31_30_31__0\,
      I3 => rf_reg_r1_0_31_18_23_1,
      I4 => ResultSrc(0),
      I5 => rf_reg_r1_0_31_18_23_2,
      O => Result(15)
    );
rf_reg_r1_0_31_24_29_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3333BBBB3030BBB8"
    )
        port map (
      I0 => \^pcplus4\(22),
      I1 => ResultSrc(1),
      I2 => \rf_reg_r2_0_31_30_31__0\,
      I3 => rf_reg_r1_0_31_24_29_1,
      I4 => ResultSrc(0),
      I5 => rf_reg_r1_0_31_24_29_2,
      O => Result(18)
    );
rf_reg_r1_0_31_24_29_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3333BBBB3030BBB8"
    )
        port map (
      I0 => \^pcplus4\(21),
      I1 => ResultSrc(1),
      I2 => \rf_reg_r2_0_31_30_31__0\,
      I3 => rf_reg_r1_0_31_24_29,
      I4 => ResultSrc(0),
      I5 => rf_reg_r1_0_31_24_29_0,
      O => Result(17)
    );
rf_reg_r1_0_31_24_29_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3333BBBB3030BBB8"
    )
        port map (
      I0 => \^pcplus4\(24),
      I1 => ResultSrc(1),
      I2 => \rf_reg_r2_0_31_30_31__0\,
      I3 => rf_reg_r1_0_31_24_29_5,
      I4 => ResultSrc(0),
      I5 => rf_reg_r1_0_31_24_29_6,
      O => Result(20)
    );
rf_reg_r1_0_31_24_29_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3333BBBB3030BBB8"
    )
        port map (
      I0 => \^pcplus4\(23),
      I1 => ResultSrc(1),
      I2 => \rf_reg_r2_0_31_30_31__0\,
      I3 => rf_reg_r1_0_31_24_29_3,
      I4 => ResultSrc(0),
      I5 => rf_reg_r1_0_31_24_29_4,
      O => Result(19)
    );
rf_reg_r1_0_31_24_29_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3333BBBB3030BBB8"
    )
        port map (
      I0 => \^pcplus4\(26),
      I1 => ResultSrc(1),
      I2 => \rf_reg_r2_0_31_30_31__0\,
      I3 => rf_reg_r1_0_31_24_29_9,
      I4 => ResultSrc(0),
      I5 => rf_reg_r1_0_31_24_29_10,
      O => Result(22)
    );
rf_reg_r1_0_31_24_29_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3333BBBB3030BBB8"
    )
        port map (
      I0 => \^pcplus4\(25),
      I1 => ResultSrc(1),
      I2 => \rf_reg_r2_0_31_30_31__0\,
      I3 => rf_reg_r1_0_31_24_29_7,
      I4 => ResultSrc(0),
      I5 => rf_reg_r1_0_31_24_29_8,
      O => Result(21)
    );
rf_reg_r1_0_31_30_31_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3330BBBB3330BBB8"
    )
        port map (
      I0 => \^pcplus4\(27),
      I1 => ResultSrc(1),
      I2 => \rf_reg_r2_0_31_30_31__0\,
      I3 => rf_reg_r2_0_31_30_31,
      I4 => ResultSrc(0),
      I5 => rf_reg_r2_0_31_30_31_0,
      O => Result(23)
    );
\rf_reg_r1_0_31_30_31_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3330BBBB3330BBB8"
    )
        port map (
      I0 => \^pcplus4\(28),
      I1 => ResultSrc(1),
      I2 => \rf_reg_r2_0_31_30_31__0\,
      I3 => \rf_reg_r2_0_31_30_31__0_0\,
      I4 => ResultSrc(0),
      I5 => \rf_reg_r2_0_31_30_31__0_1\,
      O => Result(24)
    );
rf_reg_r1_0_31_6_11_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEAEAAAA"
    )
        port map (
      I0 => rf_reg_r1_0_31_6_11_i_9_n_0,
      I1 => rf_reg_r1_0_31_6_11_4,
      I2 => Instr(4),
      I3 => ReadData(3),
      I4 => rf_reg_r1_0_31_6_11_3,
      O => Result(3)
    );
rf_reg_r1_0_31_6_11_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8FFFFFFA8000000"
    )
        port map (
      I0 => \^pcplus4\(6),
      I1 => Instr(2),
      I2 => Instr(1),
      I3 => Instr(0),
      I4 => Instr(3),
      I5 => rf_reg_r1_0_31_6_11_2,
      O => Result(5)
    );
rf_reg_r1_0_31_6_11_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8FFFFFFA8000000"
    )
        port map (
      I0 => \^pcplus4\(5),
      I1 => Instr(2),
      I2 => Instr(1),
      I3 => Instr(0),
      I4 => Instr(3),
      I5 => rf_reg_r1_0_31_6_11_1,
      O => Result(4)
    );
rf_reg_r1_0_31_6_11_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8FFFFFFA8000000"
    )
        port map (
      I0 => \^pcplus4\(8),
      I1 => Instr(2),
      I2 => Instr(1),
      I3 => Instr(0),
      I4 => Instr(3),
      I5 => rf_reg_r1_0_31_6_11_0,
      O => Result(7)
    );
rf_reg_r1_0_31_6_11_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8FFFFFFA8000000"
    )
        port map (
      I0 => \^pcplus4\(7),
      I1 => Instr(2),
      I2 => Instr(1),
      I3 => Instr(0),
      I4 => Instr(3),
      I5 => rf_reg_r1_0_31_6_11,
      O => Result(6)
    );
rf_reg_r1_0_31_6_11_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA0CCC0CCC0CCC0"
    )
        port map (
      I0 => \^pcplus4\(4),
      I1 => rf_reg_r1_0_31_6_11_i_1,
      I2 => Instr(2),
      I3 => Instr(1),
      I4 => Instr(3),
      I5 => Instr(0),
      O => \q_reg[10]\
    );
rf_reg_r1_0_31_6_11_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA0CCC0CCC0CCC0"
    )
        port map (
      I0 => \^pcplus4\(3),
      I1 => rf_reg_r1_0_31_6_11_i_2_0,
      I2 => Instr(2),
      I3 => Instr(1),
      I4 => Instr(3),
      I5 => Instr(0),
      O => rf_reg_r1_0_31_6_11_i_9_n_0
    );
y_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => y_carry_n_0,
      CO(2) => y_carry_n_1,
      CO(1) => y_carry_n_2,
      CO(0) => y_carry_n_3,
      CYINIT => Q(0),
      DI(3 downto 0) => Q(4 downto 1),
      O(3 downto 0) => \^pcplus4\(3 downto 0),
      S(3 downto 0) => Q(4 downto 1)
    );
\y_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => y_carry_n_0,
      CO(3) => \y_carry__0_n_0\,
      CO(2) => \y_carry__0_n_1\,
      CO(1) => \y_carry__0_n_2\,
      CO(0) => \y_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => Q(8 downto 5),
      O(3 downto 0) => \^pcplus4\(7 downto 4),
      S(3 downto 0) => Q(8 downto 5)
    );
\y_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \y_carry__0_n_0\,
      CO(3) => \y_carry__1_n_0\,
      CO(2) => \y_carry__1_n_1\,
      CO(1) => \y_carry__1_n_2\,
      CO(0) => \y_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => Q(12 downto 9),
      O(3 downto 0) => \^pcplus4\(11 downto 8),
      S(3 downto 0) => Q(12 downto 9)
    );
\y_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \y_carry__1_n_0\,
      CO(3) => \y_carry__2_n_0\,
      CO(2) => \y_carry__2_n_1\,
      CO(1) => \y_carry__2_n_2\,
      CO(0) => \y_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => Q(16 downto 13),
      O(3 downto 0) => \^pcplus4\(15 downto 12),
      S(3 downto 0) => Q(16 downto 13)
    );
\y_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \y_carry__2_n_0\,
      CO(3) => \y_carry__3_n_0\,
      CO(2) => \y_carry__3_n_1\,
      CO(1) => \y_carry__3_n_2\,
      CO(0) => \y_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => Q(20 downto 17),
      O(3 downto 0) => \^pcplus4\(19 downto 16),
      S(3 downto 0) => Q(20 downto 17)
    );
\y_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \y_carry__3_n_0\,
      CO(3) => \y_carry__4_n_0\,
      CO(2) => \y_carry__4_n_1\,
      CO(1) => \y_carry__4_n_2\,
      CO(0) => \y_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => Q(24 downto 21),
      O(3 downto 0) => \^pcplus4\(23 downto 20),
      S(3 downto 0) => Q(24 downto 21)
    );
\y_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \y_carry__4_n_0\,
      CO(3) => \y_carry__5_n_0\,
      CO(2) => \y_carry__5_n_1\,
      CO(1) => \y_carry__5_n_2\,
      CO(0) => \y_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => Q(28 downto 25),
      O(3 downto 0) => \^pcplus4\(27 downto 24),
      S(3 downto 0) => Q(28 downto 25)
    );
\y_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \y_carry__5_n_0\,
      CO(3 downto 0) => \NLW_y_carry__6_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_y_carry__6_O_UNCONNECTED\(3 downto 1),
      O(0) => \^pcplus4\(28),
      S(3 downto 1) => B"000",
      S(0) => Q(29)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder_0 is
  port (
    PCTarget : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 30 downto 0 );
    S : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[7]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[11]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[15]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[19]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[23]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[27]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[31]\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
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
begin
y_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => y_carry_n_0,
      CO(2) => y_carry_n_1,
      CO(1) => y_carry_n_2,
      CO(0) => y_carry_n_3,
      CYINIT => '0',
      DI(3 downto 0) => Q(3 downto 0),
      O(3 downto 0) => PCTarget(3 downto 0),
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
      DI(3 downto 0) => Q(7 downto 4),
      O(3 downto 0) => PCTarget(7 downto 4),
      S(3 downto 0) => \q_reg[7]\(3 downto 0)
    );
\y_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \y_carry__0_n_0\,
      CO(3) => \y_carry__1_n_0\,
      CO(2) => \y_carry__1_n_1\,
      CO(1) => \y_carry__1_n_2\,
      CO(0) => \y_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => Q(11 downto 8),
      O(3 downto 0) => PCTarget(11 downto 8),
      S(3 downto 0) => \q_reg[11]\(3 downto 0)
    );
\y_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \y_carry__1_n_0\,
      CO(3) => \y_carry__2_n_0\,
      CO(2) => \y_carry__2_n_1\,
      CO(1) => \y_carry__2_n_2\,
      CO(0) => \y_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => Q(15 downto 12),
      O(3 downto 0) => PCTarget(15 downto 12),
      S(3 downto 0) => \q_reg[15]\(3 downto 0)
    );
\y_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \y_carry__2_n_0\,
      CO(3) => \y_carry__3_n_0\,
      CO(2) => \y_carry__3_n_1\,
      CO(1) => \y_carry__3_n_2\,
      CO(0) => \y_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => Q(19 downto 16),
      O(3 downto 0) => PCTarget(19 downto 16),
      S(3 downto 0) => \q_reg[19]\(3 downto 0)
    );
\y_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \y_carry__3_n_0\,
      CO(3) => \y_carry__4_n_0\,
      CO(2) => \y_carry__4_n_1\,
      CO(1) => \y_carry__4_n_2\,
      CO(0) => \y_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => Q(23 downto 20),
      O(3 downto 0) => PCTarget(23 downto 20),
      S(3 downto 0) => \q_reg[23]\(3 downto 0)
    );
\y_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \y_carry__4_n_0\,
      CO(3) => \y_carry__5_n_0\,
      CO(2) => \y_carry__5_n_1\,
      CO(1) => \y_carry__5_n_2\,
      CO(0) => \y_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => Q(27 downto 24),
      O(3 downto 0) => PCTarget(27 downto 24),
      S(3 downto 0) => \q_reg[27]\(3 downto 0)
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
      DI(2 downto 0) => Q(30 downto 28),
      O(3 downto 0) => PCTarget(31 downto 28),
      S(3 downto 0) => \q_reg[31]\(3 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_alu is
  port (
    CO : out STD_LOGIC_VECTOR ( 0 to 0 );
    \q_reg[30]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ALUResult[31]_INST_0_i_5\ : out STD_LOGIC;
    \ALUResult[31]_INST_0_i_5_0\ : out STD_LOGIC;
    \ALUResult[31]_INST_0_i_5_1\ : out STD_LOGIC;
    \q_reg[1]\ : out STD_LOGIC;
    \ALUResult[30]_INST_0_i_8\ : out STD_LOGIC;
    \ALUControl__0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
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
    \q_reg[26]\ : out STD_LOGIC;
    \q_reg[28]\ : out STD_LOGIC;
    \q_reg[29]\ : out STD_LOGIC;
    \q_reg[0]\ : out STD_LOGIC;
    \q_reg[31]\ : out STD_LOGIC;
    ALUSrc : out STD_LOGIC;
    \q_reg[5]_0\ : out STD_LOGIC;
    ImmSrc : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \rd21__3\ : out STD_LOGIC;
    \q_reg[5]_1\ : out STD_LOGIC;
    \q_reg[5]_2\ : out STD_LOGIC;
    \q_reg[5]_3\ : out STD_LOGIC;
    DI : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \ltu_carry__1_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \lt_carry__1_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \ltu_carry__2_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \lt_carry__2_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \q[31]_i_6\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \q[31]_i_6_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \ltu_carry__0_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \ltu_carry__1_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \ltu_carry__2_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \q[31]_i_6_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \q[31]_i_6_2\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \ALUResult[0]_INST_0_i_3_0\ : in STD_LOGIC;
    SrcA : in STD_LOGIC_VECTOR ( 30 downto 0 );
    \ALUResult[0]_INST_0_i_3_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \ALUResult[4]_INST_0_i_4_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \ALUResult[8]_INST_0_i_2_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \ALUResult[12]_INST_0_i_2_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \ALUResult[16]_INST_0_i_2_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \ALUResult[20]_INST_0_i_2_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \ALUResult[24]_INST_0_i_2_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \ALUResult[28]_INST_0_i_2_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \addressM[25]\ : in STD_LOGIC;
    \addressM[25]_0\ : in STD_LOGIC;
    \addressM[25]_1\ : in STD_LOGIC;
    \addressM[25]_2\ : in STD_LOGIC;
    \addressM[27]\ : in STD_LOGIC;
    \addressM[27]_0\ : in STD_LOGIC;
    \addressM[30]\ : in STD_LOGIC;
    \addressM[30]_0\ : in STD_LOGIC;
    \addressM[1]\ : in STD_LOGIC;
    SrcB : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \addressM[1]_0\ : in STD_LOGIC;
    ALUControl : in STD_LOGIC_VECTOR ( 0 to 0 );
    \ALUResult[0]_INST_0_i_4\ : in STD_LOGIC;
    \ALUResult[0]_INST_0_i_4_0\ : in STD_LOGIC;
    \SrcA__0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    Instr : in STD_LOGIC_VECTOR ( 20 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_alu;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_alu is
  signal \^alucontrol__0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \ALUResult[25]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ALUResult[27]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ALUResult[30]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \^co\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^immsrc\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \lt_carry__0_n_0\ : STD_LOGIC;
  signal \lt_carry__0_n_1\ : STD_LOGIC;
  signal \lt_carry__0_n_2\ : STD_LOGIC;
  signal \lt_carry__0_n_3\ : STD_LOGIC;
  signal \lt_carry__1_n_0\ : STD_LOGIC;
  signal \lt_carry__1_n_1\ : STD_LOGIC;
  signal \lt_carry__1_n_2\ : STD_LOGIC;
  signal \lt_carry__1_n_3\ : STD_LOGIC;
  signal \lt_carry__2_n_1\ : STD_LOGIC;
  signal \lt_carry__2_n_2\ : STD_LOGIC;
  signal \lt_carry__2_n_3\ : STD_LOGIC;
  signal lt_carry_n_0 : STD_LOGIC;
  signal lt_carry_n_1 : STD_LOGIC;
  signal lt_carry_n_2 : STD_LOGIC;
  signal lt_carry_n_3 : STD_LOGIC;
  signal \ltu_carry__0_n_0\ : STD_LOGIC;
  signal \ltu_carry__0_n_1\ : STD_LOGIC;
  signal \ltu_carry__0_n_2\ : STD_LOGIC;
  signal \ltu_carry__0_n_3\ : STD_LOGIC;
  signal \ltu_carry__1_n_0\ : STD_LOGIC;
  signal \ltu_carry__1_n_1\ : STD_LOGIC;
  signal \ltu_carry__1_n_2\ : STD_LOGIC;
  signal \ltu_carry__1_n_3\ : STD_LOGIC;
  signal \ltu_carry__2_n_1\ : STD_LOGIC;
  signal \ltu_carry__2_n_2\ : STD_LOGIC;
  signal \ltu_carry__2_n_3\ : STD_LOGIC;
  signal ltu_carry_n_0 : STD_LOGIC;
  signal ltu_carry_n_1 : STD_LOGIC;
  signal ltu_carry_n_2 : STD_LOGIC;
  signal ltu_carry_n_3 : STD_LOGIC;
  signal \^q_reg[30]\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^q_reg[5]_1\ : STD_LOGIC;
  signal sum : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \sum__0_carry__0_n_0\ : STD_LOGIC;
  signal \sum__0_carry__0_n_1\ : STD_LOGIC;
  signal \sum__0_carry__0_n_2\ : STD_LOGIC;
  signal \sum__0_carry__0_n_3\ : STD_LOGIC;
  signal \sum__0_carry__1_n_0\ : STD_LOGIC;
  signal \sum__0_carry__1_n_1\ : STD_LOGIC;
  signal \sum__0_carry__1_n_2\ : STD_LOGIC;
  signal \sum__0_carry__1_n_3\ : STD_LOGIC;
  signal \sum__0_carry__2_n_0\ : STD_LOGIC;
  signal \sum__0_carry__2_n_1\ : STD_LOGIC;
  signal \sum__0_carry__2_n_2\ : STD_LOGIC;
  signal \sum__0_carry__2_n_3\ : STD_LOGIC;
  signal \sum__0_carry__3_n_0\ : STD_LOGIC;
  signal \sum__0_carry__3_n_1\ : STD_LOGIC;
  signal \sum__0_carry__3_n_2\ : STD_LOGIC;
  signal \sum__0_carry__3_n_3\ : STD_LOGIC;
  signal \sum__0_carry__4_n_0\ : STD_LOGIC;
  signal \sum__0_carry__4_n_1\ : STD_LOGIC;
  signal \sum__0_carry__4_n_2\ : STD_LOGIC;
  signal \sum__0_carry__4_n_3\ : STD_LOGIC;
  signal \sum__0_carry__5_n_0\ : STD_LOGIC;
  signal \sum__0_carry__5_n_1\ : STD_LOGIC;
  signal \sum__0_carry__5_n_2\ : STD_LOGIC;
  signal \sum__0_carry__5_n_3\ : STD_LOGIC;
  signal \sum__0_carry__6_n_1\ : STD_LOGIC;
  signal \sum__0_carry__6_n_2\ : STD_LOGIC;
  signal \sum__0_carry__6_n_3\ : STD_LOGIC;
  signal \sum__0_carry_i_12_n_0\ : STD_LOGIC;
  signal \sum__0_carry_n_0\ : STD_LOGIC;
  signal \sum__0_carry_n_1\ : STD_LOGIC;
  signal \sum__0_carry_n_2\ : STD_LOGIC;
  signal \sum__0_carry_n_3\ : STD_LOGIC;
  signal NLW_lt_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_lt_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_lt_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_lt_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_ltu_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ltu_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ltu_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ltu_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_sum__0_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ALUResult[31]_INST_0_i_19\ : label is "soft_lutpair0";
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of lt_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \lt_carry__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \lt_carry__1\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \lt_carry__2\ : label is 11;
  attribute COMPARATOR_THRESHOLD of ltu_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \ltu_carry__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \ltu_carry__1\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \ltu_carry__2\ : label is 11;
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \sum__0_carry\ : label is 35;
  attribute ADDER_THRESHOLD of \sum__0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \sum__0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \sum__0_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \sum__0_carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \sum__0_carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \sum__0_carry__5\ : label is 35;
  attribute ADDER_THRESHOLD of \sum__0_carry__6\ : label is 35;
  attribute SOFT_HLUTNM of \sum__0_carry_i_10\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \y_carry__2_i_5\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of y_carry_i_6 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of y_carry_i_7 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of y_carry_i_8 : label is "soft_lutpair2";
begin
  \ALUControl__0\(0) <= \^alucontrol__0\(0);
  CO(0) <= \^co\(0);
  ImmSrc(2 downto 0) <= \^immsrc\(2 downto 0);
  \q_reg[30]\(0) <= \^q_reg[30]\(0);
  \q_reg[5]_1\ <= \^q_reg[5]_1\;
\ALUResult[0]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3330B888"
    )
        port map (
      I0 => sum(0),
      I1 => \addressM[1]\,
      I2 => SrcB(0),
      I3 => SrcA(0),
      I4 => \addressM[1]_0\,
      O => \q_reg[0]\
    );
\ALUResult[0]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0E040E040E04"
    )
        port map (
      I0 => ALUControl(0),
      I1 => \^co\(0),
      I2 => \^alucontrol__0\(0),
      I3 => \^q_reg[30]\(0),
      I4 => \ALUResult[0]_INST_0_i_4\,
      I5 => \ALUResult[0]_INST_0_i_4_0\,
      O => \ALUResult[30]_INST_0_i_8\
    );
\ALUResult[10]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3B383808"
    )
        port map (
      I0 => sum(10),
      I1 => \addressM[1]\,
      I2 => \addressM[1]_0\,
      I3 => SrcB(10),
      I4 => SrcA(10),
      O => \q_reg[10]\
    );
\ALUResult[11]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3B383808"
    )
        port map (
      I0 => sum(11),
      I1 => \addressM[1]\,
      I2 => \addressM[1]_0\,
      I3 => SrcB(11),
      I4 => SrcA(11),
      O => \q_reg[11]\
    );
\ALUResult[12]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3B383808"
    )
        port map (
      I0 => sum(12),
      I1 => \addressM[1]\,
      I2 => \addressM[1]_0\,
      I3 => SrcB(12),
      I4 => SrcA(12),
      O => \q_reg[12]\
    );
\ALUResult[13]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3B383808"
    )
        port map (
      I0 => sum(13),
      I1 => \addressM[1]\,
      I2 => \addressM[1]_0\,
      I3 => SrcB(13),
      I4 => SrcA(13),
      O => \q_reg[13]\
    );
\ALUResult[14]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3B383808"
    )
        port map (
      I0 => sum(14),
      I1 => \addressM[1]\,
      I2 => \addressM[1]_0\,
      I3 => SrcB(14),
      I4 => SrcA(14),
      O => \q_reg[14]\
    );
\ALUResult[15]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3B383808"
    )
        port map (
      I0 => sum(15),
      I1 => \addressM[1]\,
      I2 => \addressM[1]_0\,
      I3 => SrcB(15),
      I4 => SrcA(15),
      O => \q_reg[15]\
    );
\ALUResult[16]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3B383808"
    )
        port map (
      I0 => sum(16),
      I1 => \addressM[1]\,
      I2 => \addressM[1]_0\,
      I3 => SrcB(16),
      I4 => SrcA(16),
      O => \q_reg[16]\
    );
\ALUResult[17]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3B383808"
    )
        port map (
      I0 => sum(17),
      I1 => \addressM[1]\,
      I2 => \addressM[1]_0\,
      I3 => SrcB(17),
      I4 => SrcA(17),
      O => \q_reg[17]\
    );
\ALUResult[18]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3B383808"
    )
        port map (
      I0 => sum(18),
      I1 => \addressM[1]\,
      I2 => \addressM[1]_0\,
      I3 => SrcB(18),
      I4 => SrcA(18),
      O => \q_reg[18]\
    );
\ALUResult[19]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3B383808"
    )
        port map (
      I0 => sum(19),
      I1 => \addressM[1]\,
      I2 => \addressM[1]_0\,
      I3 => SrcB(19),
      I4 => SrcA(19),
      O => \q_reg[19]\
    );
\ALUResult[1]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3330B888"
    )
        port map (
      I0 => sum(1),
      I1 => \addressM[1]\,
      I2 => SrcB(1),
      I3 => SrcA(1),
      I4 => \addressM[1]_0\,
      O => \q_reg[1]\
    );
\ALUResult[20]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3B383808"
    )
        port map (
      I0 => sum(20),
      I1 => \addressM[1]\,
      I2 => \addressM[1]_0\,
      I3 => SrcB(20),
      I4 => SrcA(20),
      O => \q_reg[20]\
    );
\ALUResult[21]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3B383808"
    )
        port map (
      I0 => sum(21),
      I1 => \addressM[1]\,
      I2 => \addressM[1]_0\,
      I3 => SrcB(21),
      I4 => SrcA(21),
      O => \q_reg[21]\
    );
\ALUResult[22]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3B383808"
    )
        port map (
      I0 => sum(22),
      I1 => \addressM[1]\,
      I2 => \addressM[1]_0\,
      I3 => SrcB(22),
      I4 => SrcA(22),
      O => \q_reg[22]\
    );
\ALUResult[23]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3B383808"
    )
        port map (
      I0 => sum(23),
      I1 => \addressM[1]\,
      I2 => \addressM[1]_0\,
      I3 => SrcB(23),
      I4 => SrcA(23),
      O => \q_reg[23]\
    );
\ALUResult[24]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3B383808"
    )
        port map (
      I0 => sum(24),
      I1 => \addressM[1]\,
      I2 => \addressM[1]_0\,
      I3 => SrcB(24),
      I4 => SrcA(24),
      O => \q_reg[24]\
    );
\ALUResult[25]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEEEAAAA"
    )
        port map (
      I0 => \addressM[25]\,
      I1 => \ALUResult[25]_INST_0_i_2_n_0\,
      I2 => \addressM[25]_0\,
      I3 => \addressM[25]_1\,
      I4 => \addressM[25]_2\,
      O => \ALUResult[31]_INST_0_i_5\
    );
\ALUResult[25]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3B383808"
    )
        port map (
      I0 => sum(25),
      I1 => \addressM[1]\,
      I2 => \addressM[1]_0\,
      I3 => SrcB(25),
      I4 => SrcA(25),
      O => \ALUResult[25]_INST_0_i_2_n_0\
    );
\ALUResult[26]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3B383808"
    )
        port map (
      I0 => sum(26),
      I1 => \addressM[1]\,
      I2 => \addressM[1]_0\,
      I3 => SrcB(26),
      I4 => SrcA(26),
      O => \q_reg[26]\
    );
\ALUResult[27]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEEEAAAA"
    )
        port map (
      I0 => \addressM[27]\,
      I1 => \ALUResult[27]_INST_0_i_2_n_0\,
      I2 => \addressM[27]_0\,
      I3 => \addressM[25]_1\,
      I4 => \addressM[25]_2\,
      O => \ALUResult[31]_INST_0_i_5_0\
    );
\ALUResult[27]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3B383808"
    )
        port map (
      I0 => sum(27),
      I1 => \addressM[1]\,
      I2 => \addressM[1]_0\,
      I3 => SrcB(27),
      I4 => SrcA(27),
      O => \ALUResult[27]_INST_0_i_2_n_0\
    );
\ALUResult[28]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3B383808"
    )
        port map (
      I0 => sum(28),
      I1 => \addressM[1]\,
      I2 => \addressM[1]_0\,
      I3 => SrcB(28),
      I4 => SrcA(28),
      O => \q_reg[28]\
    );
\ALUResult[29]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3B383808"
    )
        port map (
      I0 => sum(29),
      I1 => \addressM[1]\,
      I2 => \addressM[1]_0\,
      I3 => SrcB(29),
      I4 => SrcA(29),
      O => \q_reg[29]\
    );
\ALUResult[2]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3B383808"
    )
        port map (
      I0 => sum(2),
      I1 => \addressM[1]\,
      I2 => \addressM[1]_0\,
      I3 => SrcB(2),
      I4 => SrcA(2),
      O => \q_reg[2]\
    );
\ALUResult[30]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEEEAAAA"
    )
        port map (
      I0 => \addressM[30]\,
      I1 => \ALUResult[30]_INST_0_i_2_n_0\,
      I2 => \addressM[30]_0\,
      I3 => \addressM[25]_1\,
      I4 => \addressM[25]_2\,
      O => \ALUResult[31]_INST_0_i_5_1\
    );
\ALUResult[30]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3B383808"
    )
        port map (
      I0 => sum(30),
      I1 => \addressM[1]\,
      I2 => \addressM[1]_0\,
      I3 => SrcA(30),
      I4 => SrcB(30),
      O => \ALUResult[30]_INST_0_i_2_n_0\
    );
\ALUResult[31]_INST_0_i_19\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AABF"
    )
        port map (
      I0 => Instr(0),
      I1 => Instr(2),
      I2 => Instr(3),
      I3 => Instr(4),
      O => ALUSrc
    );
\ALUResult[31]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3B383808"
    )
        port map (
      I0 => sum(31),
      I1 => \addressM[1]\,
      I2 => \addressM[1]_0\,
      I3 => \SrcA__0\(0),
      I4 => SrcB(31),
      O => \q_reg[31]\
    );
\ALUResult[3]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3B383808"
    )
        port map (
      I0 => sum(3),
      I1 => \addressM[1]\,
      I2 => \addressM[1]_0\,
      I3 => SrcB(3),
      I4 => SrcA(3),
      O => \q_reg[3]\
    );
\ALUResult[4]_INST_0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3B383808"
    )
        port map (
      I0 => sum(4),
      I1 => \addressM[1]\,
      I2 => \addressM[1]_0\,
      I3 => SrcB(4),
      I4 => SrcA(4),
      O => \q_reg[4]\
    );
\ALUResult[5]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3B383808"
    )
        port map (
      I0 => sum(5),
      I1 => \addressM[1]\,
      I2 => \addressM[1]_0\,
      I3 => SrcB(5),
      I4 => SrcA(5),
      O => \q_reg[5]\
    );
\ALUResult[6]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3B383808"
    )
        port map (
      I0 => sum(6),
      I1 => \addressM[1]\,
      I2 => \addressM[1]_0\,
      I3 => SrcB(6),
      I4 => SrcA(6),
      O => \q_reg[6]\
    );
\ALUResult[7]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3B383808"
    )
        port map (
      I0 => sum(7),
      I1 => \addressM[1]\,
      I2 => \addressM[1]_0\,
      I3 => SrcB(7),
      I4 => SrcA(7),
      O => \q_reg[7]\
    );
\ALUResult[8]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3B383808"
    )
        port map (
      I0 => sum(8),
      I1 => \addressM[1]\,
      I2 => \addressM[1]_0\,
      I3 => SrcB(8),
      I4 => SrcA(8),
      O => \q_reg[8]\
    );
\ALUResult[9]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3B383808"
    )
        port map (
      I0 => sum(9),
      I1 => \addressM[1]\,
      I2 => \addressM[1]_0\,
      I3 => SrcB(9),
      I4 => SrcA(9),
      O => \q_reg[9]\
    );
\WriteData[7]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => Instr(18),
      I1 => Instr(14),
      I2 => Instr(15),
      I3 => Instr(16),
      I4 => Instr(17),
      O => \rd21__3\
    );
lt_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => lt_carry_n_0,
      CO(2) => lt_carry_n_1,
      CO(1) => lt_carry_n_2,
      CO(0) => lt_carry_n_3,
      CYINIT => '0',
      DI(3 downto 0) => DI(3 downto 0),
      O(3 downto 0) => NLW_lt_carry_O_UNCONNECTED(3 downto 0),
      S(3 downto 0) => S(3 downto 0)
    );
\lt_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => lt_carry_n_0,
      CO(3) => \lt_carry__0_n_0\,
      CO(2) => \lt_carry__0_n_1\,
      CO(1) => \lt_carry__0_n_2\,
      CO(0) => \lt_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \ltu_carry__1_0\(3 downto 0),
      O(3 downto 0) => \NLW_lt_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => \lt_carry__1_0\(3 downto 0)
    );
\lt_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \lt_carry__0_n_0\,
      CO(3) => \lt_carry__1_n_0\,
      CO(2) => \lt_carry__1_n_1\,
      CO(1) => \lt_carry__1_n_2\,
      CO(0) => \lt_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \ltu_carry__2_0\(3 downto 0),
      O(3 downto 0) => \NLW_lt_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => \lt_carry__2_0\(3 downto 0)
    );
\lt_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \lt_carry__1_n_0\,
      CO(3) => \^co\(0),
      CO(2) => \lt_carry__2_n_1\,
      CO(1) => \lt_carry__2_n_2\,
      CO(0) => \lt_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \q[31]_i_6\(3 downto 0),
      O(3 downto 0) => \NLW_lt_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => \q[31]_i_6_0\(3 downto 0)
    );
lt_carry_i_10: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => Instr(3),
      I1 => Instr(0),
      O => \^q_reg[5]_1\
    );
lt_carry_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(12),
      I1 => Instr(11),
      I2 => Instr(10),
      I3 => Instr(9),
      I4 => Instr(13),
      I5 => \^q_reg[5]_1\,
      O => \q_reg[5]_3\
    );
ltu_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => ltu_carry_n_0,
      CO(2) => ltu_carry_n_1,
      CO(1) => ltu_carry_n_2,
      CO(0) => ltu_carry_n_3,
      CYINIT => '0',
      DI(3 downto 0) => DI(3 downto 0),
      O(3 downto 0) => NLW_ltu_carry_O_UNCONNECTED(3 downto 0),
      S(3 downto 0) => \ltu_carry__0_0\(3 downto 0)
    );
\ltu_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => ltu_carry_n_0,
      CO(3) => \ltu_carry__0_n_0\,
      CO(2) => \ltu_carry__0_n_1\,
      CO(1) => \ltu_carry__0_n_2\,
      CO(0) => \ltu_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \ltu_carry__1_0\(3 downto 0),
      O(3 downto 0) => \NLW_ltu_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => \ltu_carry__1_1\(3 downto 0)
    );
\ltu_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ltu_carry__0_n_0\,
      CO(3) => \ltu_carry__1_n_0\,
      CO(2) => \ltu_carry__1_n_1\,
      CO(1) => \ltu_carry__1_n_2\,
      CO(0) => \ltu_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \ltu_carry__2_0\(3 downto 0),
      O(3 downto 0) => \NLW_ltu_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => \ltu_carry__2_1\(3 downto 0)
    );
\ltu_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \ltu_carry__1_n_0\,
      CO(3) => \^q_reg[30]\(0),
      CO(2) => \ltu_carry__2_n_1\,
      CO(1) => \ltu_carry__2_n_2\,
      CO(0) => \ltu_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \q[31]_i_6_1\(0),
      DI(2 downto 0) => \q[31]_i_6\(2 downto 0),
      O(3 downto 0) => \NLW_ltu_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => \q[31]_i_6_2\(3 downto 0)
    );
\sum__0_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \sum__0_carry_n_0\,
      CO(2) => \sum__0_carry_n_1\,
      CO(1) => \sum__0_carry_n_2\,
      CO(0) => \sum__0_carry_n_3\,
      CYINIT => \ALUResult[0]_INST_0_i_3_0\,
      DI(3 downto 0) => SrcA(3 downto 0),
      O(3 downto 0) => sum(3 downto 0),
      S(3 downto 0) => \ALUResult[0]_INST_0_i_3_1\(3 downto 0)
    );
\sum__0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum__0_carry_n_0\,
      CO(3) => \sum__0_carry__0_n_0\,
      CO(2) => \sum__0_carry__0_n_1\,
      CO(1) => \sum__0_carry__0_n_2\,
      CO(0) => \sum__0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => SrcA(7 downto 4),
      O(3 downto 0) => sum(7 downto 4),
      S(3 downto 0) => \ALUResult[4]_INST_0_i_4_0\(3 downto 0)
    );
\sum__0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum__0_carry__0_n_0\,
      CO(3) => \sum__0_carry__1_n_0\,
      CO(2) => \sum__0_carry__1_n_1\,
      CO(1) => \sum__0_carry__1_n_2\,
      CO(0) => \sum__0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => SrcA(11 downto 8),
      O(3 downto 0) => sum(11 downto 8),
      S(3 downto 0) => \ALUResult[8]_INST_0_i_2_0\(3 downto 0)
    );
\sum__0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum__0_carry__1_n_0\,
      CO(3) => \sum__0_carry__2_n_0\,
      CO(2) => \sum__0_carry__2_n_1\,
      CO(1) => \sum__0_carry__2_n_2\,
      CO(0) => \sum__0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => SrcA(15 downto 12),
      O(3 downto 0) => sum(15 downto 12),
      S(3 downto 0) => \ALUResult[12]_INST_0_i_2_0\(3 downto 0)
    );
\sum__0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum__0_carry__2_n_0\,
      CO(3) => \sum__0_carry__3_n_0\,
      CO(2) => \sum__0_carry__3_n_1\,
      CO(1) => \sum__0_carry__3_n_2\,
      CO(0) => \sum__0_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => SrcA(19 downto 16),
      O(3 downto 0) => sum(19 downto 16),
      S(3 downto 0) => \ALUResult[16]_INST_0_i_2_0\(3 downto 0)
    );
\sum__0_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum__0_carry__3_n_0\,
      CO(3) => \sum__0_carry__4_n_0\,
      CO(2) => \sum__0_carry__4_n_1\,
      CO(1) => \sum__0_carry__4_n_2\,
      CO(0) => \sum__0_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => SrcA(23 downto 20),
      O(3 downto 0) => sum(23 downto 20),
      S(3 downto 0) => \ALUResult[20]_INST_0_i_2_0\(3 downto 0)
    );
\sum__0_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum__0_carry__4_n_0\,
      CO(3) => \sum__0_carry__5_n_0\,
      CO(2) => \sum__0_carry__5_n_1\,
      CO(1) => \sum__0_carry__5_n_2\,
      CO(0) => \sum__0_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => SrcA(27 downto 24),
      O(3 downto 0) => sum(27 downto 24),
      S(3 downto 0) => \ALUResult[24]_INST_0_i_2_0\(3 downto 0)
    );
\sum__0_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum__0_carry__5_n_0\,
      CO(3) => \NLW_sum__0_carry__6_CO_UNCONNECTED\(3),
      CO(2) => \sum__0_carry__6_n_1\,
      CO(1) => \sum__0_carry__6_n_2\,
      CO(0) => \sum__0_carry__6_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => SrcA(30 downto 28),
      O(3 downto 0) => sum(31 downto 28),
      S(3 downto 0) => \ALUResult[28]_INST_0_i_2_0\(3 downto 0)
    );
\sum__0_carry_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"803322C0"
    )
        port map (
      I0 => \sum__0_carry_i_12_n_0\,
      I1 => Instr(0),
      I2 => Instr(3),
      I3 => Instr(2),
      I4 => Instr(4),
      O => \^alucontrol__0\(0)
    );
\sum__0_carry_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0FF000F8"
    )
        port map (
      I0 => Instr(19),
      I1 => Instr(3),
      I2 => Instr(6),
      I3 => Instr(7),
      I4 => Instr(8),
      O => \sum__0_carry_i_12_n_0\
    );
\y_carry__1_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCAA0CAA"
    )
        port map (
      I0 => Instr(20),
      I1 => Instr(5),
      I2 => \^immsrc\(0),
      I3 => \^immsrc\(1),
      I4 => Instr(14),
      O => \q_reg[5]_0\
    );
\y_carry__2_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1F"
    )
        port map (
      I0 => Instr(4),
      I1 => Instr(0),
      I2 => Instr(1),
      O => \q_reg[5]_2\
    );
y_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF02"
    )
        port map (
      I0 => Instr(3),
      I1 => Instr(4),
      I2 => Instr(2),
      I3 => Instr(1),
      O => \^immsrc\(0)
    );
y_carry_i_7: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Instr(1),
      I1 => Instr(0),
      I2 => Instr(4),
      O => \^immsrc\(1)
    );
y_carry_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Instr(0),
      I1 => Instr(4),
      O => \^immsrc\(2)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_flopenr is
  port (
    \q_reg[31]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ResultSrc : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ALUResult[31]_INST_0_i_5_0\ : out STD_LOGIC;
    PCSrc10_out : out STD_LOGIC;
    \ALUResult[31]_INST_0_i_5_1\ : out STD_LOGIC;
    \ALUResult[31]_INST_0_i_5_2\ : out STD_LOGIC;
    \q[31]_i_14\ : out STD_LOGIC;
    \ALUResult[31]_INST_0_i_5_3\ : out STD_LOGIC;
    \ALUResult[31]_INST_0_i_5_4\ : out STD_LOGIC;
    \ALUResult[31]_INST_0_i_5_5\ : out STD_LOGIC;
    \ALUResult[31]_INST_0_i_5_6\ : out STD_LOGIC;
    \ALUResult[31]_INST_0_i_5_7\ : out STD_LOGIC;
    \readDataM[14]\ : out STD_LOGIC;
    \q_reg[5]_0\ : out STD_LOGIC;
    \ALUResult[31]_INST_0_i_10_0\ : out STD_LOGIC;
    wd3 : out STD_LOGIC_VECTOR ( 6 downto 0 );
    \sum__0_carry_i_10\ : out STD_LOGIC;
    \ALUResult[14]_INST_0_i_9_0\ : out STD_LOGIC;
    \ALUResult[15]_INST_0_i_9_0\ : out STD_LOGIC;
    \ALUResult[16]_INST_0_i_10_0\ : out STD_LOGIC;
    \q_reg[29]_0\ : out STD_LOGIC;
    \q_reg[27]_0\ : out STD_LOGIC;
    \q_reg[23]_0\ : out STD_LOGIC;
    \readDataM[12]\ : out STD_LOGIC;
    \readDataM[13]\ : out STD_LOGIC;
    \ALUResult[13]_INST_0_i_9_0\ : out STD_LOGIC;
    \ALUResult[12]_INST_0_i_9_0\ : out STD_LOGIC;
    \q_reg[21]_0\ : out STD_LOGIC;
    \ALUResult[31]_INST_0_i_5_8\ : out STD_LOGIC;
    \ALUResult[31]_INST_0_i_9_0\ : out STD_LOGIC;
    \ALUResult[6]_INST_0_i_6_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \q_reg[20]_0\ : out STD_LOGIC;
    \ALUResult[31]_INST_0_i_24_0\ : out STD_LOGIC;
    SrcA : out STD_LOGIC_VECTOR ( 30 downto 0 );
    \ALUResult[31]_INST_0_i_24_1\ : out STD_LOGIC;
    \ALUResult[8]_INST_0_i_9_0\ : out STD_LOGIC;
    \ALUResult[6]_INST_0_i_10_0\ : out STD_LOGIC;
    \ALUResult[9]_INST_0_i_6_0\ : out STD_LOGIC;
    \ALUResult[9]_INST_0_i_9_0\ : out STD_LOGIC;
    \q_reg[18]_0\ : out STD_LOGIC;
    \q_reg[16]_0\ : out STD_LOGIC;
    \readDataM[9]\ : out STD_LOGIC;
    \ALUResult[31]_INST_0_i_5_9\ : out STD_LOGIC;
    \q_reg[2]_0\ : out STD_LOGIC;
    \ALUResult[10]_INST_0_i_9_0\ : out STD_LOGIC;
    \q_reg[19]_0\ : out STD_LOGIC;
    \ALUResult[30]_INST_0_i_8\ : out STD_LOGIC;
    \q_reg[3]_0\ : out STD_LOGIC;
    \ALUResult[31]_INST_0_i_5_10\ : out STD_LOGIC;
    \ALUResult[5]_INST_0_i_9_0\ : out STD_LOGIC;
    \q_reg[6]_0\ : out STD_LOGIC;
    \q_reg[5]_1\ : out STD_LOGIC;
    \ALUResult[31]_INST_0_i_5_11\ : out STD_LOGIC;
    \ALUResult[27]_INST_0_i_8_0\ : out STD_LOGIC;
    \q_reg[27]_1\ : out STD_LOGIC;
    \q_reg[25]_0\ : out STD_LOGIC;
    \q_reg[26]_0\ : out STD_LOGIC;
    \ALUResult[28]_INST_0_i_8_0\ : out STD_LOGIC;
    \ALUResult[29]_INST_0_i_10_0\ : out STD_LOGIC;
    \ALUResult[31]_INST_0_i_5_12\ : out STD_LOGIC;
    \ALUResult[25]_INST_0_i_10_0\ : out STD_LOGIC;
    \ALUResult[19]_INST_0_i_11_0\ : out STD_LOGIC;
    \ALUResult[20]_INST_0_i_7_0\ : out STD_LOGIC;
    \ALUResult[19]_INST_0_i_7_0\ : out STD_LOGIC;
    \ALUResult[18]_INST_0_i_10_0\ : out STD_LOGIC;
    \q_reg[31]_1\ : out STD_LOGIC;
    \ALUResult[30]_INST_0_i_8_0\ : out STD_LOGIC;
    \ALUResult[30]_INST_0_i_8_1\ : out STD_LOGIC;
    \ALUResult[24]_INST_0_i_8_0\ : out STD_LOGIC;
    \ALUResult[30]_INST_0_i_10_0\ : out STD_LOGIC;
    \ALUResult[31]_INST_0_i_30_0\ : out STD_LOGIC;
    \q_reg[24]_0\ : out STD_LOGIC;
    \ALUResult[30]_INST_0_i_11_0\ : out STD_LOGIC;
    \ALUResult[31]_INST_0_i_33_0\ : out STD_LOGIC;
    \q_reg[26]_1\ : out STD_LOGIC;
    \ALUResult[31]_INST_0_i_28_0\ : out STD_LOGIC;
    \q_reg[27]_2\ : out STD_LOGIC;
    \ALUResult[31]_INST_0_i_31_0\ : out STD_LOGIC;
    \q_reg[28]_0\ : out STD_LOGIC;
    \ALUResult[30]_INST_0_i_12_0\ : out STD_LOGIC;
    WriteData : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \q_reg[5]_2\ : out STD_LOGIC;
    \readDataM[16]\ : out STD_LOGIC;
    \readDataM[17]\ : out STD_LOGIC;
    \readDataM[18]\ : out STD_LOGIC;
    \readDataM[19]\ : out STD_LOGIC;
    \readDataM[20]\ : out STD_LOGIC;
    \readDataM[21]\ : out STD_LOGIC;
    \readDataM[22]\ : out STD_LOGIC;
    \readDataM[23]\ : out STD_LOGIC;
    \readDataM[24]\ : out STD_LOGIC;
    \readDataM[25]\ : out STD_LOGIC;
    \readDataM[26]\ : out STD_LOGIC;
    \readDataM[27]\ : out STD_LOGIC;
    \readDataM[28]\ : out STD_LOGIC;
    \readDataM[29]\ : out STD_LOGIC;
    \readDataM[30]\ : out STD_LOGIC;
    \readDataM[31]\ : out STD_LOGIC;
    \readDataM[8]\ : out STD_LOGIC;
    \readDataM[10]\ : out STD_LOGIC;
    \readDataM[11]\ : out STD_LOGIC;
    \SrcA__0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ALUResult[30]_INST_0_i_12_1\ : out STD_LOGIC;
    \q_reg[31]_2\ : out STD_LOGIC;
    \q_reg[30]_0\ : out STD_LOGIC;
    DI : out STD_LOGIC_VECTOR ( 0 to 0 );
    \q_reg[5]_3\ : out STD_LOGIC;
    \q_reg[2]_1\ : out STD_LOGIC;
    \q_reg[5]_4\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ALUResult[31]_INST_0_i_25_0\ : out STD_LOGIC;
    \q_reg[5]_5\ : out STD_LOGIC;
    \q_reg[5]_6\ : out STD_LOGIC;
    \q_reg[5]_7\ : out STD_LOGIC;
    \q_reg[5]_8\ : out STD_LOGIC;
    \q_reg[5]_9\ : out STD_LOGIC;
    \q_reg[5]_10\ : out STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[7]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[11]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[15]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[19]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[23]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[27]_3\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \ALUResult[30]_INST_0_i_8_2\ : out STD_LOGIC;
    \ALUResult[30]_INST_0_i_8_3\ : out STD_LOGIC;
    \readDataM[22]_0\ : out STD_LOGIC;
    \readDataM[21]_0\ : out STD_LOGIC;
    \readDataM[20]_0\ : out STD_LOGIC;
    \readDataM[19]_0\ : out STD_LOGIC;
    Instr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    D : in STD_LOGIC_VECTOR ( 28 downto 0 );
    \q_reg[0]_0\ : in STD_LOGIC;
    PCTarget : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \q[31]_i_2\ : in STD_LOGIC;
    \q[31]_i_2_0\ : in STD_LOGIC;
    ReadData : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \addressM[14]\ : in STD_LOGIC;
    \addressM[14]_0\ : in STD_LOGIC;
    \addressM[14]_1\ : in STD_LOGIC;
    \addressM[14]_2\ : in STD_LOGIC;
    PCPlus4 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    rf_reg_r1_0_31_18_23 : in STD_LOGIC_VECTOR ( 0 to 0 );
    \addressM[15]\ : in STD_LOGIC;
    \addressM[15]_0\ : in STD_LOGIC;
    SrcB : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \ALUResult[12]_INST_0_i_1\ : in STD_LOGIC;
    \addressM[12]\ : in STD_LOGIC;
    \addressM[12]_0\ : in STD_LOGIC;
    \addressM[13]\ : in STD_LOGIC;
    \addressM[13]_0\ : in STD_LOGIC;
    \addressM[2]\ : in STD_LOGIC;
    \addressM[2]_0\ : in STD_LOGIC;
    \addressM[2]_1\ : in STD_LOGIC;
    \addressM[3]\ : in STD_LOGIC;
    \addressM[3]_0\ : in STD_LOGIC;
    \addressM[3]_1\ : in STD_LOGIC;
    \addressM[7]\ : in STD_LOGIC;
    \addressM[7]_0\ : in STD_LOGIC;
    \addressM[9]\ : in STD_LOGIC;
    \addressM[9]_0\ : in STD_LOGIC;
    \ALUResult[5]_INST_0_i_3_0\ : in STD_LOGIC;
    \addressM[4]\ : in STD_LOGIC;
    \addressM[4]_0\ : in STD_LOGIC;
    \addressM[4]_1\ : in STD_LOGIC;
    rf_reg_r1_0_31_18_23_0 : in STD_LOGIC;
    \addressM[20]\ : in STD_LOGIC;
    rf_reg_r1_0_31_18_23_1 : in STD_LOGIC;
    \addressM[19]\ : in STD_LOGIC;
    \addressM[19]_0\ : in STD_LOGIC;
    \rd21__3\ : in STD_LOGIC;
    rd20 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    rd2 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \rf_reg_r1_0_31_30_31_i_1__0\ : in STD_LOGIC;
    \addressM[0]\ : in STD_LOGIC;
    \addressM[0]_0\ : in STD_LOGIC;
    \addressM[0]_1\ : in STD_LOGIC;
    \addressM[1]\ : in STD_LOGIC;
    \addressM[1]_0\ : in STD_LOGIC;
    \addressM[1]_1\ : in STD_LOGIC;
    rd10 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \ALUControl__0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \ALUResult[31]_INST_0_i_4_0\ : in STD_LOGIC;
    rf_reg_r1_0_31_6_11 : in STD_LOGIC;
    rf_reg_r1_0_31_6_11_0 : in STD_LOGIC;
    ImmSrc : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \y_carry__1\ : in STD_LOGIC;
    \y_carry__3\ : in STD_LOGIC;
    PCReady : in STD_LOGIC;
    clk : in STD_LOGIC;
    reset : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_flopenr;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_flopenr is
  signal ALUControl : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \ALUResult[0]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \ALUResult[0]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \ALUResult[0]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \ALUResult[0]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \ALUResult[0]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \ALUResult[10]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \^aluresult[10]_inst_0_i_9_0\ : STD_LOGIC;
  signal \ALUResult[11]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \ALUResult[11]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \ALUResult[12]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \ALUResult[12]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult[12]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \ALUResult[12]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \^aluresult[12]_inst_0_i_9_0\ : STD_LOGIC;
  signal \ALUResult[13]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult[13]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \ALUResult[13]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \^aluresult[13]_inst_0_i_9_0\ : STD_LOGIC;
  signal \ALUResult[14]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \ALUResult[14]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult[14]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \ALUResult[14]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \^aluresult[14]_inst_0_i_9_0\ : STD_LOGIC;
  signal \ALUResult[14]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \ALUResult[15]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \ALUResult[15]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult[15]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \ALUResult[15]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \^aluresult[15]_inst_0_i_9_0\ : STD_LOGIC;
  signal \^aluresult[16]_inst_0_i_10_0\ : STD_LOGIC;
  signal \ALUResult[16]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \ALUResult[16]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \ALUResult[16]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \ALUResult[16]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \ALUResult[17]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \ALUResult[17]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \^aluresult[18]_inst_0_i_10_0\ : STD_LOGIC;
  signal \ALUResult[18]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \ALUResult[18]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \ALUResult[18]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \^aluresult[19]_inst_0_i_11_0\ : STD_LOGIC;
  signal \ALUResult[19]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \ALUResult[19]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult[19]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \ALUResult[1]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \ALUResult[1]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \ALUResult[1]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \ALUResult[20]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \ALUResult[20]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult[20]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \^aluresult[20]_inst_0_i_7_0\ : STD_LOGIC;
  signal \ALUResult[20]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \ALUResult[20]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \ALUResult[21]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \ALUResult[22]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \ALUResult[23]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \^aluresult[24]_inst_0_i_8_0\ : STD_LOGIC;
  signal \ALUResult[24]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \^aluresult[25]_inst_0_i_10_0\ : STD_LOGIC;
  signal \ALUResult[25]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \ALUResult[26]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \^aluresult[27]_inst_0_i_8_0\ : STD_LOGIC;
  signal \ALUResult[27]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \ALUResult[28]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \ALUResult[29]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \ALUResult[2]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \ALUResult[2]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \ALUResult[2]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \ALUResult[30]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \ALUResult[30]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \ALUResult[30]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \^aluresult[31]_inst_0_i_10_0\ : STD_LOGIC;
  signal \ALUResult[31]_INST_0_i_18_n_0\ : STD_LOGIC;
  signal \^aluresult[31]_inst_0_i_24_0\ : STD_LOGIC;
  signal \^aluresult[31]_inst_0_i_24_1\ : STD_LOGIC;
  signal \^aluresult[31]_inst_0_i_25_0\ : STD_LOGIC;
  signal \^aluresult[31]_inst_0_i_5_0\ : STD_LOGIC;
  signal \^aluresult[31]_inst_0_i_5_1\ : STD_LOGIC;
  signal \^aluresult[31]_inst_0_i_5_11\ : STD_LOGIC;
  signal \^aluresult[31]_inst_0_i_5_12\ : STD_LOGIC;
  signal \^aluresult[31]_inst_0_i_5_2\ : STD_LOGIC;
  signal \^aluresult[31]_inst_0_i_5_3\ : STD_LOGIC;
  signal \^aluresult[31]_inst_0_i_5_4\ : STD_LOGIC;
  signal \^aluresult[31]_inst_0_i_5_5\ : STD_LOGIC;
  signal \^aluresult[31]_inst_0_i_5_6\ : STD_LOGIC;
  signal \^aluresult[31]_inst_0_i_5_7\ : STD_LOGIC;
  signal \^aluresult[31]_inst_0_i_5_8\ : STD_LOGIC;
  signal \^aluresult[31]_inst_0_i_5_9\ : STD_LOGIC;
  signal \^aluresult[31]_inst_0_i_9_0\ : STD_LOGIC;
  signal \ALUResult[3]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \ALUResult[3]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \ALUResult[3]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \ALUResult[4]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \ALUResult[4]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \ALUResult[4]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \ALUResult[5]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \^aluresult[5]_inst_0_i_9_0\ : STD_LOGIC;
  signal \ALUResult[5]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \^aluresult[6]_inst_0_i_10_0\ : STD_LOGIC;
  signal \ALUResult[6]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \^aluresult[6]_inst_0_i_6_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \ALUResult[7]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \^aluresult[8]_inst_0_i_9_0\ : STD_LOGIC;
  signal \ALUResult[9]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult[9]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \^aluresult[9]_inst_0_i_9_0\ : STD_LOGIC;
  signal \ALUResult[9]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal PCNext : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^pcsrc10_out\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^resultsrc\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^srca\ : STD_LOGIC_VECTOR ( 30 downto 0 );
  signal \^srca__0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \WriteData[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \WriteData[10]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \WriteData[11]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \WriteData[12]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \WriteData[13]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \WriteData[14]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \WriteData[15]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \WriteData[15]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \WriteData[15]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \WriteData[15]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \WriteData[1]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \WriteData[23]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \WriteData[23]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \WriteData[2]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \WriteData[31]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \WriteData[31]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \WriteData[31]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \WriteData[31]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \WriteData[3]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \WriteData[4]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \WriteData[5]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \WriteData[6]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \WriteData[7]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \WriteData[7]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \WriteData[7]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \WriteData[8]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \WriteData[9]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \c/ALUOp\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal data0 : STD_LOGIC_VECTOR ( 31 to 31 );
  signal \main_alu/data6\ : STD_LOGIC_VECTOR ( 20 downto 0 );
  signal \q[31]_i_12_n_0\ : STD_LOGIC;
  signal \q[31]_i_13_n_0\ : STD_LOGIC;
  signal \^q_reg[16]_0\ : STD_LOGIC;
  signal \^q_reg[18]_0\ : STD_LOGIC;
  signal \^q_reg[19]_0\ : STD_LOGIC;
  signal \^q_reg[20]_0\ : STD_LOGIC;
  signal \^q_reg[21]_0\ : STD_LOGIC;
  signal \^q_reg[23]_0\ : STD_LOGIC;
  signal \^q_reg[24]_0\ : STD_LOGIC;
  signal \^q_reg[25]_0\ : STD_LOGIC;
  signal \^q_reg[26]_0\ : STD_LOGIC;
  signal \^q_reg[26]_1\ : STD_LOGIC;
  signal \^q_reg[27]_0\ : STD_LOGIC;
  signal \^q_reg[27]_1\ : STD_LOGIC;
  signal \^q_reg[27]_2\ : STD_LOGIC;
  signal \^q_reg[28]_0\ : STD_LOGIC;
  signal \^q_reg[29]_0\ : STD_LOGIC;
  signal \^q_reg[2]_0\ : STD_LOGIC;
  signal \^q_reg[31]_1\ : STD_LOGIC;
  signal \^q_reg[3]_0\ : STD_LOGIC;
  signal \^q_reg[5]_0\ : STD_LOGIC;
  signal \^q_reg[5]_1\ : STD_LOGIC;
  signal \^q_reg[5]_2\ : STD_LOGIC;
  signal \^q_reg[5]_3\ : STD_LOGIC;
  signal \^q_reg[5]_4\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^q_reg[5]_5\ : STD_LOGIC;
  signal \^q_reg[5]_6\ : STD_LOGIC;
  signal \^q_reg[6]_0\ : STD_LOGIC;
  signal \rf/rd11__3\ : STD_LOGIC;
  signal rf_reg_r1_0_31_0_5_i_10_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_31_0_5_i_12_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_31_0_5_i_13_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_31_0_5_i_16_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_31_0_5_i_17_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_31_0_5_i_22_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_31_0_5_i_23_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_31_0_5_i_24_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_31_0_5_i_25_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_31_0_5_i_26_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_31_0_5_i_27_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_31_0_5_i_28_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_31_0_5_i_29_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_31_0_5_i_30_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_31_0_5_i_31_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_31_0_5_i_32_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_31_0_5_i_33_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_31_0_5_i_9_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_31_12_17_i_10_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_31_12_17_i_16_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_31_12_17_i_17_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_31_12_17_i_19_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_31_12_17_i_21_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_31_12_17_i_22_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_31_12_17_i_9_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_31_6_11_i_15_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_31_6_11_i_16_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_31_6_11_i_17_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_31_6_11_i_18_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_31_6_11_i_19_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_31_6_11_i_8_n_0 : STD_LOGIC;
  signal \^sum__0_carry_i_10\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ALUResult[0]_INST_0_i_6\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \ALUResult[10]_INST_0_i_9\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \ALUResult[11]_INST_0_i_11\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \ALUResult[12]_INST_0_i_3\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \ALUResult[12]_INST_0_i_8\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \ALUResult[12]_INST_0_i_9\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \ALUResult[13]_INST_0_i_3\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \ALUResult[13]_INST_0_i_4\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \ALUResult[13]_INST_0_i_9\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \ALUResult[14]_INST_0_i_3\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \ALUResult[14]_INST_0_i_4\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \ALUResult[14]_INST_0_i_9\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \ALUResult[15]_INST_0_i_10\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \ALUResult[15]_INST_0_i_3\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \ALUResult[15]_INST_0_i_9\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \ALUResult[16]_INST_0_i_10\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \ALUResult[16]_INST_0_i_11\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \ALUResult[16]_INST_0_i_3\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \ALUResult[16]_INST_0_i_9\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \ALUResult[17]_INST_0_i_11\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \ALUResult[17]_INST_0_i_3\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \ALUResult[17]_INST_0_i_9\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \ALUResult[18]_INST_0_i_10\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \ALUResult[18]_INST_0_i_11\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \ALUResult[18]_INST_0_i_4\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \ALUResult[18]_INST_0_i_9\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \ALUResult[19]_INST_0_i_10\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \ALUResult[19]_INST_0_i_11\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \ALUResult[19]_INST_0_i_12\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \ALUResult[19]_INST_0_i_4\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \ALUResult[19]_INST_0_i_6\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \ALUResult[20]_INST_0_i_8\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \ALUResult[21]_INST_0_i_8\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \ALUResult[22]_INST_0_i_8\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \ALUResult[23]_INST_0_i_8\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \ALUResult[24]_INST_0_i_8\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \ALUResult[25]_INST_0_i_10\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \ALUResult[26]_INST_0_i_11\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \ALUResult[27]_INST_0_i_8\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \ALUResult[28]_INST_0_i_8\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \ALUResult[29]_INST_0_i_10\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \ALUResult[2]_INST_0_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \ALUResult[30]_INST_0_i_10\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \ALUResult[30]_INST_0_i_4\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \ALUResult[30]_INST_0_i_6\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \ALUResult[31]_INST_0_i_10\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \ALUResult[31]_INST_0_i_12\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \ALUResult[31]_INST_0_i_13\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \ALUResult[31]_INST_0_i_15\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \ALUResult[31]_INST_0_i_22\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \ALUResult[31]_INST_0_i_23\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \ALUResult[31]_INST_0_i_27\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \ALUResult[31]_INST_0_i_5\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \ALUResult[3]_INST_0_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \ALUResult[4]_INST_0_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \ALUResult[4]_INST_0_i_2\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \ALUResult[7]_INST_0_i_5\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \ALUResult[8]_INST_0_i_4\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \ALUResult[8]_INST_0_i_9\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \ALUResult[9]_INST_0_i_4\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \WriteData[15]_INST_0_i_2\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \WriteData[15]_INST_0_i_3\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \WriteData[15]_INST_0_i_4\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \WriteData[23]_INST_0_i_4\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \WriteData[23]_INST_0_i_5\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \WriteData[31]_INST_0_i_2\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \WriteData[31]_INST_0_i_5\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \WriteData[31]_INST_0_i_7\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \WriteData[31]_INST_0_i_8\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \WriteData[7]_INST_0_i_3\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \WriteData[7]_INST_0_i_4\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \q[31]_i_10\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \q[31]_i_3\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \q[31]_i_5\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \q[31]_i_9\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of rf_reg_r1_0_31_0_5_i_22 : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of rf_reg_r1_0_31_0_5_i_23 : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of rf_reg_r1_0_31_0_5_i_24 : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of rf_reg_r1_0_31_0_5_i_25 : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of rf_reg_r1_0_31_12_17_i_21 : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of rf_reg_r1_0_31_12_17_i_22 : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of y_carry_i_5 : label is "soft_lutpair18";
begin
  \ALUResult[10]_INST_0_i_9_0\ <= \^aluresult[10]_inst_0_i_9_0\;
  \ALUResult[12]_INST_0_i_9_0\ <= \^aluresult[12]_inst_0_i_9_0\;
  \ALUResult[13]_INST_0_i_9_0\ <= \^aluresult[13]_inst_0_i_9_0\;
  \ALUResult[14]_INST_0_i_9_0\ <= \^aluresult[14]_inst_0_i_9_0\;
  \ALUResult[15]_INST_0_i_9_0\ <= \^aluresult[15]_inst_0_i_9_0\;
  \ALUResult[16]_INST_0_i_10_0\ <= \^aluresult[16]_inst_0_i_10_0\;
  \ALUResult[18]_INST_0_i_10_0\ <= \^aluresult[18]_inst_0_i_10_0\;
  \ALUResult[19]_INST_0_i_11_0\ <= \^aluresult[19]_inst_0_i_11_0\;
  \ALUResult[20]_INST_0_i_7_0\ <= \^aluresult[20]_inst_0_i_7_0\;
  \ALUResult[24]_INST_0_i_8_0\ <= \^aluresult[24]_inst_0_i_8_0\;
  \ALUResult[25]_INST_0_i_10_0\ <= \^aluresult[25]_inst_0_i_10_0\;
  \ALUResult[27]_INST_0_i_8_0\ <= \^aluresult[27]_inst_0_i_8_0\;
  \ALUResult[31]_INST_0_i_10_0\ <= \^aluresult[31]_inst_0_i_10_0\;
  \ALUResult[31]_INST_0_i_24_0\ <= \^aluresult[31]_inst_0_i_24_0\;
  \ALUResult[31]_INST_0_i_24_1\ <= \^aluresult[31]_inst_0_i_24_1\;
  \ALUResult[31]_INST_0_i_25_0\ <= \^aluresult[31]_inst_0_i_25_0\;
  \ALUResult[31]_INST_0_i_5_0\ <= \^aluresult[31]_inst_0_i_5_0\;
  \ALUResult[31]_INST_0_i_5_1\ <= \^aluresult[31]_inst_0_i_5_1\;
  \ALUResult[31]_INST_0_i_5_11\ <= \^aluresult[31]_inst_0_i_5_11\;
  \ALUResult[31]_INST_0_i_5_12\ <= \^aluresult[31]_inst_0_i_5_12\;
  \ALUResult[31]_INST_0_i_5_2\ <= \^aluresult[31]_inst_0_i_5_2\;
  \ALUResult[31]_INST_0_i_5_3\ <= \^aluresult[31]_inst_0_i_5_3\;
  \ALUResult[31]_INST_0_i_5_4\ <= \^aluresult[31]_inst_0_i_5_4\;
  \ALUResult[31]_INST_0_i_5_5\ <= \^aluresult[31]_inst_0_i_5_5\;
  \ALUResult[31]_INST_0_i_5_6\ <= \^aluresult[31]_inst_0_i_5_6\;
  \ALUResult[31]_INST_0_i_5_7\ <= \^aluresult[31]_inst_0_i_5_7\;
  \ALUResult[31]_INST_0_i_5_8\ <= \^aluresult[31]_inst_0_i_5_8\;
  \ALUResult[31]_INST_0_i_5_9\ <= \^aluresult[31]_inst_0_i_5_9\;
  \ALUResult[31]_INST_0_i_9_0\ <= \^aluresult[31]_inst_0_i_9_0\;
  \ALUResult[5]_INST_0_i_9_0\ <= \^aluresult[5]_inst_0_i_9_0\;
  \ALUResult[6]_INST_0_i_10_0\ <= \^aluresult[6]_inst_0_i_10_0\;
  \ALUResult[6]_INST_0_i_6_0\(0) <= \^aluresult[6]_inst_0_i_6_0\(0);
  \ALUResult[8]_INST_0_i_9_0\ <= \^aluresult[8]_inst_0_i_9_0\;
  \ALUResult[9]_INST_0_i_9_0\ <= \^aluresult[9]_inst_0_i_9_0\;
  PCSrc10_out <= \^pcsrc10_out\;
  Q(31 downto 0) <= \^q\(31 downto 0);
  ResultSrc(0) <= \^resultsrc\(0);
  SrcA(30 downto 0) <= \^srca\(30 downto 0);
  \SrcA__0\(0) <= \^srca__0\(0);
  \q_reg[16]_0\ <= \^q_reg[16]_0\;
  \q_reg[18]_0\ <= \^q_reg[18]_0\;
  \q_reg[19]_0\ <= \^q_reg[19]_0\;
  \q_reg[20]_0\ <= \^q_reg[20]_0\;
  \q_reg[21]_0\ <= \^q_reg[21]_0\;
  \q_reg[23]_0\ <= \^q_reg[23]_0\;
  \q_reg[24]_0\ <= \^q_reg[24]_0\;
  \q_reg[25]_0\ <= \^q_reg[25]_0\;
  \q_reg[26]_0\ <= \^q_reg[26]_0\;
  \q_reg[26]_1\ <= \^q_reg[26]_1\;
  \q_reg[27]_0\ <= \^q_reg[27]_0\;
  \q_reg[27]_1\ <= \^q_reg[27]_1\;
  \q_reg[27]_2\ <= \^q_reg[27]_2\;
  \q_reg[28]_0\ <= \^q_reg[28]_0\;
  \q_reg[29]_0\ <= \^q_reg[29]_0\;
  \q_reg[2]_0\ <= \^q_reg[2]_0\;
  \q_reg[31]_1\ <= \^q_reg[31]_1\;
  \q_reg[3]_0\ <= \^q_reg[3]_0\;
  \q_reg[5]_0\ <= \^q_reg[5]_0\;
  \q_reg[5]_1\ <= \^q_reg[5]_1\;
  \q_reg[5]_2\ <= \^q_reg[5]_2\;
  \q_reg[5]_3\ <= \^q_reg[5]_3\;
  \q_reg[5]_4\(0) <= \^q_reg[5]_4\(0);
  \q_reg[5]_5\ <= \^q_reg[5]_5\;
  \q_reg[5]_6\ <= \^q_reg[5]_6\;
  \q_reg[6]_0\ <= \^q_reg[6]_0\;
  \sum__0_carry_i_10\ <= \^sum__0_carry_i_10\;
\ALUResult[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFF8F8F8F8F8"
    )
        port map (
      I0 => \^aluresult[31]_inst_0_i_9_0\,
      I1 => \main_alu/data6\(0),
      I2 => \addressM[0]\,
      I3 => \addressM[0]_0\,
      I4 => \ALUResult[0]_INST_0_i_4_n_0\,
      I5 => \^aluresult[31]_inst_0_i_10_0\,
      O => \^aluresult[31]_inst_0_i_5_0\
    );
\ALUResult[0]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBB8B8B8"
    )
        port map (
      I0 => \ALUResult[1]_INST_0_i_5_n_0\,
      I1 => SrcB(0),
      I2 => \ALUResult[0]_INST_0_i_5_n_0\,
      I3 => SrcB(1),
      I4 => \ALUResult[0]_INST_0_i_6_n_0\,
      O => \main_alu/data6\(0)
    );
\ALUResult[0]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA88800080"
    )
        port map (
      I0 => \^q_reg[5]_0\,
      I1 => \^sum__0_carry_i_10\,
      I2 => \ALUResult[0]_INST_0_i_7_n_0\,
      I3 => SrcB(0),
      I4 => \ALUResult[1]_INST_0_i_5_n_0\,
      I5 => \addressM[0]_1\,
      O => \ALUResult[0]_INST_0_i_4_n_0\
    );
\ALUResult[0]_INST_0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0A0C"
    )
        port map (
      I0 => \ALUResult[4]_INST_0_i_9_n_0\,
      I1 => \ALUResult[0]_INST_0_i_9_n_0\,
      I2 => SrcB(1),
      I3 => SrcB(2),
      O => \ALUResult[0]_INST_0_i_5_n_0\
    );
\ALUResult[0]_INST_0_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q_reg[6]_0\,
      I1 => SrcB(2),
      I2 => \ALUResult[2]_INST_0_i_8_n_0\,
      O => \ALUResult[0]_INST_0_i_6_n_0\
    );
\ALUResult[0]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC0CFAFAFC0C0A0A"
    )
        port map (
      I0 => \ALUResult[0]_INST_0_i_9_n_0\,
      I1 => \ALUResult[4]_INST_0_i_9_n_0\,
      I2 => SrcB(1),
      I3 => \^q_reg[6]_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[2]_INST_0_i_8_n_0\,
      O => \ALUResult[0]_INST_0_i_7_n_0\
    );
\ALUResult[0]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC0CFAFAFC0C0A0A"
    )
        port map (
      I0 => \^srca\(0),
      I1 => \^srca\(16),
      I2 => SrcB(3),
      I3 => \^srca\(24),
      I4 => SrcB(4),
      I5 => \^srca\(8),
      O => \ALUResult[0]_INST_0_i_9_n_0\
    );
\ALUResult[10]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFB8B8B8FF000000"
    )
        port map (
      I0 => \ALUResult[11]_INST_0_i_8_n_0\,
      I1 => SrcB(1),
      I2 => \ALUResult[11]_INST_0_i_10_n_0\,
      I3 => \ALUResult[10]_INST_0_i_8_n_0\,
      I4 => \addressM[14]_1\,
      I5 => \addressM[14]_2\,
      O => \ALUResult[30]_INST_0_i_8_3\
    );
\ALUResult[10]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[16]_INST_0_i_10_n_0\,
      I1 => \^q_reg[20]_0\,
      I2 => SrcB(1),
      I3 => \ALUResult[14]_INST_0_i_9_n_0\,
      I4 => SrcB(2),
      I5 => \^q_reg[18]_0\,
      O => \^aluresult[10]_inst_0_i_9_0\
    );
\ALUResult[10]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B080FFFFB0800000"
    )
        port map (
      I0 => \^srca\(3),
      I1 => SrcB(2),
      I2 => \ALUResult[5]_INST_0_i_3_0\,
      I3 => \^srca\(7),
      I4 => SrcB(1),
      I5 => \ALUResult[12]_INST_0_i_10_n_0\,
      O => \ALUResult[10]_INST_0_i_8_n_0\
    );
\ALUResult[10]_INST_0_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^srca\(18),
      I1 => SrcB(3),
      I2 => \^srca\(26),
      I3 => SrcB(4),
      I4 => \^srca\(10),
      O => \^q_reg[18]_0\
    );
\ALUResult[11]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000003030BB88"
    )
        port map (
      I0 => \^srca\(6),
      I1 => SrcB(2),
      I2 => \^srca\(2),
      I3 => \^srca\(10),
      I4 => SrcB(3),
      I5 => SrcB(4),
      O => \ALUResult[11]_INST_0_i_10_n_0\
    );
\ALUResult[11]_INST_0_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^srca\(19),
      I1 => SrcB(3),
      I2 => \^srca\(27),
      I3 => SrcB(4),
      I4 => \^srca\(11),
      O => \^q_reg[19]_0\
    );
\ALUResult[11]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFB800B800B800"
    )
        port map (
      I0 => \ALUResult[11]_INST_0_i_8_n_0\,
      I1 => SrcB(1),
      I2 => \ALUResult[11]_INST_0_i_10_n_0\,
      I3 => \addressM[14]_1\,
      I4 => \ALUResult[12]_INST_0_i_8_n_0\,
      I5 => \addressM[14]_2\,
      O => \ALUResult[30]_INST_0_i_8_2\
    );
\ALUResult[11]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000003030BB88"
    )
        port map (
      I0 => \^srca\(4),
      I1 => SrcB(2),
      I2 => \^srca\(0),
      I3 => \^srca\(8),
      I4 => SrcB(3),
      I5 => SrcB(4),
      O => \ALUResult[11]_INST_0_i_8_n_0\
    );
\ALUResult[12]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEEEEEAAAAAAAA"
    )
        port map (
      I0 => \addressM[12]\,
      I1 => \addressM[12]_0\,
      I2 => \ALUResult[12]_INST_0_i_3_n_0\,
      I3 => \ALUResult[12]_INST_0_i_4_n_0\,
      I4 => \^q_reg[5]_0\,
      I5 => \^aluresult[31]_inst_0_i_10_0\,
      O => \^aluresult[31]_inst_0_i_5_7\
    );
\ALUResult[12]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000003030BB88"
    )
        port map (
      I0 => \^srca\(5),
      I1 => SrcB(2),
      I2 => \^srca\(1),
      I3 => \^srca\(9),
      I4 => SrcB(3),
      I5 => SrcB(4),
      O => \ALUResult[12]_INST_0_i_10_n_0\
    );
\ALUResult[12]_INST_0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \ALUResult[12]_INST_0_i_8_n_0\,
      I1 => \addressM[14]_1\,
      I2 => \ALUResult[13]_INST_0_i_8_n_0\,
      I3 => \addressM[14]_2\,
      O => \ALUResult[12]_INST_0_i_3_n_0\
    );
\ALUResult[12]_INST_0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \^sum__0_carry_i_10\,
      I1 => \^aluresult[12]_inst_0_i_9_0\,
      I2 => SrcB(0),
      I3 => \^aluresult[13]_inst_0_i_9_0\,
      O => \ALUResult[12]_INST_0_i_4_n_0\
    );
\ALUResult[12]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[18]_INST_0_i_10_n_0\,
      I1 => \ALUResult[14]_INST_0_i_9_n_0\,
      I2 => SrcB(1),
      I3 => \ALUResult[16]_INST_0_i_10_n_0\,
      I4 => SrcB(2),
      I5 => \^q_reg[20]_0\,
      O => \^aluresult[12]_inst_0_i_9_0\
    );
\ALUResult[12]_INST_0_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ALUResult[12]_INST_0_i_10_n_0\,
      I1 => SrcB(1),
      I2 => \ALUResult[14]_INST_0_i_10_n_0\,
      O => \ALUResult[12]_INST_0_i_8_n_0\
    );
\ALUResult[12]_INST_0_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^srca\(20),
      I1 => SrcB(3),
      I2 => \^srca\(28),
      I3 => SrcB(4),
      I4 => \^srca\(12),
      O => \^q_reg[20]_0\
    );
\ALUResult[13]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEEEEEAAAAAAAA"
    )
        port map (
      I0 => \addressM[13]\,
      I1 => \addressM[13]_0\,
      I2 => \ALUResult[13]_INST_0_i_3_n_0\,
      I3 => \ALUResult[13]_INST_0_i_4_n_0\,
      I4 => \^q_reg[5]_0\,
      I5 => \^aluresult[31]_inst_0_i_10_0\,
      O => \^aluresult[31]_inst_0_i_5_6\
    );
\ALUResult[13]_INST_0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \ALUResult[13]_INST_0_i_8_n_0\,
      I1 => \addressM[14]_1\,
      I2 => \ALUResult[14]_INST_0_i_8_n_0\,
      I3 => \addressM[14]_2\,
      O => \ALUResult[13]_INST_0_i_3_n_0\
    );
\ALUResult[13]_INST_0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \^sum__0_carry_i_10\,
      I1 => \^aluresult[13]_inst_0_i_9_0\,
      I2 => SrcB(0),
      I3 => \^aluresult[14]_inst_0_i_9_0\,
      O => \ALUResult[13]_INST_0_i_4_n_0\
    );
\ALUResult[13]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^q_reg[27]_0\,
      I1 => \^q_reg[23]_0\,
      I2 => SrcB(1),
      I3 => \ALUResult[12]_INST_0_i_1\,
      I4 => SrcB(2),
      I5 => \^q_reg[21]_0\,
      O => \^aluresult[13]_inst_0_i_9_0\
    );
\ALUResult[13]_INST_0_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \ALUResult[11]_INST_0_i_10_n_0\,
      I1 => SrcB(1),
      I2 => \ALUResult[15]_INST_0_i_10_n_0\,
      I3 => SrcB(2),
      I4 => \ALUResult[19]_INST_0_i_12_n_0\,
      O => \ALUResult[13]_INST_0_i_8_n_0\
    );
\ALUResult[13]_INST_0_i_9\: unisim.vcomponents.LUT5
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
\ALUResult[14]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEEEEEAAAAAAAA"
    )
        port map (
      I0 => \addressM[14]\,
      I1 => \addressM[14]_0\,
      I2 => \ALUResult[14]_INST_0_i_3_n_0\,
      I3 => \ALUResult[14]_INST_0_i_4_n_0\,
      I4 => \^q_reg[5]_0\,
      I5 => \^aluresult[31]_inst_0_i_10_0\,
      O => \^aluresult[31]_inst_0_i_5_5\
    );
\ALUResult[14]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000003030BB88"
    )
        port map (
      I0 => \^srca\(7),
      I1 => SrcB(2),
      I2 => \^srca\(3),
      I3 => \^srca\(11),
      I4 => SrcB(3),
      I5 => SrcB(4),
      O => \ALUResult[14]_INST_0_i_10_n_0\
    );
\ALUResult[14]_INST_0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \ALUResult[14]_INST_0_i_8_n_0\,
      I1 => \addressM[14]_1\,
      I2 => \ALUResult[15]_INST_0_i_8_n_0\,
      I3 => \addressM[14]_2\,
      O => \ALUResult[14]_INST_0_i_3_n_0\
    );
\ALUResult[14]_INST_0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \^sum__0_carry_i_10\,
      I1 => \^aluresult[14]_inst_0_i_9_0\,
      I2 => SrcB(0),
      I3 => \^aluresult[15]_inst_0_i_9_0\,
      O => \ALUResult[14]_INST_0_i_4_n_0\
    );
\ALUResult[14]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[16]_INST_0_i_9_n_0\,
      I1 => \ALUResult[16]_INST_0_i_10_n_0\,
      I2 => SrcB(1),
      I3 => \ALUResult[18]_INST_0_i_10_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[14]_INST_0_i_9_n_0\,
      O => \^aluresult[14]_inst_0_i_9_0\
    );
\ALUResult[14]_INST_0_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \ALUResult[14]_INST_0_i_10_n_0\,
      I1 => SrcB(1),
      I2 => \ALUResult[16]_INST_0_i_11_n_0\,
      I3 => SrcB(2),
      I4 => \ALUResult[20]_INST_0_i_8_n_0\,
      O => \ALUResult[14]_INST_0_i_8_n_0\
    );
\ALUResult[14]_INST_0_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^srca\(22),
      I1 => SrcB(3),
      I2 => \^srca\(30),
      I3 => SrcB(4),
      I4 => \^srca\(14),
      O => \ALUResult[14]_INST_0_i_9_n_0\
    );
\ALUResult[15]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEEEEEAAAAAAAA"
    )
        port map (
      I0 => \addressM[15]\,
      I1 => \addressM[15]_0\,
      I2 => \ALUResult[15]_INST_0_i_3_n_0\,
      I3 => \ALUResult[15]_INST_0_i_4_n_0\,
      I4 => \^q_reg[5]_0\,
      I5 => \^aluresult[31]_inst_0_i_10_0\,
      O => \^aluresult[31]_inst_0_i_5_4\
    );
\ALUResult[15]_INST_0_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => \^srca\(0),
      I1 => \^srca\(8),
      I2 => SrcB(3),
      I3 => SrcB(4),
      O => \ALUResult[15]_INST_0_i_10_n_0\
    );
\ALUResult[15]_INST_0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \ALUResult[15]_INST_0_i_8_n_0\,
      I1 => \addressM[14]_1\,
      I2 => \ALUResult[16]_INST_0_i_8_n_0\,
      I3 => \addressM[14]_2\,
      O => \ALUResult[15]_INST_0_i_3_n_0\
    );
\ALUResult[15]_INST_0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \^sum__0_carry_i_10\,
      I1 => \^aluresult[15]_inst_0_i_9_0\,
      I2 => SrcB(0),
      I3 => \^aluresult[16]_inst_0_i_10_0\,
      O => \ALUResult[15]_INST_0_i_4_n_0\
    );
\ALUResult[15]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^q_reg[29]_0\,
      I1 => \ALUResult[12]_INST_0_i_1\,
      I2 => SrcB(1),
      I3 => \^q_reg[27]_0\,
      I4 => SrcB(2),
      I5 => \^q_reg[23]_0\,
      O => \^aluresult[15]_inst_0_i_9_0\
    );
\ALUResult[15]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[15]_INST_0_i_10_n_0\,
      I1 => \ALUResult[19]_INST_0_i_12_n_0\,
      I2 => SrcB(1),
      I3 => \ALUResult[17]_INST_0_i_11_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[21]_INST_0_i_8_n_0\,
      O => \ALUResult[15]_INST_0_i_8_n_0\
    );
\ALUResult[15]_INST_0_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^srca\(23),
      I1 => SrcB(3),
      I2 => \^srca__0\(0),
      I3 => SrcB(4),
      I4 => \^srca\(15),
      O => \^q_reg[23]_0\
    );
\ALUResult[16]_INST_0_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => \^srca\(24),
      I1 => \^srca\(16),
      I2 => SrcB(3),
      I3 => SrcB(4),
      O => \ALUResult[16]_INST_0_i_10_n_0\
    );
\ALUResult[16]_INST_0_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => \^srca\(1),
      I1 => \^srca\(9),
      I2 => SrcB(3),
      I3 => SrcB(4),
      O => \ALUResult[16]_INST_0_i_11_n_0\
    );
\ALUResult[16]_INST_0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \ALUResult[16]_INST_0_i_8_n_0\,
      I1 => \addressM[14]_1\,
      I2 => \ALUResult[17]_INST_0_i_8_n_0\,
      I3 => \addressM[14]_2\,
      O => \ALUResult[30]_INST_0_i_8_0\
    );
\ALUResult[16]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[18]_INST_0_i_9_n_0\,
      I1 => \ALUResult[18]_INST_0_i_10_n_0\,
      I2 => SrcB(1),
      I3 => \ALUResult[16]_INST_0_i_9_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[16]_INST_0_i_10_n_0\,
      O => \^aluresult[16]_inst_0_i_10_0\
    );
\ALUResult[16]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[16]_INST_0_i_11_n_0\,
      I1 => \ALUResult[20]_INST_0_i_8_n_0\,
      I2 => SrcB(1),
      I3 => \ALUResult[18]_INST_0_i_11_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[22]_INST_0_i_8_n_0\,
      O => \ALUResult[16]_INST_0_i_8_n_0\
    );
\ALUResult[16]_INST_0_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => \^srca\(28),
      I1 => \^srca\(20),
      I2 => SrcB(3),
      I3 => SrcB(4),
      O => \ALUResult[16]_INST_0_i_9_n_0\
    );
\ALUResult[17]_INST_0_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => \^srca\(2),
      I1 => \^srca\(10),
      I2 => SrcB(3),
      I3 => SrcB(4),
      O => \ALUResult[17]_INST_0_i_11_n_0\
    );
\ALUResult[17]_INST_0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \ALUResult[17]_INST_0_i_8_n_0\,
      I1 => \addressM[14]_1\,
      I2 => \^aluresult[24]_inst_0_i_8_0\,
      I3 => \addressM[14]_2\,
      O => \ALUResult[30]_INST_0_i_8_1\
    );
\ALUResult[17]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[17]_INST_0_i_11_n_0\,
      I1 => \ALUResult[21]_INST_0_i_8_n_0\,
      I2 => SrcB(1),
      I3 => \ALUResult[19]_INST_0_i_12_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[23]_INST_0_i_8_n_0\,
      O => \ALUResult[17]_INST_0_i_8_n_0\
    );
\ALUResult[17]_INST_0_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => \^srca\(29),
      I1 => \^srca\(21),
      I2 => SrcB(3),
      I3 => SrcB(4),
      O => \^q_reg[29]_0\
    );
\ALUResult[18]_INST_0_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => \^srca\(26),
      I1 => \^srca\(18),
      I2 => SrcB(3),
      I3 => SrcB(4),
      O => \ALUResult[18]_INST_0_i_10_n_0\
    );
\ALUResult[18]_INST_0_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => \^srca\(3),
      I1 => \^srca\(11),
      I2 => SrcB(3),
      I3 => SrcB(4),
      O => \ALUResult[18]_INST_0_i_11_n_0\
    );
\ALUResult[18]_INST_0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \^sum__0_carry_i_10\,
      I1 => \^aluresult[18]_inst_0_i_10_0\,
      I2 => SrcB(0),
      I3 => \^aluresult[19]_inst_0_i_11_0\,
      O => \ALUResult[19]_INST_0_i_7_0\
    );
\ALUResult[18]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \ALUResult[20]_INST_0_i_7_n_0\,
      I1 => SrcB(1),
      I2 => \ALUResult[18]_INST_0_i_9_n_0\,
      I3 => SrcB(2),
      I4 => \ALUResult[18]_INST_0_i_10_n_0\,
      O => \^aluresult[18]_inst_0_i_10_0\
    );
\ALUResult[18]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[18]_INST_0_i_11_n_0\,
      I1 => \ALUResult[22]_INST_0_i_8_n_0\,
      I2 => SrcB(1),
      I3 => \ALUResult[20]_INST_0_i_8_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[24]_INST_0_i_8_n_0\,
      O => \^aluresult[24]_inst_0_i_8_0\
    );
\ALUResult[18]_INST_0_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => \^srca\(30),
      I1 => \^srca\(22),
      I2 => SrcB(3),
      I3 => SrcB(4),
      O => \ALUResult[18]_INST_0_i_9_n_0\
    );
\ALUResult[19]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEEEEEAAAAAAAA"
    )
        port map (
      I0 => \addressM[19]\,
      I1 => \addressM[19]_0\,
      I2 => \ALUResult[19]_INST_0_i_3_n_0\,
      I3 => \ALUResult[19]_INST_0_i_4_n_0\,
      I4 => \^q_reg[5]_0\,
      I5 => \^aluresult[31]_inst_0_i_10_0\,
      O => \^aluresult[31]_inst_0_i_5_12\
    );
\ALUResult[19]_INST_0_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => \^srca__0\(0),
      I1 => \^srca\(23),
      I2 => SrcB(3),
      I3 => SrcB(4),
      O => \^q_reg[31]_1\
    );
\ALUResult[19]_INST_0_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => \^srca\(27),
      I1 => \^srca\(19),
      I2 => SrcB(3),
      I3 => SrcB(4),
      O => \^q_reg[27]_0\
    );
\ALUResult[19]_INST_0_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => \^srca\(4),
      I1 => \^srca\(12),
      I2 => SrcB(3),
      I3 => SrcB(4),
      O => \ALUResult[19]_INST_0_i_12_n_0\
    );
\ALUResult[19]_INST_0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^aluresult[25]_inst_0_i_10_0\,
      I1 => \addressM[14]_1\,
      I2 => \ALUResult[20]_INST_0_i_6_n_0\,
      I3 => \addressM[14]_2\,
      O => \ALUResult[19]_INST_0_i_3_n_0\
    );
\ALUResult[19]_INST_0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \^sum__0_carry_i_10\,
      I1 => \^aluresult[19]_inst_0_i_11_0\,
      I2 => SrcB(0),
      I3 => \^aluresult[20]_inst_0_i_7_0\,
      O => \ALUResult[19]_INST_0_i_4_n_0\
    );
\ALUResult[19]_INST_0_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q_reg[26]_0\,
      I1 => SrcB(1),
      I2 => \ALUResult[20]_INST_0_i_7_n_0\,
      O => \^aluresult[20]_inst_0_i_7_0\
    );
\ALUResult[19]_INST_0_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \^q_reg[25]_0\,
      I1 => SrcB(1),
      I2 => \^q_reg[31]_1\,
      I3 => SrcB(2),
      I4 => \^q_reg[27]_0\,
      O => \^aluresult[19]_inst_0_i_11_0\
    );
\ALUResult[19]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[19]_INST_0_i_12_n_0\,
      I1 => \ALUResult[23]_INST_0_i_8_n_0\,
      I2 => SrcB(1),
      I3 => \ALUResult[21]_INST_0_i_8_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[25]_INST_0_i_10_n_0\,
      O => \^aluresult[25]_inst_0_i_10_0\
    );
\ALUResult[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFF8F8F8F8F8"
    )
        port map (
      I0 => \^aluresult[31]_inst_0_i_9_0\,
      I1 => \main_alu/data6\(1),
      I2 => \addressM[1]\,
      I3 => \addressM[1]_0\,
      I4 => \ALUResult[1]_INST_0_i_4_n_0\,
      I5 => \^aluresult[31]_inst_0_i_10_0\,
      O => \^aluresult[31]_inst_0_i_5_1\
    );
\ALUResult[1]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ALUResult[2]_INST_0_i_5_n_0\,
      I1 => SrcB(0),
      I2 => \ALUResult[1]_INST_0_i_5_n_0\,
      O => \main_alu/data6\(1)
    );
\ALUResult[1]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA88800080"
    )
        port map (
      I0 => \^q_reg[5]_0\,
      I1 => \^sum__0_carry_i_10\,
      I2 => \ALUResult[1]_INST_0_i_5_n_0\,
      I3 => SrcB(0),
      I4 => \ALUResult[2]_INST_0_i_5_n_0\,
      I5 => \addressM[1]_1\,
      O => \ALUResult[1]_INST_0_i_4_n_0\
    );
\ALUResult[1]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC0CFAFAFC0C0A0A"
    )
        port map (
      I0 => \ALUResult[1]_INST_0_i_7_n_0\,
      I1 => \ALUResult[5]_INST_0_i_9_n_0\,
      I2 => SrcB(1),
      I3 => \ALUResult[6]_INST_0_i_10_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[3]_INST_0_i_8_n_0\,
      O => \ALUResult[1]_INST_0_i_5_n_0\
    );
\ALUResult[1]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC0CFAFAFC0C0A0A"
    )
        port map (
      I0 => \^srca\(1),
      I1 => \^srca\(17),
      I2 => SrcB(3),
      I3 => \^srca\(25),
      I4 => SrcB(4),
      I5 => \^srca\(9),
      O => \ALUResult[1]_INST_0_i_7_n_0\
    );
\ALUResult[20]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEEEAAAA"
    )
        port map (
      I0 => \ALUResult[20]_INST_0_i_1_n_0\,
      I1 => \addressM[20]\,
      I2 => \ALUResult[20]_INST_0_i_3_n_0\,
      I3 => \^q_reg[5]_0\,
      I4 => \^aluresult[31]_inst_0_i_10_0\,
      O => \^aluresult[31]_inst_0_i_5_11\
    );
\ALUResult[20]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF828F828F828"
    )
        port map (
      I0 => \^aluresult[31]_inst_0_i_24_0\,
      I1 => \^srca\(20),
      I2 => SrcB(7),
      I3 => \^aluresult[31]_inst_0_i_24_1\,
      I4 => \main_alu/data6\(20),
      I5 => \^aluresult[31]_inst_0_i_9_0\,
      O => \ALUResult[20]_INST_0_i_1_n_0\
    );
\ALUResult[20]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \addressM[14]_2\,
      I1 => \^aluresult[27]_inst_0_i_8_0\,
      I2 => \addressM[14]_1\,
      I3 => \ALUResult[20]_INST_0_i_6_n_0\,
      I4 => \main_alu/data6\(20),
      I5 => \^sum__0_carry_i_10\,
      O => \ALUResult[20]_INST_0_i_3_n_0\
    );
\ALUResult[20]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^q_reg[27]_1\,
      I1 => \^q_reg[25]_0\,
      I2 => SrcB(0),
      I3 => \^q_reg[26]_0\,
      I4 => SrcB(1),
      I5 => \ALUResult[20]_INST_0_i_7_n_0\,
      O => \main_alu/data6\(20)
    );
\ALUResult[20]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[20]_INST_0_i_8_n_0\,
      I1 => \ALUResult[24]_INST_0_i_8_n_0\,
      I2 => SrcB(1),
      I3 => \ALUResult[22]_INST_0_i_8_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[26]_INST_0_i_11_n_0\,
      O => \ALUResult[20]_INST_0_i_6_n_0\
    );
\ALUResult[20]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000003030BB88"
    )
        port map (
      I0 => \^srca\(24),
      I1 => SrcB(2),
      I2 => \^srca\(28),
      I3 => \^srca\(20),
      I4 => SrcB(3),
      I5 => SrcB(4),
      O => \ALUResult[20]_INST_0_i_7_n_0\
    );
\ALUResult[20]_INST_0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => \^srca\(5),
      I1 => \^srca\(13),
      I2 => SrcB(3),
      I3 => SrcB(4),
      O => \ALUResult[20]_INST_0_i_8_n_0\
    );
\ALUResult[21]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[21]_INST_0_i_8_n_0\,
      I1 => \ALUResult[25]_INST_0_i_10_n_0\,
      I2 => SrcB(1),
      I3 => \ALUResult[23]_INST_0_i_8_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[27]_INST_0_i_8_n_0\,
      O => \^aluresult[27]_inst_0_i_8_0\
    );
\ALUResult[21]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000003030BB88"
    )
        port map (
      I0 => \^srca\(25),
      I1 => SrcB(2),
      I2 => \^srca\(29),
      I3 => \^srca\(21),
      I4 => SrcB(3),
      I5 => SrcB(4),
      O => \^q_reg[25]_0\
    );
\ALUResult[21]_INST_0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => \^srca\(6),
      I1 => \^srca\(14),
      I2 => SrcB(3),
      I3 => SrcB(4),
      O => \ALUResult[21]_INST_0_i_8_n_0\
    );
\ALUResult[22]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[22]_INST_0_i_8_n_0\,
      I1 => \ALUResult[26]_INST_0_i_11_n_0\,
      I2 => SrcB(1),
      I3 => \ALUResult[24]_INST_0_i_8_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[28]_INST_0_i_8_n_0\,
      O => \ALUResult[28]_INST_0_i_8_0\
    );
\ALUResult[22]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000003030BB88"
    )
        port map (
      I0 => \^srca\(26),
      I1 => SrcB(2),
      I2 => \^srca\(30),
      I3 => \^srca\(22),
      I4 => SrcB(3),
      I5 => SrcB(4),
      O => \^q_reg[26]_0\
    );
\ALUResult[22]_INST_0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => \^srca\(7),
      I1 => \^srca\(15),
      I2 => SrcB(3),
      I3 => SrcB(4),
      O => \ALUResult[22]_INST_0_i_8_n_0\
    );
\ALUResult[23]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[23]_INST_0_i_8_n_0\,
      I1 => \ALUResult[27]_INST_0_i_8_n_0\,
      I2 => SrcB(1),
      I3 => \ALUResult[25]_INST_0_i_10_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[29]_INST_0_i_10_n_0\,
      O => \ALUResult[29]_INST_0_i_10_0\
    );
\ALUResult[23]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000003030BB88"
    )
        port map (
      I0 => \^srca\(27),
      I1 => SrcB(2),
      I2 => \^srca__0\(0),
      I3 => \^srca\(23),
      I4 => SrcB(3),
      I5 => SrcB(4),
      O => \^q_reg[27]_1\
    );
\ALUResult[23]_INST_0_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^srca\(8),
      I1 => SrcB(3),
      I2 => \^srca\(0),
      I3 => SrcB(4),
      I4 => \^srca\(16),
      O => \ALUResult[23]_INST_0_i_8_n_0\
    );
\ALUResult[24]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[24]_INST_0_i_8_n_0\,
      I1 => \ALUResult[28]_INST_0_i_8_n_0\,
      I2 => SrcB(1),
      I3 => \ALUResult[26]_INST_0_i_11_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[30]_INST_0_i_10_n_0\,
      O => \ALUResult[30]_INST_0_i_10_0\
    );
\ALUResult[24]_INST_0_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^srca\(9),
      I1 => SrcB(3),
      I2 => \^srca\(1),
      I3 => SrcB(4),
      I4 => \^srca\(17),
      O => \ALUResult[24]_INST_0_i_8_n_0\
    );
\ALUResult[25]_INST_0_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^srca\(10),
      I1 => SrcB(3),
      I2 => \^srca\(2),
      I3 => SrcB(4),
      I4 => \^srca\(18),
      O => \ALUResult[25]_INST_0_i_10_n_0\
    );
\ALUResult[25]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[25]_INST_0_i_10_n_0\,
      I1 => \ALUResult[29]_INST_0_i_10_n_0\,
      I2 => SrcB(1),
      I3 => \ALUResult[27]_INST_0_i_8_n_0\,
      I4 => SrcB(2),
      I5 => \^q_reg[24]_0\,
      O => \ALUResult[31]_INST_0_i_30_0\
    );
\ALUResult[26]_INST_0_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^srca\(11),
      I1 => SrcB(3),
      I2 => \^srca\(3),
      I3 => SrcB(4),
      I4 => \^srca\(19),
      O => \ALUResult[26]_INST_0_i_11_n_0\
    );
\ALUResult[26]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[26]_INST_0_i_11_n_0\,
      I1 => \ALUResult[30]_INST_0_i_10_n_0\,
      I2 => SrcB(1),
      I3 => \ALUResult[28]_INST_0_i_8_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[30]_INST_0_i_11_n_0\,
      O => \ALUResult[30]_INST_0_i_11_0\
    );
\ALUResult[27]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[27]_INST_0_i_8_n_0\,
      I1 => \^q_reg[24]_0\,
      I2 => SrcB(1),
      I3 => \ALUResult[29]_INST_0_i_10_n_0\,
      I4 => SrcB(2),
      I5 => \^q_reg[26]_1\,
      O => \ALUResult[31]_INST_0_i_33_0\
    );
\ALUResult[27]_INST_0_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^srca\(12),
      I1 => SrcB(3),
      I2 => \^srca\(4),
      I3 => SrcB(4),
      I4 => \^srca\(20),
      O => \ALUResult[27]_INST_0_i_8_n_0\
    );
\ALUResult[28]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[28]_INST_0_i_8_n_0\,
      I1 => \ALUResult[30]_INST_0_i_11_n_0\,
      I2 => SrcB(1),
      I3 => \ALUResult[30]_INST_0_i_10_n_0\,
      I4 => SrcB(2),
      I5 => \^q_reg[27]_2\,
      O => \ALUResult[31]_INST_0_i_28_0\
    );
\ALUResult[28]_INST_0_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^srca\(13),
      I1 => SrcB(3),
      I2 => \^srca\(5),
      I3 => SrcB(4),
      I4 => \^srca\(21),
      O => \ALUResult[28]_INST_0_i_8_n_0\
    );
\ALUResult[29]_INST_0_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^srca\(14),
      I1 => SrcB(3),
      I2 => \^srca\(6),
      I3 => SrcB(4),
      I4 => \^srca\(22),
      O => \ALUResult[29]_INST_0_i_10_n_0\
    );
\ALUResult[29]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[29]_INST_0_i_10_n_0\,
      I1 => \^q_reg[26]_1\,
      I2 => SrcB(1),
      I3 => \^q_reg[24]_0\,
      I4 => SrcB(2),
      I5 => \^q_reg[28]_0\,
      O => \ALUResult[31]_INST_0_i_31_0\
    );
\ALUResult[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFF8F8F8F8F8"
    )
        port map (
      I0 => \^aluresult[31]_inst_0_i_9_0\,
      I1 => \main_alu/data6\(2),
      I2 => \addressM[2]\,
      I3 => \addressM[2]_0\,
      I4 => \ALUResult[2]_INST_0_i_4_n_0\,
      I5 => \^aluresult[31]_inst_0_i_10_0\,
      O => \^aluresult[31]_inst_0_i_5_2\
    );
\ALUResult[2]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ALUResult[3]_INST_0_i_5_n_0\,
      I1 => SrcB(0),
      I2 => \ALUResult[2]_INST_0_i_5_n_0\,
      O => \main_alu/data6\(2)
    );
\ALUResult[2]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA88800080"
    )
        port map (
      I0 => \^q_reg[5]_0\,
      I1 => \^sum__0_carry_i_10\,
      I2 => \ALUResult[2]_INST_0_i_5_n_0\,
      I3 => SrcB(0),
      I4 => \ALUResult[3]_INST_0_i_5_n_0\,
      I5 => \addressM[2]_1\,
      O => \ALUResult[2]_INST_0_i_4_n_0\
    );
\ALUResult[2]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^q_reg[16]_0\,
      I1 => \ALUResult[4]_INST_0_i_9_n_0\,
      I2 => SrcB(1),
      I3 => \^q_reg[6]_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[2]_INST_0_i_8_n_0\,
      O => \ALUResult[2]_INST_0_i_5_n_0\
    );
\ALUResult[2]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC0CFAFAFC0C0A0A"
    )
        port map (
      I0 => \^srca\(2),
      I1 => \^srca\(18),
      I2 => SrcB(3),
      I3 => \^srca\(26),
      I4 => SrcB(4),
      I5 => \^srca\(10),
      O => \ALUResult[2]_INST_0_i_8_n_0\
    );
\ALUResult[30]_INST_0_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^srca\(15),
      I1 => SrcB(3),
      I2 => \^srca\(7),
      I3 => SrcB(4),
      I4 => \^srca\(23),
      O => \ALUResult[30]_INST_0_i_10_n_0\
    );
\ALUResult[30]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC0CFAFAFC0C0A0A"
    )
        port map (
      I0 => \^srca\(25),
      I1 => \^srca\(9),
      I2 => SrcB(3),
      I3 => \^srca\(1),
      I4 => SrcB(4),
      I5 => \^srca\(17),
      O => \ALUResult[30]_INST_0_i_11_n_0\
    );
\ALUResult[30]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC0CFAFAFC0C0A0A"
    )
        port map (
      I0 => \^srca\(29),
      I1 => \^srca\(13),
      I2 => SrcB(3),
      I3 => \^srca\(5),
      I4 => SrcB(4),
      I5 => \^srca\(21),
      O => \ALUResult[30]_INST_0_i_12_n_0\
    );
\ALUResult[30]_INST_0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => ALUControl(3),
      I1 => \ALUControl__0\(0),
      I2 => \^q_reg[5]_4\(0),
      O => \^aluresult[31]_inst_0_i_24_0\
    );
\ALUResult[30]_INST_0_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ALUControl(3),
      I1 => \^q_reg[5]_4\(0),
      O => \^aluresult[31]_inst_0_i_24_1\
    );
\ALUResult[30]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[30]_INST_0_i_10_n_0\,
      I1 => \^q_reg[27]_2\,
      I2 => SrcB(1),
      I3 => \ALUResult[30]_INST_0_i_11_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[30]_INST_0_i_12_n_0\,
      O => \ALUResult[30]_INST_0_i_12_0\
    );
\ALUResult[31]_INST_0_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4F"
    )
        port map (
      I0 => \^q_reg[5]_4\(0),
      I1 => \ALUControl__0\(0),
      I2 => ALUControl(3),
      O => \^aluresult[31]_inst_0_i_25_0\
    );
\ALUResult[31]_INST_0_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"15FF"
    )
        port map (
      I0 => \c/ALUOp\(0),
      I1 => Instr(13),
      I2 => Instr(14),
      I3 => \c/ALUOp\(1),
      O => \^q_reg[5]_6\
    );
\ALUResult[31]_INST_0_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF00A7"
    )
        port map (
      I0 => Instr(2),
      I1 => Instr(5),
      I2 => Instr(6),
      I3 => \ALUResult[31]_INST_0_i_18_n_0\,
      I4 => \^sum__0_carry_i_10\,
      O => \q_reg[5]_7\
    );
\ALUResult[31]_INST_0_i_15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q_reg[5]_4\(0),
      I1 => \ALUControl__0\(0),
      O => \^sum__0_carry_i_10\
    );
\ALUResult[31]_INST_0_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFFF8FFFAFFFFFFF"
    )
        port map (
      I0 => Instr(14),
      I1 => Instr(30),
      I2 => \ALUResult[31]_INST_0_i_4_0\,
      I3 => Instr(4),
      I4 => Instr(13),
      I5 => Instr(12),
      O => \ALUResult[31]_INST_0_i_18_n_0\
    );
\ALUResult[31]_INST_0_i_22\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => Instr(2),
      I1 => Instr(5),
      I2 => Instr(4),
      O => \c/ALUOp\(1)
    );
\ALUResult[31]_INST_0_i_23\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"58"
    )
        port map (
      I0 => Instr(2),
      I1 => Instr(5),
      I2 => Instr(6),
      O => \c/ALUOp\(0)
    );
\ALUResult[31]_INST_0_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA0AAA8AA80AA80"
    )
        port map (
      I0 => \c/ALUOp\(1),
      I1 => Instr(14),
      I2 => Instr(13),
      I3 => \c/ALUOp\(0),
      I4 => Instr(30),
      I5 => Instr(12),
      O => \^q_reg[5]_4\(0)
    );
\ALUResult[31]_INST_0_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF00A200000000"
    )
        port map (
      I0 => Instr(14),
      I1 => Instr(12),
      I2 => Instr(30),
      I3 => Instr(13),
      I4 => \c/ALUOp\(0),
      I5 => \c/ALUOp\(1),
      O => ALUControl(3)
    );
\ALUResult[31]_INST_0_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAFFFBAAAA0008"
    )
        port map (
      I0 => Instr(7),
      I1 => Instr(5),
      I2 => Instr(6),
      I3 => Instr(4),
      I4 => Instr(3),
      I5 => Instr(20),
      O => \q_reg[2]_1\
    );
\ALUResult[31]_INST_0_i_27\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ALUResult[30]_INST_0_i_11_n_0\,
      I1 => SrcB(2),
      I2 => \ALUResult[30]_INST_0_i_12_n_0\,
      O => \ALUResult[30]_INST_0_i_12_1\
    );
\ALUResult[31]_INST_0_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC0CFAFAFC0C0A0A"
    )
        port map (
      I0 => \^srca\(27),
      I1 => \^srca\(11),
      I2 => SrcB(3),
      I3 => \^srca\(3),
      I4 => SrcB(4),
      I5 => \^srca\(19),
      O => \^q_reg[27]_2\
    );
\ALUResult[31]_INST_0_i_29\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC0CFAFAFC0C0A0A"
    )
        port map (
      I0 => \^srca__0\(0),
      I1 => \^srca\(15),
      I2 => SrcB(3),
      I3 => \^srca\(7),
      I4 => SrcB(4),
      I5 => \^srca\(23),
      O => \q_reg[31]_2\
    );
\ALUResult[31]_INST_0_i_30\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC0CFAFAFC0C0A0A"
    )
        port map (
      I0 => \^srca\(24),
      I1 => \^srca\(8),
      I2 => SrcB(3),
      I3 => \^srca\(0),
      I4 => SrcB(4),
      I5 => \^srca\(16),
      O => \^q_reg[24]_0\
    );
\ALUResult[31]_INST_0_i_31\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC0CFAFAFC0C0A0A"
    )
        port map (
      I0 => \^srca\(28),
      I1 => \^srca\(12),
      I2 => SrcB(3),
      I3 => \^srca\(4),
      I4 => SrcB(4),
      I5 => \^srca\(20),
      O => \^q_reg[28]_0\
    );
\ALUResult[31]_INST_0_i_32\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC0CFAFAFC0C0A0A"
    )
        port map (
      I0 => \^srca\(30),
      I1 => \^srca\(14),
      I2 => SrcB(3),
      I3 => \^srca\(6),
      I4 => SrcB(4),
      I5 => \^srca\(22),
      O => \q_reg[30]_0\
    );
\ALUResult[31]_INST_0_i_33\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC0CFAFAFC0C0A0A"
    )
        port map (
      I0 => \^srca\(26),
      I1 => \^srca\(10),
      I2 => SrcB(3),
      I3 => \^srca\(2),
      I4 => SrcB(4),
      I5 => \^srca\(18),
      O => \^q_reg[26]_1\
    );
\ALUResult[31]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A888A8A888A888A"
    )
        port map (
      I0 => \^q_reg[5]_6\,
      I1 => \^sum__0_carry_i_10\,
      I2 => \ALUResult[31]_INST_0_i_18_n_0\,
      I3 => Instr(6),
      I4 => Instr(5),
      I5 => Instr(2),
      O => \^q_reg[5]_0\
    );
\ALUResult[31]_INST_0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q_reg[5]_5\,
      I1 => \^aluresult[31]_inst_0_i_25_0\,
      O => \^aluresult[31]_inst_0_i_10_0\
    );
\ALUResult[31]_INST_0_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C0C0AAC0"
    )
        port map (
      I0 => \^q\(31),
      I1 => rd10(31),
      I2 => \rf/rd11__3\,
      I3 => Instr(2),
      I4 => Instr(5),
      O => \^srca__0\(0)
    );
\ALUResult[31]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FDFFFDFDFFFFFFFF"
    )
        port map (
      I0 => \c/ALUOp\(1),
      I1 => \c/ALUOp\(0),
      I2 => Instr(13),
      I3 => Instr(30),
      I4 => Instr(12),
      I5 => Instr(14),
      O => \^q_reg[5]_5\
    );
\ALUResult[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFF8F8F8F8F8"
    )
        port map (
      I0 => \^aluresult[31]_inst_0_i_9_0\,
      I1 => \main_alu/data6\(3),
      I2 => \addressM[3]\,
      I3 => \addressM[3]_0\,
      I4 => \ALUResult[3]_INST_0_i_4_n_0\,
      I5 => \^aluresult[31]_inst_0_i_10_0\,
      O => \^aluresult[31]_inst_0_i_5_8\
    );
\ALUResult[3]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ALUResult[4]_INST_0_i_6_n_0\,
      I1 => SrcB(0),
      I2 => \ALUResult[3]_INST_0_i_5_n_0\,
      O => \main_alu/data6\(3)
    );
\ALUResult[3]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA88800080"
    )
        port map (
      I0 => \^q_reg[5]_0\,
      I1 => \^sum__0_carry_i_10\,
      I2 => \ALUResult[3]_INST_0_i_5_n_0\,
      I3 => SrcB(0),
      I4 => \ALUResult[4]_INST_0_i_6_n_0\,
      I5 => \addressM[3]_1\,
      O => \ALUResult[3]_INST_0_i_4_n_0\
    );
\ALUResult[3]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[9]_INST_0_i_9_n_0\,
      I1 => \ALUResult[5]_INST_0_i_9_n_0\,
      I2 => SrcB(1),
      I3 => \ALUResult[6]_INST_0_i_10_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[3]_INST_0_i_8_n_0\,
      O => \ALUResult[3]_INST_0_i_5_n_0\
    );
\ALUResult[3]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC0CFAFAFC0C0A0A"
    )
        port map (
      I0 => \^srca\(3),
      I1 => \^srca\(19),
      I2 => SrcB(3),
      I3 => \^srca\(27),
      I4 => SrcB(4),
      I5 => \^srca\(11),
      O => \ALUResult[3]_INST_0_i_8_n_0\
    );
\ALUResult[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFF8F8F8F8F8"
    )
        port map (
      I0 => \^aluresult[31]_inst_0_i_9_0\,
      I1 => \main_alu/data6\(4),
      I2 => \addressM[4]\,
      I3 => \addressM[4]_0\,
      I4 => \ALUResult[4]_INST_0_i_5_n_0\,
      I5 => \^aluresult[31]_inst_0_i_10_0\,
      O => \ALUResult[31]_INST_0_i_5_10\
    );
\ALUResult[4]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^aluresult[31]_inst_0_i_25_0\,
      I1 => \^q_reg[5]_5\,
      O => \^aluresult[31]_inst_0_i_9_0\
    );
\ALUResult[4]_INST_0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^aluresult[5]_inst_0_i_9_0\,
      I1 => SrcB(0),
      I2 => \ALUResult[4]_INST_0_i_6_n_0\,
      O => \main_alu/data6\(4)
    );
\ALUResult[4]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA88800080"
    )
        port map (
      I0 => \^q_reg[5]_0\,
      I1 => \^sum__0_carry_i_10\,
      I2 => \ALUResult[4]_INST_0_i_6_n_0\,
      I3 => SrcB(0),
      I4 => \^aluresult[5]_inst_0_i_9_0\,
      I5 => \addressM[4]_1\,
      O => \ALUResult[4]_INST_0_i_5_n_0\
    );
\ALUResult[4]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^q_reg[18]_0\,
      I1 => \^q_reg[6]_0\,
      I2 => SrcB(1),
      I3 => \^q_reg[16]_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[4]_INST_0_i_9_n_0\,
      O => \ALUResult[4]_INST_0_i_6_n_0\
    );
\ALUResult[4]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC0CFAFAFC0C0A0A"
    )
        port map (
      I0 => \^srca\(4),
      I1 => \^srca\(20),
      I2 => SrcB(3),
      I3 => \^srca\(28),
      I4 => SrcB(4),
      I5 => \^srca\(12),
      O => \ALUResult[4]_INST_0_i_9_n_0\
    );
\ALUResult[5]_INST_0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \ALUResult[5]_INST_0_i_8_n_0\,
      I1 => \addressM[14]_1\,
      I2 => \^q_reg[3]_0\,
      I3 => \addressM[14]_2\,
      O => \ALUResult[30]_INST_0_i_8\
    );
\ALUResult[5]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^q_reg[19]_0\,
      I1 => \ALUResult[6]_INST_0_i_10_n_0\,
      I2 => SrcB(1),
      I3 => \ALUResult[9]_INST_0_i_9_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[5]_INST_0_i_9_n_0\,
      O => \^aluresult[5]_inst_0_i_9_0\
    );
\ALUResult[5]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"30BB000030880000"
    )
        port map (
      I0 => \^srca\(2),
      I1 => SrcB(1),
      I2 => \^srca\(0),
      I3 => SrcB(2),
      I4 => \ALUResult[5]_INST_0_i_3_0\,
      I5 => \^srca\(4),
      O => \ALUResult[5]_INST_0_i_8_n_0\
    );
\ALUResult[5]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC0CFAFAFC0C0A0A"
    )
        port map (
      I0 => \^srca\(5),
      I1 => \^srca\(21),
      I2 => SrcB(3),
      I3 => \^srca\(29),
      I4 => SrcB(4),
      I5 => \^srca\(13),
      O => \ALUResult[5]_INST_0_i_9_n_0\
    );
\ALUResult[6]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC0CFAFAFC0C0A0A"
    )
        port map (
      I0 => \^srca\(7),
      I1 => \^srca\(23),
      I2 => SrcB(3),
      I3 => \^srca__0\(0),
      I4 => SrcB(4),
      I5 => \^srca\(15),
      O => \ALUResult[6]_INST_0_i_10_n_0\
    );
\ALUResult[6]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC0CFAFAFC0C0A0A"
    )
        port map (
      I0 => \^srca\(6),
      I1 => \^srca\(22),
      I2 => SrcB(3),
      I3 => \^srca\(30),
      I4 => SrcB(4),
      I5 => \^srca\(14),
      O => \^q_reg[6]_0\
    );
\ALUResult[6]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^q_reg[21]_0\,
      I1 => \ALUResult[9]_INST_0_i_9_n_0\,
      I2 => SrcB(1),
      I3 => \^q_reg[19]_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[6]_INST_0_i_10_n_0\,
      O => \^aluresult[6]_inst_0_i_10_0\
    );
\ALUResult[6]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"30BB000030880000"
    )
        port map (
      I0 => \^srca\(3),
      I1 => SrcB(1),
      I2 => \^srca\(1),
      I3 => SrcB(2),
      I4 => \ALUResult[5]_INST_0_i_3_0\,
      I5 => \^srca\(5),
      O => \^q_reg[3]_0\
    );
\ALUResult[7]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEEEAAAA"
    )
        port map (
      I0 => \ALUResult[7]_INST_0_i_1_n_0\,
      I1 => \addressM[7]\,
      I2 => \addressM[7]_0\,
      I3 => \^q_reg[5]_0\,
      I4 => \^aluresult[31]_inst_0_i_10_0\,
      O => \^aluresult[31]_inst_0_i_5_3\
    );
\ALUResult[7]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF828F828F828"
    )
        port map (
      I0 => \^aluresult[31]_inst_0_i_24_0\,
      I1 => \^srca\(7),
      I2 => SrcB(6),
      I3 => \^aluresult[31]_inst_0_i_24_1\,
      I4 => \^aluresult[6]_inst_0_i_6_0\(0),
      I5 => \^aluresult[31]_inst_0_i_9_0\,
      O => \ALUResult[7]_INST_0_i_1_n_0\
    );
\ALUResult[7]_INST_0_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^aluresult[8]_inst_0_i_9_0\,
      I1 => SrcB(0),
      I2 => \^aluresult[6]_inst_0_i_10_0\,
      O => \^aluresult[6]_inst_0_i_6_0\(0)
    );
\ALUResult[8]_INST_0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \^sum__0_carry_i_10\,
      I1 => \^aluresult[8]_inst_0_i_9_0\,
      I2 => SrcB(0),
      I3 => \^aluresult[9]_inst_0_i_9_0\,
      O => \ALUResult[9]_INST_0_i_6_0\
    );
\ALUResult[8]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[14]_INST_0_i_9_n_0\,
      I1 => \^q_reg[18]_0\,
      I2 => SrcB(1),
      I3 => \^q_reg[20]_0\,
      I4 => SrcB(2),
      I5 => \^q_reg[16]_0\,
      O => \^aluresult[8]_inst_0_i_9_0\
    );
\ALUResult[8]_INST_0_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^srca\(16),
      I1 => SrcB(3),
      I2 => \^srca\(24),
      I3 => SrcB(4),
      I4 => \^srca\(8),
      O => \^q_reg[16]_0\
    );
\ALUResult[9]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEEEEEAAAAAAAA"
    )
        port map (
      I0 => \addressM[9]\,
      I1 => \addressM[9]_0\,
      I2 => \ALUResult[9]_INST_0_i_3_n_0\,
      I3 => \ALUResult[9]_INST_0_i_4_n_0\,
      I4 => \^q_reg[5]_0\,
      I5 => \^aluresult[31]_inst_0_i_10_0\,
      O => \^aluresult[31]_inst_0_i_5_9\
    );
\ALUResult[9]_INST_0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^q_reg[2]_0\,
      I1 => \addressM[14]_1\,
      I2 => \ALUResult[10]_INST_0_i_8_n_0\,
      I3 => \addressM[14]_2\,
      O => \ALUResult[9]_INST_0_i_3_n_0\
    );
\ALUResult[9]_INST_0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \^sum__0_carry_i_10\,
      I1 => \^aluresult[9]_inst_0_i_9_0\,
      I2 => SrcB(0),
      I3 => \^aluresult[10]_inst_0_i_9_0\,
      O => \ALUResult[9]_INST_0_i_4_n_0\
    );
\ALUResult[9]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^q_reg[23]_0\,
      I1 => \^q_reg[19]_0\,
      I2 => SrcB(1),
      I3 => \^q_reg[21]_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[9]_INST_0_i_9_n_0\,
      O => \^aluresult[9]_inst_0_i_9_0\
    );
\ALUResult[9]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B080FFFFB0800000"
    )
        port map (
      I0 => \^srca\(2),
      I1 => SrcB(2),
      I2 => \ALUResult[5]_INST_0_i_3_0\,
      I3 => \^srca\(6),
      I4 => SrcB(1),
      I5 => \ALUResult[11]_INST_0_i_8_n_0\,
      O => \^q_reg[2]_0\
    );
\ALUResult[9]_INST_0_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^srca\(17),
      I1 => SrcB(3),
      I2 => \^srca\(25),
      I3 => SrcB(4),
      I4 => \^srca\(9),
      O => \ALUResult[9]_INST_0_i_9_n_0\
    );
\WriteData[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F8F8F808F808F80"
    )
        port map (
      I0 => \rd21__3\,
      I1 => rd20(0),
      I2 => Instr(14),
      I3 => \WriteData[0]_INST_0_i_1_n_0\,
      I4 => ReadData(0),
      I5 => \^q_reg[5]_2\,
      O => WriteData(0)
    );
\WriteData[0]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEC000EAAAC000"
    )
        port map (
      I0 => \WriteData[15]_INST_0_i_2_n_0\,
      I1 => \WriteData[31]_INST_0_i_6_n_0\,
      I2 => ReadData(0),
      I3 => \WriteData[7]_INST_0_i_3_n_0\,
      I4 => rd2(0),
      I5 => \WriteData[7]_INST_0_i_4_n_0\,
      O => \WriteData[0]_INST_0_i_1_n_0\
    );
\WriteData[10]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF55FE44FE44FE44"
    )
        port map (
      I0 => Instr(14),
      I1 => \WriteData[10]_INST_0_i_1_n_0\,
      I2 => \WriteData[15]_INST_0_i_2_n_0\,
      I3 => rd2(10),
      I4 => ReadData(10),
      I5 => \^q_reg[5]_2\,
      O => WriteData(10)
    );
\WriteData[10]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888888800000000"
    )
        port map (
      I0 => \WriteData[15]_INST_0_i_3_n_0\,
      I1 => ReadData(10),
      I2 => \WriteData[15]_INST_0_i_4_n_0\,
      I3 => rd20(2),
      I4 => \rd21__3\,
      I5 => \WriteData[31]_INST_0_i_6_n_0\,
      O => \WriteData[10]_INST_0_i_1_n_0\
    );
\WriteData[11]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF55FE44FE44FE44"
    )
        port map (
      I0 => Instr(14),
      I1 => \WriteData[11]_INST_0_i_1_n_0\,
      I2 => \WriteData[15]_INST_0_i_2_n_0\,
      I3 => rd2(11),
      I4 => ReadData(11),
      I5 => \^q_reg[5]_2\,
      O => WriteData(11)
    );
\WriteData[11]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888888800000000"
    )
        port map (
      I0 => \WriteData[15]_INST_0_i_3_n_0\,
      I1 => ReadData(11),
      I2 => \WriteData[15]_INST_0_i_4_n_0\,
      I3 => rd20(3),
      I4 => \rd21__3\,
      I5 => \WriteData[31]_INST_0_i_6_n_0\,
      O => \WriteData[11]_INST_0_i_1_n_0\
    );
\WriteData[12]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF55FE44FE44FE44"
    )
        port map (
      I0 => Instr(14),
      I1 => \WriteData[12]_INST_0_i_1_n_0\,
      I2 => \WriteData[15]_INST_0_i_2_n_0\,
      I3 => rd2(12),
      I4 => ReadData(12),
      I5 => \^q_reg[5]_2\,
      O => WriteData(12)
    );
\WriteData[12]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888888800000000"
    )
        port map (
      I0 => \WriteData[15]_INST_0_i_3_n_0\,
      I1 => ReadData(12),
      I2 => \WriteData[15]_INST_0_i_4_n_0\,
      I3 => rd20(4),
      I4 => \rd21__3\,
      I5 => \WriteData[31]_INST_0_i_6_n_0\,
      O => \WriteData[12]_INST_0_i_1_n_0\
    );
\WriteData[13]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF55FE44FE44FE44"
    )
        port map (
      I0 => Instr(14),
      I1 => \WriteData[13]_INST_0_i_1_n_0\,
      I2 => \WriteData[15]_INST_0_i_2_n_0\,
      I3 => rd2(13),
      I4 => ReadData(13),
      I5 => \^q_reg[5]_2\,
      O => WriteData(13)
    );
\WriteData[13]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888888800000000"
    )
        port map (
      I0 => \WriteData[15]_INST_0_i_3_n_0\,
      I1 => ReadData(13),
      I2 => \WriteData[15]_INST_0_i_4_n_0\,
      I3 => rd20(5),
      I4 => \rd21__3\,
      I5 => \WriteData[31]_INST_0_i_6_n_0\,
      O => \WriteData[13]_INST_0_i_1_n_0\
    );
\WriteData[14]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF55FE44FE44FE44"
    )
        port map (
      I0 => Instr(14),
      I1 => \WriteData[14]_INST_0_i_1_n_0\,
      I2 => \WriteData[15]_INST_0_i_2_n_0\,
      I3 => rd2(14),
      I4 => ReadData(14),
      I5 => \^q_reg[5]_2\,
      O => WriteData(14)
    );
\WriteData[14]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888888800000000"
    )
        port map (
      I0 => \WriteData[15]_INST_0_i_3_n_0\,
      I1 => ReadData(14),
      I2 => \WriteData[15]_INST_0_i_4_n_0\,
      I3 => rd20(6),
      I4 => \rd21__3\,
      I5 => \WriteData[31]_INST_0_i_6_n_0\,
      O => \WriteData[14]_INST_0_i_1_n_0\
    );
\WriteData[15]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF55FE44FE44FE44"
    )
        port map (
      I0 => Instr(14),
      I1 => \WriteData[15]_INST_0_i_1_n_0\,
      I2 => \WriteData[15]_INST_0_i_2_n_0\,
      I3 => rd2(15),
      I4 => ReadData(15),
      I5 => \^q_reg[5]_2\,
      O => WriteData(15)
    );
\WriteData[15]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888888800000000"
    )
        port map (
      I0 => \WriteData[15]_INST_0_i_3_n_0\,
      I1 => ReadData(15),
      I2 => \WriteData[15]_INST_0_i_4_n_0\,
      I3 => rd20(7),
      I4 => \rd21__3\,
      I5 => \WriteData[31]_INST_0_i_6_n_0\,
      O => \WriteData[15]_INST_0_i_1_n_0\
    );
\WriteData[15]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \WriteData[31]_INST_0_i_5_n_0\,
      I1 => Instr(13),
      O => \WriteData[15]_INST_0_i_2_n_0\
    );
\WriteData[15]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \WriteData[23]_INST_0_i_5_n_0\,
      I1 => \WriteData[31]_INST_0_i_7_n_0\,
      I2 => \WriteData[7]_INST_0_i_4_n_0\,
      O => \WriteData[15]_INST_0_i_3_n_0\
    );
\WriteData[15]_INST_0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^aluresult[31]_inst_0_i_5_0\,
      I1 => \^aluresult[31]_inst_0_i_5_1\,
      O => \WriteData[15]_INST_0_i_4_n_0\
    );
\WriteData[16]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ECECE0A0E0A0E0A0"
    )
        port map (
      I0 => \WriteData[31]_INST_0_i_5_n_0\,
      I1 => \WriteData[31]_INST_0_i_6_n_0\,
      I2 => ReadData(16),
      I3 => \WriteData[23]_INST_0_i_4_n_0\,
      I4 => rd2(0),
      I5 => \WriteData[23]_INST_0_i_5_n_0\,
      O => \readDataM[16]\
    );
\WriteData[17]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ECECE0A0E0A0E0A0"
    )
        port map (
      I0 => \WriteData[31]_INST_0_i_5_n_0\,
      I1 => \WriteData[31]_INST_0_i_6_n_0\,
      I2 => ReadData(17),
      I3 => \WriteData[23]_INST_0_i_4_n_0\,
      I4 => rd2(1),
      I5 => \WriteData[23]_INST_0_i_5_n_0\,
      O => \readDataM[17]\
    );
\WriteData[18]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ECECE0A0E0A0E0A0"
    )
        port map (
      I0 => \WriteData[31]_INST_0_i_5_n_0\,
      I1 => \WriteData[31]_INST_0_i_6_n_0\,
      I2 => ReadData(18),
      I3 => \WriteData[23]_INST_0_i_4_n_0\,
      I4 => rd2(2),
      I5 => \WriteData[23]_INST_0_i_5_n_0\,
      O => \readDataM[18]\
    );
\WriteData[19]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ECECE0A0E0A0E0A0"
    )
        port map (
      I0 => \WriteData[31]_INST_0_i_5_n_0\,
      I1 => \WriteData[31]_INST_0_i_6_n_0\,
      I2 => ReadData(19),
      I3 => \WriteData[23]_INST_0_i_4_n_0\,
      I4 => rd2(3),
      I5 => \WriteData[23]_INST_0_i_5_n_0\,
      O => \readDataM[19]\
    );
\WriteData[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F8F8F808F808F80"
    )
        port map (
      I0 => \rd21__3\,
      I1 => rd20(1),
      I2 => Instr(14),
      I3 => \WriteData[1]_INST_0_i_1_n_0\,
      I4 => ReadData(1),
      I5 => \^q_reg[5]_2\,
      O => WriteData(1)
    );
\WriteData[1]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEC000EAAAC000"
    )
        port map (
      I0 => \WriteData[15]_INST_0_i_2_n_0\,
      I1 => \WriteData[31]_INST_0_i_6_n_0\,
      I2 => ReadData(1),
      I3 => \WriteData[7]_INST_0_i_3_n_0\,
      I4 => rd2(1),
      I5 => \WriteData[7]_INST_0_i_4_n_0\,
      O => \WriteData[1]_INST_0_i_1_n_0\
    );
\WriteData[20]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ECECE0A0E0A0E0A0"
    )
        port map (
      I0 => \WriteData[31]_INST_0_i_5_n_0\,
      I1 => \WriteData[31]_INST_0_i_6_n_0\,
      I2 => ReadData(20),
      I3 => \WriteData[23]_INST_0_i_4_n_0\,
      I4 => rd2(4),
      I5 => \WriteData[23]_INST_0_i_5_n_0\,
      O => \readDataM[20]\
    );
\WriteData[21]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ECECE0A0E0A0E0A0"
    )
        port map (
      I0 => \WriteData[31]_INST_0_i_5_n_0\,
      I1 => \WriteData[31]_INST_0_i_6_n_0\,
      I2 => ReadData(21),
      I3 => \WriteData[23]_INST_0_i_4_n_0\,
      I4 => rd2(5),
      I5 => \WriteData[23]_INST_0_i_5_n_0\,
      O => \readDataM[21]\
    );
\WriteData[22]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ECECE0A0E0A0E0A0"
    )
        port map (
      I0 => \WriteData[31]_INST_0_i_5_n_0\,
      I1 => \WriteData[31]_INST_0_i_6_n_0\,
      I2 => ReadData(22),
      I3 => \WriteData[23]_INST_0_i_4_n_0\,
      I4 => rd2(6),
      I5 => \WriteData[23]_INST_0_i_5_n_0\,
      O => \readDataM[22]\
    );
\WriteData[23]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ECECE0A0E0A0E0A0"
    )
        port map (
      I0 => \WriteData[31]_INST_0_i_5_n_0\,
      I1 => \WriteData[31]_INST_0_i_6_n_0\,
      I2 => ReadData(23),
      I3 => \WriteData[23]_INST_0_i_4_n_0\,
      I4 => rd2(7),
      I5 => \WriteData[23]_INST_0_i_5_n_0\,
      O => \readDataM[23]\
    );
\WriteData[23]_INST_0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \WriteData[7]_INST_0_i_4_n_0\,
      I1 => \WriteData[15]_INST_0_i_4_n_0\,
      I2 => \WriteData[31]_INST_0_i_7_n_0\,
      O => \WriteData[23]_INST_0_i_4_n_0\
    );
\WriteData[23]_INST_0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^aluresult[31]_inst_0_i_5_1\,
      I1 => \^aluresult[31]_inst_0_i_5_0\,
      O => \WriteData[23]_INST_0_i_5_n_0\
    );
\WriteData[24]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEC000EAAAC000"
    )
        port map (
      I0 => \WriteData[31]_INST_0_i_5_n_0\,
      I1 => \WriteData[31]_INST_0_i_6_n_0\,
      I2 => rd2(0),
      I3 => \WriteData[31]_INST_0_i_7_n_0\,
      I4 => ReadData(24),
      I5 => \WriteData[31]_INST_0_i_8_n_0\,
      O => \readDataM[24]\
    );
\WriteData[25]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEC000EAAAC000"
    )
        port map (
      I0 => \WriteData[31]_INST_0_i_5_n_0\,
      I1 => \WriteData[31]_INST_0_i_6_n_0\,
      I2 => rd2(1),
      I3 => \WriteData[31]_INST_0_i_7_n_0\,
      I4 => ReadData(25),
      I5 => \WriteData[31]_INST_0_i_8_n_0\,
      O => \readDataM[25]\
    );
\WriteData[26]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEC000EAAAC000"
    )
        port map (
      I0 => \WriteData[31]_INST_0_i_5_n_0\,
      I1 => \WriteData[31]_INST_0_i_6_n_0\,
      I2 => rd2(2),
      I3 => \WriteData[31]_INST_0_i_7_n_0\,
      I4 => ReadData(26),
      I5 => \WriteData[31]_INST_0_i_8_n_0\,
      O => \readDataM[26]\
    );
\WriteData[27]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEC000EAAAC000"
    )
        port map (
      I0 => \WriteData[31]_INST_0_i_5_n_0\,
      I1 => \WriteData[31]_INST_0_i_6_n_0\,
      I2 => rd2(3),
      I3 => \WriteData[31]_INST_0_i_7_n_0\,
      I4 => ReadData(27),
      I5 => \WriteData[31]_INST_0_i_8_n_0\,
      O => \readDataM[27]\
    );
\WriteData[28]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEC000EAAAC000"
    )
        port map (
      I0 => \WriteData[31]_INST_0_i_5_n_0\,
      I1 => \WriteData[31]_INST_0_i_6_n_0\,
      I2 => rd2(4),
      I3 => \WriteData[31]_INST_0_i_7_n_0\,
      I4 => ReadData(28),
      I5 => \WriteData[31]_INST_0_i_8_n_0\,
      O => \readDataM[28]\
    );
\WriteData[29]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEC000EAAAC000"
    )
        port map (
      I0 => \WriteData[31]_INST_0_i_5_n_0\,
      I1 => \WriteData[31]_INST_0_i_6_n_0\,
      I2 => rd2(5),
      I3 => \WriteData[31]_INST_0_i_7_n_0\,
      I4 => ReadData(29),
      I5 => \WriteData[31]_INST_0_i_8_n_0\,
      O => \readDataM[29]\
    );
\WriteData[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F8F8F808F808F80"
    )
        port map (
      I0 => \rd21__3\,
      I1 => rd20(2),
      I2 => Instr(14),
      I3 => \WriteData[2]_INST_0_i_1_n_0\,
      I4 => ReadData(2),
      I5 => \^q_reg[5]_2\,
      O => WriteData(2)
    );
\WriteData[2]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEC000EAAAC000"
    )
        port map (
      I0 => \WriteData[15]_INST_0_i_2_n_0\,
      I1 => \WriteData[31]_INST_0_i_6_n_0\,
      I2 => ReadData(2),
      I3 => \WriteData[7]_INST_0_i_3_n_0\,
      I4 => rd2(2),
      I5 => \WriteData[7]_INST_0_i_4_n_0\,
      O => \WriteData[2]_INST_0_i_1_n_0\
    );
\WriteData[30]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEC000EAAAC000"
    )
        port map (
      I0 => \WriteData[31]_INST_0_i_5_n_0\,
      I1 => \WriteData[31]_INST_0_i_6_n_0\,
      I2 => rd2(6),
      I3 => \WriteData[31]_INST_0_i_7_n_0\,
      I4 => ReadData(30),
      I5 => \WriteData[31]_INST_0_i_8_n_0\,
      O => \readDataM[30]\
    );
\WriteData[31]_INST_0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => Instr(13),
      I1 => Instr(12),
      I2 => \^aluresult[31]_inst_0_i_5_1\,
      O => \^q_reg[5]_2\
    );
\WriteData[31]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEC000EAAAC000"
    )
        port map (
      I0 => \WriteData[31]_INST_0_i_5_n_0\,
      I1 => \WriteData[31]_INST_0_i_6_n_0\,
      I2 => rd2(7),
      I3 => \WriteData[31]_INST_0_i_7_n_0\,
      I4 => ReadData(31),
      I5 => \WriteData[31]_INST_0_i_8_n_0\,
      O => \readDataM[31]\
    );
\WriteData[31]_INST_0_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => Instr(13),
      I1 => Instr(12),
      I2 => \^aluresult[31]_inst_0_i_5_1\,
      O => \WriteData[31]_INST_0_i_5_n_0\
    );
\WriteData[31]_INST_0_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Instr(12),
      I1 => Instr(13),
      O => \WriteData[31]_INST_0_i_6_n_0\
    );
\WriteData[31]_INST_0_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^aluresult[31]_inst_0_i_5_0\,
      I1 => \^aluresult[31]_inst_0_i_5_1\,
      O => \WriteData[31]_INST_0_i_7_n_0\
    );
\WriteData[31]_INST_0_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \WriteData[7]_INST_0_i_4_n_0\,
      I1 => \WriteData[15]_INST_0_i_4_n_0\,
      I2 => \WriteData[23]_INST_0_i_5_n_0\,
      O => \WriteData[31]_INST_0_i_8_n_0\
    );
\WriteData[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F8F8F808F808F80"
    )
        port map (
      I0 => \rd21__3\,
      I1 => rd20(3),
      I2 => Instr(14),
      I3 => \WriteData[3]_INST_0_i_1_n_0\,
      I4 => ReadData(3),
      I5 => \^q_reg[5]_2\,
      O => WriteData(3)
    );
\WriteData[3]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEC000EAAAC000"
    )
        port map (
      I0 => \WriteData[15]_INST_0_i_2_n_0\,
      I1 => \WriteData[31]_INST_0_i_6_n_0\,
      I2 => ReadData(3),
      I3 => \WriteData[7]_INST_0_i_3_n_0\,
      I4 => rd2(3),
      I5 => \WriteData[7]_INST_0_i_4_n_0\,
      O => \WriteData[3]_INST_0_i_1_n_0\
    );
\WriteData[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F8F8F808F808F80"
    )
        port map (
      I0 => \rd21__3\,
      I1 => rd20(4),
      I2 => Instr(14),
      I3 => \WriteData[4]_INST_0_i_1_n_0\,
      I4 => ReadData(4),
      I5 => \^q_reg[5]_2\,
      O => WriteData(4)
    );
\WriteData[4]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEC000EAAAC000"
    )
        port map (
      I0 => \WriteData[15]_INST_0_i_2_n_0\,
      I1 => \WriteData[31]_INST_0_i_6_n_0\,
      I2 => ReadData(4),
      I3 => \WriteData[7]_INST_0_i_3_n_0\,
      I4 => rd2(4),
      I5 => \WriteData[7]_INST_0_i_4_n_0\,
      O => \WriteData[4]_INST_0_i_1_n_0\
    );
\WriteData[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F8F8F808F808F80"
    )
        port map (
      I0 => \rd21__3\,
      I1 => rd20(5),
      I2 => Instr(14),
      I3 => \WriteData[5]_INST_0_i_1_n_0\,
      I4 => ReadData(5),
      I5 => \^q_reg[5]_2\,
      O => WriteData(5)
    );
\WriteData[5]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEC000EAAAC000"
    )
        port map (
      I0 => \WriteData[15]_INST_0_i_2_n_0\,
      I1 => \WriteData[31]_INST_0_i_6_n_0\,
      I2 => ReadData(5),
      I3 => \WriteData[7]_INST_0_i_3_n_0\,
      I4 => rd2(5),
      I5 => \WriteData[7]_INST_0_i_4_n_0\,
      O => \WriteData[5]_INST_0_i_1_n_0\
    );
\WriteData[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F8F8F808F808F80"
    )
        port map (
      I0 => \rd21__3\,
      I1 => rd20(6),
      I2 => Instr(14),
      I3 => \WriteData[6]_INST_0_i_1_n_0\,
      I4 => ReadData(6),
      I5 => \^q_reg[5]_2\,
      O => WriteData(6)
    );
\WriteData[6]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEC000EAAAC000"
    )
        port map (
      I0 => \WriteData[15]_INST_0_i_2_n_0\,
      I1 => \WriteData[31]_INST_0_i_6_n_0\,
      I2 => ReadData(6),
      I3 => \WriteData[7]_INST_0_i_3_n_0\,
      I4 => rd2(6),
      I5 => \WriteData[7]_INST_0_i_4_n_0\,
      O => \WriteData[6]_INST_0_i_1_n_0\
    );
\WriteData[7]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F8F8F808F808F80"
    )
        port map (
      I0 => \rd21__3\,
      I1 => rd20(7),
      I2 => Instr(14),
      I3 => \WriteData[7]_INST_0_i_2_n_0\,
      I4 => ReadData(7),
      I5 => \^q_reg[5]_2\,
      O => WriteData(7)
    );
\WriteData[7]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEC000EAAAC000"
    )
        port map (
      I0 => \WriteData[15]_INST_0_i_2_n_0\,
      I1 => \WriteData[31]_INST_0_i_6_n_0\,
      I2 => ReadData(7),
      I3 => \WriteData[7]_INST_0_i_3_n_0\,
      I4 => rd2(7),
      I5 => \WriteData[7]_INST_0_i_4_n_0\,
      O => \WriteData[7]_INST_0_i_2_n_0\
    );
\WriteData[7]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \WriteData[23]_INST_0_i_5_n_0\,
      I1 => \WriteData[31]_INST_0_i_7_n_0\,
      I2 => \WriteData[15]_INST_0_i_4_n_0\,
      O => \WriteData[7]_INST_0_i_3_n_0\
    );
\WriteData[7]_INST_0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^aluresult[31]_inst_0_i_5_0\,
      I1 => \^aluresult[31]_inst_0_i_5_1\,
      O => \WriteData[7]_INST_0_i_4_n_0\
    );
\WriteData[8]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF55FE44FE44FE44"
    )
        port map (
      I0 => Instr(14),
      I1 => \WriteData[8]_INST_0_i_1_n_0\,
      I2 => \WriteData[15]_INST_0_i_2_n_0\,
      I3 => rd2(8),
      I4 => ReadData(8),
      I5 => \^q_reg[5]_2\,
      O => WriteData(8)
    );
\WriteData[8]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888888800000000"
    )
        port map (
      I0 => \WriteData[15]_INST_0_i_3_n_0\,
      I1 => ReadData(8),
      I2 => \WriteData[15]_INST_0_i_4_n_0\,
      I3 => rd20(0),
      I4 => \rd21__3\,
      I5 => \WriteData[31]_INST_0_i_6_n_0\,
      O => \WriteData[8]_INST_0_i_1_n_0\
    );
\WriteData[9]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF55FE44FE44FE44"
    )
        port map (
      I0 => Instr(14),
      I1 => \WriteData[9]_INST_0_i_1_n_0\,
      I2 => \WriteData[15]_INST_0_i_2_n_0\,
      I3 => rd2(9),
      I4 => ReadData(9),
      I5 => \^q_reg[5]_2\,
      O => WriteData(9)
    );
\WriteData[9]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888888800000000"
    )
        port map (
      I0 => \WriteData[15]_INST_0_i_3_n_0\,
      I1 => ReadData(9),
      I2 => \WriteData[15]_INST_0_i_4_n_0\,
      I3 => rd20(1),
      I4 => \rd21__3\,
      I5 => \WriteData[31]_INST_0_i_6_n_0\,
      O => \WriteData[9]_INST_0_i_1_n_0\
    );
lt_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => SrcB(5),
      I1 => \^srca\(6),
      I2 => \^srca\(7),
      I3 => SrcB(6),
      O => DI(0)
    );
\q[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000FE10FE10"
    )
        port map (
      I0 => \q_reg[0]_0\,
      I1 => \^resultsrc\(0),
      I2 => \^q\(0),
      I3 => PCTarget(0),
      I4 => \^aluresult[31]_inst_0_i_5_0\,
      I5 => \^pcsrc10_out\,
      O => PCNext(0)
    );
\q[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000FE10FE10"
    )
        port map (
      I0 => \q_reg[0]_0\,
      I1 => \^resultsrc\(0),
      I2 => \^q\(1),
      I3 => PCTarget(1),
      I4 => \^aluresult[31]_inst_0_i_5_1\,
      I5 => \^pcsrc10_out\,
      O => PCNext(1)
    );
\q[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000EF01EF01"
    )
        port map (
      I0 => \q_reg[0]_0\,
      I1 => \^resultsrc\(0),
      I2 => \^q\(2),
      I3 => PCTarget(2),
      I4 => \^aluresult[31]_inst_0_i_5_2\,
      I5 => \^pcsrc10_out\,
      O => PCNext(2)
    );
\q[31]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => Instr(13),
      I1 => Instr(12),
      I2 => Instr(14),
      O => \q_reg[5]_9\
    );
\q[31]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \^aluresult[31]_inst_0_i_5_4\,
      I1 => \^aluresult[31]_inst_0_i_5_5\,
      I2 => \^aluresult[31]_inst_0_i_5_6\,
      I3 => \^aluresult[31]_inst_0_i_5_7\,
      O => \q[31]_i_12_n_0\
    );
\q[31]_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^aluresult[31]_inst_0_i_5_2\,
      I1 => \^aluresult[31]_inst_0_i_5_8\,
      O => \q[31]_i_13_n_0\
    );
\q[31]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Instr(2),
      I1 => Instr(6),
      O => \^resultsrc\(0)
    );
\q[31]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000020000000"
    )
        port map (
      I0 => Instr(5),
      I1 => Instr(4),
      I2 => \^resultsrc\(0),
      I3 => Instr(0),
      I4 => Instr(1),
      I5 => Instr(3),
      O => \^pcsrc10_out\
    );
\q[31]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => Instr(2),
      I1 => Instr(6),
      I2 => \^pcsrc10_out\,
      O => \q_reg[5]_8\
    );
\q[31]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000800000000000"
    )
        port map (
      I0 => \q[31]_i_2\,
      I1 => \q[31]_i_12_n_0\,
      I2 => \q[31]_i_13_n_0\,
      I3 => \WriteData[7]_INST_0_i_4_n_0\,
      I4 => \^aluresult[31]_inst_0_i_5_3\,
      I5 => \q[31]_i_2_0\,
      O => \q[31]_i_14\
    );
\q[31]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Instr(13),
      I1 => Instr(14),
      O => \q_reg[5]_10\
    );
\q_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReady,
      CLR => reset,
      D => PCNext(0),
      Q => \^q\(0)
    );
\q_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReady,
      CLR => reset,
      D => D(7),
      Q => \^q\(10)
    );
\q_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReady,
      CLR => reset,
      D => D(8),
      Q => \^q\(11)
    );
\q_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReady,
      CLR => reset,
      D => D(9),
      Q => \^q\(12)
    );
\q_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReady,
      CLR => reset,
      D => D(10),
      Q => \^q\(13)
    );
\q_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReady,
      CLR => reset,
      D => D(11),
      Q => \^q\(14)
    );
\q_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReady,
      CLR => reset,
      D => D(12),
      Q => \^q\(15)
    );
\q_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReady,
      CLR => reset,
      D => D(13),
      Q => \^q\(16)
    );
\q_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReady,
      CLR => reset,
      D => D(14),
      Q => \^q\(17)
    );
\q_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReady,
      CLR => reset,
      D => D(15),
      Q => \^q\(18)
    );
\q_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReady,
      CLR => reset,
      D => D(16),
      Q => \^q\(19)
    );
\q_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReady,
      CLR => reset,
      D => PCNext(1),
      Q => \^q\(1)
    );
\q_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReady,
      CLR => reset,
      D => D(17),
      Q => \^q\(20)
    );
\q_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReady,
      CLR => reset,
      D => D(18),
      Q => \^q\(21)
    );
\q_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReady,
      CLR => reset,
      D => D(19),
      Q => \^q\(22)
    );
\q_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReady,
      CLR => reset,
      D => D(20),
      Q => \^q\(23)
    );
\q_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReady,
      CLR => reset,
      D => D(21),
      Q => \^q\(24)
    );
\q_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReady,
      CLR => reset,
      D => D(22),
      Q => \^q\(25)
    );
\q_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReady,
      CLR => reset,
      D => D(23),
      Q => \^q\(26)
    );
\q_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReady,
      CLR => reset,
      D => D(24),
      Q => \^q\(27)
    );
\q_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReady,
      CLR => reset,
      D => D(25),
      Q => \^q\(28)
    );
\q_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReady,
      CLR => reset,
      D => D(26),
      Q => \^q\(29)
    );
\q_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReady,
      CLR => reset,
      D => PCNext(2),
      Q => \^q\(2)
    );
\q_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReady,
      CLR => reset,
      D => D(27),
      Q => \^q\(30)
    );
\q_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReady,
      CLR => reset,
      D => D(28),
      Q => \^q\(31)
    );
\q_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReady,
      CLR => reset,
      D => D(0),
      Q => \^q\(3)
    );
\q_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReady,
      CLR => reset,
      D => D(1),
      Q => \^q\(4)
    );
\q_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReady,
      CLR => reset,
      D => D(2),
      Q => \^q\(5)
    );
\q_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReady,
      CLR => reset,
      D => D(3),
      Q => \^q\(6)
    );
\q_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReady,
      CLR => reset,
      D => D(4),
      Q => \^q\(7)
    );
\q_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReady,
      CLR => reset,
      D => D(5),
      Q => \^q\(8)
    );
\q_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReady,
      CLR => reset,
      D => D(6),
      Q => \^q\(9)
    );
rf_reg_r1_0_31_0_5_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7B3F7B3F7B3C480"
    )
        port map (
      I0 => \^aluresult[31]_inst_0_i_5_1\,
      I1 => Instr(12),
      I2 => ReadData(17),
      I3 => ReadData(1),
      I4 => rf_reg_r1_0_31_0_5_i_22_n_0,
      I5 => rf_reg_r1_0_31_0_5_i_23_n_0,
      O => rf_reg_r1_0_31_0_5_i_10_n_0
    );
rf_reg_r1_0_31_0_5_i_12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA0CCC0CCC0CCC0"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^aluresult[31]_inst_0_i_5_0\,
      I2 => Instr(5),
      I3 => Instr(4),
      I4 => Instr(6),
      I5 => Instr(2),
      O => rf_reg_r1_0_31_0_5_i_12_n_0
    );
rf_reg_r1_0_31_0_5_i_13: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7B3F7B3F7B3C480"
    )
        port map (
      I0 => \^aluresult[31]_inst_0_i_5_1\,
      I1 => Instr(12),
      I2 => ReadData(16),
      I3 => ReadData(0),
      I4 => rf_reg_r1_0_31_0_5_i_24_n_0,
      I5 => rf_reg_r1_0_31_0_5_i_25_n_0,
      O => rf_reg_r1_0_31_0_5_i_13_n_0
    );
rf_reg_r1_0_31_0_5_i_15: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7B3F7B3F7B3C480"
    )
        port map (
      I0 => \^aluresult[31]_inst_0_i_5_1\,
      I1 => Instr(12),
      I2 => ReadData(19),
      I3 => ReadData(3),
      I4 => rf_reg_r1_0_31_0_5_i_26_n_0,
      I5 => rf_reg_r1_0_31_0_5_i_27_n_0,
      O => \readDataM[19]_0\
    );
rf_reg_r1_0_31_0_5_i_16: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5550CCC0CCC0CCC0"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^aluresult[31]_inst_0_i_5_2\,
      I2 => Instr(5),
      I3 => Instr(4),
      I4 => Instr(6),
      I5 => Instr(2),
      O => rf_reg_r1_0_31_0_5_i_16_n_0
    );
rf_reg_r1_0_31_0_5_i_17: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7B3F7B3F7B3C480"
    )
        port map (
      I0 => \^aluresult[31]_inst_0_i_5_1\,
      I1 => Instr(12),
      I2 => ReadData(18),
      I3 => ReadData(2),
      I4 => rf_reg_r1_0_31_0_5_i_28_n_0,
      I5 => rf_reg_r1_0_31_0_5_i_29_n_0,
      O => rf_reg_r1_0_31_0_5_i_17_n_0
    );
rf_reg_r1_0_31_0_5_i_19: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7B3F7B3F7B3C480"
    )
        port map (
      I0 => \^aluresult[31]_inst_0_i_5_1\,
      I1 => Instr(12),
      I2 => ReadData(21),
      I3 => ReadData(5),
      I4 => rf_reg_r1_0_31_0_5_i_30_n_0,
      I5 => rf_reg_r1_0_31_0_5_i_31_n_0,
      O => \readDataM[21]_0\
    );
rf_reg_r1_0_31_0_5_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEAEAAAA"
    )
        port map (
      I0 => rf_reg_r1_0_31_0_5_i_9_n_0,
      I1 => rf_reg_r1_0_31_0_5_i_10_n_0,
      I2 => Instr(13),
      I3 => ReadData(1),
      I4 => rf_reg_r1_0_31_6_11,
      O => wd3(1)
    );
rf_reg_r1_0_31_0_5_i_21: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7B3F7B3F7B3C480"
    )
        port map (
      I0 => \^aluresult[31]_inst_0_i_5_1\,
      I1 => Instr(12),
      I2 => ReadData(20),
      I3 => ReadData(4),
      I4 => rf_reg_r1_0_31_0_5_i_32_n_0,
      I5 => rf_reg_r1_0_31_0_5_i_33_n_0,
      O => \readDataM[20]_0\
    );
rf_reg_r1_0_31_0_5_i_22: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \WriteData[15]_INST_0_i_4_n_0\,
      I1 => ReadData(9),
      I2 => \WriteData[7]_INST_0_i_4_n_0\,
      I3 => ReadData(1),
      O => rf_reg_r1_0_31_0_5_i_22_n_0
    );
rf_reg_r1_0_31_0_5_i_23: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \WriteData[31]_INST_0_i_7_n_0\,
      I1 => ReadData(25),
      I2 => \WriteData[23]_INST_0_i_5_n_0\,
      I3 => ReadData(17),
      O => rf_reg_r1_0_31_0_5_i_23_n_0
    );
rf_reg_r1_0_31_0_5_i_24: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \WriteData[15]_INST_0_i_4_n_0\,
      I1 => ReadData(8),
      I2 => \WriteData[7]_INST_0_i_4_n_0\,
      I3 => ReadData(0),
      O => rf_reg_r1_0_31_0_5_i_24_n_0
    );
rf_reg_r1_0_31_0_5_i_25: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \WriteData[31]_INST_0_i_7_n_0\,
      I1 => ReadData(24),
      I2 => \WriteData[23]_INST_0_i_5_n_0\,
      I3 => ReadData(16),
      O => rf_reg_r1_0_31_0_5_i_25_n_0
    );
rf_reg_r1_0_31_0_5_i_26: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \WriteData[15]_INST_0_i_4_n_0\,
      I1 => ReadData(11),
      I2 => \WriteData[7]_INST_0_i_4_n_0\,
      I3 => ReadData(3),
      O => rf_reg_r1_0_31_0_5_i_26_n_0
    );
rf_reg_r1_0_31_0_5_i_27: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \WriteData[31]_INST_0_i_7_n_0\,
      I1 => ReadData(27),
      I2 => \WriteData[23]_INST_0_i_5_n_0\,
      I3 => ReadData(19),
      O => rf_reg_r1_0_31_0_5_i_27_n_0
    );
rf_reg_r1_0_31_0_5_i_28: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \WriteData[15]_INST_0_i_4_n_0\,
      I1 => ReadData(10),
      I2 => \WriteData[7]_INST_0_i_4_n_0\,
      I3 => ReadData(2),
      O => rf_reg_r1_0_31_0_5_i_28_n_0
    );
rf_reg_r1_0_31_0_5_i_29: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \WriteData[31]_INST_0_i_7_n_0\,
      I1 => ReadData(26),
      I2 => \WriteData[23]_INST_0_i_5_n_0\,
      I3 => ReadData(18),
      O => rf_reg_r1_0_31_0_5_i_29_n_0
    );
rf_reg_r1_0_31_0_5_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEAEAAAA"
    )
        port map (
      I0 => rf_reg_r1_0_31_0_5_i_12_n_0,
      I1 => rf_reg_r1_0_31_0_5_i_13_n_0,
      I2 => Instr(13),
      I3 => ReadData(0),
      I4 => rf_reg_r1_0_31_6_11,
      O => wd3(0)
    );
rf_reg_r1_0_31_0_5_i_30: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \WriteData[15]_INST_0_i_4_n_0\,
      I1 => ReadData(13),
      I2 => \WriteData[7]_INST_0_i_4_n_0\,
      I3 => ReadData(5),
      O => rf_reg_r1_0_31_0_5_i_30_n_0
    );
rf_reg_r1_0_31_0_5_i_31: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \WriteData[31]_INST_0_i_7_n_0\,
      I1 => ReadData(29),
      I2 => \WriteData[23]_INST_0_i_5_n_0\,
      I3 => ReadData(21),
      O => rf_reg_r1_0_31_0_5_i_31_n_0
    );
rf_reg_r1_0_31_0_5_i_32: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \WriteData[15]_INST_0_i_4_n_0\,
      I1 => ReadData(12),
      I2 => \WriteData[7]_INST_0_i_4_n_0\,
      I3 => ReadData(4),
      O => rf_reg_r1_0_31_0_5_i_32_n_0
    );
rf_reg_r1_0_31_0_5_i_33: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \WriteData[31]_INST_0_i_7_n_0\,
      I1 => ReadData(28),
      I2 => \WriteData[23]_INST_0_i_5_n_0\,
      I3 => ReadData(20),
      O => rf_reg_r1_0_31_0_5_i_33_n_0
    );
rf_reg_r1_0_31_0_5_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEAEAAAA"
    )
        port map (
      I0 => rf_reg_r1_0_31_0_5_i_16_n_0,
      I1 => rf_reg_r1_0_31_0_5_i_17_n_0,
      I2 => Instr(13),
      I3 => ReadData(2),
      I4 => rf_reg_r1_0_31_6_11,
      O => wd3(2)
    );
rf_reg_r1_0_31_0_5_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA0CCC0CCC0CCC0"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^aluresult[31]_inst_0_i_5_1\,
      I2 => Instr(5),
      I3 => Instr(4),
      I4 => Instr(6),
      I5 => Instr(2),
      O => rf_reg_r1_0_31_0_5_i_9_n_0
    );
rf_reg_r1_0_31_12_17_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F000AA00F0CCAACC"
    )
        port map (
      I0 => ReadData(15),
      I1 => data0(31),
      I2 => ReadData(31),
      I3 => Instr(12),
      I4 => \^aluresult[31]_inst_0_i_5_1\,
      I5 => Instr(14),
      O => rf_reg_r1_0_31_12_17_i_10_n_0
    );
rf_reg_r1_0_31_12_17_i_12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAACCAAAAAAF0"
    )
        port map (
      I0 => \^aluresult[31]_inst_0_i_5_5\,
      I1 => ReadData(14),
      I2 => rf_reg_r1_0_31_12_17_i_19_n_0,
      I3 => Instr(5),
      I4 => Instr(4),
      I5 => Instr(13),
      O => \readDataM[14]\
    );
rf_reg_r1_0_31_12_17_i_13: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2222222222220020"
    )
        port map (
      I0 => \rf_reg_r1_0_31_30_31_i_1__0\,
      I1 => Instr(14),
      I2 => data0(31),
      I3 => Instr(12),
      I4 => rf_reg_r1_0_31_12_17_i_21_n_0,
      I5 => rf_reg_r1_0_31_12_17_i_22_n_0,
      O => \^q_reg[5]_1\
    );
rf_reg_r1_0_31_12_17_i_16: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F000AA00F0CCAACC"
    )
        port map (
      I0 => ReadData(13),
      I1 => data0(31),
      I2 => ReadData(29),
      I3 => Instr(12),
      I4 => \^aluresult[31]_inst_0_i_5_1\,
      I5 => Instr(14),
      O => rf_reg_r1_0_31_12_17_i_16_n_0
    );
rf_reg_r1_0_31_12_17_i_17: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F000AA00F0CCAACC"
    )
        port map (
      I0 => ReadData(12),
      I1 => data0(31),
      I2 => ReadData(28),
      I3 => Instr(12),
      I4 => \^aluresult[31]_inst_0_i_5_1\,
      I5 => Instr(14),
      O => rf_reg_r1_0_31_12_17_i_17_n_0
    );
rf_reg_r1_0_31_12_17_i_18: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => ReadData(23),
      I1 => ReadData(31),
      I2 => ReadData(7),
      I3 => \^aluresult[31]_inst_0_i_5_1\,
      I4 => \^aluresult[31]_inst_0_i_5_0\,
      I5 => ReadData(15),
      O => data0(31)
    );
rf_reg_r1_0_31_12_17_i_19: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F000AA00F0CCAACC"
    )
        port map (
      I0 => ReadData(14),
      I1 => data0(31),
      I2 => ReadData(30),
      I3 => Instr(12),
      I4 => \^aluresult[31]_inst_0_i_5_1\,
      I5 => Instr(14),
      O => rf_reg_r1_0_31_12_17_i_19_n_0
    );
rf_reg_r1_0_31_12_17_i_21: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => Instr(12),
      I1 => \^aluresult[31]_inst_0_i_5_1\,
      I2 => ReadData(15),
      O => rf_reg_r1_0_31_12_17_i_21_n_0
    );
rf_reg_r1_0_31_12_17_i_22: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^aluresult[31]_inst_0_i_5_1\,
      I1 => Instr(12),
      I2 => ReadData(31),
      O => rf_reg_r1_0_31_12_17_i_22_n_0
    );
rf_reg_r1_0_31_12_17_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3030B8B83330B8B8"
    )
        port map (
      I0 => PCPlus4(0),
      I1 => \^resultsrc\(0),
      I2 => rf_reg_r1_0_31_12_17_i_9_n_0,
      I3 => rf_reg_r1_0_31_12_17_i_10_n_0,
      I4 => rf_reg_r1_0_31_18_23(0),
      I5 => Instr(13),
      O => wd3(4)
    );
rf_reg_r1_0_31_12_17_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAACCAAAAAAF0"
    )
        port map (
      I0 => \^aluresult[31]_inst_0_i_5_6\,
      I1 => ReadData(13),
      I2 => rf_reg_r1_0_31_12_17_i_16_n_0,
      I3 => Instr(5),
      I4 => Instr(4),
      I5 => Instr(13),
      O => \readDataM[13]\
    );
rf_reg_r1_0_31_12_17_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAACCAAAAAAF0"
    )
        port map (
      I0 => \^aluresult[31]_inst_0_i_5_7\,
      I1 => ReadData(12),
      I2 => rf_reg_r1_0_31_12_17_i_17_n_0,
      I3 => Instr(5),
      I4 => Instr(4),
      I5 => Instr(13),
      O => \readDataM[12]\
    );
rf_reg_r1_0_31_12_17_i_9: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF80008"
    )
        port map (
      I0 => ReadData(15),
      I1 => Instr(13),
      I2 => Instr(4),
      I3 => Instr(5),
      I4 => \^aluresult[31]_inst_0_i_5_4\,
      O => rf_reg_r1_0_31_12_17_i_9_n_0
    );
rf_reg_r1_0_31_18_23_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3333BBBB3030BBB8"
    )
        port map (
      I0 => PCPlus4(1),
      I1 => \^resultsrc\(0),
      I2 => \^q_reg[5]_1\,
      I3 => \^aluresult[31]_inst_0_i_5_12\,
      I4 => rf_reg_r1_0_31_18_23(0),
      I5 => rf_reg_r1_0_31_18_23_1,
      O => wd3(5)
    );
rf_reg_r1_0_31_18_23_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3333BBBB3030BBB8"
    )
        port map (
      I0 => PCPlus4(2),
      I1 => \^resultsrc\(0),
      I2 => \^q_reg[5]_1\,
      I3 => \^aluresult[31]_inst_0_i_5_11\,
      I4 => rf_reg_r1_0_31_18_23(0),
      I5 => rf_reg_r1_0_31_18_23_0,
      O => wd3(6)
    );
rf_reg_r1_0_31_6_11_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEAEAAAA"
    )
        port map (
      I0 => rf_reg_r1_0_31_6_11_0,
      I1 => rf_reg_r1_0_31_6_11_i_8_n_0,
      I2 => Instr(13),
      I3 => ReadData(7),
      I4 => rf_reg_r1_0_31_6_11,
      O => wd3(3)
    );
rf_reg_r1_0_31_6_11_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7B3F7B3F7B3C480"
    )
        port map (
      I0 => \^aluresult[31]_inst_0_i_5_1\,
      I1 => Instr(12),
      I2 => ReadData(22),
      I3 => ReadData(6),
      I4 => rf_reg_r1_0_31_6_11_i_17_n_0,
      I5 => rf_reg_r1_0_31_6_11_i_18_n_0,
      O => \readDataM[22]_0\
    );
rf_reg_r1_0_31_6_11_i_11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAACCAAAAAAF0"
    )
        port map (
      I0 => \^aluresult[31]_inst_0_i_5_9\,
      I1 => ReadData(9),
      I2 => rf_reg_r1_0_31_6_11_i_19_n_0,
      I3 => Instr(5),
      I4 => Instr(4),
      I5 => Instr(13),
      O => \readDataM[9]\
    );
rf_reg_r1_0_31_6_11_i_15: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \WriteData[31]_INST_0_i_7_n_0\,
      I1 => ReadData(31),
      I2 => \WriteData[23]_INST_0_i_5_n_0\,
      I3 => ReadData(23),
      O => rf_reg_r1_0_31_6_11_i_15_n_0
    );
rf_reg_r1_0_31_6_11_i_16: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \WriteData[15]_INST_0_i_4_n_0\,
      I1 => ReadData(15),
      I2 => \WriteData[7]_INST_0_i_4_n_0\,
      I3 => ReadData(7),
      O => rf_reg_r1_0_31_6_11_i_16_n_0
    );
rf_reg_r1_0_31_6_11_i_17: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \WriteData[15]_INST_0_i_4_n_0\,
      I1 => ReadData(14),
      I2 => \WriteData[7]_INST_0_i_4_n_0\,
      I3 => ReadData(6),
      O => rf_reg_r1_0_31_6_11_i_17_n_0
    );
rf_reg_r1_0_31_6_11_i_18: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \WriteData[31]_INST_0_i_7_n_0\,
      I1 => ReadData(30),
      I2 => \WriteData[23]_INST_0_i_5_n_0\,
      I3 => ReadData(22),
      O => rf_reg_r1_0_31_6_11_i_18_n_0
    );
rf_reg_r1_0_31_6_11_i_19: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F000AA00F0CCAACC"
    )
        port map (
      I0 => ReadData(9),
      I1 => data0(31),
      I2 => ReadData(25),
      I3 => Instr(12),
      I4 => \^aluresult[31]_inst_0_i_5_1\,
      I5 => Instr(14),
      O => rf_reg_r1_0_31_6_11_i_19_n_0
    );
rf_reg_r1_0_31_6_11_i_20: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F000AA00F0CCAACC"
    )
        port map (
      I0 => ReadData(8),
      I1 => data0(31),
      I2 => ReadData(24),
      I3 => Instr(12),
      I4 => \^aluresult[31]_inst_0_i_5_1\,
      I5 => Instr(14),
      O => \readDataM[8]\
    );
rf_reg_r1_0_31_6_11_i_21: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F000AA00F0CCAACC"
    )
        port map (
      I0 => ReadData(11),
      I1 => data0(31),
      I2 => ReadData(27),
      I3 => Instr(12),
      I4 => \^aluresult[31]_inst_0_i_5_1\,
      I5 => Instr(14),
      O => \readDataM[11]\
    );
rf_reg_r1_0_31_6_11_i_22: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F000AA00F0CCAACC"
    )
        port map (
      I0 => ReadData(10),
      I1 => data0(31),
      I2 => ReadData(26),
      I3 => Instr(12),
      I4 => \^aluresult[31]_inst_0_i_5_1\,
      I5 => Instr(14),
      O => \readDataM[10]\
    );
rf_reg_r1_0_31_6_11_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7D5F7D5F7D5A280"
    )
        port map (
      I0 => Instr(12),
      I1 => \^aluresult[31]_inst_0_i_5_1\,
      I2 => ReadData(23),
      I3 => ReadData(7),
      I4 => rf_reg_r1_0_31_6_11_i_15_n_0,
      I5 => rf_reg_r1_0_31_6_11_i_16_n_0,
      O => rf_reg_r1_0_31_6_11_i_8_n_0
    );
\sum__0_carry__0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C0C0AAC0"
    )
        port map (
      I0 => \^q\(7),
      I1 => rd10(7),
      I2 => \rf/rd11__3\,
      I3 => Instr(2),
      I4 => Instr(5),
      O => \^srca\(7)
    );
\sum__0_carry__0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C0C0AAC0"
    )
        port map (
      I0 => \^q\(6),
      I1 => rd10(6),
      I2 => \rf/rd11__3\,
      I3 => Instr(2),
      I4 => Instr(5),
      O => \^srca\(6)
    );
\sum__0_carry__0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C0C0AAC0"
    )
        port map (
      I0 => \^q\(5),
      I1 => rd10(5),
      I2 => \rf/rd11__3\,
      I3 => Instr(2),
      I4 => Instr(5),
      O => \^srca\(5)
    );
\sum__0_carry__0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C0C0AAC0"
    )
        port map (
      I0 => \^q\(4),
      I1 => rd10(4),
      I2 => \rf/rd11__3\,
      I3 => Instr(2),
      I4 => Instr(5),
      O => \^srca\(4)
    );
\sum__0_carry__1_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C0C0AAC0"
    )
        port map (
      I0 => \^q\(11),
      I1 => rd10(11),
      I2 => \rf/rd11__3\,
      I3 => Instr(2),
      I4 => Instr(5),
      O => \^srca\(11)
    );
\sum__0_carry__1_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C0C0AAC0"
    )
        port map (
      I0 => \^q\(10),
      I1 => rd10(10),
      I2 => \rf/rd11__3\,
      I3 => Instr(2),
      I4 => Instr(5),
      O => \^srca\(10)
    );
\sum__0_carry__1_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C0C0AAC0"
    )
        port map (
      I0 => \^q\(9),
      I1 => rd10(9),
      I2 => \rf/rd11__3\,
      I3 => Instr(2),
      I4 => Instr(5),
      O => \^srca\(9)
    );
\sum__0_carry__1_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C0C0AAC0"
    )
        port map (
      I0 => \^q\(8),
      I1 => rd10(8),
      I2 => \rf/rd11__3\,
      I3 => Instr(2),
      I4 => Instr(5),
      O => \^srca\(8)
    );
\sum__0_carry__2_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C0C0AAC0"
    )
        port map (
      I0 => \^q\(15),
      I1 => rd10(15),
      I2 => \rf/rd11__3\,
      I3 => Instr(2),
      I4 => Instr(5),
      O => \^srca\(15)
    );
\sum__0_carry__2_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C0C0AAC0"
    )
        port map (
      I0 => \^q\(14),
      I1 => rd10(14),
      I2 => \rf/rd11__3\,
      I3 => Instr(2),
      I4 => Instr(5),
      O => \^srca\(14)
    );
\sum__0_carry__2_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C0C0AAC0"
    )
        port map (
      I0 => \^q\(13),
      I1 => rd10(13),
      I2 => \rf/rd11__3\,
      I3 => Instr(2),
      I4 => Instr(5),
      O => \^srca\(13)
    );
\sum__0_carry__2_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C0C0AAC0"
    )
        port map (
      I0 => \^q\(12),
      I1 => rd10(12),
      I2 => \rf/rd11__3\,
      I3 => Instr(2),
      I4 => Instr(5),
      O => \^srca\(12)
    );
\sum__0_carry__3_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C0C0AAC0"
    )
        port map (
      I0 => \^q\(19),
      I1 => rd10(19),
      I2 => \rf/rd11__3\,
      I3 => Instr(2),
      I4 => Instr(5),
      O => \^srca\(19)
    );
\sum__0_carry__3_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C0C0AAC0"
    )
        port map (
      I0 => \^q\(18),
      I1 => rd10(18),
      I2 => \rf/rd11__3\,
      I3 => Instr(2),
      I4 => Instr(5),
      O => \^srca\(18)
    );
\sum__0_carry__3_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C0C0AAC0"
    )
        port map (
      I0 => \^q\(17),
      I1 => rd10(17),
      I2 => \rf/rd11__3\,
      I3 => Instr(2),
      I4 => Instr(5),
      O => \^srca\(17)
    );
\sum__0_carry__3_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C0C0AAC0"
    )
        port map (
      I0 => \^q\(16),
      I1 => rd10(16),
      I2 => \rf/rd11__3\,
      I3 => Instr(2),
      I4 => Instr(5),
      O => \^srca\(16)
    );
\sum__0_carry__4_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C0C0AAC0"
    )
        port map (
      I0 => \^q\(23),
      I1 => rd10(23),
      I2 => \rf/rd11__3\,
      I3 => Instr(2),
      I4 => Instr(5),
      O => \^srca\(23)
    );
\sum__0_carry__4_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C0C0AAC0"
    )
        port map (
      I0 => \^q\(22),
      I1 => rd10(22),
      I2 => \rf/rd11__3\,
      I3 => Instr(2),
      I4 => Instr(5),
      O => \^srca\(22)
    );
\sum__0_carry__4_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C0C0AAC0"
    )
        port map (
      I0 => \^q\(21),
      I1 => rd10(21),
      I2 => \rf/rd11__3\,
      I3 => Instr(2),
      I4 => Instr(5),
      O => \^srca\(21)
    );
\sum__0_carry__4_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C0C0AAC0"
    )
        port map (
      I0 => \^q\(20),
      I1 => rd10(20),
      I2 => \rf/rd11__3\,
      I3 => Instr(2),
      I4 => Instr(5),
      O => \^srca\(20)
    );
\sum__0_carry__5_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C0C0AAC0"
    )
        port map (
      I0 => \^q\(27),
      I1 => rd10(27),
      I2 => \rf/rd11__3\,
      I3 => Instr(2),
      I4 => Instr(5),
      O => \^srca\(27)
    );
\sum__0_carry__5_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C0C0AAC0"
    )
        port map (
      I0 => \^q\(26),
      I1 => rd10(26),
      I2 => \rf/rd11__3\,
      I3 => Instr(2),
      I4 => Instr(5),
      O => \^srca\(26)
    );
\sum__0_carry__5_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C0C0AAC0"
    )
        port map (
      I0 => \^q\(25),
      I1 => rd10(25),
      I2 => \rf/rd11__3\,
      I3 => Instr(2),
      I4 => Instr(5),
      O => \^srca\(25)
    );
\sum__0_carry__5_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C0C0AAC0"
    )
        port map (
      I0 => \^q\(24),
      I1 => rd10(24),
      I2 => \rf/rd11__3\,
      I3 => Instr(2),
      I4 => Instr(5),
      O => \^srca\(24)
    );
\sum__0_carry__6_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C0C0AAC0"
    )
        port map (
      I0 => \^q\(30),
      I1 => rd10(30),
      I2 => \rf/rd11__3\,
      I3 => Instr(2),
      I4 => Instr(5),
      O => \^srca\(30)
    );
\sum__0_carry__6_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C0C0AAC0"
    )
        port map (
      I0 => \^q\(29),
      I1 => rd10(29),
      I2 => \rf/rd11__3\,
      I3 => Instr(2),
      I4 => Instr(5),
      O => \^srca\(29)
    );
\sum__0_carry__6_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C0C0AAC0"
    )
        port map (
      I0 => \^q\(28),
      I1 => rd10(28),
      I2 => \rf/rd11__3\,
      I3 => Instr(2),
      I4 => Instr(5),
      O => \^srca\(28)
    );
\sum__0_carry_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => Instr(19),
      I1 => Instr(15),
      I2 => Instr(16),
      I3 => Instr(17),
      I4 => Instr(18),
      O => \rf/rd11__3\
    );
\sum__0_carry_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C0C0AAC0"
    )
        port map (
      I0 => \^q\(3),
      I1 => rd10(3),
      I2 => \rf/rd11__3\,
      I3 => Instr(2),
      I4 => Instr(5),
      O => \^srca\(3)
    );
\sum__0_carry_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C0C0AAC0"
    )
        port map (
      I0 => \^q\(2),
      I1 => rd10(2),
      I2 => \rf/rd11__3\,
      I3 => Instr(2),
      I4 => Instr(5),
      O => \^srca\(2)
    );
\sum__0_carry_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C0C0AAC0"
    )
        port map (
      I0 => \^q\(1),
      I1 => rd10(1),
      I2 => \rf/rd11__3\,
      I3 => Instr(2),
      I4 => Instr(5),
      O => \^srca\(1)
    );
\sum__0_carry_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C0C0AAC0"
    )
        port map (
      I0 => \^q\(0),
      I1 => rd10(0),
      I2 => \rf/rd11__3\,
      I3 => Instr(2),
      I4 => Instr(5),
      O => \^srca\(0)
    );
\y_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"59AA"
    )
        port map (
      I0 => \^q\(7),
      I1 => Instr(2),
      I2 => Instr(6),
      I3 => Instr(27),
      O => \q_reg[7]_0\(3)
    );
\y_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"59AA"
    )
        port map (
      I0 => \^q\(6),
      I1 => Instr(2),
      I2 => Instr(6),
      I3 => Instr(26),
      O => \q_reg[7]_0\(2)
    );
\y_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"59AA"
    )
        port map (
      I0 => \^q\(5),
      I1 => Instr(2),
      I2 => Instr(6),
      I3 => Instr(25),
      O => \q_reg[7]_0\(1)
    );
\y_carry__0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"59AA595959AAAAAA"
    )
        port map (
      I0 => \^q\(4),
      I1 => Instr(2),
      I2 => Instr(6),
      I3 => Instr(24),
      I4 => \^q_reg[5]_3\,
      I5 => Instr(11),
      O => \q_reg[7]_0\(0)
    );
\y_carry__1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"59AA"
    )
        port map (
      I0 => \^q\(11),
      I1 => Instr(2),
      I2 => Instr(6),
      I3 => \y_carry__1\,
      O => \q_reg[11]_0\(3)
    );
\y_carry__1_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"59AA"
    )
        port map (
      I0 => \^q\(10),
      I1 => Instr(2),
      I2 => Instr(6),
      I3 => Instr(30),
      O => \q_reg[11]_0\(2)
    );
\y_carry__1_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"59AA"
    )
        port map (
      I0 => \^q\(9),
      I1 => Instr(2),
      I2 => Instr(6),
      I3 => Instr(29),
      O => \q_reg[11]_0\(1)
    );
\y_carry__1_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"59AA"
    )
        port map (
      I0 => \^q\(8),
      I1 => Instr(2),
      I2 => Instr(6),
      I3 => Instr(28),
      O => \q_reg[11]_0\(0)
    );
\y_carry__2_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"596A55AA596A596A"
    )
        port map (
      I0 => \^q\(15),
      I1 => \y_carry__3\,
      I2 => Instr(31),
      I3 => Instr(15),
      I4 => Instr(6),
      I5 => Instr(2),
      O => \q_reg[15]_0\(3)
    );
\y_carry__2_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"596A55AA596A596A"
    )
        port map (
      I0 => \^q\(14),
      I1 => \y_carry__3\,
      I2 => Instr(31),
      I3 => Instr(14),
      I4 => Instr(6),
      I5 => Instr(2),
      O => \q_reg[15]_0\(2)
    );
\y_carry__2_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"596A55AA596A596A"
    )
        port map (
      I0 => \^q\(13),
      I1 => \y_carry__3\,
      I2 => Instr(31),
      I3 => Instr(13),
      I4 => Instr(6),
      I5 => Instr(2),
      O => \q_reg[15]_0\(1)
    );
\y_carry__2_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"596A55AA596A596A"
    )
        port map (
      I0 => \^q\(12),
      I1 => \y_carry__3\,
      I2 => Instr(31),
      I3 => Instr(12),
      I4 => Instr(6),
      I5 => Instr(2),
      O => \q_reg[15]_0\(0)
    );
\y_carry__3_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"596A55AA596A596A"
    )
        port map (
      I0 => \^q\(19),
      I1 => \y_carry__3\,
      I2 => Instr(31),
      I3 => Instr(19),
      I4 => Instr(6),
      I5 => Instr(2),
      O => \q_reg[19]_1\(3)
    );
\y_carry__3_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"596A55AA596A596A"
    )
        port map (
      I0 => \^q\(18),
      I1 => \y_carry__3\,
      I2 => Instr(31),
      I3 => Instr(18),
      I4 => Instr(6),
      I5 => Instr(2),
      O => \q_reg[19]_1\(2)
    );
\y_carry__3_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"596A55AA596A596A"
    )
        port map (
      I0 => \^q\(17),
      I1 => \y_carry__3\,
      I2 => Instr(31),
      I3 => Instr(17),
      I4 => Instr(6),
      I5 => Instr(2),
      O => \q_reg[19]_1\(1)
    );
\y_carry__3_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"596A55AA596A596A"
    )
        port map (
      I0 => \^q\(16),
      I1 => \y_carry__3\,
      I2 => Instr(31),
      I3 => Instr(16),
      I4 => Instr(6),
      I5 => Instr(2),
      O => \q_reg[19]_1\(0)
    );
\y_carry__4_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"65666A66"
    )
        port map (
      I0 => \^q\(23),
      I1 => Instr(31),
      I2 => Instr(6),
      I3 => Instr(2),
      I4 => Instr(23),
      O => \q_reg[23]_1\(3)
    );
\y_carry__4_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"65666A66"
    )
        port map (
      I0 => \^q\(22),
      I1 => Instr(31),
      I2 => Instr(6),
      I3 => Instr(2),
      I4 => Instr(22),
      O => \q_reg[23]_1\(2)
    );
\y_carry__4_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"65666A66"
    )
        port map (
      I0 => \^q\(21),
      I1 => Instr(31),
      I2 => Instr(6),
      I3 => Instr(2),
      I4 => Instr(21),
      O => \q_reg[23]_1\(1)
    );
\y_carry__4_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"65666A66"
    )
        port map (
      I0 => \^q\(20),
      I1 => Instr(31),
      I2 => Instr(6),
      I3 => Instr(2),
      I4 => Instr(20),
      O => \q_reg[23]_1\(0)
    );
\y_carry__5_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"65666A66"
    )
        port map (
      I0 => \^q\(27),
      I1 => Instr(31),
      I2 => Instr(6),
      I3 => Instr(2),
      I4 => Instr(27),
      O => \q_reg[27]_3\(3)
    );
\y_carry__5_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"65666A66"
    )
        port map (
      I0 => \^q\(26),
      I1 => Instr(31),
      I2 => Instr(6),
      I3 => Instr(2),
      I4 => Instr(26),
      O => \q_reg[27]_3\(2)
    );
\y_carry__5_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"65666A66"
    )
        port map (
      I0 => \^q\(25),
      I1 => Instr(31),
      I2 => Instr(6),
      I3 => Instr(2),
      I4 => Instr(25),
      O => \q_reg[27]_3\(1)
    );
\y_carry__5_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"65666A66"
    )
        port map (
      I0 => \^q\(24),
      I1 => Instr(31),
      I2 => Instr(6),
      I3 => Instr(2),
      I4 => Instr(24),
      O => \q_reg[27]_3\(0)
    );
\y_carry__6_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(31),
      I1 => Instr(31),
      O => \q_reg[31]_0\(3)
    );
\y_carry__6_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"65666A66"
    )
        port map (
      I0 => \^q\(30),
      I1 => Instr(31),
      I2 => Instr(6),
      I3 => Instr(2),
      I4 => Instr(30),
      O => \q_reg[31]_0\(2)
    );
\y_carry__6_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"65666A66"
    )
        port map (
      I0 => \^q\(29),
      I1 => Instr(31),
      I2 => Instr(6),
      I3 => Instr(2),
      I4 => Instr(29),
      O => \q_reg[31]_0\(1)
    );
\y_carry__6_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"65666A66"
    )
        port map (
      I0 => \^q\(28),
      I1 => Instr(31),
      I2 => Instr(6),
      I3 => Instr(2),
      I4 => Instr(28),
      O => \q_reg[31]_0\(0)
    );
y_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"59AA595959AAAAAA"
    )
        port map (
      I0 => \^q\(3),
      I1 => Instr(2),
      I2 => Instr(6),
      I3 => Instr(23),
      I4 => \^q_reg[5]_3\,
      I5 => Instr(10),
      O => S(3)
    );
y_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"59AA595959AAAAAA"
    )
        port map (
      I0 => \^q\(2),
      I1 => Instr(2),
      I2 => Instr(6),
      I3 => Instr(22),
      I4 => \^q_reg[5]_3\,
      I5 => Instr(9),
      O => S(2)
    );
y_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"59AA595959AAAAAA"
    )
        port map (
      I0 => \^q\(1),
      I1 => Instr(2),
      I2 => Instr(6),
      I3 => Instr(21),
      I4 => \^q_reg[5]_3\,
      I5 => Instr(8),
      O => S(1)
    );
y_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAA656A"
    )
        port map (
      I0 => \^q\(0),
      I1 => Instr(7),
      I2 => ImmSrc(0),
      I3 => Instr(20),
      I4 => ImmSrc(1),
      I5 => ImmSrc(2),
      O => S(0)
    );
y_carry_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF0FB0B"
    )
        port map (
      I0 => Instr(4),
      I1 => Instr(5),
      I2 => Instr(6),
      I3 => Instr(2),
      I4 => Instr(3),
      O => \^q_reg[5]_3\
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
  attribute SOFT_HLUTNM of \rd[25]_INST_0\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \rd[28]_INST_0\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \rd[2]_INST_0\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \rd[4]_INST_0\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \rd[5]_INST_0\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \rd[6]_INST_0\ : label is "soft_lutpair61";
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
    rd20 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    D : out STD_LOGIC_VECTOR ( 28 downto 0 );
    \q[31]_i_10\ : out STD_LOGIC;
    \ALUResult[31]_INST_0_i_5\ : out STD_LOGIC;
    \ALUResult[31]_INST_0_i_5_0\ : out STD_LOGIC;
    \ALUResult[31]_INST_0_i_5_1\ : out STD_LOGIC;
    \ALUResult[31]_INST_0_i_5_2\ : out STD_LOGIC;
    \ALUResult[31]_INST_0_i_5_3\ : out STD_LOGIC;
    \ALUResult[31]_INST_0_i_5_4\ : out STD_LOGIC;
    \ALUResult[31]_INST_0_i_5_5\ : out STD_LOGIC;
    \ALUResult[31]_INST_0_i_5_6\ : out STD_LOGIC;
    \ALUResult[31]_INST_0_i_5_7\ : out STD_LOGIC;
    \ALUResult[31]_INST_0_i_5_8\ : out STD_LOGIC;
    \ALUResult[31]_INST_0_i_5_9\ : out STD_LOGIC;
    \ALUResult[31]_INST_0_i_5_10\ : out STD_LOGIC;
    \ALUResult[31]_INST_0_i_5_11\ : out STD_LOGIC;
    \ALUResult[31]_INST_0_i_5_12\ : out STD_LOGIC;
    \ALUResult[31]_INST_0_i_5_13\ : out STD_LOGIC;
    \ALUResult[31]_INST_0_i_5_14\ : out STD_LOGIC;
    \ALUResult[4]_INST_0_i_1\ : out STD_LOGIC;
    SrcB : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \ALUResult[4]_INST_0_i_1_0\ : out STD_LOGIC;
    \ALUResult[4]_INST_0_i_1_1\ : out STD_LOGIC;
    \ALUResult[4]_INST_0_i_1_2\ : out STD_LOGIC;
    \ALUResult[8]_INST_0_0\ : out STD_LOGIC;
    \readDataM[10]\ : out STD_LOGIC;
    \readDataM[11]\ : out STD_LOGIC;
    \q_reg[25]\ : out STD_LOGIC;
    \ALUResult[31]_INST_0_i_15\ : out STD_LOGIC;
    \ALUResult[31]_INST_0_i_11_0\ : out STD_LOGIC;
    \ALUResult[31]_INST_0_i_11_1\ : out STD_LOGIC;
    \readDataM[8]\ : out STD_LOGIC;
    \ALUResult[4]_INST_0_i_7_0\ : out STD_LOGIC;
    \ALUResult[4]_INST_0_i_1_3\ : out STD_LOGIC;
    \ALUResult[4]_INST_0\ : out STD_LOGIC;
    \q_reg[2]\ : out STD_LOGIC;
    \ALUResult[4]_INST_0_i_1_4\ : out STD_LOGIC;
    \ALUResult[31]_INST_0_i_15_0\ : out STD_LOGIC;
    \q_reg[25]_0\ : out STD_LOGIC;
    \ALUResult[31]_INST_0_i_15_1\ : out STD_LOGIC;
    \q_reg[27]\ : out STD_LOGIC;
    \ALUResult[31]_INST_0_i_15_2\ : out STD_LOGIC;
    \q_reg[1]\ : out STD_LOGIC;
    \ALUResult[30]_INST_0_i_8_0\ : out STD_LOGIC;
    \q_reg[1]_0\ : out STD_LOGIC;
    \q_reg[30]\ : out STD_LOGIC;
    \q_reg[0]\ : out STD_LOGIC;
    \q_reg[0]_0\ : out STD_LOGIC;
    DI : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \q_reg[6]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[5]\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \q_reg[2]_0\ : out STD_LOGIC;
    \q_reg[3]\ : out STD_LOGIC;
    \q_reg[4]\ : out STD_LOGIC;
    \q_reg[14]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[14]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[22]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[22]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[30]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[30]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[0]_1\ : out STD_LOGIC;
    \q_reg[30]_2\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \q_reg[31]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[5]_0\ : out STD_LOGIC;
    \readDataM[16]\ : out STD_LOGIC;
    \readDataM[17]\ : out STD_LOGIC;
    \readDataM[18]\ : out STD_LOGIC;
    \readDataM[19]\ : out STD_LOGIC;
    \readDataM[20]\ : out STD_LOGIC;
    \readDataM[21]\ : out STD_LOGIC;
    \readDataM[22]\ : out STD_LOGIC;
    \readDataM[23]\ : out STD_LOGIC;
    \readDataM[24]\ : out STD_LOGIC;
    \readDataM[25]\ : out STD_LOGIC;
    \readDataM[26]\ : out STD_LOGIC;
    \readDataM[27]\ : out STD_LOGIC;
    \readDataM[28]\ : out STD_LOGIC;
    \readDataM[29]\ : out STD_LOGIC;
    \readDataM[30]\ : out STD_LOGIC;
    \readDataM[31]\ : out STD_LOGIC;
    \q_reg[5]_1\ : out STD_LOGIC;
    \q_reg[5]_2\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    S : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[14]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[22]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[30]_3\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[3]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[7]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[11]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[15]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[19]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[23]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[27]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \ALUResult[31]_INST_0_i_11_2\ : out STD_LOGIC;
    WriteData : out STD_LOGIC_VECTOR ( 15 downto 0 );
    clk : in STD_LOGIC;
    Result : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Instr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ResultSrc : in STD_LOGIC_VECTOR ( 0 to 0 );
    PCPlus4 : in STD_LOGIC_VECTOR ( 28 downto 0 );
    PCTarget : in STD_LOGIC_VECTOR ( 28 downto 0 );
    \q_reg[3]_1\ : in STD_LOGIC;
    PCSrc10_out : in STD_LOGIC;
    \q_reg[4]_0\ : in STD_LOGIC;
    \q_reg[7]_0\ : in STD_LOGIC;
    \q_reg[9]\ : in STD_LOGIC;
    \q_reg[12]\ : in STD_LOGIC;
    \q_reg[13]\ : in STD_LOGIC;
    \q_reg[14]_2\ : in STD_LOGIC;
    \q_reg[15]_0\ : in STD_LOGIC;
    \q_reg[19]_0\ : in STD_LOGIC;
    \q_reg[20]\ : in STD_LOGIC;
    \q_reg[25]_1\ : in STD_LOGIC;
    \q_reg[27]_1\ : in STD_LOGIC;
    \q_reg[30]_4\ : in STD_LOGIC;
    \q_reg[3]_2\ : in STD_LOGIC;
    \q_reg[3]_3\ : in STD_LOGIC;
    \q_reg[3]_4\ : in STD_LOGIC;
    \q_reg[3]_5\ : in STD_LOGIC;
    \addressM[14]\ : in STD_LOGIC;
    \addressM[14]_0\ : in STD_LOGIC;
    \addressM[14]_1\ : in STD_LOGIC;
    \addressM[15]\ : in STD_LOGIC;
    \addressM[13]\ : in STD_LOGIC;
    \addressM[12]\ : in STD_LOGIC;
    ReadData : in STD_LOGIC_VECTOR ( 18 downto 0 );
    rf_reg_r1_0_31_6_11_i_6 : in STD_LOGIC;
    \addressM[10]\ : in STD_LOGIC;
    \addressM[10]_0\ : in STD_LOGIC;
    \addressM[10]_1\ : in STD_LOGIC;
    \addressM[10]_2\ : in STD_LOGIC;
    rf_reg_r1_0_31_6_11_i_5 : in STD_LOGIC;
    \addressM[11]\ : in STD_LOGIC;
    \addressM[11]_0\ : in STD_LOGIC;
    \addressM[11]_1\ : in STD_LOGIC;
    \addressM[10]_3\ : in STD_LOGIC;
    \ALUResult[11]_INST_0_i_1_0\ : in STD_LOGIC;
    \ALUResult[11]_INST_0_i_1_1\ : in STD_LOGIC;
    \ALUResult[11]_INST_0_i_1_2\ : in STD_LOGIC;
    \addressM[7]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    rf_reg_r1_0_31_6_11_i_4 : in STD_LOGIC;
    \addressM[8]\ : in STD_LOGIC;
    \addressM[8]_0\ : in STD_LOGIC;
    \addressM[8]_1\ : in STD_LOGIC;
    SrcA : in STD_LOGIC_VECTOR ( 30 downto 0 );
    \addressM[8]_2\ : in STD_LOGIC;
    \addressM[8]_3\ : in STD_LOGIC;
    \addressM[5]\ : in STD_LOGIC;
    \addressM[5]_0\ : in STD_LOGIC;
    \addressM[6]\ : in STD_LOGIC;
    \addressM[6]_0\ : in STD_LOGIC;
    \addressM[6]_1\ : in STD_LOGIC;
    \addressM[5]_1\ : in STD_LOGIC;
    \ALUResult[6]_INST_0_i_1_0\ : in STD_LOGIC;
    \ALUResult[6]_INST_0_i_1_1\ : in STD_LOGIC;
    \ALUResult[6]_INST_0_i_1_2\ : in STD_LOGIC;
    \ALUResult[6]_INST_0_i_1_3\ : in STD_LOGIC;
    \addressM[21]\ : in STD_LOGIC;
    \addressM[21]_0\ : in STD_LOGIC;
    \addressM[21]_1\ : in STD_LOGIC;
    \addressM[21]_2\ : in STD_LOGIC;
    \addressM[21]_3\ : in STD_LOGIC;
    \ALUResult[22]_INST_0_i_3_0\ : in STD_LOGIC;
    \ALUResult[23]_INST_0_i_3_0\ : in STD_LOGIC;
    \ALUResult[21]_INST_0_i_3_0\ : in STD_LOGIC;
    \addressM[22]\ : in STD_LOGIC;
    \addressM[22]_0\ : in STD_LOGIC;
    \addressM[23]\ : in STD_LOGIC;
    \addressM[23]_0\ : in STD_LOGIC;
    \addressM[18]\ : in STD_LOGIC;
    \addressM[18]_0\ : in STD_LOGIC;
    \addressM[18]_1\ : in STD_LOGIC;
    \addressM[18]_2\ : in STD_LOGIC;
    \addressM[19]\ : in STD_LOGIC;
    \addressM[19]_0\ : in STD_LOGIC;
    \addressM[18]_3\ : in STD_LOGIC;
    \addressM[16]\ : in STD_LOGIC;
    \addressM[16]_0\ : in STD_LOGIC;
    \addressM[17]\ : in STD_LOGIC;
    \addressM[17]_0\ : in STD_LOGIC;
    \ALUResult[16]_INST_0_i_1_0\ : in STD_LOGIC;
    \ALUResult[16]_INST_0_i_1_1\ : in STD_LOGIC;
    \ALUResult[16]_INST_0_i_1_2\ : in STD_LOGIC;
    \addressM[24]\ : in STD_LOGIC;
    \addressM[24]_0\ : in STD_LOGIC;
    \addressM[25]\ : in STD_LOGIC;
    \addressM[26]\ : in STD_LOGIC;
    \addressM[26]_0\ : in STD_LOGIC;
    \addressM[27]\ : in STD_LOGIC;
    \SrcA__0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \addressM[28]\ : in STD_LOGIC;
    \addressM[28]_0\ : in STD_LOGIC;
    \addressM[29]\ : in STD_LOGIC;
    \addressM[29]_0\ : in STD_LOGIC;
    \addressM[31]\ : in STD_LOGIC;
    \ALUResult[31]_INST_0_i_3_0\ : in STD_LOGIC;
    \ALUResult[31]_INST_0_i_3_1\ : in STD_LOGIC;
    \ALUResult[31]_INST_0_i_3_2\ : in STD_LOGIC;
    \addressM[31]_0\ : in STD_LOGIC;
    \addressM[31]_1\ : in STD_LOGIC;
    \lt_carry__2\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \lt_carry__2_0\ : in STD_LOGIC;
    \ALUResult[4]_INST_0_i_4\ : in STD_LOGIC;
    ImmSrc : in STD_LOGIC_VECTOR ( 0 to 0 );
    ALUSrc : in STD_LOGIC;
    \rd21__3\ : in STD_LOGIC;
    \ALUResult[11]_INST_0_i_2\ : in STD_LOGIC;
    \ALUResult[19]_INST_0_i_2\ : in STD_LOGIC;
    \ALUResult[0]_INST_0_i_8\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \ALUControl__0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \ALUResult[0]_INST_0_i_3\ : in STD_LOGIC;
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    \q[31]_i_2_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \ALUResult[30]_INST_0_i_3_0\ : in STD_LOGIC;
    \ALUResult[30]_INST_0_i_3_1\ : in STD_LOGIC;
    \ALUResult[30]_INST_0_i_3_2\ : in STD_LOGIC;
    \ALUResult[30]_INST_0_i_3_3\ : in STD_LOGIC;
    \writeDataM[31]\ : in STD_LOGIC;
    \writeDataM[31]_0\ : in STD_LOGIC;
    \writeDataM[30]\ : in STD_LOGIC;
    \writeDataM[29]\ : in STD_LOGIC;
    \writeDataM[28]\ : in STD_LOGIC;
    \writeDataM[27]\ : in STD_LOGIC;
    \writeDataM[26]\ : in STD_LOGIC;
    \writeDataM[25]\ : in STD_LOGIC;
    \writeDataM[24]\ : in STD_LOGIC;
    \writeDataM[23]\ : in STD_LOGIC;
    \writeDataM[22]\ : in STD_LOGIC;
    \writeDataM[21]\ : in STD_LOGIC;
    \writeDataM[20]\ : in STD_LOGIC;
    \writeDataM[19]\ : in STD_LOGIC;
    \writeDataM[18]\ : in STD_LOGIC;
    \writeDataM[17]\ : in STD_LOGIC;
    \writeDataM[16]\ : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_regfile;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_regfile is
  signal \ALUResult[10]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \ALUResult[10]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \ALUResult[10]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \ALUResult[11]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \ALUResult[11]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \ALUResult[11]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \ALUResult[11]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \ALUResult[12]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \ALUResult[13]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \ALUResult[14]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \ALUResult[15]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \ALUResult[16]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \ALUResult[16]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \ALUResult[16]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \ALUResult[17]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \ALUResult[17]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \ALUResult[17]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \ALUResult[17]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \ALUResult[18]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \ALUResult[18]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult[18]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \ALUResult[19]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \ALUResult[21]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \ALUResult[21]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult[22]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \ALUResult[22]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult[23]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \ALUResult[23]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult[24]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \ALUResult[24]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult[24]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \ALUResult[25]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \ALUResult[25]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \ALUResult[25]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \ALUResult[26]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \ALUResult[26]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \ALUResult[26]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult[26]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \ALUResult[26]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \ALUResult[26]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \ALUResult[27]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \ALUResult[28]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \ALUResult[28]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult[28]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \ALUResult[29]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \ALUResult[29]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult[29]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \ALUResult[29]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \ALUResult[29]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \ALUResult[2]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \^aluresult[31]_inst_0_i_11_0\ : STD_LOGIC;
  signal \^aluresult[31]_inst_0_i_11_1\ : STD_LOGIC;
  signal \ALUResult[31]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \ALUResult[31]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \ALUResult[31]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \ALUResult[31]_INST_0_i_20_n_0\ : STD_LOGIC;
  signal \ALUResult[31]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \^aluresult[31]_inst_0_i_5\ : STD_LOGIC;
  signal \^aluresult[31]_inst_0_i_5_0\ : STD_LOGIC;
  signal \^aluresult[31]_inst_0_i_5_1\ : STD_LOGIC;
  signal \^aluresult[31]_inst_0_i_5_10\ : STD_LOGIC;
  signal \^aluresult[31]_inst_0_i_5_11\ : STD_LOGIC;
  signal \^aluresult[31]_inst_0_i_5_12\ : STD_LOGIC;
  signal \^aluresult[31]_inst_0_i_5_13\ : STD_LOGIC;
  signal \^aluresult[31]_inst_0_i_5_14\ : STD_LOGIC;
  signal \^aluresult[31]_inst_0_i_5_2\ : STD_LOGIC;
  signal \^aluresult[31]_inst_0_i_5_3\ : STD_LOGIC;
  signal \^aluresult[31]_inst_0_i_5_4\ : STD_LOGIC;
  signal \^aluresult[31]_inst_0_i_5_5\ : STD_LOGIC;
  signal \^aluresult[31]_inst_0_i_5_6\ : STD_LOGIC;
  signal \^aluresult[31]_inst_0_i_5_7\ : STD_LOGIC;
  signal \^aluresult[31]_inst_0_i_5_8\ : STD_LOGIC;
  signal \^aluresult[31]_inst_0_i_5_9\ : STD_LOGIC;
  signal \ALUResult[31]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \ALUResult[3]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \ALUResult[4]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \ALUResult[4]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \ALUResult[4]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \^aluresult[4]_inst_0_i_7_0\ : STD_LOGIC;
  signal \ALUResult[5]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \ALUResult[5]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \ALUResult[5]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \ALUResult[6]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \ALUResult[6]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult[6]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \ALUResult[6]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \ALUResult[6]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \ALUResult[7]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \ALUResult[7]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \ALUResult[8]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \ALUResult[8]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \ALUResult[8]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult[8]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \ALUResult[8]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \ALUResult[9]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal RegWrite : STD_LOGIC;
  signal \^srcb\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \lt_carry__0_i_10_n_0\ : STD_LOGIC;
  signal \lt_carry__0_i_11_n_0\ : STD_LOGIC;
  signal \lt_carry__0_i_12_n_0\ : STD_LOGIC;
  signal \lt_carry__0_i_9_n_0\ : STD_LOGIC;
  signal \lt_carry__1_i_10_n_0\ : STD_LOGIC;
  signal \lt_carry__1_i_11_n_0\ : STD_LOGIC;
  signal \lt_carry__1_i_12_n_0\ : STD_LOGIC;
  signal \lt_carry__1_i_9_n_0\ : STD_LOGIC;
  signal \lt_carry__2_i_10_n_0\ : STD_LOGIC;
  signal \lt_carry__2_i_11_n_0\ : STD_LOGIC;
  signal \lt_carry__2_i_12_n_0\ : STD_LOGIC;
  signal \lt_carry__2_i_9_n_0\ : STD_LOGIC;
  signal lt_carry_i_11_n_0 : STD_LOGIC;
  signal lt_carry_i_12_n_0 : STD_LOGIC;
  signal lt_carry_i_13_n_0 : STD_LOGIC;
  signal lt_carry_i_14_n_0 : STD_LOGIC;
  signal \main_alu/data6\ : STD_LOGIC_VECTOR ( 30 downto 21 );
  signal \^q[31]_i_10\ : STD_LOGIC;
  signal \q[31]_i_15_n_0\ : STD_LOGIC;
  signal \q[31]_i_16_n_0\ : STD_LOGIC;
  signal \q[31]_i_17_n_0\ : STD_LOGIC;
  signal \q[31]_i_6_n_0\ : STD_LOGIC;
  signal \q[31]_i_8_n_0\ : STD_LOGIC;
  signal \^q_reg[25]\ : STD_LOGIC;
  signal \^q_reg[5]\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \^rd10\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal rd2 : STD_LOGIC_VECTOR ( 31 downto 16 );
  signal \^rd20\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal rd20_0 : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal rf_reg_r1_0_31_0_5_i_8_n_0 : STD_LOGIC;
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
  attribute SOFT_HLUTNM of \ALUResult[0]_INST_0_i_10\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \ALUResult[10]_INST_0_i_4\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \ALUResult[11]_INST_0_i_4\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \ALUResult[16]_INST_0_i_4\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \ALUResult[17]_INST_0_i_4\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \ALUResult[25]_INST_0_i_7\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \ALUResult[26]_INST_0_i_9\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \ALUResult[30]_INST_0_i_8\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \ALUResult[31]_INST_0_i_17\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \ALUResult[31]_INST_0_i_20\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \ALUResult[31]_INST_0_i_21\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \ALUResult[5]_INST_0_i_4\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \ALUResult[6]_INST_0_i_4\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \ALUResult[8]_INST_0_i_10\ : label is "soft_lutpair46";
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
  attribute SOFT_HLUTNM of rf_reg_r1_0_31_0_5_i_11 : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of rf_reg_r1_0_31_0_5_i_8 : label is "soft_lutpair47";
  attribute METHODOLOGY_DRC_VIOS of rf_reg_r1_0_31_12_17 : label is "";
  attribute RTL_RAM_BITS of rf_reg_r1_0_31_12_17 : label is 1024;
  attribute RTL_RAM_NAME of rf_reg_r1_0_31_12_17 : label is "dp/rf/rf_reg_r1_0_31_12_17";
  attribute RTL_RAM_TYPE of rf_reg_r1_0_31_12_17 : label is "RAM_SDP";
  attribute ram_addr_begin of rf_reg_r1_0_31_12_17 : label is 0;
  attribute ram_addr_end of rf_reg_r1_0_31_12_17 : label is 31;
  attribute ram_offset of rf_reg_r1_0_31_12_17 : label is 0;
  attribute ram_slice_begin of rf_reg_r1_0_31_12_17 : label is 12;
  attribute ram_slice_end of rf_reg_r1_0_31_12_17 : label is 17;
  attribute SOFT_HLUTNM of rf_reg_r1_0_31_12_17_i_11 : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of rf_reg_r1_0_31_12_17_i_14 : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of rf_reg_r1_0_31_12_17_i_15 : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of rf_reg_r1_0_31_12_17_i_20 : label is "soft_lutpair60";
  attribute METHODOLOGY_DRC_VIOS of rf_reg_r1_0_31_18_23 : label is "";
  attribute RTL_RAM_BITS of rf_reg_r1_0_31_18_23 : label is 1024;
  attribute RTL_RAM_NAME of rf_reg_r1_0_31_18_23 : label is "dp/rf/rf_reg_r1_0_31_18_23";
  attribute RTL_RAM_TYPE of rf_reg_r1_0_31_18_23 : label is "RAM_SDP";
  attribute ram_addr_begin of rf_reg_r1_0_31_18_23 : label is 0;
  attribute ram_addr_end of rf_reg_r1_0_31_18_23 : label is 31;
  attribute ram_offset of rf_reg_r1_0_31_18_23 : label is 0;
  attribute ram_slice_begin of rf_reg_r1_0_31_18_23 : label is 18;
  attribute ram_slice_end of rf_reg_r1_0_31_18_23 : label is 23;
  attribute SOFT_HLUTNM of rf_reg_r1_0_31_18_23_i_10 : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of rf_reg_r1_0_31_18_23_i_11 : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of rf_reg_r1_0_31_18_23_i_12 : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of rf_reg_r1_0_31_18_23_i_7 : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of rf_reg_r1_0_31_18_23_i_8 : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of rf_reg_r1_0_31_18_23_i_9 : label is "soft_lutpair53";
  attribute METHODOLOGY_DRC_VIOS of rf_reg_r1_0_31_24_29 : label is "";
  attribute RTL_RAM_BITS of rf_reg_r1_0_31_24_29 : label is 1024;
  attribute RTL_RAM_NAME of rf_reg_r1_0_31_24_29 : label is "dp/rf/rf_reg_r1_0_31_24_29";
  attribute RTL_RAM_TYPE of rf_reg_r1_0_31_24_29 : label is "RAM_SDP";
  attribute ram_addr_begin of rf_reg_r1_0_31_24_29 : label is 0;
  attribute ram_addr_end of rf_reg_r1_0_31_24_29 : label is 31;
  attribute ram_offset of rf_reg_r1_0_31_24_29 : label is 0;
  attribute ram_slice_begin of rf_reg_r1_0_31_24_29 : label is 24;
  attribute ram_slice_end of rf_reg_r1_0_31_24_29 : label is 29;
  attribute SOFT_HLUTNM of rf_reg_r1_0_31_24_29_i_10 : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of rf_reg_r1_0_31_24_29_i_11 : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of rf_reg_r1_0_31_24_29_i_12 : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of rf_reg_r1_0_31_24_29_i_7 : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of rf_reg_r1_0_31_24_29_i_8 : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of rf_reg_r1_0_31_24_29_i_9 : label is "soft_lutpair56";
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
  attribute SOFT_HLUTNM of rf_reg_r1_0_31_30_31_i_2 : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \rf_reg_r1_0_31_30_31_i_2__0\ : label is "soft_lutpair58";
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
  \ALUResult[31]_INST_0_i_11_0\ <= \^aluresult[31]_inst_0_i_11_0\;
  \ALUResult[31]_INST_0_i_11_1\ <= \^aluresult[31]_inst_0_i_11_1\;
  \ALUResult[31]_INST_0_i_5\ <= \^aluresult[31]_inst_0_i_5\;
  \ALUResult[31]_INST_0_i_5_0\ <= \^aluresult[31]_inst_0_i_5_0\;
  \ALUResult[31]_INST_0_i_5_1\ <= \^aluresult[31]_inst_0_i_5_1\;
  \ALUResult[31]_INST_0_i_5_10\ <= \^aluresult[31]_inst_0_i_5_10\;
  \ALUResult[31]_INST_0_i_5_11\ <= \^aluresult[31]_inst_0_i_5_11\;
  \ALUResult[31]_INST_0_i_5_12\ <= \^aluresult[31]_inst_0_i_5_12\;
  \ALUResult[31]_INST_0_i_5_13\ <= \^aluresult[31]_inst_0_i_5_13\;
  \ALUResult[31]_INST_0_i_5_14\ <= \^aluresult[31]_inst_0_i_5_14\;
  \ALUResult[31]_INST_0_i_5_2\ <= \^aluresult[31]_inst_0_i_5_2\;
  \ALUResult[31]_INST_0_i_5_3\ <= \^aluresult[31]_inst_0_i_5_3\;
  \ALUResult[31]_INST_0_i_5_4\ <= \^aluresult[31]_inst_0_i_5_4\;
  \ALUResult[31]_INST_0_i_5_5\ <= \^aluresult[31]_inst_0_i_5_5\;
  \ALUResult[31]_INST_0_i_5_6\ <= \^aluresult[31]_inst_0_i_5_6\;
  \ALUResult[31]_INST_0_i_5_7\ <= \^aluresult[31]_inst_0_i_5_7\;
  \ALUResult[31]_INST_0_i_5_8\ <= \^aluresult[31]_inst_0_i_5_8\;
  \ALUResult[31]_INST_0_i_5_9\ <= \^aluresult[31]_inst_0_i_5_9\;
  \ALUResult[4]_INST_0_i_7_0\ <= \^aluresult[4]_inst_0_i_7_0\;
  SrcB(31 downto 0) <= \^srcb\(31 downto 0);
  \q[31]_i_10\ <= \^q[31]_i_10\;
  \q_reg[25]\ <= \^q_reg[25]\;
  \q_reg[5]\(15 downto 0) <= \^q_reg[5]\(15 downto 0);
  rd10(31 downto 0) <= \^rd10\(31 downto 0);
  rd20(7 downto 0) <= \^rd20\(7 downto 0);
\ALUResult[0]_INST_0_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => \^srcb\(2),
      I1 => \^srcb\(1),
      I2 => SrcA(0),
      I3 => \^srcb\(3),
      I4 => \^srcb\(4),
      O => \q_reg[0]_0\
    );
\ALUResult[0]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BC88"
    )
        port map (
      I0 => \addressM[21]_3\,
      I1 => \^srcb\(0),
      I2 => SrcA(0),
      I3 => \addressM[21]_2\,
      O => \q_reg[0]_1\
    );
\ALUResult[10]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEEEEEAAAAAAAA"
    )
        port map (
      I0 => \ALUResult[10]_INST_0_i_1_n_0\,
      I1 => \addressM[10]\,
      I2 => \addressM[10]_0\,
      I3 => \ALUResult[10]_INST_0_i_4_n_0\,
      I4 => \addressM[10]_1\,
      I5 => \addressM[10]_2\,
      O => \^aluresult[31]_inst_0_i_5_2\
    );
\ALUResult[10]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFEAAAAA"
    )
        port map (
      I0 => \ALUResult[10]_INST_0_i_5_n_0\,
      I1 => \ALUResult[11]_INST_0_i_6_n_0\,
      I2 => \^srcb\(0),
      I3 => \addressM[10]_3\,
      I4 => \addressM[14]_1\,
      O => \ALUResult[10]_INST_0_i_1_n_0\
    );
\ALUResult[10]_INST_0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \addressM[11]_1\,
      I1 => \addressM[10]_3\,
      I2 => \^srcb\(0),
      I3 => \ALUResult[11]_INST_0_i_6_n_0\,
      O => \ALUResult[10]_INST_0_i_4_n_0\
    );
\ALUResult[10]_INST_0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BC88"
    )
        port map (
      I0 => \addressM[21]_3\,
      I1 => \^srcb\(10),
      I2 => SrcA(10),
      I3 => \addressM[21]_2\,
      O => \ALUResult[10]_INST_0_i_5_n_0\
    );
\ALUResult[10]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8AFF8A008A008A00"
    )
        port map (
      I0 => Instr(30),
      I1 => Instr(6),
      I2 => Instr(2),
      I3 => ALUSrc,
      I4 => \rd21__3\,
      I5 => rd20_0(10),
      O => \^srcb\(10)
    );
\ALUResult[11]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEEEEEAAAAAAAA"
    )
        port map (
      I0 => \ALUResult[11]_INST_0_i_1_n_0\,
      I1 => \addressM[11]\,
      I2 => \addressM[11]_0\,
      I3 => \ALUResult[11]_INST_0_i_4_n_0\,
      I4 => \addressM[10]_1\,
      I5 => \addressM[10]_2\,
      O => \^aluresult[31]_inst_0_i_5_3\
    );
\ALUResult[11]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFEAAAAA"
    )
        port map (
      I0 => \ALUResult[11]_INST_0_i_5_n_0\,
      I1 => \addressM[12]\,
      I2 => \^srcb\(0),
      I3 => \ALUResult[11]_INST_0_i_6_n_0\,
      I4 => \addressM[14]_1\,
      O => \ALUResult[11]_INST_0_i_1_n_0\
    );
\ALUResult[11]_INST_0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \addressM[11]_1\,
      I1 => \ALUResult[11]_INST_0_i_6_n_0\,
      I2 => \^srcb\(0),
      I3 => \addressM[12]\,
      O => \ALUResult[11]_INST_0_i_4_n_0\
    );
\ALUResult[11]_INST_0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BC88"
    )
        port map (
      I0 => \addressM[21]_3\,
      I1 => \^srcb\(11),
      I2 => SrcA(11),
      I3 => \addressM[21]_2\,
      O => \ALUResult[11]_INST_0_i_5_n_0\
    );
\ALUResult[11]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^q_reg[25]\,
      I1 => \ALUResult[11]_INST_0_i_1_0\,
      I2 => \^srcb\(1),
      I3 => \ALUResult[11]_INST_0_i_1_1\,
      I4 => \^srcb\(2),
      I5 => \ALUResult[11]_INST_0_i_1_2\,
      O => \ALUResult[11]_INST_0_i_6_n_0\
    );
\ALUResult[11]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8AFF8A008A008A00"
    )
        port map (
      I0 => \ALUResult[11]_INST_0_i_2\,
      I1 => Instr(6),
      I2 => Instr(2),
      I3 => ALUSrc,
      I4 => \rd21__3\,
      I5 => rd20_0(11),
      O => \^srcb\(11)
    );
\ALUResult[11]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00B8FFFF00B80000"
    )
        port map (
      I0 => Instr(21),
      I1 => \ALUResult[4]_INST_0_i_4\,
      I2 => Instr(8),
      I3 => ImmSrc(0),
      I4 => ALUSrc,
      I5 => \^q_reg[5]\(1),
      O => \^srcb\(1)
    );
\ALUResult[12]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFEAAAAA"
    )
        port map (
      I0 => \ALUResult[12]_INST_0_i_5_n_0\,
      I1 => \addressM[13]\,
      I2 => \^srcb\(0),
      I3 => \addressM[12]\,
      I4 => \addressM[14]_1\,
      O => \ALUResult[4]_INST_0_i_1_2\
    );
\ALUResult[12]_INST_0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BC88"
    )
        port map (
      I0 => \addressM[21]_3\,
      I1 => \^srcb\(12),
      I2 => SrcA(12),
      I3 => \addressM[21]_2\,
      O => \ALUResult[12]_INST_0_i_5_n_0\
    );
\ALUResult[12]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D8CCFFFFD8CC0000"
    )
        port map (
      I0 => ImmSrc(0),
      I1 => Instr(12),
      I2 => Instr(31),
      I3 => \ALUResult[19]_INST_0_i_2\,
      I4 => ALUSrc,
      I5 => \^q_reg[5]\(12),
      O => \^srcb\(12)
    );
\ALUResult[13]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFEAAAAA"
    )
        port map (
      I0 => \ALUResult[13]_INST_0_i_5_n_0\,
      I1 => \addressM[14]_0\,
      I2 => \^srcb\(0),
      I3 => \addressM[13]\,
      I4 => \addressM[14]_1\,
      O => \ALUResult[4]_INST_0_i_1_1\
    );
\ALUResult[13]_INST_0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BC88"
    )
        port map (
      I0 => \addressM[21]_3\,
      I1 => \^srcb\(13),
      I2 => SrcA(13),
      I3 => \addressM[21]_2\,
      O => \ALUResult[13]_INST_0_i_5_n_0\
    );
\ALUResult[13]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D8CCFFFFD8CC0000"
    )
        port map (
      I0 => ImmSrc(0),
      I1 => Instr(13),
      I2 => Instr(31),
      I3 => \ALUResult[19]_INST_0_i_2\,
      I4 => ALUSrc,
      I5 => \^q_reg[5]\(13),
      O => \^srcb\(13)
    );
\ALUResult[14]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFEAAAAA"
    )
        port map (
      I0 => \ALUResult[14]_INST_0_i_5_n_0\,
      I1 => \addressM[14]\,
      I2 => \^srcb\(0),
      I3 => \addressM[14]_0\,
      I4 => \addressM[14]_1\,
      O => \ALUResult[4]_INST_0_i_1\
    );
\ALUResult[14]_INST_0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BC88"
    )
        port map (
      I0 => \addressM[21]_3\,
      I1 => \^srcb\(14),
      I2 => SrcA(14),
      I3 => \addressM[21]_2\,
      O => \ALUResult[14]_INST_0_i_5_n_0\
    );
\ALUResult[14]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D8CCFFFFD8CC0000"
    )
        port map (
      I0 => ImmSrc(0),
      I1 => Instr(14),
      I2 => Instr(31),
      I3 => \ALUResult[19]_INST_0_i_2\,
      I4 => ALUSrc,
      I5 => \^q_reg[5]\(14),
      O => \^srcb\(14)
    );
\ALUResult[15]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFEAAAAA"
    )
        port map (
      I0 => \ALUResult[15]_INST_0_i_5_n_0\,
      I1 => \addressM[15]\,
      I2 => \^srcb\(0),
      I3 => \addressM[14]\,
      I4 => \addressM[14]_1\,
      O => \ALUResult[4]_INST_0_i_1_0\
    );
\ALUResult[15]_INST_0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BC88"
    )
        port map (
      I0 => \addressM[21]_3\,
      I1 => \^srcb\(15),
      I2 => SrcA(15),
      I3 => \addressM[21]_2\,
      O => \ALUResult[15]_INST_0_i_5_n_0\
    );
\ALUResult[15]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D8CCFFFFD8CC0000"
    )
        port map (
      I0 => ImmSrc(0),
      I1 => Instr(15),
      I2 => Instr(31),
      I3 => \ALUResult[19]_INST_0_i_2\,
      I4 => ALUSrc,
      I5 => \^q_reg[5]\(15),
      O => \^srcb\(15)
    );
\ALUResult[16]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEEEEEAAAAAAAA"
    )
        port map (
      I0 => \ALUResult[16]_INST_0_i_1_n_0\,
      I1 => \addressM[16]\,
      I2 => \addressM[16]_0\,
      I3 => \ALUResult[16]_INST_0_i_4_n_0\,
      I4 => \addressM[10]_1\,
      I5 => \addressM[10]_2\,
      O => \^aluresult[31]_inst_0_i_5_4\
    );
\ALUResult[16]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFEAAAAA"
    )
        port map (
      I0 => \ALUResult[16]_INST_0_i_5_n_0\,
      I1 => \ALUResult[17]_INST_0_i_6_n_0\,
      I2 => \^srcb\(0),
      I3 => \addressM[15]\,
      I4 => \addressM[14]_1\,
      O => \ALUResult[16]_INST_0_i_1_n_0\
    );
\ALUResult[16]_INST_0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \addressM[11]_1\,
      I1 => \addressM[15]\,
      I2 => \^srcb\(0),
      I3 => \ALUResult[17]_INST_0_i_6_n_0\,
      O => \ALUResult[16]_INST_0_i_4_n_0\
    );
\ALUResult[16]_INST_0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BC88"
    )
        port map (
      I0 => \addressM[21]_3\,
      I1 => \^srcb\(16),
      I2 => SrcA(16),
      I3 => \addressM[21]_2\,
      O => \ALUResult[16]_INST_0_i_5_n_0\
    );
\ALUResult[16]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D8CCFFFFD8CC0000"
    )
        port map (
      I0 => ImmSrc(0),
      I1 => Instr(16),
      I2 => Instr(31),
      I3 => \ALUResult[19]_INST_0_i_2\,
      I4 => ALUSrc,
      I5 => rd2(16),
      O => \^srcb\(16)
    );
\ALUResult[17]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEEEEEAAAAAAAA"
    )
        port map (
      I0 => \ALUResult[17]_INST_0_i_1_n_0\,
      I1 => \addressM[17]\,
      I2 => \addressM[17]_0\,
      I3 => \ALUResult[17]_INST_0_i_4_n_0\,
      I4 => \addressM[10]_1\,
      I5 => \addressM[10]_2\,
      O => \^aluresult[31]_inst_0_i_5_5\
    );
\ALUResult[17]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFEAAAAA"
    )
        port map (
      I0 => \ALUResult[17]_INST_0_i_5_n_0\,
      I1 => \addressM[18]_3\,
      I2 => \^srcb\(0),
      I3 => \ALUResult[17]_INST_0_i_6_n_0\,
      I4 => \addressM[14]_1\,
      O => \ALUResult[17]_INST_0_i_1_n_0\
    );
\ALUResult[17]_INST_0_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => SrcA(25),
      I1 => SrcA(17),
      I2 => \^srcb\(3),
      I3 => \^srcb\(4),
      O => \^q_reg[25]\
    );
\ALUResult[17]_INST_0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \addressM[11]_1\,
      I1 => \ALUResult[17]_INST_0_i_6_n_0\,
      I2 => \^srcb\(0),
      I3 => \addressM[18]_3\,
      O => \ALUResult[17]_INST_0_i_4_n_0\
    );
\ALUResult[17]_INST_0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BC88"
    )
        port map (
      I0 => \addressM[21]_3\,
      I1 => \^srcb\(17),
      I2 => SrcA(17),
      I3 => \addressM[21]_2\,
      O => \ALUResult[17]_INST_0_i_5_n_0\
    );
\ALUResult[17]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[16]_INST_0_i_1_0\,
      I1 => \ALUResult[16]_INST_0_i_1_1\,
      I2 => \^srcb\(1),
      I3 => \ALUResult[16]_INST_0_i_1_2\,
      I4 => \^srcb\(2),
      I5 => \^q_reg[25]\,
      O => \ALUResult[17]_INST_0_i_6_n_0\
    );
\ALUResult[17]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D8CCFFFFD8CC0000"
    )
        port map (
      I0 => ImmSrc(0),
      I1 => Instr(17),
      I2 => Instr(31),
      I3 => \ALUResult[19]_INST_0_i_2\,
      I4 => ALUSrc,
      I5 => rd2(17),
      O => \^srcb\(17)
    );
\ALUResult[18]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEEEEEAAAAAAAA"
    )
        port map (
      I0 => \ALUResult[18]_INST_0_i_1_n_0\,
      I1 => \addressM[18]\,
      I2 => \ALUResult[18]_INST_0_i_3_n_0\,
      I3 => \addressM[18]_0\,
      I4 => \addressM[10]_1\,
      I5 => \addressM[10]_2\,
      O => \^aluresult[31]_inst_0_i_5_6\
    );
\ALUResult[18]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFEAAAAA"
    )
        port map (
      I0 => \ALUResult[18]_INST_0_i_5_n_0\,
      I1 => \addressM[19]_0\,
      I2 => \^srcb\(0),
      I3 => \addressM[18]_3\,
      I4 => \addressM[14]_1\,
      O => \ALUResult[18]_INST_0_i_1_n_0\
    );
\ALUResult[18]_INST_0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \addressM[18]_1\,
      I1 => \^aluresult[31]_inst_0_i_11_1\,
      I2 => \addressM[18]_2\,
      I3 => \^aluresult[31]_inst_0_i_11_0\,
      O => \ALUResult[18]_INST_0_i_3_n_0\
    );
\ALUResult[18]_INST_0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BC88"
    )
        port map (
      I0 => \addressM[21]_3\,
      I1 => \^srcb\(18),
      I2 => SrcA(18),
      I3 => \addressM[21]_2\,
      O => \ALUResult[18]_INST_0_i_5_n_0\
    );
\ALUResult[18]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D8CCFFFFD8CC0000"
    )
        port map (
      I0 => ImmSrc(0),
      I1 => Instr(18),
      I2 => Instr(31),
      I3 => \ALUResult[19]_INST_0_i_2\,
      I4 => ALUSrc,
      I5 => rd2(18),
      O => \^srcb\(18)
    );
\ALUResult[19]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFEAAAAA"
    )
        port map (
      I0 => \ALUResult[19]_INST_0_i_5_n_0\,
      I1 => \addressM[19]\,
      I2 => \^srcb\(0),
      I3 => \addressM[19]_0\,
      I4 => \addressM[14]_1\,
      O => \ALUResult[4]_INST_0_i_1_4\
    );
\ALUResult[19]_INST_0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BC88"
    )
        port map (
      I0 => \addressM[21]_3\,
      I1 => \^srcb\(19),
      I2 => SrcA(19),
      I3 => \addressM[21]_2\,
      O => \ALUResult[19]_INST_0_i_5_n_0\
    );
\ALUResult[19]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D8CCFFFFD8CC0000"
    )
        port map (
      I0 => ImmSrc(0),
      I1 => Instr(19),
      I2 => Instr(31),
      I3 => \ALUResult[19]_INST_0_i_2\,
      I4 => ALUSrc,
      I5 => rd2(19),
      O => \^srcb\(19)
    );
\ALUResult[1]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BC88"
    )
        port map (
      I0 => \addressM[21]_3\,
      I1 => \^srcb\(1),
      I2 => SrcA(1),
      I3 => \addressM[21]_2\,
      O => \q_reg[1]_0\
    );
\ALUResult[1]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F080000080800000"
    )
        port map (
      I0 => SrcA(0),
      I1 => \^aluresult[31]_inst_0_i_11_1\,
      I2 => \ALUResult[31]_INST_0_i_20_n_0\,
      I3 => SrcA(1),
      I4 => \^aluresult[4]_inst_0_i_7_0\,
      I5 => \^aluresult[31]_inst_0_i_11_0\,
      O => \q_reg[0]\
    );
\ALUResult[20]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB800B800B800"
    )
        port map (
      I0 => Instr(20),
      I1 => ImmSrc(0),
      I2 => Instr(31),
      I3 => ALUSrc,
      I4 => \rd21__3\,
      I5 => rd20_0(20),
      O => \^srcb\(20)
    );
\ALUResult[21]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEEEAAAA"
    )
        port map (
      I0 => \ALUResult[21]_INST_0_i_1_n_0\,
      I1 => \addressM[21]\,
      I2 => \ALUResult[21]_INST_0_i_3_n_0\,
      I3 => \addressM[10]_1\,
      I4 => \addressM[10]_2\,
      O => \^aluresult[31]_inst_0_i_5_7\
    );
\ALUResult[21]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF828F828F828"
    )
        port map (
      I0 => \addressM[21]_2\,
      I1 => SrcA(21),
      I2 => \^srcb\(21),
      I3 => \addressM[21]_3\,
      I4 => \main_alu/data6\(21),
      I5 => \addressM[14]_1\,
      O => \ALUResult[21]_INST_0_i_1_n_0\
    );
\ALUResult[21]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \^aluresult[31]_inst_0_i_11_0\,
      I1 => \addressM[21]_0\,
      I2 => \^aluresult[31]_inst_0_i_11_1\,
      I3 => \addressM[21]_1\,
      I4 => \main_alu/data6\(21),
      I5 => \addressM[11]_1\,
      O => \ALUResult[21]_INST_0_i_3_n_0\
    );
\ALUResult[21]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB800B800B800"
    )
        port map (
      I0 => Instr(21),
      I1 => ImmSrc(0),
      I2 => Instr(31),
      I3 => ALUSrc,
      I4 => \rd21__3\,
      I5 => rd20_0(21),
      O => \^srcb\(21)
    );
\ALUResult[21]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[24]_INST_0_i_7_n_0\,
      I1 => \ALUResult[22]_INST_0_i_3_0\,
      I2 => \^srcb\(0),
      I3 => \ALUResult[23]_INST_0_i_3_0\,
      I4 => \^srcb\(1),
      I5 => \ALUResult[21]_INST_0_i_3_0\,
      O => \main_alu/data6\(21)
    );
\ALUResult[22]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEEEAAAA"
    )
        port map (
      I0 => \ALUResult[22]_INST_0_i_1_n_0\,
      I1 => \addressM[22]\,
      I2 => \ALUResult[22]_INST_0_i_3_n_0\,
      I3 => \addressM[10]_1\,
      I4 => \addressM[10]_2\,
      O => \^aluresult[31]_inst_0_i_5_8\
    );
\ALUResult[22]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF828F828F828"
    )
        port map (
      I0 => \addressM[21]_2\,
      I1 => SrcA(22),
      I2 => \^srcb\(22),
      I3 => \addressM[21]_3\,
      I4 => \main_alu/data6\(22),
      I5 => \addressM[14]_1\,
      O => \ALUResult[22]_INST_0_i_1_n_0\
    );
\ALUResult[22]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \^aluresult[31]_inst_0_i_11_0\,
      I1 => \addressM[22]_0\,
      I2 => \^aluresult[31]_inst_0_i_11_1\,
      I3 => \addressM[21]_0\,
      I4 => \main_alu/data6\(22),
      I5 => \addressM[11]_1\,
      O => \ALUResult[22]_INST_0_i_3_n_0\
    );
\ALUResult[22]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB800B800B800"
    )
        port map (
      I0 => Instr(22),
      I1 => ImmSrc(0),
      I2 => Instr(31),
      I3 => ALUSrc,
      I4 => \rd21__3\,
      I5 => rd20_0(22),
      O => \^srcb\(22)
    );
\ALUResult[22]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[25]_INST_0_i_9_n_0\,
      I1 => \ALUResult[23]_INST_0_i_3_0\,
      I2 => \^srcb\(0),
      I3 => \ALUResult[24]_INST_0_i_7_n_0\,
      I4 => \^srcb\(1),
      I5 => \ALUResult[22]_INST_0_i_3_0\,
      O => \main_alu/data6\(22)
    );
\ALUResult[23]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEEEAAAA"
    )
        port map (
      I0 => \ALUResult[23]_INST_0_i_1_n_0\,
      I1 => \addressM[23]\,
      I2 => \ALUResult[23]_INST_0_i_3_n_0\,
      I3 => \addressM[10]_1\,
      I4 => \addressM[10]_2\,
      O => \^aluresult[31]_inst_0_i_5_9\
    );
\ALUResult[23]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF828F828F828"
    )
        port map (
      I0 => \addressM[21]_2\,
      I1 => SrcA(23),
      I2 => \^srcb\(23),
      I3 => \addressM[21]_3\,
      I4 => \main_alu/data6\(23),
      I5 => \addressM[14]_1\,
      O => \ALUResult[23]_INST_0_i_1_n_0\
    );
\ALUResult[23]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \^aluresult[31]_inst_0_i_11_0\,
      I1 => \addressM[23]_0\,
      I2 => \^aluresult[31]_inst_0_i_11_1\,
      I3 => \addressM[22]_0\,
      I4 => \main_alu/data6\(23),
      I5 => \addressM[11]_1\,
      O => \ALUResult[23]_INST_0_i_3_n_0\
    );
\ALUResult[23]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB800B800B800"
    )
        port map (
      I0 => Instr(23),
      I1 => ImmSrc(0),
      I2 => Instr(31),
      I3 => ALUSrc,
      I4 => \rd21__3\,
      I5 => rd20_0(23),
      O => \^srcb\(23)
    );
\ALUResult[23]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[25]_INST_0_i_8_n_0\,
      I1 => \ALUResult[24]_INST_0_i_7_n_0\,
      I2 => \^srcb\(0),
      I3 => \ALUResult[25]_INST_0_i_9_n_0\,
      I4 => \^srcb\(1),
      I5 => \ALUResult[23]_INST_0_i_3_0\,
      O => \main_alu/data6\(23)
    );
\ALUResult[24]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEEEAAAA"
    )
        port map (
      I0 => \ALUResult[24]_INST_0_i_1_n_0\,
      I1 => \addressM[24]\,
      I2 => \ALUResult[24]_INST_0_i_3_n_0\,
      I3 => \addressM[10]_1\,
      I4 => \addressM[10]_2\,
      O => \^aluresult[31]_inst_0_i_5_10\
    );
\ALUResult[24]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF828F828F828"
    )
        port map (
      I0 => \addressM[21]_2\,
      I1 => SrcA(24),
      I2 => \^srcb\(24),
      I3 => \addressM[21]_3\,
      I4 => \main_alu/data6\(24),
      I5 => \addressM[14]_1\,
      O => \ALUResult[24]_INST_0_i_1_n_0\
    );
\ALUResult[24]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \^aluresult[31]_inst_0_i_11_0\,
      I1 => \addressM[24]_0\,
      I2 => \^aluresult[31]_inst_0_i_11_1\,
      I3 => \addressM[23]_0\,
      I4 => \main_alu/data6\(24),
      I5 => \addressM[11]_1\,
      O => \ALUResult[24]_INST_0_i_3_n_0\
    );
\ALUResult[24]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB800B800B800"
    )
        port map (
      I0 => Instr(24),
      I1 => ImmSrc(0),
      I2 => Instr(31),
      I3 => ALUSrc,
      I4 => \rd21__3\,
      I5 => rd20_0(24),
      O => \^srcb\(24)
    );
\ALUResult[24]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[27]_INST_0_i_7_n_0\,
      I1 => \ALUResult[25]_INST_0_i_9_n_0\,
      I2 => \^srcb\(0),
      I3 => \ALUResult[25]_INST_0_i_8_n_0\,
      I4 => \^srcb\(1),
      I5 => \ALUResult[24]_INST_0_i_7_n_0\,
      O => \main_alu/data6\(24)
    );
\ALUResult[24]_INST_0_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000B0008"
    )
        port map (
      I0 => SrcA(28),
      I1 => \^srcb\(2),
      I2 => \^srcb\(4),
      I3 => \^srcb\(3),
      I4 => SrcA(24),
      O => \ALUResult[24]_INST_0_i_7_n_0\
    );
\ALUResult[25]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF828F828F828"
    )
        port map (
      I0 => \addressM[21]_2\,
      I1 => SrcA(25),
      I2 => \^srcb\(25),
      I3 => \addressM[21]_3\,
      I4 => \main_alu/data6\(25),
      I5 => \addressM[14]_1\,
      O => \q_reg[25]_0\
    );
\ALUResult[25]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \^aluresult[31]_inst_0_i_11_0\,
      I1 => \addressM[25]\,
      I2 => \^aluresult[31]_inst_0_i_11_1\,
      I3 => \addressM[24]_0\,
      I4 => \main_alu/data6\(25),
      I5 => \addressM[11]_1\,
      O => \ALUResult[31]_INST_0_i_15_0\
    );
\ALUResult[25]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB800B800B800"
    )
        port map (
      I0 => Instr(25),
      I1 => ImmSrc(0),
      I2 => Instr(31),
      I3 => ALUSrc,
      I4 => \rd21__3\,
      I5 => rd20_0(25),
      O => \^srcb\(25)
    );
\ALUResult[25]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0EFEFAFA0E0E0"
    )
        port map (
      I0 => \ALUResult[25]_INST_0_i_7_n_0\,
      I1 => \ALUResult[25]_INST_0_i_8_n_0\,
      I2 => \^srcb\(0),
      I3 => \ALUResult[27]_INST_0_i_7_n_0\,
      I4 => \^srcb\(1),
      I5 => \ALUResult[25]_INST_0_i_9_n_0\,
      O => \main_alu/data6\(25)
    );
\ALUResult[25]_INST_0_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000040"
    )
        port map (
      I0 => \^srcb\(2),
      I1 => \^srcb\(1),
      I2 => SrcA(28),
      I3 => \^srcb\(3),
      I4 => \^srcb\(4),
      O => \ALUResult[25]_INST_0_i_7_n_0\
    );
\ALUResult[25]_INST_0_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000B0008"
    )
        port map (
      I0 => SrcA(30),
      I1 => \^srcb\(2),
      I2 => \^srcb\(4),
      I3 => \^srcb\(3),
      I4 => SrcA(26),
      O => \ALUResult[25]_INST_0_i_8_n_0\
    );
\ALUResult[25]_INST_0_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000B0008"
    )
        port map (
      I0 => SrcA(29),
      I1 => \^srcb\(2),
      I2 => \^srcb\(4),
      I3 => \^srcb\(3),
      I4 => SrcA(25),
      O => \ALUResult[25]_INST_0_i_9_n_0\
    );
\ALUResult[26]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEEEAAAA"
    )
        port map (
      I0 => \ALUResult[26]_INST_0_i_1_n_0\,
      I1 => \addressM[26]\,
      I2 => \ALUResult[26]_INST_0_i_3_n_0\,
      I3 => \addressM[10]_1\,
      I4 => \addressM[10]_2\,
      O => \^aluresult[31]_inst_0_i_5_11\
    );
\ALUResult[26]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF828F828F828"
    )
        port map (
      I0 => \addressM[21]_2\,
      I1 => SrcA(26),
      I2 => \^srcb\(26),
      I3 => \addressM[21]_3\,
      I4 => \main_alu/data6\(26),
      I5 => \addressM[14]_1\,
      O => \ALUResult[26]_INST_0_i_1_n_0\
    );
\ALUResult[26]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000003020002"
    )
        port map (
      I0 => SrcA(26),
      I1 => \^srcb\(3),
      I2 => \^srcb\(4),
      I3 => \^srcb\(2),
      I4 => SrcA(30),
      I5 => \^srcb\(1),
      O => \ALUResult[26]_INST_0_i_10_n_0\
    );
\ALUResult[26]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \^aluresult[31]_inst_0_i_11_0\,
      I1 => \addressM[26]_0\,
      I2 => \^aluresult[31]_inst_0_i_11_1\,
      I3 => \addressM[25]\,
      I4 => \main_alu/data6\(26),
      I5 => \addressM[11]_1\,
      O => \ALUResult[26]_INST_0_i_3_n_0\
    );
\ALUResult[26]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB800B800B800"
    )
        port map (
      I0 => Instr(26),
      I1 => ImmSrc(0),
      I2 => Instr(31),
      I3 => ALUSrc,
      I4 => \rd21__3\,
      I5 => rd20_0(26),
      O => \^srcb\(26)
    );
\ALUResult[26]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFEFCFCFEFE0C0C0"
    )
        port map (
      I0 => \ALUResult[29]_INST_0_i_9_n_0\,
      I1 => \ALUResult[26]_INST_0_i_7_n_0\,
      I2 => \^srcb\(0),
      I3 => \ALUResult[26]_INST_0_i_8_n_0\,
      I4 => \ALUResult[26]_INST_0_i_9_n_0\,
      I5 => \ALUResult[26]_INST_0_i_10_n_0\,
      O => \main_alu/data6\(26)
    );
\ALUResult[26]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000003020002"
    )
        port map (
      I0 => SrcA(27),
      I1 => \^srcb\(3),
      I2 => \^srcb\(4),
      I3 => \^srcb\(2),
      I4 => \SrcA__0\(0),
      I5 => \^srcb\(1),
      O => \ALUResult[26]_INST_0_i_7_n_0\
    );
\ALUResult[26]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000100011111000"
    )
        port map (
      I0 => \^srcb\(4),
      I1 => \^srcb\(3),
      I2 => \lt_carry__2_0\,
      I3 => \^rd10\(28),
      I4 => Q(28),
      I5 => \lt_carry__2\,
      O => \ALUResult[26]_INST_0_i_8_n_0\
    );
\ALUResult[26]_INST_0_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^srcb\(1),
      I1 => \^srcb\(2),
      O => \ALUResult[26]_INST_0_i_9_n_0\
    );
\ALUResult[27]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF828F828F828"
    )
        port map (
      I0 => \addressM[21]_2\,
      I1 => SrcA(27),
      I2 => \^srcb\(27),
      I3 => \addressM[21]_3\,
      I4 => \main_alu/data6\(27),
      I5 => \addressM[14]_1\,
      O => \q_reg[27]\
    );
\ALUResult[27]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \^aluresult[31]_inst_0_i_11_0\,
      I1 => \addressM[27]\,
      I2 => \^aluresult[31]_inst_0_i_11_1\,
      I3 => \addressM[26]_0\,
      I4 => \main_alu/data6\(27),
      I5 => \addressM[11]_1\,
      O => \ALUResult[31]_INST_0_i_15_1\
    );
\ALUResult[27]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB800B800B800"
    )
        port map (
      I0 => Instr(27),
      I1 => ImmSrc(0),
      I2 => Instr(31),
      I3 => ALUSrc,
      I4 => \rd21__3\,
      I5 => rd20_0(27),
      O => \^srcb\(27)
    );
\ALUResult[27]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88B8BBBB88B88888"
    )
        port map (
      I0 => \ALUResult[28]_INST_0_i_7_n_0\,
      I1 => \^srcb\(0),
      I2 => \ALUResult[29]_INST_0_i_9_n_0\,
      I3 => \^srcb\(2),
      I4 => \^srcb\(1),
      I5 => \ALUResult[27]_INST_0_i_7_n_0\,
      O => \main_alu/data6\(27)
    );
\ALUResult[27]_INST_0_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000B0008"
    )
        port map (
      I0 => \SrcA__0\(0),
      I1 => \^srcb\(2),
      I2 => \^srcb\(4),
      I3 => \^srcb\(3),
      I4 => SrcA(27),
      O => \ALUResult[27]_INST_0_i_7_n_0\
    );
\ALUResult[28]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEEEAAAA"
    )
        port map (
      I0 => \ALUResult[28]_INST_0_i_1_n_0\,
      I1 => \addressM[28]\,
      I2 => \ALUResult[28]_INST_0_i_3_n_0\,
      I3 => \addressM[10]_1\,
      I4 => \addressM[10]_2\,
      O => \^aluresult[31]_inst_0_i_5_12\
    );
\ALUResult[28]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF828F828F828"
    )
        port map (
      I0 => \addressM[21]_2\,
      I1 => SrcA(28),
      I2 => \^srcb\(28),
      I3 => \addressM[21]_3\,
      I4 => \main_alu/data6\(28),
      I5 => \addressM[14]_1\,
      O => \ALUResult[28]_INST_0_i_1_n_0\
    );
\ALUResult[28]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \^aluresult[31]_inst_0_i_11_0\,
      I1 => \addressM[28]_0\,
      I2 => \^aluresult[31]_inst_0_i_11_1\,
      I3 => \addressM[27]\,
      I4 => \main_alu/data6\(28),
      I5 => \addressM[11]_1\,
      O => \ALUResult[28]_INST_0_i_3_n_0\
    );
\ALUResult[28]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB800B800B800"
    )
        port map (
      I0 => Instr(28),
      I1 => ImmSrc(0),
      I2 => Instr(31),
      I3 => ALUSrc,
      I4 => \rd21__3\,
      I5 => rd20_0(28),
      O => \^srcb\(28)
    );
\ALUResult[28]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00ACFFFF00AC0000"
    )
        port map (
      I0 => \ALUResult[29]_INST_0_i_8_n_0\,
      I1 => \ALUResult[29]_INST_0_i_9_n_0\,
      I2 => \^srcb\(1),
      I3 => \^srcb\(2),
      I4 => \^srcb\(0),
      I5 => \ALUResult[28]_INST_0_i_7_n_0\,
      O => \main_alu/data6\(28)
    );
\ALUResult[28]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000002020300"
    )
        port map (
      I0 => SrcA(30),
      I1 => \^srcb\(4),
      I2 => \^srcb\(3),
      I3 => SrcA(28),
      I4 => \^srcb\(1),
      I5 => \^srcb\(2),
      O => \ALUResult[28]_INST_0_i_7_n_0\
    );
\ALUResult[29]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEEEAAAA"
    )
        port map (
      I0 => \ALUResult[29]_INST_0_i_1_n_0\,
      I1 => \addressM[29]\,
      I2 => \ALUResult[29]_INST_0_i_3_n_0\,
      I3 => \addressM[10]_1\,
      I4 => \addressM[10]_2\,
      O => \^aluresult[31]_inst_0_i_5_13\
    );
\ALUResult[29]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF828F828F828"
    )
        port map (
      I0 => \addressM[21]_2\,
      I1 => SrcA(29),
      I2 => \^srcb\(29),
      I3 => \addressM[21]_3\,
      I4 => \main_alu/data6\(29),
      I5 => \addressM[14]_1\,
      O => \ALUResult[29]_INST_0_i_1_n_0\
    );
\ALUResult[29]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \^aluresult[31]_inst_0_i_11_0\,
      I1 => \addressM[29]_0\,
      I2 => \^aluresult[31]_inst_0_i_11_1\,
      I3 => \addressM[28]_0\,
      I4 => \main_alu/data6\(29),
      I5 => \addressM[11]_1\,
      O => \ALUResult[29]_INST_0_i_3_n_0\
    );
\ALUResult[29]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB800B800B800"
    )
        port map (
      I0 => Instr(29),
      I1 => ImmSrc(0),
      I2 => Instr(31),
      I3 => ALUSrc,
      I4 => \rd21__3\,
      I5 => rd20_0(29),
      O => \^srcb\(29)
    );
\ALUResult[29]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000003030BB88"
    )
        port map (
      I0 => \ALUResult[29]_INST_0_i_7_n_0\,
      I1 => \^srcb\(0),
      I2 => \ALUResult[29]_INST_0_i_8_n_0\,
      I3 => \ALUResult[29]_INST_0_i_9_n_0\,
      I4 => \^srcb\(1),
      I5 => \^srcb\(2),
      O => \main_alu/data6\(29)
    );
\ALUResult[29]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000100011111000"
    )
        port map (
      I0 => \^srcb\(4),
      I1 => \^srcb\(3),
      I2 => \lt_carry__2_0\,
      I3 => \^rd10\(30),
      I4 => Q(30),
      I5 => \lt_carry__2\,
      O => \ALUResult[29]_INST_0_i_7_n_0\
    );
\ALUResult[29]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000100011111000"
    )
        port map (
      I0 => \^srcb\(4),
      I1 => \^srcb\(3),
      I2 => \lt_carry__2_0\,
      I3 => \^rd10\(31),
      I4 => Q(31),
      I5 => \lt_carry__2\,
      O => \ALUResult[29]_INST_0_i_8_n_0\
    );
\ALUResult[29]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000100011111000"
    )
        port map (
      I0 => \^srcb\(4),
      I1 => \^srcb\(3),
      I2 => \lt_carry__2_0\,
      I3 => \^rd10\(29),
      I4 => Q(29),
      I5 => \lt_carry__2\,
      O => \ALUResult[29]_INST_0_i_9_n_0\
    );
\ALUResult[2]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BC88"
    )
        port map (
      I0 => \addressM[21]_3\,
      I1 => \^srcb\(2),
      I2 => SrcA(2),
      I3 => \addressM[21]_2\,
      O => \q_reg[2]_0\
    );
\ALUResult[2]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00B8FFFF00B80000"
    )
        port map (
      I0 => Instr(22),
      I1 => \ALUResult[4]_INST_0_i_4\,
      I2 => Instr(9),
      I3 => ImmSrc(0),
      I4 => ALUSrc,
      I5 => \^q_reg[5]\(2),
      O => \^srcb\(2)
    );
\ALUResult[2]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF100010001000"
    )
        port map (
      I0 => \^srcb\(2),
      I1 => \^srcb\(1),
      I2 => \ALUResult[2]_INST_0_i_9_n_0\,
      I3 => \^aluresult[31]_inst_0_i_11_1\,
      I4 => \ALUResult[3]_INST_0_i_9_n_0\,
      I5 => \^aluresult[31]_inst_0_i_11_0\,
      O => \q_reg[1]\
    );
\ALUResult[2]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000100011111000"
    )
        port map (
      I0 => \^srcb\(4),
      I1 => \^srcb\(3),
      I2 => \lt_carry__2_0\,
      I3 => \^rd10\(1),
      I4 => Q(1),
      I5 => \lt_carry__2\,
      O => \ALUResult[2]_INST_0_i_9_n_0\
    );
\ALUResult[30]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEC28EC28EC28"
    )
        port map (
      I0 => \addressM[21]_2\,
      I1 => \^srcb\(30),
      I2 => SrcA(30),
      I3 => \addressM[21]_3\,
      I4 => \main_alu/data6\(30),
      I5 => \addressM[14]_1\,
      O => \q_reg[30]\
    );
\ALUResult[30]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \^aluresult[31]_inst_0_i_11_0\,
      I1 => \ALUResult[31]_INST_0_i_16_n_0\,
      I2 => \^aluresult[31]_inst_0_i_11_1\,
      I3 => \addressM[29]_0\,
      I4 => \main_alu/data6\(30),
      I5 => \addressM[11]_1\,
      O => \ALUResult[31]_INST_0_i_15_2\
    );
\ALUResult[30]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB800B800B800"
    )
        port map (
      I0 => Instr(30),
      I1 => ImmSrc(0),
      I2 => Instr(31),
      I3 => ALUSrc,
      I4 => \rd21__3\,
      I5 => rd20_0(30),
      O => \^srcb\(30)
    );
\ALUResult[30]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000B000800000000"
    )
        port map (
      I0 => \SrcA__0\(0),
      I1 => \^srcb\(0),
      I2 => \^srcb\(2),
      I3 => \^srcb\(1),
      I4 => SrcA(30),
      I5 => \^aluresult[4]_inst_0_i_7_0\,
      O => \main_alu/data6\(30)
    );
\ALUResult[30]_INST_0_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \ALUResult[0]_INST_0_i_8\(0),
      I1 => \ALUControl__0\(0),
      I2 => \^srcb\(0),
      O => \^aluresult[31]_inst_0_i_11_0\
    );
\ALUResult[31]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEEEAAAA"
    )
        port map (
      I0 => \ALUResult[31]_INST_0_i_1_n_0\,
      I1 => \addressM[31]\,
      I2 => \ALUResult[31]_INST_0_i_3_n_0\,
      I3 => \addressM[10]_1\,
      I4 => \addressM[10]_2\,
      O => \^aluresult[31]_inst_0_i_5_14\
    );
\ALUResult[31]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AA6600F0AA66"
    )
        port map (
      I0 => \^srcb\(31),
      I1 => \SrcA__0\(0),
      I2 => \ALUResult[31]_INST_0_i_8_n_0\,
      I3 => \addressM[31]_0\,
      I4 => \addressM[31]_1\,
      I5 => \^srcb\(0),
      O => \ALUResult[31]_INST_0_i_1_n_0\
    );
\ALUResult[31]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1900FFFF19000000"
    )
        port map (
      I0 => Instr(2),
      I1 => Instr(6),
      I2 => Instr(3),
      I3 => \ALUResult[0]_INST_0_i_3\,
      I4 => ALUSrc,
      I5 => \^q_reg[5]\(0),
      O => \^srcb\(0)
    );
\ALUResult[31]_INST_0_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A808A808A8A8080"
    )
        port map (
      I0 => \^aluresult[31]_inst_0_i_11_0\,
      I1 => \ALUResult[31]_INST_0_i_3_0\,
      I2 => \^srcb\(1),
      I3 => \ALUResult[31]_INST_0_i_3_1\,
      I4 => \ALUResult[31]_INST_0_i_3_2\,
      I5 => \^srcb\(2),
      O => \ALUResult[31]_INST_0_i_14_n_0\
    );
\ALUResult[31]_INST_0_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8B8FFCC3300"
    )
        port map (
      I0 => \ALUResult[30]_INST_0_i_3_0\,
      I1 => \^srcb\(2),
      I2 => \ALUResult[30]_INST_0_i_3_1\,
      I3 => \ALUResult[30]_INST_0_i_3_2\,
      I4 => \ALUResult[30]_INST_0_i_3_3\,
      I5 => \^srcb\(1),
      O => \ALUResult[31]_INST_0_i_16_n_0\
    );
\ALUResult[31]_INST_0_i_17\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \ALUResult[0]_INST_0_i_8\(0),
      I1 => \ALUControl__0\(0),
      I2 => \^srcb\(0),
      O => \^aluresult[31]_inst_0_i_11_1\
    );
\ALUResult[31]_INST_0_i_20\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^srcb\(1),
      I1 => \^srcb\(2),
      O => \ALUResult[31]_INST_0_i_20_n_0\
    );
\ALUResult[31]_INST_0_i_21\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^srcb\(3),
      I1 => \^srcb\(4),
      O => \^aluresult[4]_inst_0_i_7_0\
    );
\ALUResult[31]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBAAABAAABAAA"
    )
        port map (
      I0 => \ALUResult[31]_INST_0_i_14_n_0\,
      I1 => \^srcb\(0),
      I2 => \addressM[11]_1\,
      I3 => \ALUResult[31]_INST_0_i_8_n_0\,
      I4 => \ALUResult[31]_INST_0_i_16_n_0\,
      I5 => \^aluresult[31]_inst_0_i_11_1\,
      O => \ALUResult[31]_INST_0_i_3_n_0\
    );
\ALUResult[31]_INST_0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => Instr(31),
      I1 => ALUSrc,
      I2 => \rd21__3\,
      I3 => rd20_0(31),
      O => \^srcb\(31)
    );
\ALUResult[31]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA20202000000000"
    )
        port map (
      I0 => \ALUResult[31]_INST_0_i_20_n_0\,
      I1 => \lt_carry__2\,
      I2 => Q(31),
      I3 => \^rd10\(31),
      I4 => \lt_carry__2_0\,
      I5 => \^aluresult[4]_inst_0_i_7_0\,
      O => \ALUResult[31]_INST_0_i_8_n_0\
    );
\ALUResult[3]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BC88"
    )
        port map (
      I0 => \addressM[21]_3\,
      I1 => \^srcb\(3),
      I2 => SrcA(3),
      I3 => \addressM[21]_2\,
      O => \q_reg[3]\
    );
\ALUResult[3]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00B8FFFF00B80000"
    )
        port map (
      I0 => Instr(23),
      I1 => \ALUResult[4]_INST_0_i_4\,
      I2 => Instr(10),
      I3 => ImmSrc(0),
      I4 => ALUSrc,
      I5 => \^q_reg[5]\(3),
      O => \^srcb\(3)
    );
\ALUResult[3]_INST_0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \ALUResult[3]_INST_0_i_9_n_0\,
      I1 => \^aluresult[31]_inst_0_i_11_1\,
      I2 => \ALUResult[4]_INST_0_i_10_n_0\,
      I3 => \^aluresult[31]_inst_0_i_11_0\,
      O => \ALUResult[30]_INST_0_i_8_0\
    );
\ALUResult[3]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000002020300"
    )
        port map (
      I0 => SrcA(0),
      I1 => \^srcb\(4),
      I2 => \^srcb\(3),
      I3 => SrcA(2),
      I4 => \^srcb\(1),
      I5 => \^srcb\(2),
      O => \ALUResult[3]_INST_0_i_9_n_0\
    );
\ALUResult[4]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000002020300"
    )
        port map (
      I0 => SrcA(1),
      I1 => \^srcb\(4),
      I2 => \^srcb\(3),
      I3 => SrcA(3),
      I4 => \^srcb\(1),
      I5 => \^srcb\(2),
      O => \ALUResult[4]_INST_0_i_10_n_0\
    );
\ALUResult[4]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000100011111000"
    )
        port map (
      I0 => \^srcb\(4),
      I1 => \^srcb\(3),
      I2 => \lt_carry__2_0\,
      I3 => \^rd10\(2),
      I4 => Q(2),
      I5 => \lt_carry__2\,
      O => \ALUResult[4]_INST_0_i_11_n_0\
    );
\ALUResult[4]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000003020002"
    )
        port map (
      I0 => SrcA(4),
      I1 => \^srcb\(3),
      I2 => \^srcb\(4),
      I3 => \^srcb\(2),
      I4 => SrcA(0),
      I5 => \^srcb\(1),
      O => \ALUResult[4]_INST_0_i_12_n_0\
    );
\ALUResult[4]_INST_0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BC88"
    )
        port map (
      I0 => \addressM[21]_3\,
      I1 => \^srcb\(4),
      I2 => SrcA(4),
      I3 => \addressM[21]_2\,
      O => \q_reg[4]\
    );
\ALUResult[4]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00B8FFFF00B80000"
    )
        port map (
      I0 => Instr(24),
      I1 => \ALUResult[4]_INST_0_i_4\,
      I2 => Instr(11),
      I3 => ImmSrc(0),
      I4 => ALUSrc,
      I5 => \^q_reg[5]\(4),
      O => \^srcb\(4)
    );
\ALUResult[4]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF88888888888"
    )
        port map (
      I0 => \ALUResult[4]_INST_0_i_10_n_0\,
      I1 => \^aluresult[31]_inst_0_i_11_1\,
      I2 => \ALUResult[4]_INST_0_i_11_n_0\,
      I3 => \ALUResult[26]_INST_0_i_9_n_0\,
      I4 => \ALUResult[4]_INST_0_i_12_n_0\,
      I5 => \^aluresult[31]_inst_0_i_11_0\,
      O => \q_reg[2]\
    );
\ALUResult[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEEEEEAAAAAAAA"
    )
        port map (
      I0 => \ALUResult[5]_INST_0_i_1_n_0\,
      I1 => \addressM[5]\,
      I2 => \addressM[5]_0\,
      I3 => \ALUResult[5]_INST_0_i_4_n_0\,
      I4 => \addressM[10]_1\,
      I5 => \addressM[10]_2\,
      O => \^aluresult[31]_inst_0_i_5\
    );
\ALUResult[5]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFEAAAAA"
    )
        port map (
      I0 => \ALUResult[5]_INST_0_i_5_n_0\,
      I1 => \ALUResult[6]_INST_0_i_7_n_0\,
      I2 => \^srcb\(0),
      I3 => \addressM[5]_1\,
      I4 => \addressM[14]_1\,
      O => \ALUResult[5]_INST_0_i_1_n_0\
    );
\ALUResult[5]_INST_0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \addressM[11]_1\,
      I1 => \addressM[5]_1\,
      I2 => \^srcb\(0),
      I3 => \ALUResult[6]_INST_0_i_7_n_0\,
      O => \ALUResult[5]_INST_0_i_4_n_0\
    );
\ALUResult[5]_INST_0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BC88"
    )
        port map (
      I0 => \addressM[21]_3\,
      I1 => \^srcb\(5),
      I2 => SrcA(5),
      I3 => \addressM[21]_2\,
      O => \ALUResult[5]_INST_0_i_5_n_0\
    );
\ALUResult[5]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8AFF8A008A008A00"
    )
        port map (
      I0 => Instr(25),
      I1 => Instr(6),
      I2 => Instr(2),
      I3 => ALUSrc,
      I4 => \rd21__3\,
      I5 => \^rd20\(5),
      O => \^srcb\(5)
    );
\ALUResult[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEEEEEAAAAAAAA"
    )
        port map (
      I0 => \ALUResult[6]_INST_0_i_1_n_0\,
      I1 => \addressM[6]\,
      I2 => \ALUResult[6]_INST_0_i_3_n_0\,
      I3 => \ALUResult[6]_INST_0_i_4_n_0\,
      I4 => \addressM[10]_1\,
      I5 => \addressM[10]_2\,
      O => \^aluresult[31]_inst_0_i_5_0\
    );
\ALUResult[6]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFEAAAAA"
    )
        port map (
      I0 => \ALUResult[6]_INST_0_i_5_n_0\,
      I1 => \addressM[6]_1\,
      I2 => \^srcb\(0),
      I3 => \ALUResult[6]_INST_0_i_7_n_0\,
      I4 => \addressM[14]_1\,
      O => \ALUResult[6]_INST_0_i_1_n_0\
    );
\ALUResult[6]_INST_0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \addressM[6]_0\,
      I1 => \^aluresult[31]_inst_0_i_11_1\,
      I2 => \ALUResult[7]_INST_0_i_6_n_0\,
      I3 => \^aluresult[31]_inst_0_i_11_0\,
      O => \ALUResult[6]_INST_0_i_3_n_0\
    );
\ALUResult[6]_INST_0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \addressM[11]_1\,
      I1 => \ALUResult[6]_INST_0_i_7_n_0\,
      I2 => \^srcb\(0),
      I3 => \addressM[6]_1\,
      O => \ALUResult[6]_INST_0_i_4_n_0\
    );
\ALUResult[6]_INST_0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BC88"
    )
        port map (
      I0 => \addressM[21]_3\,
      I1 => \^srcb\(6),
      I2 => SrcA(6),
      I3 => \addressM[21]_2\,
      O => \ALUResult[6]_INST_0_i_5_n_0\
    );
\ALUResult[6]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[6]_INST_0_i_1_0\,
      I1 => \ALUResult[6]_INST_0_i_1_1\,
      I2 => \^srcb\(1),
      I3 => \ALUResult[6]_INST_0_i_1_2\,
      I4 => \^srcb\(2),
      I5 => \ALUResult[6]_INST_0_i_1_3\,
      O => \ALUResult[6]_INST_0_i_7_n_0\
    );
\ALUResult[6]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8AFF8A008A008A00"
    )
        port map (
      I0 => Instr(26),
      I1 => Instr(6),
      I2 => Instr(2),
      I3 => ALUSrc,
      I4 => \rd21__3\,
      I5 => \^rd20\(6),
      O => \^srcb\(6)
    );
\ALUResult[7]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \^aluresult[31]_inst_0_i_11_0\,
      I1 => \ALUResult[8]_INST_0_i_8_n_0\,
      I2 => \^aluresult[31]_inst_0_i_11_1\,
      I3 => \ALUResult[7]_INST_0_i_6_n_0\,
      I4 => \addressM[7]\(0),
      I5 => \addressM[11]_1\,
      O => \ALUResult[31]_INST_0_i_15\
    );
\ALUResult[7]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8AFF8A008A008A00"
    )
        port map (
      I0 => Instr(27),
      I1 => Instr(6),
      I2 => Instr(2),
      I3 => ALUSrc,
      I4 => \rd21__3\,
      I5 => \^rd20\(7),
      O => \^srcb\(7)
    );
\ALUResult[7]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B080FFFFB0800000"
    )
        port map (
      I0 => SrcA(0),
      I1 => \^srcb\(2),
      I2 => \^aluresult[4]_inst_0_i_7_0\,
      I3 => SrcA(4),
      I4 => \^srcb\(1),
      I5 => \ALUResult[7]_INST_0_i_7_n_0\,
      O => \ALUResult[7]_INST_0_i_6_n_0\
    );
\ALUResult[7]_INST_0_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000B0008"
    )
        port map (
      I0 => SrcA(2),
      I1 => \^srcb\(2),
      I2 => \^srcb\(4),
      I3 => \^srcb\(3),
      I4 => SrcA(6),
      O => \ALUResult[7]_INST_0_i_7_n_0\
    );
\ALUResult[8]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEEEEEAAAAAAAA"
    )
        port map (
      I0 => \ALUResult[8]_INST_0_i_1_n_0\,
      I1 => \addressM[8]\,
      I2 => \ALUResult[8]_INST_0_i_3_n_0\,
      I3 => \addressM[8]_0\,
      I4 => \addressM[10]_1\,
      I5 => \addressM[10]_2\,
      O => \^aluresult[31]_inst_0_i_5_1\
    );
\ALUResult[8]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFEAAAAA"
    )
        port map (
      I0 => \ALUResult[8]_INST_0_i_5_n_0\,
      I1 => \addressM[8]_2\,
      I2 => \^srcb\(0),
      I3 => \addressM[8]_3\,
      I4 => \addressM[14]_1\,
      O => \ALUResult[8]_INST_0_i_1_n_0\
    );
\ALUResult[8]_INST_0_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000B0008"
    )
        port map (
      I0 => SrcA(3),
      I1 => \^srcb\(2),
      I2 => \^srcb\(4),
      I3 => \^srcb\(3),
      I4 => SrcA(7),
      O => \ALUResult[8]_INST_0_i_10_n_0\
    );
\ALUResult[8]_INST_0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \ALUResult[8]_INST_0_i_8_n_0\,
      I1 => \^aluresult[31]_inst_0_i_11_1\,
      I2 => \addressM[8]_1\,
      I3 => \^aluresult[31]_inst_0_i_11_0\,
      O => \ALUResult[8]_INST_0_i_3_n_0\
    );
\ALUResult[8]_INST_0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BC88"
    )
        port map (
      I0 => \addressM[21]_3\,
      I1 => \^srcb\(8),
      I2 => SrcA(8),
      I3 => \addressM[21]_2\,
      O => \ALUResult[8]_INST_0_i_5_n_0\
    );
\ALUResult[8]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8AFF8A008A008A00"
    )
        port map (
      I0 => Instr(28),
      I1 => Instr(6),
      I2 => Instr(2),
      I3 => ALUSrc,
      I4 => \rd21__3\,
      I5 => rd20_0(8),
      O => \^srcb\(8)
    );
\ALUResult[8]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B080FFFFB0800000"
    )
        port map (
      I0 => SrcA(1),
      I1 => \^srcb\(2),
      I2 => \^aluresult[4]_inst_0_i_7_0\,
      I3 => SrcA(5),
      I4 => \^srcb\(1),
      I5 => \ALUResult[8]_INST_0_i_10_n_0\,
      O => \ALUResult[8]_INST_0_i_8_n_0\
    );
\ALUResult[9]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFEAAAAA"
    )
        port map (
      I0 => \ALUResult[9]_INST_0_i_5_n_0\,
      I1 => \addressM[10]_3\,
      I2 => \^srcb\(0),
      I3 => \addressM[8]_2\,
      I4 => \addressM[14]_1\,
      O => \ALUResult[4]_INST_0_i_1_3\
    );
\ALUResult[9]_INST_0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BC88"
    )
        port map (
      I0 => \addressM[21]_3\,
      I1 => \^srcb\(9),
      I2 => SrcA(9),
      I3 => \addressM[21]_2\,
      O => \ALUResult[9]_INST_0_i_5_n_0\
    );
\ALUResult[9]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8AFF8A008A008A00"
    )
        port map (
      I0 => Instr(29),
      I1 => Instr(6),
      I2 => Instr(2),
      I3 => ALUSrc,
      I4 => \rd21__3\,
      I5 => rd20_0(9),
      O => \^srcb\(9)
    );
\WriteData[16]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F3F3F3F3F3E0E0E0"
    )
        port map (
      I0 => Instr(13),
      I1 => Instr(14),
      I2 => rd2(16),
      I3 => \writeDataM[31]\,
      I4 => \^q_reg[5]\(0),
      I5 => \writeDataM[16]\,
      O => WriteData(0)
    );
\WriteData[16]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(23),
      I1 => Instr(22),
      I2 => Instr(21),
      I3 => Instr(20),
      I4 => Instr(24),
      I5 => rd20_0(16),
      O => rd2(16)
    );
\WriteData[16]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(23),
      I1 => Instr(22),
      I2 => Instr(21),
      I3 => Instr(20),
      I4 => Instr(24),
      I5 => \^rd20\(0),
      O => \^q_reg[5]\(0)
    );
\WriteData[17]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F3F3F3F3F3E0E0E0"
    )
        port map (
      I0 => Instr(13),
      I1 => Instr(14),
      I2 => rd2(17),
      I3 => \writeDataM[31]\,
      I4 => \^q_reg[5]\(1),
      I5 => \writeDataM[17]\,
      O => WriteData(1)
    );
\WriteData[17]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(23),
      I1 => Instr(22),
      I2 => Instr(21),
      I3 => Instr(20),
      I4 => Instr(24),
      I5 => rd20_0(17),
      O => rd2(17)
    );
\WriteData[17]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(23),
      I1 => Instr(22),
      I2 => Instr(21),
      I3 => Instr(20),
      I4 => Instr(24),
      I5 => \^rd20\(1),
      O => \^q_reg[5]\(1)
    );
\WriteData[18]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F3F3F3F3F3E0E0E0"
    )
        port map (
      I0 => Instr(13),
      I1 => Instr(14),
      I2 => rd2(18),
      I3 => \writeDataM[31]\,
      I4 => \^q_reg[5]\(2),
      I5 => \writeDataM[18]\,
      O => WriteData(2)
    );
\WriteData[18]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(23),
      I1 => Instr(22),
      I2 => Instr(21),
      I3 => Instr(20),
      I4 => Instr(24),
      I5 => rd20_0(18),
      O => rd2(18)
    );
\WriteData[18]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(23),
      I1 => Instr(22),
      I2 => Instr(21),
      I3 => Instr(20),
      I4 => Instr(24),
      I5 => \^rd20\(2),
      O => \^q_reg[5]\(2)
    );
\WriteData[19]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F3F3F3F3F3E0E0E0"
    )
        port map (
      I0 => Instr(13),
      I1 => Instr(14),
      I2 => rd2(19),
      I3 => \writeDataM[31]\,
      I4 => \^q_reg[5]\(3),
      I5 => \writeDataM[19]\,
      O => WriteData(3)
    );
\WriteData[19]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(23),
      I1 => Instr(22),
      I2 => Instr(21),
      I3 => Instr(20),
      I4 => Instr(24),
      I5 => rd20_0(19),
      O => rd2(19)
    );
\WriteData[19]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(23),
      I1 => Instr(22),
      I2 => Instr(21),
      I3 => Instr(20),
      I4 => Instr(24),
      I5 => \^rd20\(3),
      O => \^q_reg[5]\(3)
    );
\WriteData[20]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F3F3F3F3F3E0E0E0"
    )
        port map (
      I0 => Instr(13),
      I1 => Instr(14),
      I2 => rd2(20),
      I3 => \writeDataM[31]\,
      I4 => \^q_reg[5]\(4),
      I5 => \writeDataM[20]\,
      O => WriteData(4)
    );
\WriteData[20]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(23),
      I1 => Instr(22),
      I2 => Instr(21),
      I3 => Instr(20),
      I4 => Instr(24),
      I5 => rd20_0(20),
      O => rd2(20)
    );
\WriteData[20]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(23),
      I1 => Instr(22),
      I2 => Instr(21),
      I3 => Instr(20),
      I4 => Instr(24),
      I5 => \^rd20\(4),
      O => \^q_reg[5]\(4)
    );
\WriteData[21]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F3F3F3F3F3E0E0E0"
    )
        port map (
      I0 => Instr(13),
      I1 => Instr(14),
      I2 => rd2(21),
      I3 => \writeDataM[31]\,
      I4 => \^q_reg[5]\(5),
      I5 => \writeDataM[21]\,
      O => WriteData(5)
    );
\WriteData[21]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(23),
      I1 => Instr(22),
      I2 => Instr(21),
      I3 => Instr(20),
      I4 => Instr(24),
      I5 => rd20_0(21),
      O => rd2(21)
    );
\WriteData[21]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(23),
      I1 => Instr(22),
      I2 => Instr(21),
      I3 => Instr(20),
      I4 => Instr(24),
      I5 => \^rd20\(5),
      O => \^q_reg[5]\(5)
    );
\WriteData[22]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F3F3F3F3F3E0E0E0"
    )
        port map (
      I0 => Instr(13),
      I1 => Instr(14),
      I2 => rd2(22),
      I3 => \writeDataM[31]\,
      I4 => \^q_reg[5]\(6),
      I5 => \writeDataM[22]\,
      O => WriteData(6)
    );
\WriteData[22]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(23),
      I1 => Instr(22),
      I2 => Instr(21),
      I3 => Instr(20),
      I4 => Instr(24),
      I5 => rd20_0(22),
      O => rd2(22)
    );
\WriteData[22]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(23),
      I1 => Instr(22),
      I2 => Instr(21),
      I3 => Instr(20),
      I4 => Instr(24),
      I5 => \^rd20\(6),
      O => \^q_reg[5]\(6)
    );
\WriteData[23]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F3F3F3F3F3E0E0E0"
    )
        port map (
      I0 => Instr(13),
      I1 => Instr(14),
      I2 => rd2(23),
      I3 => \writeDataM[31]\,
      I4 => \^q_reg[5]\(7),
      I5 => \writeDataM[23]\,
      O => WriteData(7)
    );
\WriteData[23]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(23),
      I1 => Instr(22),
      I2 => Instr(21),
      I3 => Instr(20),
      I4 => Instr(24),
      I5 => rd20_0(23),
      O => rd2(23)
    );
\WriteData[23]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(23),
      I1 => Instr(22),
      I2 => Instr(21),
      I3 => Instr(20),
      I4 => Instr(24),
      I5 => \^rd20\(7),
      O => \^q_reg[5]\(7)
    );
\WriteData[24]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F3F3F3F3F3E0E0E0"
    )
        port map (
      I0 => Instr(13),
      I1 => Instr(14),
      I2 => rd2(24),
      I3 => \writeDataM[31]\,
      I4 => \^q_reg[5]\(8),
      I5 => \writeDataM[24]\,
      O => WriteData(8)
    );
\WriteData[24]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(23),
      I1 => Instr(22),
      I2 => Instr(21),
      I3 => Instr(20),
      I4 => Instr(24),
      I5 => rd20_0(24),
      O => rd2(24)
    );
\WriteData[24]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(23),
      I1 => Instr(22),
      I2 => Instr(21),
      I3 => Instr(20),
      I4 => Instr(24),
      I5 => rd20_0(8),
      O => \^q_reg[5]\(8)
    );
\WriteData[25]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F3F3F3F3F3E0E0E0"
    )
        port map (
      I0 => Instr(13),
      I1 => Instr(14),
      I2 => rd2(25),
      I3 => \writeDataM[31]\,
      I4 => \^q_reg[5]\(9),
      I5 => \writeDataM[25]\,
      O => WriteData(9)
    );
\WriteData[25]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(23),
      I1 => Instr(22),
      I2 => Instr(21),
      I3 => Instr(20),
      I4 => Instr(24),
      I5 => rd20_0(25),
      O => rd2(25)
    );
\WriteData[25]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(23),
      I1 => Instr(22),
      I2 => Instr(21),
      I3 => Instr(20),
      I4 => Instr(24),
      I5 => rd20_0(9),
      O => \^q_reg[5]\(9)
    );
\WriteData[26]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F3F3F3F3F3E0E0E0"
    )
        port map (
      I0 => Instr(13),
      I1 => Instr(14),
      I2 => rd2(26),
      I3 => \writeDataM[31]\,
      I4 => \^q_reg[5]\(10),
      I5 => \writeDataM[26]\,
      O => WriteData(10)
    );
\WriteData[26]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(23),
      I1 => Instr(22),
      I2 => Instr(21),
      I3 => Instr(20),
      I4 => Instr(24),
      I5 => rd20_0(26),
      O => rd2(26)
    );
\WriteData[26]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(23),
      I1 => Instr(22),
      I2 => Instr(21),
      I3 => Instr(20),
      I4 => Instr(24),
      I5 => rd20_0(10),
      O => \^q_reg[5]\(10)
    );
\WriteData[27]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F3F3F3F3F3E0E0E0"
    )
        port map (
      I0 => Instr(13),
      I1 => Instr(14),
      I2 => rd2(27),
      I3 => \writeDataM[31]\,
      I4 => \^q_reg[5]\(11),
      I5 => \writeDataM[27]\,
      O => WriteData(11)
    );
\WriteData[27]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(23),
      I1 => Instr(22),
      I2 => Instr(21),
      I3 => Instr(20),
      I4 => Instr(24),
      I5 => rd20_0(27),
      O => rd2(27)
    );
\WriteData[27]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(23),
      I1 => Instr(22),
      I2 => Instr(21),
      I3 => Instr(20),
      I4 => Instr(24),
      I5 => rd20_0(11),
      O => \^q_reg[5]\(11)
    );
\WriteData[28]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F3F3F3F3F3E0E0E0"
    )
        port map (
      I0 => Instr(13),
      I1 => Instr(14),
      I2 => rd2(28),
      I3 => \writeDataM[31]\,
      I4 => \^q_reg[5]\(12),
      I5 => \writeDataM[28]\,
      O => WriteData(12)
    );
\WriteData[28]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(23),
      I1 => Instr(22),
      I2 => Instr(21),
      I3 => Instr(20),
      I4 => Instr(24),
      I5 => rd20_0(28),
      O => rd2(28)
    );
\WriteData[28]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(23),
      I1 => Instr(22),
      I2 => Instr(21),
      I3 => Instr(20),
      I4 => Instr(24),
      I5 => rd20_0(12),
      O => \^q_reg[5]\(12)
    );
\WriteData[29]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F3F3F3F3F3E0E0E0"
    )
        port map (
      I0 => Instr(13),
      I1 => Instr(14),
      I2 => rd2(29),
      I3 => \writeDataM[31]\,
      I4 => \^q_reg[5]\(13),
      I5 => \writeDataM[29]\,
      O => WriteData(13)
    );
\WriteData[29]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(23),
      I1 => Instr(22),
      I2 => Instr(21),
      I3 => Instr(20),
      I4 => Instr(24),
      I5 => rd20_0(29),
      O => rd2(29)
    );
\WriteData[29]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(23),
      I1 => Instr(22),
      I2 => Instr(21),
      I3 => Instr(20),
      I4 => Instr(24),
      I5 => rd20_0(13),
      O => \^q_reg[5]\(13)
    );
\WriteData[30]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F3F3F3F3F3E0E0E0"
    )
        port map (
      I0 => Instr(13),
      I1 => Instr(14),
      I2 => rd2(30),
      I3 => \writeDataM[31]\,
      I4 => \^q_reg[5]\(14),
      I5 => \writeDataM[30]\,
      O => WriteData(14)
    );
\WriteData[30]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(23),
      I1 => Instr(22),
      I2 => Instr(21),
      I3 => Instr(20),
      I4 => Instr(24),
      I5 => rd20_0(30),
      O => rd2(30)
    );
\WriteData[30]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(23),
      I1 => Instr(22),
      I2 => Instr(21),
      I3 => Instr(20),
      I4 => Instr(24),
      I5 => rd20_0(14),
      O => \^q_reg[5]\(14)
    );
\WriteData[31]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F3F3F3F3F3E0E0E0"
    )
        port map (
      I0 => Instr(13),
      I1 => Instr(14),
      I2 => rd2(31),
      I3 => \writeDataM[31]\,
      I4 => \^q_reg[5]\(15),
      I5 => \writeDataM[31]_0\,
      O => WriteData(15)
    );
\WriteData[31]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(23),
      I1 => Instr(22),
      I2 => Instr(21),
      I3 => Instr(20),
      I4 => Instr(24),
      I5 => rd20_0(31),
      O => rd2(31)
    );
\WriteData[31]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(23),
      I1 => Instr(22),
      I2 => Instr(21),
      I3 => Instr(20),
      I4 => Instr(24),
      I5 => rd20_0(15),
      O => \^q_reg[5]\(15)
    );
\lt_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^srcb\(14),
      I1 => SrcA(14),
      I2 => SrcA(15),
      I3 => \^srcb\(15),
      O => \q_reg[14]\(3)
    );
\lt_carry__0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA655565556555"
    )
        port map (
      I0 => \^srcb\(13),
      I1 => Instr(5),
      I2 => Instr(2),
      I3 => Q(13),
      I4 => \^rd10\(13),
      I5 => \lt_carry__2_0\,
      O => \lt_carry__0_i_10_n_0\
    );
\lt_carry__0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA655565556555"
    )
        port map (
      I0 => \^srcb\(11),
      I1 => Instr(5),
      I2 => Instr(2),
      I3 => Q(11),
      I4 => \^rd10\(11),
      I5 => \lt_carry__2_0\,
      O => \lt_carry__0_i_11_n_0\
    );
\lt_carry__0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA655565556555"
    )
        port map (
      I0 => \^srcb\(9),
      I1 => Instr(5),
      I2 => Instr(2),
      I3 => Q(9),
      I4 => \^rd10\(9),
      I5 => \lt_carry__2_0\,
      O => \lt_carry__0_i_12_n_0\
    );
\lt_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^srcb\(12),
      I1 => SrcA(12),
      I2 => SrcA(13),
      I3 => \^srcb\(13),
      O => \q_reg[14]\(2)
    );
\lt_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^srcb\(10),
      I1 => SrcA(10),
      I2 => SrcA(11),
      I3 => \^srcb\(11),
      O => \q_reg[14]\(1)
    );
\lt_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^srcb\(8),
      I1 => SrcA(8),
      I2 => SrcA(9),
      I3 => \^srcb\(9),
      O => \q_reg[14]\(0)
    );
\lt_carry__0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88F8770700000000"
    )
        port map (
      I0 => \lt_carry__2_0\,
      I1 => \^rd10\(14),
      I2 => Q(14),
      I3 => \lt_carry__2\,
      I4 => \^srcb\(14),
      I5 => \lt_carry__0_i_9_n_0\,
      O => \q_reg[14]_1\(3)
    );
\lt_carry__0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88F8770700000000"
    )
        port map (
      I0 => \lt_carry__2_0\,
      I1 => \^rd10\(12),
      I2 => Q(12),
      I3 => \lt_carry__2\,
      I4 => \^srcb\(12),
      I5 => \lt_carry__0_i_10_n_0\,
      O => \q_reg[14]_1\(2)
    );
\lt_carry__0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88F8770700000000"
    )
        port map (
      I0 => \lt_carry__2_0\,
      I1 => \^rd10\(10),
      I2 => Q(10),
      I3 => \lt_carry__2\,
      I4 => \^srcb\(10),
      I5 => \lt_carry__0_i_11_n_0\,
      O => \q_reg[14]_1\(1)
    );
\lt_carry__0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88F8770700000000"
    )
        port map (
      I0 => \lt_carry__2_0\,
      I1 => \^rd10\(8),
      I2 => Q(8),
      I3 => \lt_carry__2\,
      I4 => \^srcb\(8),
      I5 => \lt_carry__0_i_12_n_0\,
      O => \q_reg[14]_1\(0)
    );
\lt_carry__0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA655565556555"
    )
        port map (
      I0 => \^srcb\(15),
      I1 => Instr(5),
      I2 => Instr(2),
      I3 => Q(15),
      I4 => \^rd10\(15),
      I5 => \lt_carry__2_0\,
      O => \lt_carry__0_i_9_n_0\
    );
\lt_carry__1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^srcb\(22),
      I1 => SrcA(22),
      I2 => SrcA(23),
      I3 => \^srcb\(23),
      O => \q_reg[22]\(3)
    );
\lt_carry__1_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA655565556555"
    )
        port map (
      I0 => \^srcb\(21),
      I1 => Instr(5),
      I2 => Instr(2),
      I3 => Q(21),
      I4 => \^rd10\(21),
      I5 => \lt_carry__2_0\,
      O => \lt_carry__1_i_10_n_0\
    );
\lt_carry__1_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA655565556555"
    )
        port map (
      I0 => \^srcb\(19),
      I1 => Instr(5),
      I2 => Instr(2),
      I3 => Q(19),
      I4 => \^rd10\(19),
      I5 => \lt_carry__2_0\,
      O => \lt_carry__1_i_11_n_0\
    );
\lt_carry__1_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA655565556555"
    )
        port map (
      I0 => \^srcb\(17),
      I1 => Instr(5),
      I2 => Instr(2),
      I3 => Q(17),
      I4 => \^rd10\(17),
      I5 => \lt_carry__2_0\,
      O => \lt_carry__1_i_12_n_0\
    );
\lt_carry__1_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^srcb\(20),
      I1 => SrcA(20),
      I2 => SrcA(21),
      I3 => \^srcb\(21),
      O => \q_reg[22]\(2)
    );
\lt_carry__1_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^srcb\(18),
      I1 => SrcA(18),
      I2 => SrcA(19),
      I3 => \^srcb\(19),
      O => \q_reg[22]\(1)
    );
\lt_carry__1_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^srcb\(16),
      I1 => SrcA(16),
      I2 => SrcA(17),
      I3 => \^srcb\(17),
      O => \q_reg[22]\(0)
    );
\lt_carry__1_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88F8770700000000"
    )
        port map (
      I0 => \lt_carry__2_0\,
      I1 => \^rd10\(22),
      I2 => Q(22),
      I3 => \lt_carry__2\,
      I4 => \^srcb\(22),
      I5 => \lt_carry__1_i_9_n_0\,
      O => \q_reg[22]_1\(3)
    );
\lt_carry__1_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88F8770700000000"
    )
        port map (
      I0 => \lt_carry__2_0\,
      I1 => \^rd10\(20),
      I2 => Q(20),
      I3 => \lt_carry__2\,
      I4 => \^srcb\(20),
      I5 => \lt_carry__1_i_10_n_0\,
      O => \q_reg[22]_1\(2)
    );
\lt_carry__1_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88F8770700000000"
    )
        port map (
      I0 => \lt_carry__2_0\,
      I1 => \^rd10\(18),
      I2 => Q(18),
      I3 => \lt_carry__2\,
      I4 => \^srcb\(18),
      I5 => \lt_carry__1_i_11_n_0\,
      O => \q_reg[22]_1\(1)
    );
\lt_carry__1_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88F8770700000000"
    )
        port map (
      I0 => \lt_carry__2_0\,
      I1 => \^rd10\(16),
      I2 => Q(16),
      I3 => \lt_carry__2\,
      I4 => \^srcb\(16),
      I5 => \lt_carry__1_i_12_n_0\,
      O => \q_reg[22]_1\(0)
    );
\lt_carry__1_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA655565556555"
    )
        port map (
      I0 => \^srcb\(23),
      I1 => Instr(5),
      I2 => Instr(2),
      I3 => Q(23),
      I4 => \^rd10\(23),
      I5 => \lt_carry__2_0\,
      O => \lt_carry__1_i_9_n_0\
    );
\lt_carry__2_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^srcb\(30),
      I1 => SrcA(30),
      I2 => \^srcb\(31),
      I3 => \SrcA__0\(0),
      O => \q_reg[30]_0\(3)
    );
\lt_carry__2_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA655565556555"
    )
        port map (
      I0 => \^srcb\(29),
      I1 => Instr(5),
      I2 => Instr(2),
      I3 => Q(29),
      I4 => \^rd10\(29),
      I5 => \lt_carry__2_0\,
      O => \lt_carry__2_i_10_n_0\
    );
\lt_carry__2_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA655565556555"
    )
        port map (
      I0 => \^srcb\(27),
      I1 => Instr(5),
      I2 => Instr(2),
      I3 => Q(27),
      I4 => \^rd10\(27),
      I5 => \lt_carry__2_0\,
      O => \lt_carry__2_i_11_n_0\
    );
\lt_carry__2_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA655565556555"
    )
        port map (
      I0 => \^srcb\(25),
      I1 => Instr(5),
      I2 => Instr(2),
      I3 => Q(25),
      I4 => \^rd10\(25),
      I5 => \lt_carry__2_0\,
      O => \lt_carry__2_i_12_n_0\
    );
\lt_carry__2_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^srcb\(28),
      I1 => SrcA(28),
      I2 => SrcA(29),
      I3 => \^srcb\(29),
      O => \q_reg[30]_0\(2)
    );
\lt_carry__2_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^srcb\(26),
      I1 => SrcA(26),
      I2 => SrcA(27),
      I3 => \^srcb\(27),
      O => \q_reg[30]_0\(1)
    );
\lt_carry__2_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^srcb\(24),
      I1 => SrcA(24),
      I2 => SrcA(25),
      I3 => \^srcb\(25),
      O => \q_reg[30]_0\(0)
    );
\lt_carry__2_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9595AA9500000000"
    )
        port map (
      I0 => \^srcb\(30),
      I1 => \lt_carry__2_0\,
      I2 => \^rd10\(30),
      I3 => Q(30),
      I4 => \lt_carry__2\,
      I5 => \lt_carry__2_i_9_n_0\,
      O => \q_reg[30]_3\(3)
    );
\lt_carry__2_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88F8770700000000"
    )
        port map (
      I0 => \lt_carry__2_0\,
      I1 => \^rd10\(28),
      I2 => Q(28),
      I3 => \lt_carry__2\,
      I4 => \^srcb\(28),
      I5 => \lt_carry__2_i_10_n_0\,
      O => \q_reg[30]_3\(2)
    );
\lt_carry__2_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88F8770700000000"
    )
        port map (
      I0 => \lt_carry__2_0\,
      I1 => \^rd10\(26),
      I2 => Q(26),
      I3 => \lt_carry__2\,
      I4 => \^srcb\(26),
      I5 => \lt_carry__2_i_11_n_0\,
      O => \q_reg[30]_3\(1)
    );
\lt_carry__2_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88F8770700000000"
    )
        port map (
      I0 => \lt_carry__2_0\,
      I1 => \^rd10\(24),
      I2 => Q(24),
      I3 => \lt_carry__2\,
      I4 => \^srcb\(24),
      I5 => \lt_carry__2_i_12_n_0\,
      O => \q_reg[30]_3\(0)
    );
\lt_carry__2_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF40404000BFBFBF"
    )
        port map (
      I0 => Instr(5),
      I1 => Instr(2),
      I2 => Q(31),
      I3 => \^rd10\(31),
      I4 => \lt_carry__2_0\,
      I5 => \^srcb\(31),
      O => \lt_carry__2_i_9_n_0\
    );
lt_carry_i_11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA655565556555"
    )
        port map (
      I0 => \^srcb\(7),
      I1 => Instr(5),
      I2 => Instr(2),
      I3 => Q(7),
      I4 => \^rd10\(7),
      I5 => \lt_carry__2_0\,
      O => lt_carry_i_11_n_0
    );
lt_carry_i_12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA655565556555"
    )
        port map (
      I0 => \^srcb\(5),
      I1 => Instr(5),
      I2 => Instr(2),
      I3 => Q(5),
      I4 => \^rd10\(5),
      I5 => \lt_carry__2_0\,
      O => lt_carry_i_12_n_0
    );
lt_carry_i_13: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA655565556555"
    )
        port map (
      I0 => \^srcb\(3),
      I1 => Instr(5),
      I2 => Instr(2),
      I3 => Q(3),
      I4 => \^rd10\(3),
      I5 => \lt_carry__2_0\,
      O => lt_carry_i_13_n_0
    );
lt_carry_i_14: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6A6A6A6A556A6A6A"
    )
        port map (
      I0 => \^srcb\(1),
      I1 => \lt_carry__2_0\,
      I2 => \^rd10\(1),
      I3 => Q(1),
      I4 => Instr(2),
      I5 => Instr(5),
      O => lt_carry_i_14_n_0
    );
lt_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^srcb\(4),
      I1 => SrcA(4),
      I2 => SrcA(5),
      I3 => \^srcb\(5),
      O => DI(2)
    );
lt_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^srcb\(2),
      I1 => SrcA(2),
      I2 => SrcA(3),
      I3 => \^srcb\(3),
      O => DI(1)
    );
lt_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^srcb\(0),
      I1 => SrcA(0),
      I2 => SrcA(1),
      I3 => \^srcb\(1),
      O => DI(0)
    );
lt_carry_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88F8770700000000"
    )
        port map (
      I0 => \lt_carry__2_0\,
      I1 => \^rd10\(6),
      I2 => Q(6),
      I3 => \lt_carry__2\,
      I4 => \^srcb\(6),
      I5 => lt_carry_i_11_n_0,
      O => S(3)
    );
lt_carry_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88F8770700000000"
    )
        port map (
      I0 => \lt_carry__2_0\,
      I1 => \^rd10\(4),
      I2 => Q(4),
      I3 => \lt_carry__2\,
      I4 => \^srcb\(4),
      I5 => lt_carry_i_12_n_0,
      O => S(2)
    );
lt_carry_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88F8770700000000"
    )
        port map (
      I0 => \lt_carry__2_0\,
      I1 => \^rd10\(2),
      I2 => Q(2),
      I3 => \lt_carry__2\,
      I4 => \^srcb\(2),
      I5 => lt_carry_i_13_n_0,
      O => S(1)
    );
lt_carry_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5510101000454545"
    )
        port map (
      I0 => lt_carry_i_14_n_0,
      I1 => \lt_carry__2\,
      I2 => Q(0),
      I3 => \^rd10\(0),
      I4 => \lt_carry__2_0\,
      I5 => \^srcb\(0),
      O => S(0)
    );
\ltu_carry__0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88F8770700000000"
    )
        port map (
      I0 => \lt_carry__2_0\,
      I1 => \^rd10\(14),
      I2 => Q(14),
      I3 => \lt_carry__2\,
      I4 => \^srcb\(14),
      I5 => \lt_carry__0_i_9_n_0\,
      O => \q_reg[14]_0\(3)
    );
\ltu_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88F8770700000000"
    )
        port map (
      I0 => \lt_carry__2_0\,
      I1 => \^rd10\(12),
      I2 => Q(12),
      I3 => \lt_carry__2\,
      I4 => \^srcb\(12),
      I5 => \lt_carry__0_i_10_n_0\,
      O => \q_reg[14]_0\(2)
    );
\ltu_carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88F8770700000000"
    )
        port map (
      I0 => \lt_carry__2_0\,
      I1 => \^rd10\(10),
      I2 => Q(10),
      I3 => \lt_carry__2\,
      I4 => \^srcb\(10),
      I5 => \lt_carry__0_i_11_n_0\,
      O => \q_reg[14]_0\(1)
    );
\ltu_carry__0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88F8770700000000"
    )
        port map (
      I0 => \lt_carry__2_0\,
      I1 => \^rd10\(8),
      I2 => Q(8),
      I3 => \lt_carry__2\,
      I4 => \^srcb\(8),
      I5 => \lt_carry__0_i_12_n_0\,
      O => \q_reg[14]_0\(0)
    );
\ltu_carry__1_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88F8770700000000"
    )
        port map (
      I0 => \lt_carry__2_0\,
      I1 => \^rd10\(22),
      I2 => Q(22),
      I3 => \lt_carry__2\,
      I4 => \^srcb\(22),
      I5 => \lt_carry__1_i_9_n_0\,
      O => \q_reg[22]_0\(3)
    );
\ltu_carry__1_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88F8770700000000"
    )
        port map (
      I0 => \lt_carry__2_0\,
      I1 => \^rd10\(20),
      I2 => Q(20),
      I3 => \lt_carry__2\,
      I4 => \^srcb\(20),
      I5 => \lt_carry__1_i_10_n_0\,
      O => \q_reg[22]_0\(2)
    );
\ltu_carry__1_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88F8770700000000"
    )
        port map (
      I0 => \lt_carry__2_0\,
      I1 => \^rd10\(18),
      I2 => Q(18),
      I3 => \lt_carry__2\,
      I4 => \^srcb\(18),
      I5 => \lt_carry__1_i_11_n_0\,
      O => \q_reg[22]_0\(1)
    );
\ltu_carry__1_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88F8770700000000"
    )
        port map (
      I0 => \lt_carry__2_0\,
      I1 => \^rd10\(16),
      I2 => Q(16),
      I3 => \lt_carry__2\,
      I4 => \^srcb\(16),
      I5 => \lt_carry__1_i_12_n_0\,
      O => \q_reg[22]_0\(0)
    );
\ltu_carry__2_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^srcb\(30),
      I1 => SrcA(30),
      I2 => \SrcA__0\(0),
      I3 => \^srcb\(31),
      O => \q_reg[30]_2\(0)
    );
\ltu_carry__2_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9595AA9500000000"
    )
        port map (
      I0 => \^srcb\(30),
      I1 => \lt_carry__2_0\,
      I2 => \^rd10\(30),
      I3 => Q(30),
      I4 => \lt_carry__2\,
      I5 => \lt_carry__2_i_9_n_0\,
      O => \q_reg[30]_1\(3)
    );
\ltu_carry__2_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88F8770700000000"
    )
        port map (
      I0 => \lt_carry__2_0\,
      I1 => \^rd10\(28),
      I2 => Q(28),
      I3 => \lt_carry__2\,
      I4 => \^srcb\(28),
      I5 => \lt_carry__2_i_10_n_0\,
      O => \q_reg[30]_1\(2)
    );
\ltu_carry__2_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88F8770700000000"
    )
        port map (
      I0 => \lt_carry__2_0\,
      I1 => \^rd10\(26),
      I2 => Q(26),
      I3 => \lt_carry__2\,
      I4 => \^srcb\(26),
      I5 => \lt_carry__2_i_11_n_0\,
      O => \q_reg[30]_1\(1)
    );
\ltu_carry__2_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88F8770700000000"
    )
        port map (
      I0 => \lt_carry__2_0\,
      I1 => \^rd10\(24),
      I2 => Q(24),
      I3 => \lt_carry__2\,
      I4 => \^srcb\(24),
      I5 => \lt_carry__2_i_12_n_0\,
      O => \q_reg[30]_1\(0)
    );
ltu_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88F8770700000000"
    )
        port map (
      I0 => \lt_carry__2_0\,
      I1 => \^rd10\(6),
      I2 => Q(6),
      I3 => \lt_carry__2\,
      I4 => \^srcb\(6),
      I5 => lt_carry_i_11_n_0,
      O => \q_reg[6]\(3)
    );
ltu_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88F8770700000000"
    )
        port map (
      I0 => \lt_carry__2_0\,
      I1 => \^rd10\(4),
      I2 => Q(4),
      I3 => \lt_carry__2\,
      I4 => \^srcb\(4),
      I5 => lt_carry_i_12_n_0,
      O => \q_reg[6]\(2)
    );
ltu_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88F8770700000000"
    )
        port map (
      I0 => \lt_carry__2_0\,
      I1 => \^rd10\(2),
      I2 => Q(2),
      I3 => \lt_carry__2\,
      I4 => \^srcb\(2),
      I5 => lt_carry_i_13_n_0,
      O => \q_reg[6]\(1)
    );
ltu_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5510101000454545"
    )
        port map (
      I0 => lt_carry_i_14_n_0,
      I1 => \lt_carry__2\,
      I2 => Q(0),
      I3 => \^rd10\(0),
      I4 => \lt_carry__2_0\,
      I5 => \^srcb\(0),
      O => \q_reg[6]\(0)
    );
\q[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000FE10FE10"
    )
        port map (
      I0 => \^q[31]_i_10\,
      I1 => ResultSrc(0),
      I2 => PCPlus4(7),
      I3 => PCTarget(7),
      I4 => \^aluresult[31]_inst_0_i_5_2\,
      I5 => PCSrc10_out,
      O => D(7)
    );
\q[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000FE10FE10"
    )
        port map (
      I0 => \^q[31]_i_10\,
      I1 => ResultSrc(0),
      I2 => PCPlus4(8),
      I3 => PCTarget(8),
      I4 => \^aluresult[31]_inst_0_i_5_3\,
      I5 => PCSrc10_out,
      O => D(8)
    );
\q[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000FE10FE10"
    )
        port map (
      I0 => \^q[31]_i_10\,
      I1 => ResultSrc(0),
      I2 => PCPlus4(9),
      I3 => PCTarget(9),
      I4 => \q_reg[12]\,
      I5 => PCSrc10_out,
      O => D(9)
    );
\q[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000FE10FE10"
    )
        port map (
      I0 => \^q[31]_i_10\,
      I1 => ResultSrc(0),
      I2 => PCPlus4(10),
      I3 => PCTarget(10),
      I4 => \q_reg[13]\,
      I5 => PCSrc10_out,
      O => D(10)
    );
\q[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000FE10FE10"
    )
        port map (
      I0 => \^q[31]_i_10\,
      I1 => ResultSrc(0),
      I2 => PCPlus4(11),
      I3 => PCTarget(11),
      I4 => \q_reg[14]_2\,
      I5 => PCSrc10_out,
      O => D(11)
    );
\q[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000FE10FE10"
    )
        port map (
      I0 => \^q[31]_i_10\,
      I1 => ResultSrc(0),
      I2 => PCPlus4(12),
      I3 => PCTarget(12),
      I4 => \q_reg[15]_0\,
      I5 => PCSrc10_out,
      O => D(12)
    );
\q[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000FE10FE10"
    )
        port map (
      I0 => \^q[31]_i_10\,
      I1 => ResultSrc(0),
      I2 => PCPlus4(13),
      I3 => PCTarget(13),
      I4 => \^aluresult[31]_inst_0_i_5_4\,
      I5 => PCSrc10_out,
      O => D(13)
    );
\q[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000FE10FE10"
    )
        port map (
      I0 => \^q[31]_i_10\,
      I1 => ResultSrc(0),
      I2 => PCPlus4(14),
      I3 => PCTarget(14),
      I4 => \^aluresult[31]_inst_0_i_5_5\,
      I5 => PCSrc10_out,
      O => D(14)
    );
\q[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000FE10FE10"
    )
        port map (
      I0 => \^q[31]_i_10\,
      I1 => ResultSrc(0),
      I2 => PCPlus4(15),
      I3 => PCTarget(15),
      I4 => \^aluresult[31]_inst_0_i_5_6\,
      I5 => PCSrc10_out,
      O => D(15)
    );
\q[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000FE10FE10"
    )
        port map (
      I0 => \^q[31]_i_10\,
      I1 => ResultSrc(0),
      I2 => PCPlus4(16),
      I3 => PCTarget(16),
      I4 => \q_reg[19]_0\,
      I5 => PCSrc10_out,
      O => D(16)
    );
\q[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000FE10FE10"
    )
        port map (
      I0 => \^q[31]_i_10\,
      I1 => ResultSrc(0),
      I2 => PCPlus4(17),
      I3 => PCTarget(17),
      I4 => \q_reg[20]\,
      I5 => PCSrc10_out,
      O => D(17)
    );
\q[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000FE10FE10"
    )
        port map (
      I0 => \^q[31]_i_10\,
      I1 => ResultSrc(0),
      I2 => PCPlus4(18),
      I3 => PCTarget(18),
      I4 => \^aluresult[31]_inst_0_i_5_7\,
      I5 => PCSrc10_out,
      O => D(18)
    );
\q[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000FE10FE10"
    )
        port map (
      I0 => \^q[31]_i_10\,
      I1 => ResultSrc(0),
      I2 => PCPlus4(19),
      I3 => PCTarget(19),
      I4 => \^aluresult[31]_inst_0_i_5_8\,
      I5 => PCSrc10_out,
      O => D(19)
    );
\q[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000FE10FE10"
    )
        port map (
      I0 => \^q[31]_i_10\,
      I1 => ResultSrc(0),
      I2 => PCPlus4(20),
      I3 => PCTarget(20),
      I4 => \^aluresult[31]_inst_0_i_5_9\,
      I5 => PCSrc10_out,
      O => D(20)
    );
\q[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000FE10FE10"
    )
        port map (
      I0 => \^q[31]_i_10\,
      I1 => ResultSrc(0),
      I2 => PCPlus4(21),
      I3 => PCTarget(21),
      I4 => \^aluresult[31]_inst_0_i_5_10\,
      I5 => PCSrc10_out,
      O => D(21)
    );
\q[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000FE10FE10"
    )
        port map (
      I0 => \^q[31]_i_10\,
      I1 => ResultSrc(0),
      I2 => PCPlus4(22),
      I3 => PCTarget(22),
      I4 => \q_reg[25]_1\,
      I5 => PCSrc10_out,
      O => D(22)
    );
\q[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000FE10FE10"
    )
        port map (
      I0 => \^q[31]_i_10\,
      I1 => ResultSrc(0),
      I2 => PCPlus4(23),
      I3 => PCTarget(23),
      I4 => \^aluresult[31]_inst_0_i_5_11\,
      I5 => PCSrc10_out,
      O => D(23)
    );
\q[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000FE10FE10"
    )
        port map (
      I0 => \^q[31]_i_10\,
      I1 => ResultSrc(0),
      I2 => PCPlus4(24),
      I3 => PCTarget(24),
      I4 => \q_reg[27]_1\,
      I5 => PCSrc10_out,
      O => D(24)
    );
\q[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000FE10FE10"
    )
        port map (
      I0 => \^q[31]_i_10\,
      I1 => ResultSrc(0),
      I2 => PCPlus4(25),
      I3 => PCTarget(25),
      I4 => \^aluresult[31]_inst_0_i_5_12\,
      I5 => PCSrc10_out,
      O => D(25)
    );
\q[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000FE10FE10"
    )
        port map (
      I0 => \^q[31]_i_10\,
      I1 => ResultSrc(0),
      I2 => PCPlus4(26),
      I3 => PCTarget(26),
      I4 => \^aluresult[31]_inst_0_i_5_13\,
      I5 => PCSrc10_out,
      O => D(26)
    );
\q[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000FE10FE10"
    )
        port map (
      I0 => \^q[31]_i_10\,
      I1 => ResultSrc(0),
      I2 => PCPlus4(27),
      I3 => PCTarget(27),
      I4 => \q_reg[30]_4\,
      I5 => PCSrc10_out,
      O => D(27)
    );
\q[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000FE10FE10"
    )
        port map (
      I0 => \^q[31]_i_10\,
      I1 => ResultSrc(0),
      I2 => PCPlus4(28),
      I3 => PCTarget(28),
      I4 => \^aluresult[31]_inst_0_i_5_14\,
      I5 => PCSrc10_out,
      O => D(28)
    );
\q[31]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \^aluresult[31]_inst_0_i_5_3\,
      I1 => \^aluresult[31]_inst_0_i_5_2\,
      I2 => \q_reg[9]\,
      I3 => \^aluresult[31]_inst_0_i_5_1\,
      O => \ALUResult[8]_INST_0_0\
    );
\q[31]_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \^aluresult[31]_inst_0_i_5_0\,
      I1 => \^aluresult[31]_inst_0_i_5\,
      I2 => \q_reg[4]_0\,
      O => \ALUResult[4]_INST_0\
    );
\q[31]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \^aluresult[31]_inst_0_i_5_11\,
      I1 => \q_reg[27]_1\,
      I2 => \^aluresult[31]_inst_0_i_5_10\,
      I3 => \q_reg[25]_1\,
      I4 => \^aluresult[31]_inst_0_i_5_13\,
      I5 => \^aluresult[31]_inst_0_i_5_12\,
      O => \q[31]_i_15_n_0\
    );
\q[31]_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \^aluresult[31]_inst_0_i_5_7\,
      I1 => \q_reg[20]\,
      I2 => \^aluresult[31]_inst_0_i_5_9\,
      I3 => \^aluresult[31]_inst_0_i_5_8\,
      O => \q[31]_i_16_n_0\
    );
\q[31]_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \q_reg[19]_0\,
      I1 => \^aluresult[31]_inst_0_i_5_6\,
      I2 => \^aluresult[31]_inst_0_i_5_5\,
      I3 => \^aluresult[31]_inst_0_i_5_4\,
      O => \q[31]_i_17_n_0\
    );
\q[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888AAA8888A888"
    )
        port map (
      I0 => \q_reg[3]_2\,
      I1 => \q[31]_i_6_n_0\,
      I2 => \q_reg[3]_3\,
      I3 => \q[31]_i_8_n_0\,
      I4 => \q_reg[3]_4\,
      I5 => \q_reg[3]_5\,
      O => \^q[31]_i_10\
    );
\q[31]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3C005A00"
    )
        port map (
      I0 => CO(0),
      I1 => \q[31]_i_2_0\(0),
      I2 => Instr(12),
      I3 => Instr(14),
      I4 => Instr(13),
      O => \q[31]_i_6_n_0\
    );
\q[31]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => \^aluresult[31]_inst_0_i_5_14\,
      I1 => \q_reg[30]_4\,
      I2 => \q[31]_i_15_n_0\,
      I3 => \q[31]_i_16_n_0\,
      I4 => \q[31]_i_17_n_0\,
      O => \q[31]_i_8_n_0\
    );
\q[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000FE10FE10"
    )
        port map (
      I0 => \^q[31]_i_10\,
      I1 => ResultSrc(0),
      I2 => PCPlus4(0),
      I3 => PCTarget(0),
      I4 => \q_reg[3]_1\,
      I5 => PCSrc10_out,
      O => D(0)
    );
\q[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000FE10FE10"
    )
        port map (
      I0 => \^q[31]_i_10\,
      I1 => ResultSrc(0),
      I2 => PCPlus4(1),
      I3 => PCTarget(1),
      I4 => \q_reg[4]_0\,
      I5 => PCSrc10_out,
      O => D(1)
    );
\q[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000FE10FE10"
    )
        port map (
      I0 => \^q[31]_i_10\,
      I1 => ResultSrc(0),
      I2 => PCPlus4(2),
      I3 => PCTarget(2),
      I4 => \^aluresult[31]_inst_0_i_5\,
      I5 => PCSrc10_out,
      O => D(2)
    );
\q[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000FE10FE10"
    )
        port map (
      I0 => \^q[31]_i_10\,
      I1 => ResultSrc(0),
      I2 => PCPlus4(3),
      I3 => PCTarget(3),
      I4 => \^aluresult[31]_inst_0_i_5_0\,
      I5 => PCSrc10_out,
      O => D(3)
    );
\q[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000FE10FE10"
    )
        port map (
      I0 => \^q[31]_i_10\,
      I1 => ResultSrc(0),
      I2 => PCPlus4(4),
      I3 => PCTarget(4),
      I4 => \q_reg[7]_0\,
      I5 => PCSrc10_out,
      O => D(4)
    );
\q[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000FE10FE10"
    )
        port map (
      I0 => \^q[31]_i_10\,
      I1 => ResultSrc(0),
      I2 => PCPlus4(5),
      I3 => PCTarget(5),
      I4 => \^aluresult[31]_inst_0_i_5_1\,
      I5 => PCSrc10_out,
      O => D(5)
    );
\q[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000FE10FE10"
    )
        port map (
      I0 => \^q[31]_i_10\,
      I1 => ResultSrc(0),
      I2 => PCPlus4(6),
      I3 => PCTarget(6),
      I4 => \q_reg[9]\,
      I5 => PCSrc10_out,
      O => D(6)
    );
rf_reg_r1_0_31_0_5: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 0) => Instr(19 downto 15),
      ADDRB(4 downto 0) => Instr(19 downto 15),
      ADDRC(4 downto 0) => Instr(19 downto 15),
      ADDRD(4 downto 0) => Instr(11 downto 7),
      DIA(1 downto 0) => Result(1 downto 0),
      DIB(1 downto 0) => Result(3 downto 2),
      DIC(1 downto 0) => Result(5 downto 4),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => \^rd10\(1 downto 0),
      DOB(1 downto 0) => \^rd10\(3 downto 2),
      DOC(1 downto 0) => \^rd10\(5 downto 4),
      DOD(1 downto 0) => NLW_rf_reg_r1_0_31_0_5_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => RegWrite
    );
rf_reg_r1_0_31_0_5_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => Instr(1),
      I1 => Instr(0),
      I2 => rf_reg_r1_0_31_0_5_i_8_n_0,
      O => RegWrite
    );
rf_reg_r1_0_31_0_5_i_11: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0111"
    )
        port map (
      I0 => Instr(5),
      I1 => Instr(4),
      I2 => Instr(6),
      I3 => Instr(2),
      O => \q_reg[5]_0\
    );
rf_reg_r1_0_31_0_5_i_8: unisim.vcomponents.LUT5
    generic map(
      INIT => X"080008F1"
    )
        port map (
      I0 => Instr(5),
      I1 => Instr(2),
      I2 => Instr(4),
      I3 => Instr(6),
      I4 => Instr(3),
      O => rf_reg_r1_0_31_0_5_i_8_n_0
    );
rf_reg_r1_0_31_12_17: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 0) => Instr(19 downto 15),
      ADDRB(4 downto 0) => Instr(19 downto 15),
      ADDRC(4 downto 0) => Instr(19 downto 15),
      ADDRD(4 downto 0) => Instr(11 downto 7),
      DIA(1 downto 0) => Result(13 downto 12),
      DIB(1 downto 0) => Result(15 downto 14),
      DIC(1 downto 0) => Result(17 downto 16),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => \^rd10\(13 downto 12),
      DOB(1 downto 0) => \^rd10\(15 downto 14),
      DOC(1 downto 0) => \^rd10\(17 downto 16),
      DOD(1 downto 0) => NLW_rf_reg_r1_0_31_12_17_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => RegWrite
    );
rf_reg_r1_0_31_12_17_i_11: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Instr(4),
      I1 => Instr(5),
      O => \q_reg[5]_2\(0)
    );
rf_reg_r1_0_31_12_17_i_14: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => Instr(13),
      I1 => Instr(4),
      I2 => Instr(5),
      I3 => ReadData(4),
      O => \readDataM[17]\
    );
rf_reg_r1_0_31_12_17_i_15: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => Instr(13),
      I1 => Instr(4),
      I2 => Instr(5),
      I3 => ReadData(3),
      O => \readDataM[16]\
    );
rf_reg_r1_0_31_12_17_i_20: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => Instr(5),
      I1 => Instr(4),
      I2 => Instr(13),
      O => \q_reg[5]_1\
    );
rf_reg_r1_0_31_18_23: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 0) => Instr(19 downto 15),
      ADDRB(4 downto 0) => Instr(19 downto 15),
      ADDRC(4 downto 0) => Instr(19 downto 15),
      ADDRD(4 downto 0) => Instr(11 downto 7),
      DIA(1 downto 0) => Result(19 downto 18),
      DIB(1 downto 0) => Result(21 downto 20),
      DIC(1 downto 0) => Result(23 downto 22),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => \^rd10\(19 downto 18),
      DOB(1 downto 0) => \^rd10\(21 downto 20),
      DOC(1 downto 0) => \^rd10\(23 downto 22),
      DOD(1 downto 0) => NLW_rf_reg_r1_0_31_18_23_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => RegWrite
    );
rf_reg_r1_0_31_18_23_i_10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => Instr(13),
      I1 => Instr(4),
      I2 => Instr(5),
      I3 => ReadData(7),
      O => \readDataM[20]\
    );
rf_reg_r1_0_31_18_23_i_11: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => Instr(13),
      I1 => Instr(4),
      I2 => Instr(5),
      I3 => ReadData(10),
      O => \readDataM[23]\
    );
rf_reg_r1_0_31_18_23_i_12: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => Instr(13),
      I1 => Instr(4),
      I2 => Instr(5),
      I3 => ReadData(9),
      O => \readDataM[22]\
    );
rf_reg_r1_0_31_18_23_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => Instr(13),
      I1 => Instr(4),
      I2 => Instr(5),
      I3 => ReadData(6),
      O => \readDataM[19]\
    );
rf_reg_r1_0_31_18_23_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => Instr(13),
      I1 => Instr(4),
      I2 => Instr(5),
      I3 => ReadData(5),
      O => \readDataM[18]\
    );
rf_reg_r1_0_31_18_23_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => Instr(13),
      I1 => Instr(4),
      I2 => Instr(5),
      I3 => ReadData(8),
      O => \readDataM[21]\
    );
rf_reg_r1_0_31_24_29: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 0) => Instr(19 downto 15),
      ADDRB(4 downto 0) => Instr(19 downto 15),
      ADDRC(4 downto 0) => Instr(19 downto 15),
      ADDRD(4 downto 0) => Instr(11 downto 7),
      DIA(1 downto 0) => Result(25 downto 24),
      DIB(1 downto 0) => Result(27 downto 26),
      DIC(1 downto 0) => Result(29 downto 28),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => \^rd10\(25 downto 24),
      DOB(1 downto 0) => \^rd10\(27 downto 26),
      DOC(1 downto 0) => \^rd10\(29 downto 28),
      DOD(1 downto 0) => NLW_rf_reg_r1_0_31_24_29_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => RegWrite
    );
rf_reg_r1_0_31_24_29_i_10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => Instr(13),
      I1 => Instr(4),
      I2 => Instr(5),
      I3 => ReadData(13),
      O => \readDataM[26]\
    );
rf_reg_r1_0_31_24_29_i_11: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => Instr(13),
      I1 => Instr(4),
      I2 => Instr(5),
      I3 => ReadData(16),
      O => \readDataM[29]\
    );
rf_reg_r1_0_31_24_29_i_12: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => Instr(13),
      I1 => Instr(4),
      I2 => Instr(5),
      I3 => ReadData(15),
      O => \readDataM[28]\
    );
rf_reg_r1_0_31_24_29_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => Instr(13),
      I1 => Instr(4),
      I2 => Instr(5),
      I3 => ReadData(12),
      O => \readDataM[25]\
    );
rf_reg_r1_0_31_24_29_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => Instr(13),
      I1 => Instr(4),
      I2 => Instr(5),
      I3 => ReadData(11),
      O => \readDataM[24]\
    );
rf_reg_r1_0_31_24_29_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => Instr(13),
      I1 => Instr(4),
      I2 => Instr(5),
      I3 => ReadData(14),
      O => \readDataM[27]\
    );
rf_reg_r1_0_31_30_31: unisim.vcomponents.RAM32X1D
     port map (
      A0 => Instr(7),
      A1 => Instr(8),
      A2 => Instr(9),
      A3 => Instr(10),
      A4 => Instr(11),
      D => Result(30),
      DPO => \^rd10\(30),
      DPRA0 => Instr(15),
      DPRA1 => Instr(16),
      DPRA2 => Instr(17),
      DPRA3 => Instr(18),
      DPRA4 => Instr(19),
      SPO => NLW_rf_reg_r1_0_31_30_31_SPO_UNCONNECTED,
      WCLK => clk,
      WE => RegWrite
    );
\rf_reg_r1_0_31_30_31__0\: unisim.vcomponents.RAM32X1D
     port map (
      A0 => Instr(7),
      A1 => Instr(8),
      A2 => Instr(9),
      A3 => Instr(10),
      A4 => Instr(11),
      D => Result(31),
      DPO => \^rd10\(31),
      DPRA0 => Instr(15),
      DPRA1 => Instr(16),
      DPRA2 => Instr(17),
      DPRA3 => Instr(18),
      DPRA4 => Instr(19),
      SPO => \NLW_rf_reg_r1_0_31_30_31__0_SPO_UNCONNECTED\,
      WCLK => clk,
      WE => RegWrite
    );
rf_reg_r1_0_31_30_31_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => Instr(13),
      I1 => Instr(4),
      I2 => Instr(5),
      I3 => ReadData(17),
      O => \readDataM[30]\
    );
\rf_reg_r1_0_31_30_31_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => Instr(13),
      I1 => Instr(4),
      I2 => Instr(5),
      I3 => ReadData(18),
      O => \readDataM[31]\
    );
rf_reg_r1_0_31_6_11: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 0) => Instr(19 downto 15),
      ADDRB(4 downto 0) => Instr(19 downto 15),
      ADDRC(4 downto 0) => Instr(19 downto 15),
      ADDRD(4 downto 0) => Instr(11 downto 7),
      DIA(1 downto 0) => Result(7 downto 6),
      DIB(1 downto 0) => Result(9 downto 8),
      DIC(1 downto 0) => Result(11 downto 10),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => \^rd10\(7 downto 6),
      DOB(1 downto 0) => \^rd10\(9 downto 8),
      DOC(1 downto 0) => \^rd10\(11 downto 10),
      DOD(1 downto 0) => NLW_rf_reg_r1_0_31_6_11_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => RegWrite
    );
rf_reg_r1_0_31_6_11_i_12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAACCAAAAAAF0"
    )
        port map (
      I0 => \^aluresult[31]_inst_0_i_5_1\,
      I1 => ReadData(0),
      I2 => rf_reg_r1_0_31_6_11_i_4,
      I3 => Instr(5),
      I4 => Instr(4),
      I5 => Instr(13),
      O => \readDataM[8]\
    );
rf_reg_r1_0_31_6_11_i_13: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAACCAAAAAAF0"
    )
        port map (
      I0 => \^aluresult[31]_inst_0_i_5_3\,
      I1 => ReadData(2),
      I2 => rf_reg_r1_0_31_6_11_i_5,
      I3 => Instr(5),
      I4 => Instr(4),
      I5 => Instr(13),
      O => \readDataM[11]\
    );
rf_reg_r1_0_31_6_11_i_14: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAACCAAAAAAF0"
    )
        port map (
      I0 => \^aluresult[31]_inst_0_i_5_2\,
      I1 => ReadData(1),
      I2 => rf_reg_r1_0_31_6_11_i_6,
      I3 => Instr(5),
      I4 => Instr(4),
      I5 => Instr(13),
      O => \readDataM[10]\
    );
rf_reg_r2_0_31_0_5: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 0) => Instr(24 downto 20),
      ADDRB(4 downto 0) => Instr(24 downto 20),
      ADDRC(4 downto 0) => Instr(24 downto 20),
      ADDRD(4 downto 0) => Instr(11 downto 7),
      DIA(1 downto 0) => Result(1 downto 0),
      DIB(1 downto 0) => Result(3 downto 2),
      DIC(1 downto 0) => Result(5 downto 4),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => \^rd20\(1 downto 0),
      DOB(1 downto 0) => \^rd20\(3 downto 2),
      DOC(1 downto 0) => \^rd20\(5 downto 4),
      DOD(1 downto 0) => NLW_rf_reg_r2_0_31_0_5_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => RegWrite
    );
rf_reg_r2_0_31_12_17: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 0) => Instr(24 downto 20),
      ADDRB(4 downto 0) => Instr(24 downto 20),
      ADDRC(4 downto 0) => Instr(24 downto 20),
      ADDRD(4 downto 0) => Instr(11 downto 7),
      DIA(1 downto 0) => Result(13 downto 12),
      DIB(1 downto 0) => Result(15 downto 14),
      DIC(1 downto 0) => Result(17 downto 16),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => rd20_0(13 downto 12),
      DOB(1 downto 0) => rd20_0(15 downto 14),
      DOC(1 downto 0) => rd20_0(17 downto 16),
      DOD(1 downto 0) => NLW_rf_reg_r2_0_31_12_17_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => RegWrite
    );
rf_reg_r2_0_31_18_23: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 0) => Instr(24 downto 20),
      ADDRB(4 downto 0) => Instr(24 downto 20),
      ADDRC(4 downto 0) => Instr(24 downto 20),
      ADDRD(4 downto 0) => Instr(11 downto 7),
      DIA(1 downto 0) => Result(19 downto 18),
      DIB(1 downto 0) => Result(21 downto 20),
      DIC(1 downto 0) => Result(23 downto 22),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => rd20_0(19 downto 18),
      DOB(1 downto 0) => rd20_0(21 downto 20),
      DOC(1 downto 0) => rd20_0(23 downto 22),
      DOD(1 downto 0) => NLW_rf_reg_r2_0_31_18_23_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => RegWrite
    );
rf_reg_r2_0_31_24_29: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 0) => Instr(24 downto 20),
      ADDRB(4 downto 0) => Instr(24 downto 20),
      ADDRC(4 downto 0) => Instr(24 downto 20),
      ADDRD(4 downto 0) => Instr(11 downto 7),
      DIA(1 downto 0) => Result(25 downto 24),
      DIB(1 downto 0) => Result(27 downto 26),
      DIC(1 downto 0) => Result(29 downto 28),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => rd20_0(25 downto 24),
      DOB(1 downto 0) => rd20_0(27 downto 26),
      DOC(1 downto 0) => rd20_0(29 downto 28),
      DOD(1 downto 0) => NLW_rf_reg_r2_0_31_24_29_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => RegWrite
    );
rf_reg_r2_0_31_30_31: unisim.vcomponents.RAM32X1D
     port map (
      A0 => Instr(7),
      A1 => Instr(8),
      A2 => Instr(9),
      A3 => Instr(10),
      A4 => Instr(11),
      D => Result(30),
      DPO => rd20_0(30),
      DPRA0 => Instr(20),
      DPRA1 => Instr(21),
      DPRA2 => Instr(22),
      DPRA3 => Instr(23),
      DPRA4 => Instr(24),
      SPO => NLW_rf_reg_r2_0_31_30_31_SPO_UNCONNECTED,
      WCLK => clk,
      WE => RegWrite
    );
\rf_reg_r2_0_31_30_31__0\: unisim.vcomponents.RAM32X1D
     port map (
      A0 => Instr(7),
      A1 => Instr(8),
      A2 => Instr(9),
      A3 => Instr(10),
      A4 => Instr(11),
      D => Result(31),
      DPO => rd20_0(31),
      DPRA0 => Instr(20),
      DPRA1 => Instr(21),
      DPRA2 => Instr(22),
      DPRA3 => Instr(23),
      DPRA4 => Instr(24),
      SPO => \NLW_rf_reg_r2_0_31_30_31__0_SPO_UNCONNECTED\,
      WCLK => clk,
      WE => RegWrite
    );
rf_reg_r2_0_31_6_11: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 0) => Instr(24 downto 20),
      ADDRB(4 downto 0) => Instr(24 downto 20),
      ADDRC(4 downto 0) => Instr(24 downto 20),
      ADDRD(4 downto 0) => Instr(11 downto 7),
      DIA(1 downto 0) => Result(7 downto 6),
      DIB(1 downto 0) => Result(9 downto 8),
      DIC(1 downto 0) => Result(11 downto 10),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => \^rd20\(7 downto 6),
      DOB(1 downto 0) => rd20_0(9 downto 8),
      DOC(1 downto 0) => rd20_0(11 downto 10),
      DOD(1 downto 0) => NLW_rf_reg_r2_0_31_6_11_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => RegWrite
    );
\sum__0_carry__0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88F87707770788F8"
    )
        port map (
      I0 => \lt_carry__2_0\,
      I1 => \^rd10\(7),
      I2 => Q(7),
      I3 => \lt_carry__2\,
      I4 => \^srcb\(7),
      I5 => \ALUControl__0\(0),
      O => \q_reg[7]\(3)
    );
\sum__0_carry__0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88F87707770788F8"
    )
        port map (
      I0 => \lt_carry__2_0\,
      I1 => \^rd10\(6),
      I2 => Q(6),
      I3 => \lt_carry__2\,
      I4 => \^srcb\(6),
      I5 => \ALUControl__0\(0),
      O => \q_reg[7]\(2)
    );
\sum__0_carry__0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88F87707770788F8"
    )
        port map (
      I0 => \lt_carry__2_0\,
      I1 => \^rd10\(5),
      I2 => Q(5),
      I3 => \lt_carry__2\,
      I4 => \^srcb\(5),
      I5 => \ALUControl__0\(0),
      O => \q_reg[7]\(1)
    );
\sum__0_carry__0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88F87707770788F8"
    )
        port map (
      I0 => \lt_carry__2_0\,
      I1 => \^rd10\(4),
      I2 => Q(4),
      I3 => \lt_carry__2\,
      I4 => \^srcb\(4),
      I5 => \ALUControl__0\(0),
      O => \q_reg[7]\(0)
    );
\sum__0_carry__1_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88F87707770788F8"
    )
        port map (
      I0 => \lt_carry__2_0\,
      I1 => \^rd10\(11),
      I2 => Q(11),
      I3 => \lt_carry__2\,
      I4 => \^srcb\(11),
      I5 => \ALUControl__0\(0),
      O => \q_reg[11]\(3)
    );
\sum__0_carry__1_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88F87707770788F8"
    )
        port map (
      I0 => \lt_carry__2_0\,
      I1 => \^rd10\(10),
      I2 => Q(10),
      I3 => \lt_carry__2\,
      I4 => \^srcb\(10),
      I5 => \ALUControl__0\(0),
      O => \q_reg[11]\(2)
    );
\sum__0_carry__1_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88F87707770788F8"
    )
        port map (
      I0 => \lt_carry__2_0\,
      I1 => \^rd10\(9),
      I2 => Q(9),
      I3 => \lt_carry__2\,
      I4 => \^srcb\(9),
      I5 => \ALUControl__0\(0),
      O => \q_reg[11]\(1)
    );
\sum__0_carry__1_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88F87707770788F8"
    )
        port map (
      I0 => \lt_carry__2_0\,
      I1 => \^rd10\(8),
      I2 => Q(8),
      I3 => \lt_carry__2\,
      I4 => \^srcb\(8),
      I5 => \ALUControl__0\(0),
      O => \q_reg[11]\(0)
    );
\sum__0_carry__2_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88F87707770788F8"
    )
        port map (
      I0 => \lt_carry__2_0\,
      I1 => \^rd10\(15),
      I2 => Q(15),
      I3 => \lt_carry__2\,
      I4 => \^srcb\(15),
      I5 => \ALUControl__0\(0),
      O => \q_reg[15]\(3)
    );
\sum__0_carry__2_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88F87707770788F8"
    )
        port map (
      I0 => \lt_carry__2_0\,
      I1 => \^rd10\(14),
      I2 => Q(14),
      I3 => \lt_carry__2\,
      I4 => \^srcb\(14),
      I5 => \ALUControl__0\(0),
      O => \q_reg[15]\(2)
    );
\sum__0_carry__2_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88F87707770788F8"
    )
        port map (
      I0 => \lt_carry__2_0\,
      I1 => \^rd10\(13),
      I2 => Q(13),
      I3 => \lt_carry__2\,
      I4 => \^srcb\(13),
      I5 => \ALUControl__0\(0),
      O => \q_reg[15]\(1)
    );
\sum__0_carry__2_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88F87707770788F8"
    )
        port map (
      I0 => \lt_carry__2_0\,
      I1 => \^rd10\(12),
      I2 => Q(12),
      I3 => \lt_carry__2\,
      I4 => \^srcb\(12),
      I5 => \ALUControl__0\(0),
      O => \q_reg[15]\(0)
    );
\sum__0_carry__3_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88F87707770788F8"
    )
        port map (
      I0 => \lt_carry__2_0\,
      I1 => \^rd10\(19),
      I2 => Q(19),
      I3 => \lt_carry__2\,
      I4 => \^srcb\(19),
      I5 => \ALUControl__0\(0),
      O => \q_reg[19]\(3)
    );
\sum__0_carry__3_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88F87707770788F8"
    )
        port map (
      I0 => \lt_carry__2_0\,
      I1 => \^rd10\(18),
      I2 => Q(18),
      I3 => \lt_carry__2\,
      I4 => \^srcb\(18),
      I5 => \ALUControl__0\(0),
      O => \q_reg[19]\(2)
    );
\sum__0_carry__3_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88F87707770788F8"
    )
        port map (
      I0 => \lt_carry__2_0\,
      I1 => \^rd10\(17),
      I2 => Q(17),
      I3 => \lt_carry__2\,
      I4 => \^srcb\(17),
      I5 => \ALUControl__0\(0),
      O => \q_reg[19]\(1)
    );
\sum__0_carry__3_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88F87707770788F8"
    )
        port map (
      I0 => \lt_carry__2_0\,
      I1 => \^rd10\(16),
      I2 => Q(16),
      I3 => \lt_carry__2\,
      I4 => \^srcb\(16),
      I5 => \ALUControl__0\(0),
      O => \q_reg[19]\(0)
    );
\sum__0_carry__4_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88F87707770788F8"
    )
        port map (
      I0 => \lt_carry__2_0\,
      I1 => \^rd10\(23),
      I2 => Q(23),
      I3 => \lt_carry__2\,
      I4 => \^srcb\(23),
      I5 => \ALUControl__0\(0),
      O => \q_reg[23]\(3)
    );
\sum__0_carry__4_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88F87707770788F8"
    )
        port map (
      I0 => \lt_carry__2_0\,
      I1 => \^rd10\(22),
      I2 => Q(22),
      I3 => \lt_carry__2\,
      I4 => \^srcb\(22),
      I5 => \ALUControl__0\(0),
      O => \q_reg[23]\(2)
    );
\sum__0_carry__4_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88F87707770788F8"
    )
        port map (
      I0 => \lt_carry__2_0\,
      I1 => \^rd10\(21),
      I2 => Q(21),
      I3 => \lt_carry__2\,
      I4 => \^srcb\(21),
      I5 => \ALUControl__0\(0),
      O => \q_reg[23]\(1)
    );
\sum__0_carry__4_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88F87707770788F8"
    )
        port map (
      I0 => \lt_carry__2_0\,
      I1 => \^rd10\(20),
      I2 => Q(20),
      I3 => \lt_carry__2\,
      I4 => \^srcb\(20),
      I5 => \ALUControl__0\(0),
      O => \q_reg[23]\(0)
    );
\sum__0_carry__5_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88F87707770788F8"
    )
        port map (
      I0 => \lt_carry__2_0\,
      I1 => \^rd10\(27),
      I2 => Q(27),
      I3 => \lt_carry__2\,
      I4 => \^srcb\(27),
      I5 => \ALUControl__0\(0),
      O => \q_reg[27]_0\(3)
    );
\sum__0_carry__5_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88F87707770788F8"
    )
        port map (
      I0 => \lt_carry__2_0\,
      I1 => \^rd10\(26),
      I2 => Q(26),
      I3 => \lt_carry__2\,
      I4 => \^srcb\(26),
      I5 => \ALUControl__0\(0),
      O => \q_reg[27]_0\(2)
    );
\sum__0_carry__5_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88F87707770788F8"
    )
        port map (
      I0 => \lt_carry__2_0\,
      I1 => \^rd10\(25),
      I2 => Q(25),
      I3 => \lt_carry__2\,
      I4 => \^srcb\(25),
      I5 => \ALUControl__0\(0),
      O => \q_reg[27]_0\(1)
    );
\sum__0_carry__5_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88F87707770788F8"
    )
        port map (
      I0 => \lt_carry__2_0\,
      I1 => \^rd10\(24),
      I2 => Q(24),
      I3 => \lt_carry__2\,
      I4 => \^srcb\(24),
      I5 => \ALUControl__0\(0),
      O => \q_reg[27]_0\(0)
    );
\sum__0_carry__6_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88F87707770788F8"
    )
        port map (
      I0 => \lt_carry__2_0\,
      I1 => \^rd10\(31),
      I2 => Q(31),
      I3 => \lt_carry__2\,
      I4 => \ALUControl__0\(0),
      I5 => \^srcb\(31),
      O => \q_reg[31]\(3)
    );
\sum__0_carry__6_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88F87707770788F8"
    )
        port map (
      I0 => \lt_carry__2_0\,
      I1 => \^rd10\(30),
      I2 => Q(30),
      I3 => \lt_carry__2\,
      I4 => \^srcb\(30),
      I5 => \ALUControl__0\(0),
      O => \q_reg[31]\(2)
    );
\sum__0_carry__6_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88F87707770788F8"
    )
        port map (
      I0 => \lt_carry__2_0\,
      I1 => \^rd10\(29),
      I2 => Q(29),
      I3 => \lt_carry__2\,
      I4 => \^srcb\(29),
      I5 => \ALUControl__0\(0),
      O => \q_reg[31]\(1)
    );
\sum__0_carry__6_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88F87707770788F8"
    )
        port map (
      I0 => \lt_carry__2_0\,
      I1 => \^rd10\(28),
      I2 => Q(28),
      I3 => \lt_carry__2\,
      I4 => \^srcb\(28),
      I5 => \ALUControl__0\(0),
      O => \q_reg[31]\(0)
    );
\sum__0_carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \ALUControl__0\(0),
      I1 => \^srcb\(0),
      O => \ALUResult[31]_INST_0_i_11_2\
    );
\sum__0_carry_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88F87707770788F8"
    )
        port map (
      I0 => \lt_carry__2_0\,
      I1 => \^rd10\(3),
      I2 => Q(3),
      I3 => \lt_carry__2\,
      I4 => \^srcb\(3),
      I5 => \ALUControl__0\(0),
      O => \q_reg[3]_0\(3)
    );
\sum__0_carry_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88F87707770788F8"
    )
        port map (
      I0 => \lt_carry__2_0\,
      I1 => \^rd10\(2),
      I2 => Q(2),
      I3 => \lt_carry__2\,
      I4 => \^srcb\(2),
      I5 => \ALUControl__0\(0),
      O => \q_reg[3]_0\(2)
    );
\sum__0_carry_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88F87707770788F8"
    )
        port map (
      I0 => \lt_carry__2_0\,
      I1 => \^rd10\(1),
      I2 => Q(1),
      I3 => \lt_carry__2\,
      I4 => \^srcb\(1),
      I5 => \ALUControl__0\(0),
      O => \q_reg[3]_0\(1)
    );
\sum__0_carry_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"777707778888F888"
    )
        port map (
      I0 => \lt_carry__2_0\,
      I1 => \^rd10\(0),
      I2 => Q(0),
      I3 => Instr(2),
      I4 => Instr(5),
      I5 => \ALUControl__0\(0),
      O => \q_reg[3]_0\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath is
  port (
    Q : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \ALUResult[31]_INST_0_i_5\ : out STD_LOGIC;
    \ALUResult[31]_INST_0_i_5_0\ : out STD_LOGIC;
    \ALUResult[31]_INST_0_i_5_1\ : out STD_LOGIC;
    \ALUResult[31]_INST_0_i_5_2\ : out STD_LOGIC;
    \ALUResult[31]_INST_0_i_5_3\ : out STD_LOGIC;
    \ALUResult[31]_INST_0_i_5_4\ : out STD_LOGIC;
    \ALUResult[31]_INST_0_i_5_5\ : out STD_LOGIC;
    \ALUResult[31]_INST_0_i_5_6\ : out STD_LOGIC;
    \ALUResult[31]_INST_0_i_5_7\ : out STD_LOGIC;
    \ALUResult[31]_INST_0_i_5_8\ : out STD_LOGIC;
    \ALUResult[31]_INST_0_i_5_9\ : out STD_LOGIC;
    \ALUResult[31]_INST_0_i_5_10\ : out STD_LOGIC;
    \ALUResult[31]_INST_0_i_5_11\ : out STD_LOGIC;
    \ALUResult[31]_INST_0_i_5_12\ : out STD_LOGIC;
    \ALUResult[31]_INST_0_i_5_13\ : out STD_LOGIC;
    \ALUResult[31]_INST_0_i_5_14\ : out STD_LOGIC;
    \ALUResult[31]_INST_0_i_5_15\ : out STD_LOGIC;
    \ALUResult[31]_INST_0_i_5_16\ : out STD_LOGIC;
    \ALUResult[31]_INST_0_i_5_17\ : out STD_LOGIC;
    \ALUResult[31]_INST_0_i_5_18\ : out STD_LOGIC;
    \ALUResult[31]_INST_0_i_5_19\ : out STD_LOGIC;
    \ALUResult[31]_INST_0_i_5_20\ : out STD_LOGIC;
    \ALUResult[31]_INST_0_i_5_21\ : out STD_LOGIC;
    \ALUResult[31]_INST_0_i_5_22\ : out STD_LOGIC;
    \ALUResult[31]_INST_0_i_5_23\ : out STD_LOGIC;
    \ALUResult[31]_INST_0_i_5_24\ : out STD_LOGIC;
    \ALUResult[31]_INST_0_i_5_25\ : out STD_LOGIC;
    \ALUResult[31]_INST_0_i_5_26\ : out STD_LOGIC;
    \ALUResult[31]_INST_0_i_5_27\ : out STD_LOGIC;
    \ALUResult[31]_INST_0_i_5_28\ : out STD_LOGIC;
    \ALUResult[31]_INST_0_i_5_29\ : out STD_LOGIC;
    \ALUResult[31]_INST_0_i_5_30\ : out STD_LOGIC;
    WriteData : out STD_LOGIC_VECTOR ( 31 downto 0 );
    clk : in STD_LOGIC;
    Instr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ReadData : in STD_LOGIC_VECTOR ( 31 downto 0 );
    PCReady : in STD_LOGIC;
    reset : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath is
  signal ALUControl : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \ALUControl__0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^aluresult[31]_inst_0_i_5_11\ : STD_LOGIC;
  signal \^aluresult[31]_inst_0_i_5_12\ : STD_LOGIC;
  signal \^aluresult[31]_inst_0_i_5_13\ : STD_LOGIC;
  signal \^aluresult[31]_inst_0_i_5_14\ : STD_LOGIC;
  signal \^aluresult[31]_inst_0_i_5_15\ : STD_LOGIC;
  signal \^aluresult[31]_inst_0_i_5_16\ : STD_LOGIC;
  signal \^aluresult[31]_inst_0_i_5_17\ : STD_LOGIC;
  signal \^aluresult[31]_inst_0_i_5_18\ : STD_LOGIC;
  signal \^aluresult[31]_inst_0_i_5_19\ : STD_LOGIC;
  signal \^aluresult[31]_inst_0_i_5_2\ : STD_LOGIC;
  signal \^aluresult[31]_inst_0_i_5_20\ : STD_LOGIC;
  signal \^aluresult[31]_inst_0_i_5_21\ : STD_LOGIC;
  signal \^aluresult[31]_inst_0_i_5_22\ : STD_LOGIC;
  signal \^aluresult[31]_inst_0_i_5_23\ : STD_LOGIC;
  signal \^aluresult[31]_inst_0_i_5_24\ : STD_LOGIC;
  signal \^aluresult[31]_inst_0_i_5_25\ : STD_LOGIC;
  signal \^aluresult[31]_inst_0_i_5_26\ : STD_LOGIC;
  signal \^aluresult[31]_inst_0_i_5_27\ : STD_LOGIC;
  signal \^aluresult[31]_inst_0_i_5_28\ : STD_LOGIC;
  signal \^aluresult[31]_inst_0_i_5_29\ : STD_LOGIC;
  signal \^aluresult[31]_inst_0_i_5_3\ : STD_LOGIC;
  signal \^aluresult[31]_inst_0_i_5_30\ : STD_LOGIC;
  signal \^aluresult[31]_inst_0_i_5_4\ : STD_LOGIC;
  signal \^aluresult[31]_inst_0_i_5_5\ : STD_LOGIC;
  signal \^aluresult[31]_inst_0_i_5_6\ : STD_LOGIC;
  signal \^aluresult[31]_inst_0_i_5_8\ : STD_LOGIC;
  signal ALUSrc : STD_LOGIC;
  signal ImmSrc : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal PCNext : STD_LOGIC_VECTOR ( 31 downto 3 );
  signal PCPlus4 : STD_LOGIC_VECTOR ( 31 downto 3 );
  signal PCTarget : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^q\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Result : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ResultSrc : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal SrcA : STD_LOGIC_VECTOR ( 30 downto 0 );
  signal \SrcA__0\ : STD_LOGIC_VECTOR ( 31 to 31 );
  signal SrcB : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \c/PCSrc10_out\ : STD_LOGIC;
  signal data6 : STD_LOGIC_VECTOR ( 7 to 7 );
  signal lt : STD_LOGIC;
  signal ltu : STD_LOGIC;
  signal main_alu_n_10 : STD_LOGIC;
  signal main_alu_n_11 : STD_LOGIC;
  signal main_alu_n_12 : STD_LOGIC;
  signal main_alu_n_13 : STD_LOGIC;
  signal main_alu_n_14 : STD_LOGIC;
  signal main_alu_n_15 : STD_LOGIC;
  signal main_alu_n_16 : STD_LOGIC;
  signal main_alu_n_17 : STD_LOGIC;
  signal main_alu_n_18 : STD_LOGIC;
  signal main_alu_n_19 : STD_LOGIC;
  signal main_alu_n_20 : STD_LOGIC;
  signal main_alu_n_21 : STD_LOGIC;
  signal main_alu_n_22 : STD_LOGIC;
  signal main_alu_n_23 : STD_LOGIC;
  signal main_alu_n_24 : STD_LOGIC;
  signal main_alu_n_25 : STD_LOGIC;
  signal main_alu_n_26 : STD_LOGIC;
  signal main_alu_n_27 : STD_LOGIC;
  signal main_alu_n_28 : STD_LOGIC;
  signal main_alu_n_29 : STD_LOGIC;
  signal main_alu_n_30 : STD_LOGIC;
  signal main_alu_n_31 : STD_LOGIC;
  signal main_alu_n_32 : STD_LOGIC;
  signal main_alu_n_33 : STD_LOGIC;
  signal main_alu_n_34 : STD_LOGIC;
  signal main_alu_n_35 : STD_LOGIC;
  signal main_alu_n_37 : STD_LOGIC;
  signal main_alu_n_42 : STD_LOGIC;
  signal main_alu_n_43 : STD_LOGIC;
  signal main_alu_n_44 : STD_LOGIC;
  signal main_alu_n_5 : STD_LOGIC;
  signal main_alu_n_6 : STD_LOGIC;
  signal main_alu_n_8 : STD_LOGIC;
  signal main_alu_n_9 : STD_LOGIC;
  signal pcadd4_n_54 : STD_LOGIC;
  signal pcreg_n_0 : STD_LOGIC;
  signal pcreg_n_1 : STD_LOGIC;
  signal pcreg_n_105 : STD_LOGIC;
  signal pcreg_n_106 : STD_LOGIC;
  signal pcreg_n_107 : STD_LOGIC;
  signal pcreg_n_108 : STD_LOGIC;
  signal pcreg_n_109 : STD_LOGIC;
  signal pcreg_n_110 : STD_LOGIC;
  signal pcreg_n_111 : STD_LOGIC;
  signal pcreg_n_112 : STD_LOGIC;
  signal pcreg_n_114 : STD_LOGIC;
  signal pcreg_n_115 : STD_LOGIC;
  signal pcreg_n_116 : STD_LOGIC;
  signal pcreg_n_117 : STD_LOGIC;
  signal pcreg_n_118 : STD_LOGIC;
  signal pcreg_n_120 : STD_LOGIC;
  signal pcreg_n_121 : STD_LOGIC;
  signal pcreg_n_122 : STD_LOGIC;
  signal pcreg_n_124 : STD_LOGIC;
  signal pcreg_n_125 : STD_LOGIC;
  signal pcreg_n_126 : STD_LOGIC;
  signal pcreg_n_127 : STD_LOGIC;
  signal pcreg_n_128 : STD_LOGIC;
  signal pcreg_n_129 : STD_LOGIC;
  signal pcreg_n_131 : STD_LOGIC;
  signal pcreg_n_132 : STD_LOGIC;
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
  signal pcreg_n_188 : STD_LOGIC;
  signal pcreg_n_189 : STD_LOGIC;
  signal pcreg_n_190 : STD_LOGIC;
  signal pcreg_n_191 : STD_LOGIC;
  signal pcreg_n_192 : STD_LOGIC;
  signal pcreg_n_193 : STD_LOGIC;
  signal pcreg_n_195 : STD_LOGIC;
  signal pcreg_n_196 : STD_LOGIC;
  signal pcreg_n_197 : STD_LOGIC;
  signal pcreg_n_198 : STD_LOGIC;
  signal pcreg_n_199 : STD_LOGIC;
  signal pcreg_n_2 : STD_LOGIC;
  signal pcreg_n_200 : STD_LOGIC;
  signal pcreg_n_201 : STD_LOGIC;
  signal pcreg_n_202 : STD_LOGIC;
  signal pcreg_n_203 : STD_LOGIC;
  signal pcreg_n_204 : STD_LOGIC;
  signal pcreg_n_205 : STD_LOGIC;
  signal pcreg_n_206 : STD_LOGIC;
  signal pcreg_n_207 : STD_LOGIC;
  signal pcreg_n_208 : STD_LOGIC;
  signal pcreg_n_209 : STD_LOGIC;
  signal pcreg_n_210 : STD_LOGIC;
  signal pcreg_n_211 : STD_LOGIC;
  signal pcreg_n_212 : STD_LOGIC;
  signal pcreg_n_213 : STD_LOGIC;
  signal pcreg_n_214 : STD_LOGIC;
  signal pcreg_n_215 : STD_LOGIC;
  signal pcreg_n_216 : STD_LOGIC;
  signal pcreg_n_217 : STD_LOGIC;
  signal pcreg_n_218 : STD_LOGIC;
  signal pcreg_n_219 : STD_LOGIC;
  signal pcreg_n_220 : STD_LOGIC;
  signal pcreg_n_221 : STD_LOGIC;
  signal pcreg_n_222 : STD_LOGIC;
  signal pcreg_n_223 : STD_LOGIC;
  signal pcreg_n_224 : STD_LOGIC;
  signal pcreg_n_225 : STD_LOGIC;
  signal pcreg_n_226 : STD_LOGIC;
  signal pcreg_n_227 : STD_LOGIC;
  signal pcreg_n_228 : STD_LOGIC;
  signal pcreg_n_229 : STD_LOGIC;
  signal pcreg_n_230 : STD_LOGIC;
  signal pcreg_n_231 : STD_LOGIC;
  signal pcreg_n_232 : STD_LOGIC;
  signal pcreg_n_233 : STD_LOGIC;
  signal pcreg_n_234 : STD_LOGIC;
  signal pcreg_n_235 : STD_LOGIC;
  signal pcreg_n_3 : STD_LOGIC;
  signal pcreg_n_41 : STD_LOGIC;
  signal pcreg_n_47 : STD_LOGIC;
  signal pcreg_n_48 : STD_LOGIC;
  signal pcreg_n_49 : STD_LOGIC;
  signal pcreg_n_57 : STD_LOGIC;
  signal pcreg_n_58 : STD_LOGIC;
  signal pcreg_n_59 : STD_LOGIC;
  signal pcreg_n_60 : STD_LOGIC;
  signal pcreg_n_61 : STD_LOGIC;
  signal pcreg_n_62 : STD_LOGIC;
  signal pcreg_n_63 : STD_LOGIC;
  signal pcreg_n_64 : STD_LOGIC;
  signal pcreg_n_65 : STD_LOGIC;
  signal pcreg_n_66 : STD_LOGIC;
  signal pcreg_n_67 : STD_LOGIC;
  signal pcreg_n_68 : STD_LOGIC;
  signal pcreg_n_70 : STD_LOGIC;
  signal pcreg_n_72 : STD_LOGIC;
  signal pcreg_n_73 : STD_LOGIC;
  signal rd10 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal rd2 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal rd20 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \rd21__3\ : STD_LOGIC;
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
  signal rf_n_169 : STD_LOGIC;
  signal rf_n_170 : STD_LOGIC;
  signal rf_n_171 : STD_LOGIC;
  signal rf_n_172 : STD_LOGIC;
  signal rf_n_173 : STD_LOGIC;
  signal rf_n_174 : STD_LOGIC;
  signal rf_n_175 : STD_LOGIC;
  signal rf_n_176 : STD_LOGIC;
  signal rf_n_177 : STD_LOGIC;
  signal rf_n_178 : STD_LOGIC;
  signal rf_n_179 : STD_LOGIC;
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
  signal rf_n_252 : STD_LOGIC;
  signal rf_n_253 : STD_LOGIC;
  signal rf_n_254 : STD_LOGIC;
  signal rf_n_255 : STD_LOGIC;
  signal rf_n_256 : STD_LOGIC;
  signal rf_n_257 : STD_LOGIC;
  signal rf_n_258 : STD_LOGIC;
  signal rf_n_259 : STD_LOGIC;
  signal rf_n_260 : STD_LOGIC;
  signal rf_n_261 : STD_LOGIC;
  signal rf_n_262 : STD_LOGIC;
  signal rf_n_263 : STD_LOGIC;
  signal rf_n_264 : STD_LOGIC;
  signal rf_n_265 : STD_LOGIC;
  signal rf_n_69 : STD_LOGIC;
  signal rf_n_86 : STD_LOGIC;
begin
  \ALUResult[31]_INST_0_i_5_11\ <= \^aluresult[31]_inst_0_i_5_11\;
  \ALUResult[31]_INST_0_i_5_12\ <= \^aluresult[31]_inst_0_i_5_12\;
  \ALUResult[31]_INST_0_i_5_13\ <= \^aluresult[31]_inst_0_i_5_13\;
  \ALUResult[31]_INST_0_i_5_14\ <= \^aluresult[31]_inst_0_i_5_14\;
  \ALUResult[31]_INST_0_i_5_15\ <= \^aluresult[31]_inst_0_i_5_15\;
  \ALUResult[31]_INST_0_i_5_16\ <= \^aluresult[31]_inst_0_i_5_16\;
  \ALUResult[31]_INST_0_i_5_17\ <= \^aluresult[31]_inst_0_i_5_17\;
  \ALUResult[31]_INST_0_i_5_18\ <= \^aluresult[31]_inst_0_i_5_18\;
  \ALUResult[31]_INST_0_i_5_19\ <= \^aluresult[31]_inst_0_i_5_19\;
  \ALUResult[31]_INST_0_i_5_2\ <= \^aluresult[31]_inst_0_i_5_2\;
  \ALUResult[31]_INST_0_i_5_20\ <= \^aluresult[31]_inst_0_i_5_20\;
  \ALUResult[31]_INST_0_i_5_21\ <= \^aluresult[31]_inst_0_i_5_21\;
  \ALUResult[31]_INST_0_i_5_22\ <= \^aluresult[31]_inst_0_i_5_22\;
  \ALUResult[31]_INST_0_i_5_23\ <= \^aluresult[31]_inst_0_i_5_23\;
  \ALUResult[31]_INST_0_i_5_24\ <= \^aluresult[31]_inst_0_i_5_24\;
  \ALUResult[31]_INST_0_i_5_25\ <= \^aluresult[31]_inst_0_i_5_25\;
  \ALUResult[31]_INST_0_i_5_26\ <= \^aluresult[31]_inst_0_i_5_26\;
  \ALUResult[31]_INST_0_i_5_27\ <= \^aluresult[31]_inst_0_i_5_27\;
  \ALUResult[31]_INST_0_i_5_28\ <= \^aluresult[31]_inst_0_i_5_28\;
  \ALUResult[31]_INST_0_i_5_29\ <= \^aluresult[31]_inst_0_i_5_29\;
  \ALUResult[31]_INST_0_i_5_3\ <= \^aluresult[31]_inst_0_i_5_3\;
  \ALUResult[31]_INST_0_i_5_30\ <= \^aluresult[31]_inst_0_i_5_30\;
  \ALUResult[31]_INST_0_i_5_4\ <= \^aluresult[31]_inst_0_i_5_4\;
  \ALUResult[31]_INST_0_i_5_5\ <= \^aluresult[31]_inst_0_i_5_5\;
  \ALUResult[31]_INST_0_i_5_6\ <= \^aluresult[31]_inst_0_i_5_6\;
  \ALUResult[31]_INST_0_i_5_8\ <= \^aluresult[31]_inst_0_i_5_8\;
  Q(31 downto 0) <= \^q\(31 downto 0);
main_alu: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_alu
     port map (
      ALUControl(0) => ALUControl(1),
      \ALUControl__0\(0) => \ALUControl__0\(0),
      \ALUResult[0]_INST_0_i_3_0\ => rf_n_265,
      \ALUResult[0]_INST_0_i_3_1\(3) => rf_n_237,
      \ALUResult[0]_INST_0_i_3_1\(2) => rf_n_238,
      \ALUResult[0]_INST_0_i_3_1\(1) => rf_n_239,
      \ALUResult[0]_INST_0_i_3_1\(0) => rf_n_240,
      \ALUResult[0]_INST_0_i_4\ => rf_n_145,
      \ALUResult[0]_INST_0_i_4_0\ => rf_n_127,
      \ALUResult[12]_INST_0_i_2_0\(3) => rf_n_249,
      \ALUResult[12]_INST_0_i_2_0\(2) => rf_n_250,
      \ALUResult[12]_INST_0_i_2_0\(1) => rf_n_251,
      \ALUResult[12]_INST_0_i_2_0\(0) => rf_n_252,
      \ALUResult[16]_INST_0_i_2_0\(3) => rf_n_253,
      \ALUResult[16]_INST_0_i_2_0\(2) => rf_n_254,
      \ALUResult[16]_INST_0_i_2_0\(1) => rf_n_255,
      \ALUResult[16]_INST_0_i_2_0\(0) => rf_n_256,
      \ALUResult[20]_INST_0_i_2_0\(3) => rf_n_257,
      \ALUResult[20]_INST_0_i_2_0\(2) => rf_n_258,
      \ALUResult[20]_INST_0_i_2_0\(1) => rf_n_259,
      \ALUResult[20]_INST_0_i_2_0\(0) => rf_n_260,
      \ALUResult[24]_INST_0_i_2_0\(3) => rf_n_261,
      \ALUResult[24]_INST_0_i_2_0\(2) => rf_n_262,
      \ALUResult[24]_INST_0_i_2_0\(1) => rf_n_263,
      \ALUResult[24]_INST_0_i_2_0\(0) => rf_n_264,
      \ALUResult[28]_INST_0_i_2_0\(3) => rf_n_198,
      \ALUResult[28]_INST_0_i_2_0\(2) => rf_n_199,
      \ALUResult[28]_INST_0_i_2_0\(1) => rf_n_200,
      \ALUResult[28]_INST_0_i_2_0\(0) => rf_n_201,
      \ALUResult[30]_INST_0_i_8\ => main_alu_n_6,
      \ALUResult[31]_INST_0_i_5\ => \^aluresult[31]_inst_0_i_5_24\,
      \ALUResult[31]_INST_0_i_5_0\ => \^aluresult[31]_inst_0_i_5_26\,
      \ALUResult[31]_INST_0_i_5_1\ => \^aluresult[31]_inst_0_i_5_29\,
      \ALUResult[4]_INST_0_i_4_0\(3) => rf_n_241,
      \ALUResult[4]_INST_0_i_4_0\(2) => rf_n_242,
      \ALUResult[4]_INST_0_i_4_0\(1) => rf_n_243,
      \ALUResult[4]_INST_0_i_4_0\(0) => rf_n_244,
      \ALUResult[8]_INST_0_i_2_0\(3) => rf_n_245,
      \ALUResult[8]_INST_0_i_2_0\(2) => rf_n_246,
      \ALUResult[8]_INST_0_i_2_0\(1) => rf_n_247,
      \ALUResult[8]_INST_0_i_2_0\(0) => rf_n_248,
      ALUSrc => ALUSrc,
      CO(0) => lt,
      DI(3) => pcreg_n_191,
      DI(2) => rf_n_146,
      DI(1) => rf_n_147,
      DI(0) => rf_n_148,
      ImmSrc(2 downto 0) => ImmSrc(2 downto 0),
      Instr(20 downto 19) => Instr(31 downto 30),
      Instr(18 downto 6) => Instr(24 downto 12),
      Instr(5 downto 0) => Instr(7 downto 2),
      S(3) => rf_n_221,
      S(2) => rf_n_222,
      S(1) => rf_n_223,
      S(0) => rf_n_224,
      SrcA(30 downto 0) => SrcA(30 downto 0),
      \SrcA__0\(0) => \SrcA__0\(31),
      SrcB(31 downto 0) => SrcB(31 downto 0),
      \addressM[1]\ => pcreg_n_197,
      \addressM[1]_0\ => pcreg_n_198,
      \addressM[25]\ => rf_n_136,
      \addressM[25]_0\ => rf_n_135,
      \addressM[25]_1\ => pcreg_n_48,
      \addressM[25]_2\ => pcreg_n_49,
      \addressM[27]\ => rf_n_138,
      \addressM[27]_0\ => rf_n_137,
      \addressM[30]\ => rf_n_143,
      \addressM[30]_0\ => rf_n_139,
      \lt_carry__1_0\(3) => rf_n_225,
      \lt_carry__1_0\(2) => rf_n_226,
      \lt_carry__1_0\(1) => rf_n_227,
      \lt_carry__1_0\(0) => rf_n_228,
      \lt_carry__2_0\(3) => rf_n_229,
      \lt_carry__2_0\(2) => rf_n_230,
      \lt_carry__2_0\(1) => rf_n_231,
      \lt_carry__2_0\(0) => rf_n_232,
      \ltu_carry__0_0\(3) => rf_n_149,
      \ltu_carry__0_0\(2) => rf_n_150,
      \ltu_carry__0_0\(1) => rf_n_151,
      \ltu_carry__0_0\(0) => rf_n_152,
      \ltu_carry__1_0\(3) => rf_n_172,
      \ltu_carry__1_0\(2) => rf_n_173,
      \ltu_carry__1_0\(1) => rf_n_174,
      \ltu_carry__1_0\(0) => rf_n_175,
      \ltu_carry__1_1\(3) => rf_n_176,
      \ltu_carry__1_1\(2) => rf_n_177,
      \ltu_carry__1_1\(1) => rf_n_178,
      \ltu_carry__1_1\(0) => rf_n_179,
      \ltu_carry__2_0\(3) => rf_n_180,
      \ltu_carry__2_0\(2) => rf_n_181,
      \ltu_carry__2_0\(1) => rf_n_182,
      \ltu_carry__2_0\(0) => rf_n_183,
      \ltu_carry__2_1\(3) => rf_n_184,
      \ltu_carry__2_1\(2) => rf_n_185,
      \ltu_carry__2_1\(1) => rf_n_186,
      \ltu_carry__2_1\(0) => rf_n_187,
      \q[31]_i_6\(3) => rf_n_188,
      \q[31]_i_6\(2) => rf_n_189,
      \q[31]_i_6\(1) => rf_n_190,
      \q[31]_i_6\(0) => rf_n_191,
      \q[31]_i_6_0\(3) => rf_n_233,
      \q[31]_i_6_0\(2) => rf_n_234,
      \q[31]_i_6_0\(1) => rf_n_235,
      \q[31]_i_6_0\(0) => rf_n_236,
      \q[31]_i_6_1\(0) => rf_n_197,
      \q[31]_i_6_2\(3) => rf_n_192,
      \q[31]_i_6_2\(2) => rf_n_193,
      \q[31]_i_6_2\(1) => rf_n_194,
      \q[31]_i_6_2\(0) => rf_n_195,
      \q_reg[0]\ => main_alu_n_34,
      \q_reg[10]\ => main_alu_n_16,
      \q_reg[11]\ => main_alu_n_17,
      \q_reg[12]\ => main_alu_n_18,
      \q_reg[13]\ => main_alu_n_19,
      \q_reg[14]\ => main_alu_n_20,
      \q_reg[15]\ => main_alu_n_21,
      \q_reg[16]\ => main_alu_n_22,
      \q_reg[17]\ => main_alu_n_23,
      \q_reg[18]\ => main_alu_n_24,
      \q_reg[19]\ => main_alu_n_25,
      \q_reg[1]\ => main_alu_n_5,
      \q_reg[20]\ => main_alu_n_26,
      \q_reg[21]\ => main_alu_n_27,
      \q_reg[22]\ => main_alu_n_28,
      \q_reg[23]\ => main_alu_n_29,
      \q_reg[24]\ => main_alu_n_30,
      \q_reg[26]\ => main_alu_n_31,
      \q_reg[28]\ => main_alu_n_32,
      \q_reg[29]\ => main_alu_n_33,
      \q_reg[2]\ => main_alu_n_8,
      \q_reg[30]\(0) => ltu,
      \q_reg[31]\ => main_alu_n_35,
      \q_reg[3]\ => main_alu_n_9,
      \q_reg[4]\ => main_alu_n_10,
      \q_reg[5]\ => main_alu_n_11,
      \q_reg[5]_0\ => main_alu_n_37,
      \q_reg[5]_1\ => main_alu_n_42,
      \q_reg[5]_2\ => main_alu_n_43,
      \q_reg[5]_3\ => main_alu_n_44,
      \q_reg[6]\ => main_alu_n_12,
      \q_reg[7]\ => main_alu_n_13,
      \q_reg[8]\ => main_alu_n_14,
      \q_reg[9]\ => main_alu_n_15,
      \rd21__3\ => \rd21__3\
    );
pcadd4: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder
     port map (
      Instr(4) => Instr(13),
      Instr(3 downto 1) => Instr(6 downto 4),
      Instr(0) => Instr(2),
      PCPlus4(28 downto 0) => PCPlus4(31 downto 3),
      Q(29 downto 0) => \^q\(31 downto 2),
      ReadData(3 downto 0) => ReadData(6 downto 3),
      Result(24 downto 14) => Result(31 downto 21),
      Result(13 downto 11) => Result(18 downto 16),
      Result(10 downto 4) => Result(14 downto 8),
      Result(3 downto 0) => Result(6 downto 3),
      ResultSrc(1 downto 0) => ResultSrc(1 downto 0),
      \q_reg[10]\ => pcadd4_n_54,
      rf_reg_r1_0_31_0_5 => pcreg_n_235,
      rf_reg_r1_0_31_0_5_0 => pcreg_n_233,
      rf_reg_r1_0_31_0_5_1 => pcreg_n_234,
      rf_reg_r1_0_31_0_5_i_4_0 => \^aluresult[31]_inst_0_i_5_2\,
      rf_reg_r1_0_31_0_5_i_6_0 => \^aluresult[31]_inst_0_i_5_4\,
      rf_reg_r1_0_31_0_5_i_7_0 => \^aluresult[31]_inst_0_i_5_3\,
      rf_reg_r1_0_31_12_17 => pcreg_n_47,
      rf_reg_r1_0_31_12_17_0 => pcreg_n_64,
      rf_reg_r1_0_31_12_17_1 => pcreg_n_65,
      rf_reg_r1_0_31_12_17_2 => \^aluresult[31]_inst_0_i_5_15\,
      rf_reg_r1_0_31_12_17_3 => rf_n_203,
      rf_reg_r1_0_31_12_17_4 => \^aluresult[31]_inst_0_i_5_16\,
      rf_reg_r1_0_31_12_17_5 => rf_n_204,
      rf_reg_r1_0_31_18_23 => \^aluresult[31]_inst_0_i_5_20\,
      rf_reg_r1_0_31_18_23_0 => rf_n_208,
      rf_reg_r1_0_31_18_23_1 => \^aluresult[31]_inst_0_i_5_21\,
      rf_reg_r1_0_31_18_23_2 => rf_n_209,
      rf_reg_r1_0_31_18_23_3 => \^aluresult[31]_inst_0_i_5_22\,
      rf_reg_r1_0_31_18_23_4 => rf_n_210,
      rf_reg_r1_0_31_18_23_5 => \^aluresult[31]_inst_0_i_5_17\,
      rf_reg_r1_0_31_18_23_6 => rf_n_205,
      rf_reg_r1_0_31_24_29 => \^aluresult[31]_inst_0_i_5_23\,
      rf_reg_r1_0_31_24_29_0 => rf_n_211,
      rf_reg_r1_0_31_24_29_1 => \^aluresult[31]_inst_0_i_5_24\,
      rf_reg_r1_0_31_24_29_10 => rf_n_216,
      rf_reg_r1_0_31_24_29_2 => rf_n_212,
      rf_reg_r1_0_31_24_29_3 => \^aluresult[31]_inst_0_i_5_25\,
      rf_reg_r1_0_31_24_29_4 => rf_n_213,
      rf_reg_r1_0_31_24_29_5 => \^aluresult[31]_inst_0_i_5_26\,
      rf_reg_r1_0_31_24_29_6 => rf_n_214,
      rf_reg_r1_0_31_24_29_7 => \^aluresult[31]_inst_0_i_5_27\,
      rf_reg_r1_0_31_24_29_8 => rf_n_215,
      rf_reg_r1_0_31_24_29_9 => \^aluresult[31]_inst_0_i_5_28\,
      rf_reg_r1_0_31_6_11 => rf_n_123,
      rf_reg_r1_0_31_6_11_0 => rf_n_124,
      rf_reg_r1_0_31_6_11_1 => rf_n_129,
      rf_reg_r1_0_31_6_11_2 => pcreg_n_112,
      rf_reg_r1_0_31_6_11_3 => rf_n_202,
      rf_reg_r1_0_31_6_11_4 => pcreg_n_232,
      rf_reg_r1_0_31_6_11_i_1 => \^aluresult[31]_inst_0_i_5_6\,
      rf_reg_r1_0_31_6_11_i_2_0 => \^aluresult[31]_inst_0_i_5_5\,
      rf_reg_r2_0_31_30_31 => rf_n_217,
      rf_reg_r2_0_31_30_31_0 => \^aluresult[31]_inst_0_i_5_29\,
      \rf_reg_r2_0_31_30_31__0\ => pcreg_n_122,
      \rf_reg_r2_0_31_30_31__0_0\ => rf_n_218,
      \rf_reg_r2_0_31_30_31__0_1\ => \^aluresult[31]_inst_0_i_5_30\
    );
pcaddbranch: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder_0
     port map (
      PCTarget(31 downto 0) => PCTarget(31 downto 0),
      Q(30 downto 0) => \^q\(30 downto 0),
      S(3) => pcreg_n_202,
      S(2) => pcreg_n_203,
      S(1) => pcreg_n_204,
      S(0) => pcreg_n_205,
      \q_reg[11]\(3) => pcreg_n_210,
      \q_reg[11]\(2) => pcreg_n_211,
      \q_reg[11]\(1) => pcreg_n_212,
      \q_reg[11]\(0) => pcreg_n_213,
      \q_reg[15]\(3) => pcreg_n_214,
      \q_reg[15]\(2) => pcreg_n_215,
      \q_reg[15]\(1) => pcreg_n_216,
      \q_reg[15]\(0) => pcreg_n_217,
      \q_reg[19]\(3) => pcreg_n_218,
      \q_reg[19]\(2) => pcreg_n_219,
      \q_reg[19]\(1) => pcreg_n_220,
      \q_reg[19]\(0) => pcreg_n_221,
      \q_reg[23]\(3) => pcreg_n_222,
      \q_reg[23]\(2) => pcreg_n_223,
      \q_reg[23]\(1) => pcreg_n_224,
      \q_reg[23]\(0) => pcreg_n_225,
      \q_reg[27]\(3) => pcreg_n_226,
      \q_reg[27]\(2) => pcreg_n_227,
      \q_reg[27]\(1) => pcreg_n_228,
      \q_reg[27]\(0) => pcreg_n_229,
      \q_reg[31]\(3) => pcreg_n_0,
      \q_reg[31]\(2) => pcreg_n_1,
      \q_reg[31]\(1) => pcreg_n_2,
      \q_reg[31]\(0) => pcreg_n_3,
      \q_reg[7]\(3) => pcreg_n_206,
      \q_reg[7]\(2) => pcreg_n_207,
      \q_reg[7]\(1) => pcreg_n_208,
      \q_reg[7]\(0) => pcreg_n_209
    );
pcreg: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_flopenr
     port map (
      \ALUControl__0\(0) => \ALUControl__0\(0),
      \ALUResult[10]_INST_0_i_9_0\ => pcreg_n_115,
      \ALUResult[12]_INST_0_i_1\ => rf_n_125,
      \ALUResult[12]_INST_0_i_9_0\ => pcreg_n_67,
      \ALUResult[13]_INST_0_i_9_0\ => pcreg_n_66,
      \ALUResult[14]_INST_0_i_9_0\ => pcreg_n_58,
      \ALUResult[15]_INST_0_i_9_0\ => pcreg_n_59,
      \ALUResult[16]_INST_0_i_10_0\ => pcreg_n_60,
      \ALUResult[18]_INST_0_i_10_0\ => pcreg_n_135,
      \ALUResult[19]_INST_0_i_11_0\ => pcreg_n_132,
      \ALUResult[19]_INST_0_i_7_0\ => pcreg_n_134,
      \ALUResult[20]_INST_0_i_7_0\ => pcreg_n_133,
      \ALUResult[24]_INST_0_i_8_0\ => pcreg_n_139,
      \ALUResult[25]_INST_0_i_10_0\ => pcreg_n_131,
      \ALUResult[27]_INST_0_i_8_0\ => pcreg_n_124,
      \ALUResult[28]_INST_0_i_8_0\ => pcreg_n_128,
      \ALUResult[29]_INST_0_i_10_0\ => pcreg_n_129,
      \ALUResult[30]_INST_0_i_10_0\ => pcreg_n_140,
      \ALUResult[30]_INST_0_i_11_0\ => pcreg_n_143,
      \ALUResult[30]_INST_0_i_12_0\ => pcreg_n_150,
      \ALUResult[30]_INST_0_i_12_1\ => pcreg_n_188,
      \ALUResult[30]_INST_0_i_8\ => pcreg_n_117,
      \ALUResult[30]_INST_0_i_8_0\ => pcreg_n_137,
      \ALUResult[30]_INST_0_i_8_1\ => pcreg_n_138,
      \ALUResult[30]_INST_0_i_8_2\ => pcreg_n_230,
      \ALUResult[30]_INST_0_i_8_3\ => pcreg_n_231,
      \ALUResult[31]_INST_0_i_10_0\ => pcreg_n_49,
      \ALUResult[31]_INST_0_i_24_0\ => pcreg_n_73,
      \ALUResult[31]_INST_0_i_24_1\ => pcreg_n_105,
      \ALUResult[31]_INST_0_i_25_0\ => pcreg_n_195,
      \ALUResult[31]_INST_0_i_28_0\ => pcreg_n_146,
      \ALUResult[31]_INST_0_i_30_0\ => pcreg_n_141,
      \ALUResult[31]_INST_0_i_31_0\ => pcreg_n_148,
      \ALUResult[31]_INST_0_i_33_0\ => pcreg_n_144,
      \ALUResult[31]_INST_0_i_4_0\ => main_alu_n_42,
      \ALUResult[31]_INST_0_i_5_0\ => \ALUResult[31]_INST_0_i_5\,
      \ALUResult[31]_INST_0_i_5_1\ => \ALUResult[31]_INST_0_i_5_0\,
      \ALUResult[31]_INST_0_i_5_10\ => \^aluresult[31]_inst_0_i_5_3\,
      \ALUResult[31]_INST_0_i_5_11\ => \^aluresult[31]_inst_0_i_5_19\,
      \ALUResult[31]_INST_0_i_5_12\ => \^aluresult[31]_inst_0_i_5_18\,
      \ALUResult[31]_INST_0_i_5_2\ => \ALUResult[31]_INST_0_i_5_1\,
      \ALUResult[31]_INST_0_i_5_3\ => \^aluresult[31]_inst_0_i_5_6\,
      \ALUResult[31]_INST_0_i_5_4\ => \^aluresult[31]_inst_0_i_5_14\,
      \ALUResult[31]_INST_0_i_5_5\ => \^aluresult[31]_inst_0_i_5_13\,
      \ALUResult[31]_INST_0_i_5_6\ => \^aluresult[31]_inst_0_i_5_12\,
      \ALUResult[31]_INST_0_i_5_7\ => \^aluresult[31]_inst_0_i_5_11\,
      \ALUResult[31]_INST_0_i_5_8\ => \^aluresult[31]_inst_0_i_5_2\,
      \ALUResult[31]_INST_0_i_5_9\ => \^aluresult[31]_inst_0_i_5_8\,
      \ALUResult[31]_INST_0_i_9_0\ => pcreg_n_70,
      \ALUResult[5]_INST_0_i_3_0\ => rf_n_130,
      \ALUResult[5]_INST_0_i_9_0\ => pcreg_n_120,
      \ALUResult[6]_INST_0_i_10_0\ => pcreg_n_107,
      \ALUResult[6]_INST_0_i_6_0\(0) => data6(7),
      \ALUResult[8]_INST_0_i_9_0\ => pcreg_n_106,
      \ALUResult[9]_INST_0_i_6_0\ => pcreg_n_108,
      \ALUResult[9]_INST_0_i_9_0\ => pcreg_n_109,
      D(28 downto 0) => PCNext(31 downto 3),
      DI(0) => pcreg_n_191,
      ImmSrc(2 downto 0) => ImmSrc(2 downto 0),
      Instr(31 downto 0) => Instr(31 downto 0),
      PCPlus4(2 downto 1) => PCPlus4(20 downto 19),
      PCPlus4(0) => PCPlus4(15),
      PCReady => PCReady,
      PCSrc10_out => \c/PCSrc10_out\,
      PCTarget(2 downto 0) => PCTarget(2 downto 0),
      Q(31 downto 0) => \^q\(31 downto 0),
      ReadData(31 downto 0) => ReadData(31 downto 0),
      ResultSrc(0) => ResultSrc(1),
      S(3) => pcreg_n_202,
      S(2) => pcreg_n_203,
      S(1) => pcreg_n_204,
      S(0) => pcreg_n_205,
      SrcA(30 downto 0) => SrcA(30 downto 0),
      \SrcA__0\(0) => \SrcA__0\(31),
      SrcB(7) => SrcB(20),
      SrcB(6 downto 5) => SrcB(7 downto 6),
      SrcB(4 downto 0) => SrcB(4 downto 0),
      WriteData(15 downto 0) => WriteData(15 downto 0),
      \addressM[0]\ => rf_n_196,
      \addressM[0]_0\ => main_alu_n_34,
      \addressM[0]_1\ => main_alu_n_6,
      \addressM[12]\ => rf_n_121,
      \addressM[12]_0\ => main_alu_n_18,
      \addressM[13]\ => rf_n_120,
      \addressM[13]_0\ => main_alu_n_19,
      \addressM[14]\ => rf_n_86,
      \addressM[14]_0\ => main_alu_n_20,
      \addressM[14]_1\ => rf_n_128,
      \addressM[14]_2\ => rf_n_127,
      \addressM[15]\ => rf_n_119,
      \addressM[15]_0\ => main_alu_n_21,
      \addressM[19]\ => rf_n_134,
      \addressM[19]_0\ => main_alu_n_25,
      \addressM[1]\ => rf_n_142,
      \addressM[1]_0\ => main_alu_n_5,
      \addressM[1]_1\ => rf_n_144,
      \addressM[20]\ => main_alu_n_26,
      \addressM[2]\ => rf_n_169,
      \addressM[2]_0\ => main_alu_n_8,
      \addressM[2]_1\ => rf_n_140,
      \addressM[3]\ => rf_n_170,
      \addressM[3]_0\ => main_alu_n_9,
      \addressM[3]_1\ => rf_n_141,
      \addressM[4]\ => rf_n_171,
      \addressM[4]_0\ => main_alu_n_10,
      \addressM[4]_1\ => rf_n_133,
      \addressM[7]\ => main_alu_n_13,
      \addressM[7]_0\ => rf_n_126,
      \addressM[9]\ => rf_n_131,
      \addressM[9]_0\ => main_alu_n_15,
      clk => clk,
      \q[31]_i_14\ => pcreg_n_41,
      \q[31]_i_2\ => rf_n_122,
      \q[31]_i_2_0\ => rf_n_132,
      \q_reg[0]_0\ => rf_n_69,
      \q_reg[11]_0\(3) => pcreg_n_210,
      \q_reg[11]_0\(2) => pcreg_n_211,
      \q_reg[11]_0\(1) => pcreg_n_212,
      \q_reg[11]_0\(0) => pcreg_n_213,
      \q_reg[15]_0\(3) => pcreg_n_214,
      \q_reg[15]_0\(2) => pcreg_n_215,
      \q_reg[15]_0\(1) => pcreg_n_216,
      \q_reg[15]_0\(0) => pcreg_n_217,
      \q_reg[16]_0\ => pcreg_n_111,
      \q_reg[18]_0\ => pcreg_n_110,
      \q_reg[19]_0\ => pcreg_n_116,
      \q_reg[19]_1\(3) => pcreg_n_218,
      \q_reg[19]_1\(2) => pcreg_n_219,
      \q_reg[19]_1\(1) => pcreg_n_220,
      \q_reg[19]_1\(0) => pcreg_n_221,
      \q_reg[20]_0\ => pcreg_n_72,
      \q_reg[21]_0\ => pcreg_n_68,
      \q_reg[23]_0\ => pcreg_n_63,
      \q_reg[23]_1\(3) => pcreg_n_222,
      \q_reg[23]_1\(2) => pcreg_n_223,
      \q_reg[23]_1\(1) => pcreg_n_224,
      \q_reg[23]_1\(0) => pcreg_n_225,
      \q_reg[24]_0\ => pcreg_n_142,
      \q_reg[25]_0\ => pcreg_n_126,
      \q_reg[26]_0\ => pcreg_n_127,
      \q_reg[26]_1\ => pcreg_n_145,
      \q_reg[27]_0\ => pcreg_n_62,
      \q_reg[27]_1\ => pcreg_n_125,
      \q_reg[27]_2\ => pcreg_n_147,
      \q_reg[27]_3\(3) => pcreg_n_226,
      \q_reg[27]_3\(2) => pcreg_n_227,
      \q_reg[27]_3\(1) => pcreg_n_228,
      \q_reg[27]_3\(0) => pcreg_n_229,
      \q_reg[28]_0\ => pcreg_n_149,
      \q_reg[29]_0\ => pcreg_n_61,
      \q_reg[2]_0\ => pcreg_n_114,
      \q_reg[2]_1\ => pcreg_n_193,
      \q_reg[30]_0\ => pcreg_n_190,
      \q_reg[31]_0\(3) => pcreg_n_0,
      \q_reg[31]_0\(2) => pcreg_n_1,
      \q_reg[31]_0\(1) => pcreg_n_2,
      \q_reg[31]_0\(0) => pcreg_n_3,
      \q_reg[31]_1\ => pcreg_n_136,
      \q_reg[31]_2\ => pcreg_n_189,
      \q_reg[3]_0\ => pcreg_n_118,
      \q_reg[5]_0\ => pcreg_n_48,
      \q_reg[5]_1\ => pcreg_n_122,
      \q_reg[5]_10\ => pcreg_n_201,
      \q_reg[5]_2\ => pcreg_n_167,
      \q_reg[5]_3\ => pcreg_n_192,
      \q_reg[5]_4\(0) => ALUControl(1),
      \q_reg[5]_5\ => pcreg_n_196,
      \q_reg[5]_6\ => pcreg_n_197,
      \q_reg[5]_7\ => pcreg_n_198,
      \q_reg[5]_8\ => pcreg_n_199,
      \q_reg[5]_9\ => pcreg_n_200,
      \q_reg[6]_0\ => pcreg_n_121,
      \q_reg[7]_0\(3) => pcreg_n_206,
      \q_reg[7]_0\(2) => pcreg_n_207,
      \q_reg[7]_0\(1) => pcreg_n_208,
      \q_reg[7]_0\(0) => pcreg_n_209,
      rd10(31 downto 0) => rd10(31 downto 0),
      rd2(15 downto 0) => rd2(15 downto 0),
      rd20(7 downto 0) => rd20(7 downto 0),
      \rd21__3\ => \rd21__3\,
      \readDataM[10]\ => pcreg_n_185,
      \readDataM[11]\ => pcreg_n_186,
      \readDataM[12]\ => pcreg_n_64,
      \readDataM[13]\ => pcreg_n_65,
      \readDataM[14]\ => pcreg_n_47,
      \readDataM[16]\ => pcreg_n_168,
      \readDataM[17]\ => pcreg_n_169,
      \readDataM[18]\ => pcreg_n_170,
      \readDataM[19]\ => pcreg_n_171,
      \readDataM[19]_0\ => pcreg_n_235,
      \readDataM[20]\ => pcreg_n_172,
      \readDataM[20]_0\ => pcreg_n_234,
      \readDataM[21]\ => pcreg_n_173,
      \readDataM[21]_0\ => pcreg_n_233,
      \readDataM[22]\ => pcreg_n_174,
      \readDataM[22]_0\ => pcreg_n_232,
      \readDataM[23]\ => pcreg_n_175,
      \readDataM[24]\ => pcreg_n_176,
      \readDataM[25]\ => pcreg_n_177,
      \readDataM[26]\ => pcreg_n_178,
      \readDataM[27]\ => pcreg_n_179,
      \readDataM[28]\ => pcreg_n_180,
      \readDataM[29]\ => pcreg_n_181,
      \readDataM[30]\ => pcreg_n_182,
      \readDataM[31]\ => pcreg_n_183,
      \readDataM[8]\ => pcreg_n_184,
      \readDataM[9]\ => pcreg_n_112,
      reset => reset,
      rf_reg_r1_0_31_18_23(0) => ResultSrc(0),
      rf_reg_r1_0_31_18_23_0 => rf_n_207,
      rf_reg_r1_0_31_18_23_1 => rf_n_206,
      \rf_reg_r1_0_31_30_31_i_1__0\ => rf_n_219,
      rf_reg_r1_0_31_6_11 => rf_n_202,
      rf_reg_r1_0_31_6_11_0 => pcadd4_n_54,
      \sum__0_carry_i_10\ => pcreg_n_57,
      wd3(6 downto 5) => Result(20 downto 19),
      wd3(4) => Result(15),
      wd3(3) => Result(7),
      wd3(2 downto 0) => Result(2 downto 0),
      \y_carry__1\ => main_alu_n_37,
      \y_carry__3\ => main_alu_n_43
    );
rf: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_regfile
     port map (
      \ALUControl__0\(0) => \ALUControl__0\(0),
      \ALUResult[0]_INST_0_i_3\ => pcreg_n_193,
      \ALUResult[0]_INST_0_i_8\(0) => ALUControl(1),
      \ALUResult[11]_INST_0_i_1_0\ => pcreg_n_68,
      \ALUResult[11]_INST_0_i_1_1\ => pcreg_n_63,
      \ALUResult[11]_INST_0_i_1_2\ => pcreg_n_116,
      \ALUResult[11]_INST_0_i_2\ => main_alu_n_37,
      \ALUResult[16]_INST_0_i_1_0\ => pcreg_n_136,
      \ALUResult[16]_INST_0_i_1_1\ => pcreg_n_62,
      \ALUResult[16]_INST_0_i_1_2\ => pcreg_n_61,
      \ALUResult[19]_INST_0_i_2\ => main_alu_n_43,
      \ALUResult[21]_INST_0_i_3_0\ => pcreg_n_126,
      \ALUResult[22]_INST_0_i_3_0\ => pcreg_n_127,
      \ALUResult[23]_INST_0_i_3_0\ => pcreg_n_125,
      \ALUResult[30]_INST_0_i_3_0\ => pcreg_n_142,
      \ALUResult[30]_INST_0_i_3_1\ => pcreg_n_149,
      \ALUResult[30]_INST_0_i_3_2\ => pcreg_n_190,
      \ALUResult[30]_INST_0_i_3_3\ => pcreg_n_145,
      \ALUResult[30]_INST_0_i_8_0\ => rf_n_141,
      \ALUResult[31]_INST_0_i_11_0\ => rf_n_127,
      \ALUResult[31]_INST_0_i_11_1\ => rf_n_128,
      \ALUResult[31]_INST_0_i_11_2\ => rf_n_265,
      \ALUResult[31]_INST_0_i_15\ => rf_n_126,
      \ALUResult[31]_INST_0_i_15_0\ => rf_n_135,
      \ALUResult[31]_INST_0_i_15_1\ => rf_n_137,
      \ALUResult[31]_INST_0_i_15_2\ => rf_n_139,
      \ALUResult[31]_INST_0_i_3_0\ => pcreg_n_188,
      \ALUResult[31]_INST_0_i_3_1\ => pcreg_n_147,
      \ALUResult[31]_INST_0_i_3_2\ => pcreg_n_189,
      \ALUResult[31]_INST_0_i_5\ => \^aluresult[31]_inst_0_i_5_4\,
      \ALUResult[31]_INST_0_i_5_0\ => \^aluresult[31]_inst_0_i_5_5\,
      \ALUResult[31]_INST_0_i_5_1\ => \ALUResult[31]_INST_0_i_5_7\,
      \ALUResult[31]_INST_0_i_5_10\ => \^aluresult[31]_inst_0_i_5_23\,
      \ALUResult[31]_INST_0_i_5_11\ => \^aluresult[31]_inst_0_i_5_25\,
      \ALUResult[31]_INST_0_i_5_12\ => \^aluresult[31]_inst_0_i_5_27\,
      \ALUResult[31]_INST_0_i_5_13\ => \^aluresult[31]_inst_0_i_5_28\,
      \ALUResult[31]_INST_0_i_5_14\ => \^aluresult[31]_inst_0_i_5_30\,
      \ALUResult[31]_INST_0_i_5_2\ => \ALUResult[31]_INST_0_i_5_9\,
      \ALUResult[31]_INST_0_i_5_3\ => \ALUResult[31]_INST_0_i_5_10\,
      \ALUResult[31]_INST_0_i_5_4\ => \^aluresult[31]_inst_0_i_5_15\,
      \ALUResult[31]_INST_0_i_5_5\ => \^aluresult[31]_inst_0_i_5_16\,
      \ALUResult[31]_INST_0_i_5_6\ => \^aluresult[31]_inst_0_i_5_17\,
      \ALUResult[31]_INST_0_i_5_7\ => \^aluresult[31]_inst_0_i_5_20\,
      \ALUResult[31]_INST_0_i_5_8\ => \^aluresult[31]_inst_0_i_5_21\,
      \ALUResult[31]_INST_0_i_5_9\ => \^aluresult[31]_inst_0_i_5_22\,
      \ALUResult[4]_INST_0\ => rf_n_132,
      \ALUResult[4]_INST_0_i_1\ => rf_n_86,
      \ALUResult[4]_INST_0_i_1_0\ => rf_n_119,
      \ALUResult[4]_INST_0_i_1_1\ => rf_n_120,
      \ALUResult[4]_INST_0_i_1_2\ => rf_n_121,
      \ALUResult[4]_INST_0_i_1_3\ => rf_n_131,
      \ALUResult[4]_INST_0_i_1_4\ => rf_n_134,
      \ALUResult[4]_INST_0_i_4\ => pcreg_n_192,
      \ALUResult[4]_INST_0_i_7_0\ => rf_n_130,
      \ALUResult[6]_INST_0_i_1_0\ => pcreg_n_72,
      \ALUResult[6]_INST_0_i_1_1\ => pcreg_n_111,
      \ALUResult[6]_INST_0_i_1_2\ => pcreg_n_110,
      \ALUResult[6]_INST_0_i_1_3\ => pcreg_n_121,
      \ALUResult[8]_INST_0_0\ => rf_n_122,
      ALUSrc => ALUSrc,
      CO(0) => lt,
      D(28 downto 0) => PCNext(31 downto 3),
      DI(2) => rf_n_146,
      DI(1) => rf_n_147,
      DI(0) => rf_n_148,
      ImmSrc(0) => ImmSrc(2),
      Instr(31 downto 0) => Instr(31 downto 0),
      PCPlus4(28 downto 0) => PCPlus4(31 downto 3),
      PCSrc10_out => \c/PCSrc10_out\,
      PCTarget(28 downto 0) => PCTarget(31 downto 3),
      Q(31 downto 0) => \^q\(31 downto 0),
      ReadData(18 downto 3) => ReadData(31 downto 16),
      ReadData(2 downto 1) => ReadData(11 downto 10),
      ReadData(0) => ReadData(8),
      Result(31 downto 0) => Result(31 downto 0),
      ResultSrc(0) => ResultSrc(1),
      S(3) => rf_n_221,
      S(2) => rf_n_222,
      S(1) => rf_n_223,
      S(0) => rf_n_224,
      SrcA(30 downto 0) => SrcA(30 downto 0),
      \SrcA__0\(0) => \SrcA__0\(31),
      SrcB(31 downto 0) => SrcB(31 downto 0),
      WriteData(15 downto 0) => WriteData(31 downto 16),
      \addressM[10]\ => main_alu_n_16,
      \addressM[10]_0\ => pcreg_n_231,
      \addressM[10]_1\ => pcreg_n_48,
      \addressM[10]_2\ => pcreg_n_49,
      \addressM[10]_3\ => pcreg_n_115,
      \addressM[11]\ => main_alu_n_17,
      \addressM[11]_0\ => pcreg_n_230,
      \addressM[11]_1\ => pcreg_n_57,
      \addressM[12]\ => pcreg_n_67,
      \addressM[13]\ => pcreg_n_66,
      \addressM[14]\ => pcreg_n_59,
      \addressM[14]_0\ => pcreg_n_58,
      \addressM[14]_1\ => pcreg_n_70,
      \addressM[15]\ => pcreg_n_60,
      \addressM[16]\ => main_alu_n_22,
      \addressM[16]_0\ => pcreg_n_137,
      \addressM[17]\ => main_alu_n_23,
      \addressM[17]_0\ => pcreg_n_138,
      \addressM[18]\ => main_alu_n_24,
      \addressM[18]_0\ => pcreg_n_134,
      \addressM[18]_1\ => pcreg_n_139,
      \addressM[18]_2\ => pcreg_n_131,
      \addressM[18]_3\ => pcreg_n_135,
      \addressM[19]\ => pcreg_n_133,
      \addressM[19]_0\ => pcreg_n_132,
      \addressM[21]\ => main_alu_n_27,
      \addressM[21]_0\ => pcreg_n_128,
      \addressM[21]_1\ => pcreg_n_124,
      \addressM[21]_2\ => pcreg_n_73,
      \addressM[21]_3\ => pcreg_n_105,
      \addressM[22]\ => main_alu_n_28,
      \addressM[22]_0\ => pcreg_n_129,
      \addressM[23]\ => main_alu_n_29,
      \addressM[23]_0\ => pcreg_n_140,
      \addressM[24]\ => main_alu_n_30,
      \addressM[24]_0\ => pcreg_n_141,
      \addressM[25]\ => pcreg_n_143,
      \addressM[26]\ => main_alu_n_31,
      \addressM[26]_0\ => pcreg_n_144,
      \addressM[27]\ => pcreg_n_146,
      \addressM[28]\ => main_alu_n_32,
      \addressM[28]_0\ => pcreg_n_148,
      \addressM[29]\ => main_alu_n_33,
      \addressM[29]_0\ => pcreg_n_150,
      \addressM[31]\ => main_alu_n_35,
      \addressM[31]_0\ => pcreg_n_196,
      \addressM[31]_1\ => pcreg_n_195,
      \addressM[5]\ => main_alu_n_11,
      \addressM[5]_0\ => pcreg_n_117,
      \addressM[5]_1\ => pcreg_n_120,
      \addressM[6]\ => main_alu_n_12,
      \addressM[6]_0\ => pcreg_n_118,
      \addressM[6]_1\ => pcreg_n_107,
      \addressM[7]\(0) => data6(7),
      \addressM[8]\ => main_alu_n_14,
      \addressM[8]_0\ => pcreg_n_108,
      \addressM[8]_1\ => pcreg_n_114,
      \addressM[8]_2\ => pcreg_n_109,
      \addressM[8]_3\ => pcreg_n_106,
      clk => clk,
      \lt_carry__2\ => main_alu_n_42,
      \lt_carry__2_0\ => main_alu_n_44,
      \q[31]_i_10\ => rf_n_69,
      \q[31]_i_2_0\(0) => ltu,
      \q_reg[0]\ => rf_n_144,
      \q_reg[0]_0\ => rf_n_145,
      \q_reg[0]_1\ => rf_n_196,
      \q_reg[11]\(3) => rf_n_245,
      \q_reg[11]\(2) => rf_n_246,
      \q_reg[11]\(1) => rf_n_247,
      \q_reg[11]\(0) => rf_n_248,
      \q_reg[12]\ => \^aluresult[31]_inst_0_i_5_11\,
      \q_reg[13]\ => \^aluresult[31]_inst_0_i_5_12\,
      \q_reg[14]\(3) => rf_n_172,
      \q_reg[14]\(2) => rf_n_173,
      \q_reg[14]\(1) => rf_n_174,
      \q_reg[14]\(0) => rf_n_175,
      \q_reg[14]_0\(3) => rf_n_176,
      \q_reg[14]_0\(2) => rf_n_177,
      \q_reg[14]_0\(1) => rf_n_178,
      \q_reg[14]_0\(0) => rf_n_179,
      \q_reg[14]_1\(3) => rf_n_225,
      \q_reg[14]_1\(2) => rf_n_226,
      \q_reg[14]_1\(1) => rf_n_227,
      \q_reg[14]_1\(0) => rf_n_228,
      \q_reg[14]_2\ => \^aluresult[31]_inst_0_i_5_13\,
      \q_reg[15]\(3) => rf_n_249,
      \q_reg[15]\(2) => rf_n_250,
      \q_reg[15]\(1) => rf_n_251,
      \q_reg[15]\(0) => rf_n_252,
      \q_reg[15]_0\ => \^aluresult[31]_inst_0_i_5_14\,
      \q_reg[19]\(3) => rf_n_253,
      \q_reg[19]\(2) => rf_n_254,
      \q_reg[19]\(1) => rf_n_255,
      \q_reg[19]\(0) => rf_n_256,
      \q_reg[19]_0\ => \^aluresult[31]_inst_0_i_5_18\,
      \q_reg[1]\ => rf_n_140,
      \q_reg[1]_0\ => rf_n_142,
      \q_reg[20]\ => \^aluresult[31]_inst_0_i_5_19\,
      \q_reg[22]\(3) => rf_n_180,
      \q_reg[22]\(2) => rf_n_181,
      \q_reg[22]\(1) => rf_n_182,
      \q_reg[22]\(0) => rf_n_183,
      \q_reg[22]_0\(3) => rf_n_184,
      \q_reg[22]_0\(2) => rf_n_185,
      \q_reg[22]_0\(1) => rf_n_186,
      \q_reg[22]_0\(0) => rf_n_187,
      \q_reg[22]_1\(3) => rf_n_229,
      \q_reg[22]_1\(2) => rf_n_230,
      \q_reg[22]_1\(1) => rf_n_231,
      \q_reg[22]_1\(0) => rf_n_232,
      \q_reg[23]\(3) => rf_n_257,
      \q_reg[23]\(2) => rf_n_258,
      \q_reg[23]\(1) => rf_n_259,
      \q_reg[23]\(0) => rf_n_260,
      \q_reg[25]\ => rf_n_125,
      \q_reg[25]_0\ => rf_n_136,
      \q_reg[25]_1\ => \^aluresult[31]_inst_0_i_5_24\,
      \q_reg[27]\ => rf_n_138,
      \q_reg[27]_0\(3) => rf_n_261,
      \q_reg[27]_0\(2) => rf_n_262,
      \q_reg[27]_0\(1) => rf_n_263,
      \q_reg[27]_0\(0) => rf_n_264,
      \q_reg[27]_1\ => \^aluresult[31]_inst_0_i_5_26\,
      \q_reg[2]\ => rf_n_133,
      \q_reg[2]_0\ => rf_n_169,
      \q_reg[30]\ => rf_n_143,
      \q_reg[30]_0\(3) => rf_n_188,
      \q_reg[30]_0\(2) => rf_n_189,
      \q_reg[30]_0\(1) => rf_n_190,
      \q_reg[30]_0\(0) => rf_n_191,
      \q_reg[30]_1\(3) => rf_n_192,
      \q_reg[30]_1\(2) => rf_n_193,
      \q_reg[30]_1\(1) => rf_n_194,
      \q_reg[30]_1\(0) => rf_n_195,
      \q_reg[30]_2\(0) => rf_n_197,
      \q_reg[30]_3\(3) => rf_n_233,
      \q_reg[30]_3\(2) => rf_n_234,
      \q_reg[30]_3\(1) => rf_n_235,
      \q_reg[30]_3\(0) => rf_n_236,
      \q_reg[30]_4\ => \^aluresult[31]_inst_0_i_5_29\,
      \q_reg[31]\(3) => rf_n_198,
      \q_reg[31]\(2) => rf_n_199,
      \q_reg[31]\(1) => rf_n_200,
      \q_reg[31]\(0) => rf_n_201,
      \q_reg[3]\ => rf_n_170,
      \q_reg[3]_0\(3) => rf_n_237,
      \q_reg[3]_0\(2) => rf_n_238,
      \q_reg[3]_0\(1) => rf_n_239,
      \q_reg[3]_0\(0) => rf_n_240,
      \q_reg[3]_1\ => \^aluresult[31]_inst_0_i_5_2\,
      \q_reg[3]_2\ => pcreg_n_199,
      \q_reg[3]_3\ => pcreg_n_41,
      \q_reg[3]_4\ => pcreg_n_201,
      \q_reg[3]_5\ => pcreg_n_200,
      \q_reg[4]\ => rf_n_171,
      \q_reg[4]_0\ => \^aluresult[31]_inst_0_i_5_3\,
      \q_reg[5]\(15 downto 0) => rd2(15 downto 0),
      \q_reg[5]_0\ => rf_n_202,
      \q_reg[5]_1\ => rf_n_219,
      \q_reg[5]_2\(0) => ResultSrc(0),
      \q_reg[6]\(3) => rf_n_149,
      \q_reg[6]\(2) => rf_n_150,
      \q_reg[6]\(1) => rf_n_151,
      \q_reg[6]\(0) => rf_n_152,
      \q_reg[7]\(3) => rf_n_241,
      \q_reg[7]\(2) => rf_n_242,
      \q_reg[7]\(1) => rf_n_243,
      \q_reg[7]\(0) => rf_n_244,
      \q_reg[7]_0\ => \^aluresult[31]_inst_0_i_5_6\,
      \q_reg[9]\ => \^aluresult[31]_inst_0_i_5_8\,
      rd10(31 downto 0) => rd10(31 downto 0),
      rd20(7 downto 0) => rd20(7 downto 0),
      \rd21__3\ => \rd21__3\,
      \readDataM[10]\ => rf_n_123,
      \readDataM[11]\ => rf_n_124,
      \readDataM[16]\ => rf_n_203,
      \readDataM[17]\ => rf_n_204,
      \readDataM[18]\ => rf_n_205,
      \readDataM[19]\ => rf_n_206,
      \readDataM[20]\ => rf_n_207,
      \readDataM[21]\ => rf_n_208,
      \readDataM[22]\ => rf_n_209,
      \readDataM[23]\ => rf_n_210,
      \readDataM[24]\ => rf_n_211,
      \readDataM[25]\ => rf_n_212,
      \readDataM[26]\ => rf_n_213,
      \readDataM[27]\ => rf_n_214,
      \readDataM[28]\ => rf_n_215,
      \readDataM[29]\ => rf_n_216,
      \readDataM[30]\ => rf_n_217,
      \readDataM[31]\ => rf_n_218,
      \readDataM[8]\ => rf_n_129,
      rf_reg_r1_0_31_6_11_i_4 => pcreg_n_184,
      rf_reg_r1_0_31_6_11_i_5 => pcreg_n_186,
      rf_reg_r1_0_31_6_11_i_6 => pcreg_n_185,
      \writeDataM[16]\ => pcreg_n_168,
      \writeDataM[17]\ => pcreg_n_169,
      \writeDataM[18]\ => pcreg_n_170,
      \writeDataM[19]\ => pcreg_n_171,
      \writeDataM[20]\ => pcreg_n_172,
      \writeDataM[21]\ => pcreg_n_173,
      \writeDataM[22]\ => pcreg_n_174,
      \writeDataM[23]\ => pcreg_n_175,
      \writeDataM[24]\ => pcreg_n_176,
      \writeDataM[25]\ => pcreg_n_177,
      \writeDataM[26]\ => pcreg_n_178,
      \writeDataM[27]\ => pcreg_n_179,
      \writeDataM[28]\ => pcreg_n_180,
      \writeDataM[29]\ => pcreg_n_181,
      \writeDataM[30]\ => pcreg_n_182,
      \writeDataM[31]\ => pcreg_n_167,
      \writeDataM[31]_0\ => pcreg_n_183
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
    MemStrobe : out STD_LOGIC;
    ALUResult : out STD_LOGIC_VECTOR ( 31 downto 0 );
    WriteData : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ReadData : in STD_LOGIC_VECTOR ( 31 downto 0 );
    PCReady : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_riscvsingle;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_riscvsingle is
  signal \^memstrobe\ : STD_LOGIC;
begin
  MemStrobe <= \^memstrobe\;
MemStrobe_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Instr(6),
      I1 => Instr(4),
      O => \^memstrobe\
    );
MemWrite_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000020000000"
    )
        port map (
      I0 => Instr(5),
      I1 => Instr(3),
      I2 => \^memstrobe\,
      I3 => Instr(0),
      I4 => Instr(1),
      I5 => Instr(2),
      O => MemWrite
    );
dp: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath
     port map (
      \ALUResult[31]_INST_0_i_5\ => ALUResult(0),
      \ALUResult[31]_INST_0_i_5_0\ => ALUResult(1),
      \ALUResult[31]_INST_0_i_5_1\ => ALUResult(2),
      \ALUResult[31]_INST_0_i_5_10\ => ALUResult(11),
      \ALUResult[31]_INST_0_i_5_11\ => ALUResult(12),
      \ALUResult[31]_INST_0_i_5_12\ => ALUResult(13),
      \ALUResult[31]_INST_0_i_5_13\ => ALUResult(14),
      \ALUResult[31]_INST_0_i_5_14\ => ALUResult(15),
      \ALUResult[31]_INST_0_i_5_15\ => ALUResult(16),
      \ALUResult[31]_INST_0_i_5_16\ => ALUResult(17),
      \ALUResult[31]_INST_0_i_5_17\ => ALUResult(18),
      \ALUResult[31]_INST_0_i_5_18\ => ALUResult(19),
      \ALUResult[31]_INST_0_i_5_19\ => ALUResult(20),
      \ALUResult[31]_INST_0_i_5_2\ => ALUResult(3),
      \ALUResult[31]_INST_0_i_5_20\ => ALUResult(21),
      \ALUResult[31]_INST_0_i_5_21\ => ALUResult(22),
      \ALUResult[31]_INST_0_i_5_22\ => ALUResult(23),
      \ALUResult[31]_INST_0_i_5_23\ => ALUResult(24),
      \ALUResult[31]_INST_0_i_5_24\ => ALUResult(25),
      \ALUResult[31]_INST_0_i_5_25\ => ALUResult(26),
      \ALUResult[31]_INST_0_i_5_26\ => ALUResult(27),
      \ALUResult[31]_INST_0_i_5_27\ => ALUResult(28),
      \ALUResult[31]_INST_0_i_5_28\ => ALUResult(29),
      \ALUResult[31]_INST_0_i_5_29\ => ALUResult(30),
      \ALUResult[31]_INST_0_i_5_3\ => ALUResult(4),
      \ALUResult[31]_INST_0_i_5_30\ => ALUResult(31),
      \ALUResult[31]_INST_0_i_5_4\ => ALUResult(5),
      \ALUResult[31]_INST_0_i_5_5\ => ALUResult(6),
      \ALUResult[31]_INST_0_i_5_6\ => ALUResult(7),
      \ALUResult[31]_INST_0_i_5_7\ => ALUResult(8),
      \ALUResult[31]_INST_0_i_5_8\ => ALUResult(9),
      \ALUResult[31]_INST_0_i_5_9\ => ALUResult(10),
      Instr(31 downto 0) => Instr(31 downto 0),
      PCReady => PCReady,
      Q(31 downto 0) => PC(31 downto 0),
      ReadData(31 downto 0) => ReadData(31 downto 0),
      WriteData(31 downto 0) => WriteData(31 downto 0),
      clk => clk,
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
      Instr(31 downto 0) => Instr(31 downto 0),
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
