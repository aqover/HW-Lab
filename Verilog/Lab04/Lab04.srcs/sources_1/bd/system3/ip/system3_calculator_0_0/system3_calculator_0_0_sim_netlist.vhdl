-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Sun Feb 17 22:25:20 2019
-- Host        : DESKTOP-M83089R running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               D:/aqover-pc/Documents/Learning/HWLabI/Verilog/Lab04/Lab04.srcs/sources_1/bd/system3/ip/system3_calculator_0_0/system3_calculator_0_0_sim_netlist.vhdl
-- Design      : system3_calculator_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system3_calculator_0_0_debound is
  port (
    d : out STD_LOGIC;
    clk : in STD_LOGIC;
    devide : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system3_calculator_0_0_debound : entity is "debound";
end system3_calculator_0_0_debound;

architecture STRUCTURE of system3_calculator_0_0_debound is
  signal count : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \count[6]_i_1_n_0\ : STD_LOGIC;
  signal \count[6]_i_2_n_0\ : STD_LOGIC;
  signal \count[6]_i_3_n_0\ : STD_LOGIC;
  signal \^d\ : STD_LOGIC;
  signal q_i_1_n_0 : STD_LOGIC;
  signal \tmp_reg_n_0_[0]\ : STD_LOGIC;
  signal \tmp_reg_n_0_[1]\ : STD_LOGIC;
begin
  d <= \^d\;
\count[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0900000000000000"
    )
        port map (
      I0 => \tmp_reg_n_0_[1]\,
      I1 => \tmp_reg_n_0_[0]\,
      I2 => \count[6]_i_3_n_0\,
      I3 => count(5),
      I4 => count(4),
      I5 => count(6),
      O => \count[6]_i_1_n_0\
    );
\count[6]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \tmp_reg_n_0_[0]\,
      I1 => \tmp_reg_n_0_[1]\,
      O => \count[6]_i_2_n_0\
    );
\count[6]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => count(2),
      I1 => count(3),
      I2 => count(0),
      I3 => count(1),
      O => \count[6]_i_3_n_0\
    );
\count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[6]_i_2_n_0\,
      D => '1',
      Q => count(0),
      R => \count[6]_i_1_n_0\
    );
\count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[6]_i_2_n_0\,
      D => count(0),
      Q => count(1),
      R => \count[6]_i_1_n_0\
    );
\count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[6]_i_2_n_0\,
      D => count(1),
      Q => count(2),
      R => \count[6]_i_1_n_0\
    );
\count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[6]_i_2_n_0\,
      D => count(2),
      Q => count(3),
      R => \count[6]_i_1_n_0\
    );
\count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[6]_i_2_n_0\,
      D => count(3),
      Q => count(4),
      R => \count[6]_i_1_n_0\
    );
\count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[6]_i_2_n_0\,
      D => count(4),
      Q => count(5),
      R => \count[6]_i_1_n_0\
    );
\count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[6]_i_2_n_0\,
      D => count(5),
      Q => count(6),
      R => \count[6]_i_1_n_0\
    );
q_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tmp_reg_n_0_[0]\,
      I1 => \count[6]_i_1_n_0\,
      I2 => \^d\,
      O => q_i_1_n_0
    );
q_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => q_i_1_n_0,
      Q => \^d\,
      R => '0'
    );
\tmp_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => devide,
      Q => \tmp_reg_n_0_[0]\,
      R => '0'
    );
\tmp_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \tmp_reg_n_0_[0]\,
      Q => \tmp_reg_n_0_[1]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system3_calculator_0_0_debound_1 is
  port (
    q_reg_0 : out STD_LOGIC;
    clk : in STD_LOGIC;
    a : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system3_calculator_0_0_debound_1 : entity is "debound";
end system3_calculator_0_0_debound_1;

architecture STRUCTURE of system3_calculator_0_0_debound_1 is
  signal \count[6]_i_1__9_n_0\ : STD_LOGIC;
  signal \count[6]_i_2__9_n_0\ : STD_LOGIC;
  signal \count[6]_i_3__9_n_0\ : STD_LOGIC;
  signal \count_reg_n_0_[0]\ : STD_LOGIC;
  signal \count_reg_n_0_[1]\ : STD_LOGIC;
  signal \count_reg_n_0_[2]\ : STD_LOGIC;
  signal \count_reg_n_0_[3]\ : STD_LOGIC;
  signal \count_reg_n_0_[4]\ : STD_LOGIC;
  signal \count_reg_n_0_[5]\ : STD_LOGIC;
  signal \count_reg_n_0_[6]\ : STD_LOGIC;
  signal \q_i_1__9_n_0\ : STD_LOGIC;
  signal \^q_reg_0\ : STD_LOGIC;
  signal \tmp_reg_n_0_[0]\ : STD_LOGIC;
  signal \tmp_reg_n_0_[1]\ : STD_LOGIC;
begin
  q_reg_0 <= \^q_reg_0\;
\count[6]_i_1__9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0900000000000000"
    )
        port map (
      I0 => \tmp_reg_n_0_[1]\,
      I1 => \tmp_reg_n_0_[0]\,
      I2 => \count[6]_i_3__9_n_0\,
      I3 => \count_reg_n_0_[5]\,
      I4 => \count_reg_n_0_[4]\,
      I5 => \count_reg_n_0_[6]\,
      O => \count[6]_i_1__9_n_0\
    );
\count[6]_i_2__9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \tmp_reg_n_0_[0]\,
      I1 => \tmp_reg_n_0_[1]\,
      O => \count[6]_i_2__9_n_0\
    );
\count[6]_i_3__9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \count_reg_n_0_[2]\,
      I1 => \count_reg_n_0_[3]\,
      I2 => \count_reg_n_0_[0]\,
      I3 => \count_reg_n_0_[1]\,
      O => \count[6]_i_3__9_n_0\
    );
\count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[6]_i_2__9_n_0\,
      D => '1',
      Q => \count_reg_n_0_[0]\,
      R => \count[6]_i_1__9_n_0\
    );
\count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[6]_i_2__9_n_0\,
      D => \count_reg_n_0_[0]\,
      Q => \count_reg_n_0_[1]\,
      R => \count[6]_i_1__9_n_0\
    );
\count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[6]_i_2__9_n_0\,
      D => \count_reg_n_0_[1]\,
      Q => \count_reg_n_0_[2]\,
      R => \count[6]_i_1__9_n_0\
    );
\count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[6]_i_2__9_n_0\,
      D => \count_reg_n_0_[2]\,
      Q => \count_reg_n_0_[3]\,
      R => \count[6]_i_1__9_n_0\
    );
\count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[6]_i_2__9_n_0\,
      D => \count_reg_n_0_[3]\,
      Q => \count_reg_n_0_[4]\,
      R => \count[6]_i_1__9_n_0\
    );
\count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[6]_i_2__9_n_0\,
      D => \count_reg_n_0_[4]\,
      Q => \count_reg_n_0_[5]\,
      R => \count[6]_i_1__9_n_0\
    );
\count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[6]_i_2__9_n_0\,
      D => \count_reg_n_0_[5]\,
      Q => \count_reg_n_0_[6]\,
      R => \count[6]_i_1__9_n_0\
    );
\q_i_1__9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tmp_reg_n_0_[0]\,
      I1 => \count[6]_i_1__9_n_0\,
      I2 => \^q_reg_0\,
      O => \q_i_1__9_n_0\
    );
q_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \q_i_1__9_n_0\,
      Q => \^q_reg_0\,
      R => '0'
    );
\tmp_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => a(0),
      Q => \tmp_reg_n_0_[0]\,
      R => '0'
    );
\tmp_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \tmp_reg_n_0_[0]\,
      Q => \tmp_reg_n_0_[1]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system3_calculator_0_0_debound_10 is
  port (
    q_reg_0 : out STD_LOGIC;
    clk : in STD_LOGIC;
    multiply : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system3_calculator_0_0_debound_10 : entity is "debound";
end system3_calculator_0_0_debound_10;

architecture STRUCTURE of system3_calculator_0_0_debound_10 is
  signal \count[6]_i_1__0_n_0\ : STD_LOGIC;
  signal \count[6]_i_2__0_n_0\ : STD_LOGIC;
  signal \count[6]_i_3__0_n_0\ : STD_LOGIC;
  signal \count_reg_n_0_[0]\ : STD_LOGIC;
  signal \count_reg_n_0_[1]\ : STD_LOGIC;
  signal \count_reg_n_0_[2]\ : STD_LOGIC;
  signal \count_reg_n_0_[3]\ : STD_LOGIC;
  signal \count_reg_n_0_[4]\ : STD_LOGIC;
  signal \count_reg_n_0_[5]\ : STD_LOGIC;
  signal \count_reg_n_0_[6]\ : STD_LOGIC;
  signal \q_i_1__0_n_0\ : STD_LOGIC;
  signal \^q_reg_0\ : STD_LOGIC;
  signal \tmp_reg_n_0_[0]\ : STD_LOGIC;
  signal \tmp_reg_n_0_[1]\ : STD_LOGIC;
begin
  q_reg_0 <= \^q_reg_0\;
\count[6]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0900000000000000"
    )
        port map (
      I0 => \tmp_reg_n_0_[1]\,
      I1 => \tmp_reg_n_0_[0]\,
      I2 => \count[6]_i_3__0_n_0\,
      I3 => \count_reg_n_0_[5]\,
      I4 => \count_reg_n_0_[4]\,
      I5 => \count_reg_n_0_[6]\,
      O => \count[6]_i_1__0_n_0\
    );
\count[6]_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \tmp_reg_n_0_[0]\,
      I1 => \tmp_reg_n_0_[1]\,
      O => \count[6]_i_2__0_n_0\
    );
\count[6]_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \count_reg_n_0_[2]\,
      I1 => \count_reg_n_0_[3]\,
      I2 => \count_reg_n_0_[0]\,
      I3 => \count_reg_n_0_[1]\,
      O => \count[6]_i_3__0_n_0\
    );
\count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[6]_i_2__0_n_0\,
      D => '1',
      Q => \count_reg_n_0_[0]\,
      R => \count[6]_i_1__0_n_0\
    );
\count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[6]_i_2__0_n_0\,
      D => \count_reg_n_0_[0]\,
      Q => \count_reg_n_0_[1]\,
      R => \count[6]_i_1__0_n_0\
    );
\count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[6]_i_2__0_n_0\,
      D => \count_reg_n_0_[1]\,
      Q => \count_reg_n_0_[2]\,
      R => \count[6]_i_1__0_n_0\
    );
\count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[6]_i_2__0_n_0\,
      D => \count_reg_n_0_[2]\,
      Q => \count_reg_n_0_[3]\,
      R => \count[6]_i_1__0_n_0\
    );
\count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[6]_i_2__0_n_0\,
      D => \count_reg_n_0_[3]\,
      Q => \count_reg_n_0_[4]\,
      R => \count[6]_i_1__0_n_0\
    );
\count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[6]_i_2__0_n_0\,
      D => \count_reg_n_0_[4]\,
      Q => \count_reg_n_0_[5]\,
      R => \count[6]_i_1__0_n_0\
    );
\count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[6]_i_2__0_n_0\,
      D => \count_reg_n_0_[5]\,
      Q => \count_reg_n_0_[6]\,
      R => \count[6]_i_1__0_n_0\
    );
\q_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tmp_reg_n_0_[0]\,
      I1 => \count[6]_i_1__0_n_0\,
      I2 => \^q_reg_0\,
      O => \q_i_1__0_n_0\
    );
q_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \q_i_1__0_n_0\,
      Q => \^q_reg_0\,
      R => '0'
    );
\tmp_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => multiply,
      Q => \tmp_reg_n_0_[0]\,
      R => '0'
    );
\tmp_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \tmp_reg_n_0_[0]\,
      Q => \tmp_reg_n_0_[1]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system3_calculator_0_0_debound_14 is
  port (
    q_reg_0 : out STD_LOGIC;
    clk : in STD_LOGIC;
    sub : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system3_calculator_0_0_debound_14 : entity is "debound";
end system3_calculator_0_0_debound_14;

architecture STRUCTURE of system3_calculator_0_0_debound_14 is
  signal \count[6]_i_1__1_n_0\ : STD_LOGIC;
  signal \count[6]_i_2__1_n_0\ : STD_LOGIC;
  signal \count[6]_i_3__1_n_0\ : STD_LOGIC;
  signal \count_reg_n_0_[0]\ : STD_LOGIC;
  signal \count_reg_n_0_[1]\ : STD_LOGIC;
  signal \count_reg_n_0_[2]\ : STD_LOGIC;
  signal \count_reg_n_0_[3]\ : STD_LOGIC;
  signal \count_reg_n_0_[4]\ : STD_LOGIC;
  signal \count_reg_n_0_[5]\ : STD_LOGIC;
  signal \count_reg_n_0_[6]\ : STD_LOGIC;
  signal \q_i_1__1_n_0\ : STD_LOGIC;
  signal \^q_reg_0\ : STD_LOGIC;
  signal \tmp_reg_n_0_[0]\ : STD_LOGIC;
  signal \tmp_reg_n_0_[1]\ : STD_LOGIC;
begin
  q_reg_0 <= \^q_reg_0\;
\count[6]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0900000000000000"
    )
        port map (
      I0 => \tmp_reg_n_0_[1]\,
      I1 => \tmp_reg_n_0_[0]\,
      I2 => \count[6]_i_3__1_n_0\,
      I3 => \count_reg_n_0_[5]\,
      I4 => \count_reg_n_0_[4]\,
      I5 => \count_reg_n_0_[6]\,
      O => \count[6]_i_1__1_n_0\
    );
\count[6]_i_2__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \tmp_reg_n_0_[0]\,
      I1 => \tmp_reg_n_0_[1]\,
      O => \count[6]_i_2__1_n_0\
    );
\count[6]_i_3__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \count_reg_n_0_[2]\,
      I1 => \count_reg_n_0_[3]\,
      I2 => \count_reg_n_0_[0]\,
      I3 => \count_reg_n_0_[1]\,
      O => \count[6]_i_3__1_n_0\
    );
\count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[6]_i_2__1_n_0\,
      D => '1',
      Q => \count_reg_n_0_[0]\,
      R => \count[6]_i_1__1_n_0\
    );
\count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[6]_i_2__1_n_0\,
      D => \count_reg_n_0_[0]\,
      Q => \count_reg_n_0_[1]\,
      R => \count[6]_i_1__1_n_0\
    );
\count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[6]_i_2__1_n_0\,
      D => \count_reg_n_0_[1]\,
      Q => \count_reg_n_0_[2]\,
      R => \count[6]_i_1__1_n_0\
    );
\count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[6]_i_2__1_n_0\,
      D => \count_reg_n_0_[2]\,
      Q => \count_reg_n_0_[3]\,
      R => \count[6]_i_1__1_n_0\
    );
\count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[6]_i_2__1_n_0\,
      D => \count_reg_n_0_[3]\,
      Q => \count_reg_n_0_[4]\,
      R => \count[6]_i_1__1_n_0\
    );
\count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[6]_i_2__1_n_0\,
      D => \count_reg_n_0_[4]\,
      Q => \count_reg_n_0_[5]\,
      R => \count[6]_i_1__1_n_0\
    );
\count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[6]_i_2__1_n_0\,
      D => \count_reg_n_0_[5]\,
      Q => \count_reg_n_0_[6]\,
      R => \count[6]_i_1__1_n_0\
    );
\q_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tmp_reg_n_0_[0]\,
      I1 => \count[6]_i_1__1_n_0\,
      I2 => \^q_reg_0\,
      O => \q_i_1__1_n_0\
    );
q_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \q_i_1__1_n_0\,
      Q => \^q_reg_0\,
      R => '0'
    );
\tmp_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => sub,
      Q => \tmp_reg_n_0_[0]\,
      R => '0'
    );
\tmp_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \tmp_reg_n_0_[0]\,
      Q => \tmp_reg_n_0_[1]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system3_calculator_0_0_debound_18 is
  port (
    q_reg_0 : out STD_LOGIC;
    clk : in STD_LOGIC;
    add : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system3_calculator_0_0_debound_18 : entity is "debound";
end system3_calculator_0_0_debound_18;

architecture STRUCTURE of system3_calculator_0_0_debound_18 is
  signal \count[6]_i_1__2_n_0\ : STD_LOGIC;
  signal \count[6]_i_2__2_n_0\ : STD_LOGIC;
  signal \count[6]_i_3__2_n_0\ : STD_LOGIC;
  signal \count_reg_n_0_[0]\ : STD_LOGIC;
  signal \count_reg_n_0_[1]\ : STD_LOGIC;
  signal \count_reg_n_0_[2]\ : STD_LOGIC;
  signal \count_reg_n_0_[3]\ : STD_LOGIC;
  signal \count_reg_n_0_[4]\ : STD_LOGIC;
  signal \count_reg_n_0_[5]\ : STD_LOGIC;
  signal \count_reg_n_0_[6]\ : STD_LOGIC;
  signal \q_i_1__2_n_0\ : STD_LOGIC;
  signal \^q_reg_0\ : STD_LOGIC;
  signal \tmp_reg_n_0_[0]\ : STD_LOGIC;
  signal \tmp_reg_n_0_[1]\ : STD_LOGIC;
begin
  q_reg_0 <= \^q_reg_0\;
\count[6]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0900000000000000"
    )
        port map (
      I0 => \tmp_reg_n_0_[1]\,
      I1 => \tmp_reg_n_0_[0]\,
      I2 => \count[6]_i_3__2_n_0\,
      I3 => \count_reg_n_0_[5]\,
      I4 => \count_reg_n_0_[4]\,
      I5 => \count_reg_n_0_[6]\,
      O => \count[6]_i_1__2_n_0\
    );
\count[6]_i_2__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \tmp_reg_n_0_[0]\,
      I1 => \tmp_reg_n_0_[1]\,
      O => \count[6]_i_2__2_n_0\
    );
\count[6]_i_3__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \count_reg_n_0_[2]\,
      I1 => \count_reg_n_0_[3]\,
      I2 => \count_reg_n_0_[0]\,
      I3 => \count_reg_n_0_[1]\,
      O => \count[6]_i_3__2_n_0\
    );
\count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[6]_i_2__2_n_0\,
      D => '1',
      Q => \count_reg_n_0_[0]\,
      R => \count[6]_i_1__2_n_0\
    );
\count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[6]_i_2__2_n_0\,
      D => \count_reg_n_0_[0]\,
      Q => \count_reg_n_0_[1]\,
      R => \count[6]_i_1__2_n_0\
    );
\count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[6]_i_2__2_n_0\,
      D => \count_reg_n_0_[1]\,
      Q => \count_reg_n_0_[2]\,
      R => \count[6]_i_1__2_n_0\
    );
\count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[6]_i_2__2_n_0\,
      D => \count_reg_n_0_[2]\,
      Q => \count_reg_n_0_[3]\,
      R => \count[6]_i_1__2_n_0\
    );
\count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[6]_i_2__2_n_0\,
      D => \count_reg_n_0_[3]\,
      Q => \count_reg_n_0_[4]\,
      R => \count[6]_i_1__2_n_0\
    );
\count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[6]_i_2__2_n_0\,
      D => \count_reg_n_0_[4]\,
      Q => \count_reg_n_0_[5]\,
      R => \count[6]_i_1__2_n_0\
    );
\count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[6]_i_2__2_n_0\,
      D => \count_reg_n_0_[5]\,
      Q => \count_reg_n_0_[6]\,
      R => \count[6]_i_1__2_n_0\
    );
\q_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tmp_reg_n_0_[0]\,
      I1 => \count[6]_i_1__2_n_0\,
      I2 => \^q_reg_0\,
      O => \q_i_1__2_n_0\
    );
q_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \q_i_1__2_n_0\,
      Q => \^q_reg_0\,
      R => '0'
    );
\tmp_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => add,
      Q => \tmp_reg_n_0_[0]\,
      R => '0'
    );
\tmp_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \tmp_reg_n_0_[0]\,
      Q => \tmp_reg_n_0_[1]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system3_calculator_0_0_debound_22 is
  port (
    q_reg_0 : out STD_LOGIC;
    clk : in STD_LOGIC;
    clear : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system3_calculator_0_0_debound_22 : entity is "debound";
end system3_calculator_0_0_debound_22;

architecture STRUCTURE of system3_calculator_0_0_debound_22 is
  signal \count[6]_i_1__3_n_0\ : STD_LOGIC;
  signal \count[6]_i_2__3_n_0\ : STD_LOGIC;
  signal \count[6]_i_3__3_n_0\ : STD_LOGIC;
  signal \count_reg_n_0_[0]\ : STD_LOGIC;
  signal \count_reg_n_0_[1]\ : STD_LOGIC;
  signal \count_reg_n_0_[2]\ : STD_LOGIC;
  signal \count_reg_n_0_[3]\ : STD_LOGIC;
  signal \count_reg_n_0_[4]\ : STD_LOGIC;
  signal \count_reg_n_0_[5]\ : STD_LOGIC;
  signal \count_reg_n_0_[6]\ : STD_LOGIC;
  signal \q_i_1__3_n_0\ : STD_LOGIC;
  signal \^q_reg_0\ : STD_LOGIC;
  signal \tmp_reg_n_0_[0]\ : STD_LOGIC;
  signal \tmp_reg_n_0_[1]\ : STD_LOGIC;
begin
  q_reg_0 <= \^q_reg_0\;
\count[6]_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0900000000000000"
    )
        port map (
      I0 => \tmp_reg_n_0_[1]\,
      I1 => \tmp_reg_n_0_[0]\,
      I2 => \count[6]_i_3__3_n_0\,
      I3 => \count_reg_n_0_[5]\,
      I4 => \count_reg_n_0_[4]\,
      I5 => \count_reg_n_0_[6]\,
      O => \count[6]_i_1__3_n_0\
    );
\count[6]_i_2__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \tmp_reg_n_0_[0]\,
      I1 => \tmp_reg_n_0_[1]\,
      O => \count[6]_i_2__3_n_0\
    );
\count[6]_i_3__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \count_reg_n_0_[2]\,
      I1 => \count_reg_n_0_[3]\,
      I2 => \count_reg_n_0_[0]\,
      I3 => \count_reg_n_0_[1]\,
      O => \count[6]_i_3__3_n_0\
    );
\count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[6]_i_2__3_n_0\,
      D => '1',
      Q => \count_reg_n_0_[0]\,
      R => \count[6]_i_1__3_n_0\
    );
\count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[6]_i_2__3_n_0\,
      D => \count_reg_n_0_[0]\,
      Q => \count_reg_n_0_[1]\,
      R => \count[6]_i_1__3_n_0\
    );
\count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[6]_i_2__3_n_0\,
      D => \count_reg_n_0_[1]\,
      Q => \count_reg_n_0_[2]\,
      R => \count[6]_i_1__3_n_0\
    );
\count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[6]_i_2__3_n_0\,
      D => \count_reg_n_0_[2]\,
      Q => \count_reg_n_0_[3]\,
      R => \count[6]_i_1__3_n_0\
    );
\count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[6]_i_2__3_n_0\,
      D => \count_reg_n_0_[3]\,
      Q => \count_reg_n_0_[4]\,
      R => \count[6]_i_1__3_n_0\
    );
\count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[6]_i_2__3_n_0\,
      D => \count_reg_n_0_[4]\,
      Q => \count_reg_n_0_[5]\,
      R => \count[6]_i_1__3_n_0\
    );
\count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[6]_i_2__3_n_0\,
      D => \count_reg_n_0_[5]\,
      Q => \count_reg_n_0_[6]\,
      R => \count[6]_i_1__3_n_0\
    );
\q_i_1__3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tmp_reg_n_0_[0]\,
      I1 => \count[6]_i_1__3_n_0\,
      I2 => \^q_reg_0\,
      O => \q_i_1__3_n_0\
    );
q_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \q_i_1__3_n_0\,
      Q => \^q_reg_0\,
      R => '0'
    );
\tmp_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => clear,
      Q => \tmp_reg_n_0_[0]\,
      R => '0'
    );
\tmp_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \tmp_reg_n_0_[0]\,
      Q => \tmp_reg_n_0_[1]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system3_calculator_0_0_debound_26 is
  port (
    q_reg_0 : out STD_LOGIC;
    clk : in STD_LOGIC;
    b : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system3_calculator_0_0_debound_26 : entity is "debound";
end system3_calculator_0_0_debound_26;

architecture STRUCTURE of system3_calculator_0_0_debound_26 is
  signal \count[6]_i_1__4_n_0\ : STD_LOGIC;
  signal \count[6]_i_2__4_n_0\ : STD_LOGIC;
  signal \count[6]_i_3__4_n_0\ : STD_LOGIC;
  signal \count_reg_n_0_[0]\ : STD_LOGIC;
  signal \count_reg_n_0_[1]\ : STD_LOGIC;
  signal \count_reg_n_0_[2]\ : STD_LOGIC;
  signal \count_reg_n_0_[3]\ : STD_LOGIC;
  signal \count_reg_n_0_[4]\ : STD_LOGIC;
  signal \count_reg_n_0_[5]\ : STD_LOGIC;
  signal \count_reg_n_0_[6]\ : STD_LOGIC;
  signal \q_i_1__4_n_0\ : STD_LOGIC;
  signal \^q_reg_0\ : STD_LOGIC;
  signal \tmp_reg_n_0_[0]\ : STD_LOGIC;
  signal \tmp_reg_n_0_[1]\ : STD_LOGIC;
begin
  q_reg_0 <= \^q_reg_0\;
\count[6]_i_1__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0900000000000000"
    )
        port map (
      I0 => \tmp_reg_n_0_[1]\,
      I1 => \tmp_reg_n_0_[0]\,
      I2 => \count[6]_i_3__4_n_0\,
      I3 => \count_reg_n_0_[5]\,
      I4 => \count_reg_n_0_[4]\,
      I5 => \count_reg_n_0_[6]\,
      O => \count[6]_i_1__4_n_0\
    );
\count[6]_i_2__4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \tmp_reg_n_0_[0]\,
      I1 => \tmp_reg_n_0_[1]\,
      O => \count[6]_i_2__4_n_0\
    );
\count[6]_i_3__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \count_reg_n_0_[2]\,
      I1 => \count_reg_n_0_[3]\,
      I2 => \count_reg_n_0_[0]\,
      I3 => \count_reg_n_0_[1]\,
      O => \count[6]_i_3__4_n_0\
    );
\count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[6]_i_2__4_n_0\,
      D => '1',
      Q => \count_reg_n_0_[0]\,
      R => \count[6]_i_1__4_n_0\
    );
\count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[6]_i_2__4_n_0\,
      D => \count_reg_n_0_[0]\,
      Q => \count_reg_n_0_[1]\,
      R => \count[6]_i_1__4_n_0\
    );
\count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[6]_i_2__4_n_0\,
      D => \count_reg_n_0_[1]\,
      Q => \count_reg_n_0_[2]\,
      R => \count[6]_i_1__4_n_0\
    );
\count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[6]_i_2__4_n_0\,
      D => \count_reg_n_0_[2]\,
      Q => \count_reg_n_0_[3]\,
      R => \count[6]_i_1__4_n_0\
    );
\count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[6]_i_2__4_n_0\,
      D => \count_reg_n_0_[3]\,
      Q => \count_reg_n_0_[4]\,
      R => \count[6]_i_1__4_n_0\
    );
\count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[6]_i_2__4_n_0\,
      D => \count_reg_n_0_[4]\,
      Q => \count_reg_n_0_[5]\,
      R => \count[6]_i_1__4_n_0\
    );
\count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[6]_i_2__4_n_0\,
      D => \count_reg_n_0_[5]\,
      Q => \count_reg_n_0_[6]\,
      R => \count[6]_i_1__4_n_0\
    );
\q_i_1__4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tmp_reg_n_0_[0]\,
      I1 => \count[6]_i_1__4_n_0\,
      I2 => \^q_reg_0\,
      O => \q_i_1__4_n_0\
    );
q_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \q_i_1__4_n_0\,
      Q => \^q_reg_0\,
      R => '0'
    );
\tmp_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => b(0),
      Q => \tmp_reg_n_0_[0]\,
      R => '0'
    );
\tmp_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \tmp_reg_n_0_[0]\,
      Q => \tmp_reg_n_0_[1]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system3_calculator_0_0_debound_29 is
  port (
    q_reg_0 : out STD_LOGIC;
    clk : in STD_LOGIC;
    b : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system3_calculator_0_0_debound_29 : entity is "debound";
end system3_calculator_0_0_debound_29;

architecture STRUCTURE of system3_calculator_0_0_debound_29 is
  signal \count[6]_i_1__5_n_0\ : STD_LOGIC;
  signal \count[6]_i_2__5_n_0\ : STD_LOGIC;
  signal \count[6]_i_3__5_n_0\ : STD_LOGIC;
  signal \count_reg_n_0_[0]\ : STD_LOGIC;
  signal \count_reg_n_0_[1]\ : STD_LOGIC;
  signal \count_reg_n_0_[2]\ : STD_LOGIC;
  signal \count_reg_n_0_[3]\ : STD_LOGIC;
  signal \count_reg_n_0_[4]\ : STD_LOGIC;
  signal \count_reg_n_0_[5]\ : STD_LOGIC;
  signal \count_reg_n_0_[6]\ : STD_LOGIC;
  signal \q_i_1__5_n_0\ : STD_LOGIC;
  signal \^q_reg_0\ : STD_LOGIC;
  signal \tmp_reg_n_0_[0]\ : STD_LOGIC;
  signal \tmp_reg_n_0_[1]\ : STD_LOGIC;
begin
  q_reg_0 <= \^q_reg_0\;
\count[6]_i_1__5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0900000000000000"
    )
        port map (
      I0 => \tmp_reg_n_0_[1]\,
      I1 => \tmp_reg_n_0_[0]\,
      I2 => \count[6]_i_3__5_n_0\,
      I3 => \count_reg_n_0_[5]\,
      I4 => \count_reg_n_0_[4]\,
      I5 => \count_reg_n_0_[6]\,
      O => \count[6]_i_1__5_n_0\
    );
\count[6]_i_2__5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \tmp_reg_n_0_[0]\,
      I1 => \tmp_reg_n_0_[1]\,
      O => \count[6]_i_2__5_n_0\
    );
\count[6]_i_3__5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \count_reg_n_0_[2]\,
      I1 => \count_reg_n_0_[3]\,
      I2 => \count_reg_n_0_[0]\,
      I3 => \count_reg_n_0_[1]\,
      O => \count[6]_i_3__5_n_0\
    );
\count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[6]_i_2__5_n_0\,
      D => '1',
      Q => \count_reg_n_0_[0]\,
      R => \count[6]_i_1__5_n_0\
    );
\count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[6]_i_2__5_n_0\,
      D => \count_reg_n_0_[0]\,
      Q => \count_reg_n_0_[1]\,
      R => \count[6]_i_1__5_n_0\
    );
\count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[6]_i_2__5_n_0\,
      D => \count_reg_n_0_[1]\,
      Q => \count_reg_n_0_[2]\,
      R => \count[6]_i_1__5_n_0\
    );
\count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[6]_i_2__5_n_0\,
      D => \count_reg_n_0_[2]\,
      Q => \count_reg_n_0_[3]\,
      R => \count[6]_i_1__5_n_0\
    );
\count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[6]_i_2__5_n_0\,
      D => \count_reg_n_0_[3]\,
      Q => \count_reg_n_0_[4]\,
      R => \count[6]_i_1__5_n_0\
    );
\count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[6]_i_2__5_n_0\,
      D => \count_reg_n_0_[4]\,
      Q => \count_reg_n_0_[5]\,
      R => \count[6]_i_1__5_n_0\
    );
\count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[6]_i_2__5_n_0\,
      D => \count_reg_n_0_[5]\,
      Q => \count_reg_n_0_[6]\,
      R => \count[6]_i_1__5_n_0\
    );
\q_i_1__5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tmp_reg_n_0_[0]\,
      I1 => \count[6]_i_1__5_n_0\,
      I2 => \^q_reg_0\,
      O => \q_i_1__5_n_0\
    );
q_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \q_i_1__5_n_0\,
      Q => \^q_reg_0\,
      R => '0'
    );
\tmp_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => b(0),
      Q => \tmp_reg_n_0_[0]\,
      R => '0'
    );
\tmp_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \tmp_reg_n_0_[0]\,
      Q => \tmp_reg_n_0_[1]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system3_calculator_0_0_debound_32 is
  port (
    q_reg_0 : out STD_LOGIC;
    clk : in STD_LOGIC;
    b : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system3_calculator_0_0_debound_32 : entity is "debound";
end system3_calculator_0_0_debound_32;

architecture STRUCTURE of system3_calculator_0_0_debound_32 is
  signal \count[6]_i_1__6_n_0\ : STD_LOGIC;
  signal \count[6]_i_2__6_n_0\ : STD_LOGIC;
  signal \count[6]_i_3__6_n_0\ : STD_LOGIC;
  signal \count_reg_n_0_[0]\ : STD_LOGIC;
  signal \count_reg_n_0_[1]\ : STD_LOGIC;
  signal \count_reg_n_0_[2]\ : STD_LOGIC;
  signal \count_reg_n_0_[3]\ : STD_LOGIC;
  signal \count_reg_n_0_[4]\ : STD_LOGIC;
  signal \count_reg_n_0_[5]\ : STD_LOGIC;
  signal \count_reg_n_0_[6]\ : STD_LOGIC;
  signal \q_i_1__6_n_0\ : STD_LOGIC;
  signal \^q_reg_0\ : STD_LOGIC;
  signal \tmp_reg_n_0_[0]\ : STD_LOGIC;
  signal \tmp_reg_n_0_[1]\ : STD_LOGIC;
begin
  q_reg_0 <= \^q_reg_0\;
\count[6]_i_1__6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0900000000000000"
    )
        port map (
      I0 => \tmp_reg_n_0_[1]\,
      I1 => \tmp_reg_n_0_[0]\,
      I2 => \count[6]_i_3__6_n_0\,
      I3 => \count_reg_n_0_[5]\,
      I4 => \count_reg_n_0_[4]\,
      I5 => \count_reg_n_0_[6]\,
      O => \count[6]_i_1__6_n_0\
    );
\count[6]_i_2__6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \tmp_reg_n_0_[0]\,
      I1 => \tmp_reg_n_0_[1]\,
      O => \count[6]_i_2__6_n_0\
    );
\count[6]_i_3__6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \count_reg_n_0_[2]\,
      I1 => \count_reg_n_0_[3]\,
      I2 => \count_reg_n_0_[0]\,
      I3 => \count_reg_n_0_[1]\,
      O => \count[6]_i_3__6_n_0\
    );
\count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[6]_i_2__6_n_0\,
      D => '1',
      Q => \count_reg_n_0_[0]\,
      R => \count[6]_i_1__6_n_0\
    );
\count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[6]_i_2__6_n_0\,
      D => \count_reg_n_0_[0]\,
      Q => \count_reg_n_0_[1]\,
      R => \count[6]_i_1__6_n_0\
    );
\count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[6]_i_2__6_n_0\,
      D => \count_reg_n_0_[1]\,
      Q => \count_reg_n_0_[2]\,
      R => \count[6]_i_1__6_n_0\
    );
\count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[6]_i_2__6_n_0\,
      D => \count_reg_n_0_[2]\,
      Q => \count_reg_n_0_[3]\,
      R => \count[6]_i_1__6_n_0\
    );
\count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[6]_i_2__6_n_0\,
      D => \count_reg_n_0_[3]\,
      Q => \count_reg_n_0_[4]\,
      R => \count[6]_i_1__6_n_0\
    );
\count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[6]_i_2__6_n_0\,
      D => \count_reg_n_0_[4]\,
      Q => \count_reg_n_0_[5]\,
      R => \count[6]_i_1__6_n_0\
    );
\count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[6]_i_2__6_n_0\,
      D => \count_reg_n_0_[5]\,
      Q => \count_reg_n_0_[6]\,
      R => \count[6]_i_1__6_n_0\
    );
\q_i_1__6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tmp_reg_n_0_[0]\,
      I1 => \count[6]_i_1__6_n_0\,
      I2 => \^q_reg_0\,
      O => \q_i_1__6_n_0\
    );
q_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \q_i_1__6_n_0\,
      Q => \^q_reg_0\,
      R => '0'
    );
\tmp_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => b(0),
      Q => \tmp_reg_n_0_[0]\,
      R => '0'
    );
\tmp_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \tmp_reg_n_0_[0]\,
      Q => \tmp_reg_n_0_[1]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system3_calculator_0_0_debound_35 is
  port (
    q_reg_0 : out STD_LOGIC;
    clk : in STD_LOGIC;
    b : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system3_calculator_0_0_debound_35 : entity is "debound";
end system3_calculator_0_0_debound_35;

architecture STRUCTURE of system3_calculator_0_0_debound_35 is
  signal \count[6]_i_1__7_n_0\ : STD_LOGIC;
  signal \count[6]_i_2__7_n_0\ : STD_LOGIC;
  signal \count[6]_i_3__7_n_0\ : STD_LOGIC;
  signal \count_reg_n_0_[0]\ : STD_LOGIC;
  signal \count_reg_n_0_[1]\ : STD_LOGIC;
  signal \count_reg_n_0_[2]\ : STD_LOGIC;
  signal \count_reg_n_0_[3]\ : STD_LOGIC;
  signal \count_reg_n_0_[4]\ : STD_LOGIC;
  signal \count_reg_n_0_[5]\ : STD_LOGIC;
  signal \count_reg_n_0_[6]\ : STD_LOGIC;
  signal \q_i_1__7_n_0\ : STD_LOGIC;
  signal \^q_reg_0\ : STD_LOGIC;
  signal \tmp_reg_n_0_[0]\ : STD_LOGIC;
  signal \tmp_reg_n_0_[1]\ : STD_LOGIC;
begin
  q_reg_0 <= \^q_reg_0\;
\count[6]_i_1__7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0900000000000000"
    )
        port map (
      I0 => \tmp_reg_n_0_[1]\,
      I1 => \tmp_reg_n_0_[0]\,
      I2 => \count[6]_i_3__7_n_0\,
      I3 => \count_reg_n_0_[5]\,
      I4 => \count_reg_n_0_[4]\,
      I5 => \count_reg_n_0_[6]\,
      O => \count[6]_i_1__7_n_0\
    );
\count[6]_i_2__7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \tmp_reg_n_0_[0]\,
      I1 => \tmp_reg_n_0_[1]\,
      O => \count[6]_i_2__7_n_0\
    );
\count[6]_i_3__7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \count_reg_n_0_[2]\,
      I1 => \count_reg_n_0_[3]\,
      I2 => \count_reg_n_0_[0]\,
      I3 => \count_reg_n_0_[1]\,
      O => \count[6]_i_3__7_n_0\
    );
\count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[6]_i_2__7_n_0\,
      D => '1',
      Q => \count_reg_n_0_[0]\,
      R => \count[6]_i_1__7_n_0\
    );
\count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[6]_i_2__7_n_0\,
      D => \count_reg_n_0_[0]\,
      Q => \count_reg_n_0_[1]\,
      R => \count[6]_i_1__7_n_0\
    );
\count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[6]_i_2__7_n_0\,
      D => \count_reg_n_0_[1]\,
      Q => \count_reg_n_0_[2]\,
      R => \count[6]_i_1__7_n_0\
    );
\count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[6]_i_2__7_n_0\,
      D => \count_reg_n_0_[2]\,
      Q => \count_reg_n_0_[3]\,
      R => \count[6]_i_1__7_n_0\
    );
\count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[6]_i_2__7_n_0\,
      D => \count_reg_n_0_[3]\,
      Q => \count_reg_n_0_[4]\,
      R => \count[6]_i_1__7_n_0\
    );
\count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[6]_i_2__7_n_0\,
      D => \count_reg_n_0_[4]\,
      Q => \count_reg_n_0_[5]\,
      R => \count[6]_i_1__7_n_0\
    );
\count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[6]_i_2__7_n_0\,
      D => \count_reg_n_0_[5]\,
      Q => \count_reg_n_0_[6]\,
      R => \count[6]_i_1__7_n_0\
    );
\q_i_1__7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tmp_reg_n_0_[0]\,
      I1 => \count[6]_i_1__7_n_0\,
      I2 => \^q_reg_0\,
      O => \q_i_1__7_n_0\
    );
q_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \q_i_1__7_n_0\,
      Q => \^q_reg_0\,
      R => '0'
    );
\tmp_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => b(0),
      Q => \tmp_reg_n_0_[0]\,
      R => '0'
    );
\tmp_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \tmp_reg_n_0_[0]\,
      Q => \tmp_reg_n_0_[1]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system3_calculator_0_0_debound_38 is
  port (
    q_reg_0 : out STD_LOGIC;
    clk : in STD_LOGIC;
    a : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system3_calculator_0_0_debound_38 : entity is "debound";
end system3_calculator_0_0_debound_38;

architecture STRUCTURE of system3_calculator_0_0_debound_38 is
  signal \count[6]_i_1__8_n_0\ : STD_LOGIC;
  signal \count[6]_i_2__8_n_0\ : STD_LOGIC;
  signal \count[6]_i_3__8_n_0\ : STD_LOGIC;
  signal \count_reg_n_0_[0]\ : STD_LOGIC;
  signal \count_reg_n_0_[1]\ : STD_LOGIC;
  signal \count_reg_n_0_[2]\ : STD_LOGIC;
  signal \count_reg_n_0_[3]\ : STD_LOGIC;
  signal \count_reg_n_0_[4]\ : STD_LOGIC;
  signal \count_reg_n_0_[5]\ : STD_LOGIC;
  signal \count_reg_n_0_[6]\ : STD_LOGIC;
  signal \q_i_1__8_n_0\ : STD_LOGIC;
  signal \^q_reg_0\ : STD_LOGIC;
  signal \tmp_reg_n_0_[0]\ : STD_LOGIC;
  signal \tmp_reg_n_0_[1]\ : STD_LOGIC;
begin
  q_reg_0 <= \^q_reg_0\;
\count[6]_i_1__8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0900000000000000"
    )
        port map (
      I0 => \tmp_reg_n_0_[1]\,
      I1 => \tmp_reg_n_0_[0]\,
      I2 => \count[6]_i_3__8_n_0\,
      I3 => \count_reg_n_0_[5]\,
      I4 => \count_reg_n_0_[4]\,
      I5 => \count_reg_n_0_[6]\,
      O => \count[6]_i_1__8_n_0\
    );
\count[6]_i_2__8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \tmp_reg_n_0_[0]\,
      I1 => \tmp_reg_n_0_[1]\,
      O => \count[6]_i_2__8_n_0\
    );
\count[6]_i_3__8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \count_reg_n_0_[2]\,
      I1 => \count_reg_n_0_[3]\,
      I2 => \count_reg_n_0_[0]\,
      I3 => \count_reg_n_0_[1]\,
      O => \count[6]_i_3__8_n_0\
    );
\count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[6]_i_2__8_n_0\,
      D => '1',
      Q => \count_reg_n_0_[0]\,
      R => \count[6]_i_1__8_n_0\
    );
\count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[6]_i_2__8_n_0\,
      D => \count_reg_n_0_[0]\,
      Q => \count_reg_n_0_[1]\,
      R => \count[6]_i_1__8_n_0\
    );
\count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[6]_i_2__8_n_0\,
      D => \count_reg_n_0_[1]\,
      Q => \count_reg_n_0_[2]\,
      R => \count[6]_i_1__8_n_0\
    );
\count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[6]_i_2__8_n_0\,
      D => \count_reg_n_0_[2]\,
      Q => \count_reg_n_0_[3]\,
      R => \count[6]_i_1__8_n_0\
    );
\count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[6]_i_2__8_n_0\,
      D => \count_reg_n_0_[3]\,
      Q => \count_reg_n_0_[4]\,
      R => \count[6]_i_1__8_n_0\
    );
\count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[6]_i_2__8_n_0\,
      D => \count_reg_n_0_[4]\,
      Q => \count_reg_n_0_[5]\,
      R => \count[6]_i_1__8_n_0\
    );
\count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[6]_i_2__8_n_0\,
      D => \count_reg_n_0_[5]\,
      Q => \count_reg_n_0_[6]\,
      R => \count[6]_i_1__8_n_0\
    );
\q_i_1__8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tmp_reg_n_0_[0]\,
      I1 => \count[6]_i_1__8_n_0\,
      I2 => \^q_reg_0\,
      O => \q_i_1__8_n_0\
    );
q_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \q_i_1__8_n_0\,
      Q => \^q_reg_0\,
      R => '0'
    );
\tmp_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => a(0),
      Q => \tmp_reg_n_0_[0]\,
      R => '0'
    );
\tmp_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \tmp_reg_n_0_[0]\,
      Q => \tmp_reg_n_0_[1]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system3_calculator_0_0_debound_4 is
  port (
    q_reg_0 : out STD_LOGIC;
    clk : in STD_LOGIC;
    a : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system3_calculator_0_0_debound_4 : entity is "debound";
end system3_calculator_0_0_debound_4;

architecture STRUCTURE of system3_calculator_0_0_debound_4 is
  signal \count[6]_i_1__10_n_0\ : STD_LOGIC;
  signal \count[6]_i_2__10_n_0\ : STD_LOGIC;
  signal \count[6]_i_3__10_n_0\ : STD_LOGIC;
  signal \count_reg_n_0_[0]\ : STD_LOGIC;
  signal \count_reg_n_0_[1]\ : STD_LOGIC;
  signal \count_reg_n_0_[2]\ : STD_LOGIC;
  signal \count_reg_n_0_[3]\ : STD_LOGIC;
  signal \count_reg_n_0_[4]\ : STD_LOGIC;
  signal \count_reg_n_0_[5]\ : STD_LOGIC;
  signal \count_reg_n_0_[6]\ : STD_LOGIC;
  signal \q_i_1__10_n_0\ : STD_LOGIC;
  signal \^q_reg_0\ : STD_LOGIC;
  signal \tmp_reg_n_0_[0]\ : STD_LOGIC;
  signal \tmp_reg_n_0_[1]\ : STD_LOGIC;
begin
  q_reg_0 <= \^q_reg_0\;
\count[6]_i_1__10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0900000000000000"
    )
        port map (
      I0 => \tmp_reg_n_0_[1]\,
      I1 => \tmp_reg_n_0_[0]\,
      I2 => \count[6]_i_3__10_n_0\,
      I3 => \count_reg_n_0_[5]\,
      I4 => \count_reg_n_0_[4]\,
      I5 => \count_reg_n_0_[6]\,
      O => \count[6]_i_1__10_n_0\
    );
\count[6]_i_2__10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \tmp_reg_n_0_[0]\,
      I1 => \tmp_reg_n_0_[1]\,
      O => \count[6]_i_2__10_n_0\
    );
\count[6]_i_3__10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \count_reg_n_0_[2]\,
      I1 => \count_reg_n_0_[3]\,
      I2 => \count_reg_n_0_[0]\,
      I3 => \count_reg_n_0_[1]\,
      O => \count[6]_i_3__10_n_0\
    );
\count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[6]_i_2__10_n_0\,
      D => '1',
      Q => \count_reg_n_0_[0]\,
      R => \count[6]_i_1__10_n_0\
    );
\count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[6]_i_2__10_n_0\,
      D => \count_reg_n_0_[0]\,
      Q => \count_reg_n_0_[1]\,
      R => \count[6]_i_1__10_n_0\
    );
\count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[6]_i_2__10_n_0\,
      D => \count_reg_n_0_[1]\,
      Q => \count_reg_n_0_[2]\,
      R => \count[6]_i_1__10_n_0\
    );
\count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[6]_i_2__10_n_0\,
      D => \count_reg_n_0_[2]\,
      Q => \count_reg_n_0_[3]\,
      R => \count[6]_i_1__10_n_0\
    );
\count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[6]_i_2__10_n_0\,
      D => \count_reg_n_0_[3]\,
      Q => \count_reg_n_0_[4]\,
      R => \count[6]_i_1__10_n_0\
    );
\count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[6]_i_2__10_n_0\,
      D => \count_reg_n_0_[4]\,
      Q => \count_reg_n_0_[5]\,
      R => \count[6]_i_1__10_n_0\
    );
\count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[6]_i_2__10_n_0\,
      D => \count_reg_n_0_[5]\,
      Q => \count_reg_n_0_[6]\,
      R => \count[6]_i_1__10_n_0\
    );
\q_i_1__10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tmp_reg_n_0_[0]\,
      I1 => \count[6]_i_1__10_n_0\,
      I2 => \^q_reg_0\,
      O => \q_i_1__10_n_0\
    );
q_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \q_i_1__10_n_0\,
      Q => \^q_reg_0\,
      R => '0'
    );
\tmp_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => a(0),
      Q => \tmp_reg_n_0_[0]\,
      R => '0'
    );
\tmp_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \tmp_reg_n_0_[0]\,
      Q => \tmp_reg_n_0_[1]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system3_calculator_0_0_debound_7 is
  port (
    q_reg_0 : out STD_LOGIC;
    clk : in STD_LOGIC;
    a : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system3_calculator_0_0_debound_7 : entity is "debound";
end system3_calculator_0_0_debound_7;

architecture STRUCTURE of system3_calculator_0_0_debound_7 is
  signal \count[6]_i_1__11_n_0\ : STD_LOGIC;
  signal \count[6]_i_2__11_n_0\ : STD_LOGIC;
  signal \count[6]_i_3__11_n_0\ : STD_LOGIC;
  signal \count_reg_n_0_[0]\ : STD_LOGIC;
  signal \count_reg_n_0_[1]\ : STD_LOGIC;
  signal \count_reg_n_0_[2]\ : STD_LOGIC;
  signal \count_reg_n_0_[3]\ : STD_LOGIC;
  signal \count_reg_n_0_[4]\ : STD_LOGIC;
  signal \count_reg_n_0_[5]\ : STD_LOGIC;
  signal \count_reg_n_0_[6]\ : STD_LOGIC;
  signal \q_i_1__11_n_0\ : STD_LOGIC;
  signal \^q_reg_0\ : STD_LOGIC;
  signal \tmp_reg_n_0_[0]\ : STD_LOGIC;
  signal \tmp_reg_n_0_[1]\ : STD_LOGIC;
begin
  q_reg_0 <= \^q_reg_0\;
\count[6]_i_1__11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0900000000000000"
    )
        port map (
      I0 => \tmp_reg_n_0_[1]\,
      I1 => \tmp_reg_n_0_[0]\,
      I2 => \count[6]_i_3__11_n_0\,
      I3 => \count_reg_n_0_[5]\,
      I4 => \count_reg_n_0_[4]\,
      I5 => \count_reg_n_0_[6]\,
      O => \count[6]_i_1__11_n_0\
    );
\count[6]_i_2__11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \tmp_reg_n_0_[0]\,
      I1 => \tmp_reg_n_0_[1]\,
      O => \count[6]_i_2__11_n_0\
    );
\count[6]_i_3__11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \count_reg_n_0_[2]\,
      I1 => \count_reg_n_0_[3]\,
      I2 => \count_reg_n_0_[0]\,
      I3 => \count_reg_n_0_[1]\,
      O => \count[6]_i_3__11_n_0\
    );
\count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[6]_i_2__11_n_0\,
      D => '1',
      Q => \count_reg_n_0_[0]\,
      R => \count[6]_i_1__11_n_0\
    );
\count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[6]_i_2__11_n_0\,
      D => \count_reg_n_0_[0]\,
      Q => \count_reg_n_0_[1]\,
      R => \count[6]_i_1__11_n_0\
    );
\count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[6]_i_2__11_n_0\,
      D => \count_reg_n_0_[1]\,
      Q => \count_reg_n_0_[2]\,
      R => \count[6]_i_1__11_n_0\
    );
\count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[6]_i_2__11_n_0\,
      D => \count_reg_n_0_[2]\,
      Q => \count_reg_n_0_[3]\,
      R => \count[6]_i_1__11_n_0\
    );
\count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[6]_i_2__11_n_0\,
      D => \count_reg_n_0_[3]\,
      Q => \count_reg_n_0_[4]\,
      R => \count[6]_i_1__11_n_0\
    );
\count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[6]_i_2__11_n_0\,
      D => \count_reg_n_0_[4]\,
      Q => \count_reg_n_0_[5]\,
      R => \count[6]_i_1__11_n_0\
    );
\count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[6]_i_2__11_n_0\,
      D => \count_reg_n_0_[5]\,
      Q => \count_reg_n_0_[6]\,
      R => \count[6]_i_1__11_n_0\
    );
\q_i_1__11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tmp_reg_n_0_[0]\,
      I1 => \count[6]_i_1__11_n_0\,
      I2 => \^q_reg_0\,
      O => \q_i_1__11_n_0\
    );
q_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \q_i_1__11_n_0\,
      Q => \^q_reg_0\,
      R => '0'
    );
\tmp_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => a(0),
      Q => \tmp_reg_n_0_[0]\,
      R => '0'
    );
\tmp_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \tmp_reg_n_0_[0]\,
      Q => \tmp_reg_n_0_[1]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system3_calculator_0_0_flipflop is
  port (
    st : out STD_LOGIC;
    d : in STD_LOGIC;
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system3_calculator_0_0_flipflop : entity is "flipflop";
end system3_calculator_0_0_flipflop;

architecture STRUCTURE of system3_calculator_0_0_flipflop is
begin
st_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => d,
      Q => st,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system3_calculator_0_0_flipflop_0 is
  port (
    \btn[3]_0\ : out STD_LOGIC;
    st_reg_0 : out STD_LOGIC;
    st : in STD_LOGIC;
    clk : in STD_LOGIC;
    p_0_in : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system3_calculator_0_0_flipflop_0 : entity is "flipflop";
end system3_calculator_0_0_flipflop_0;

architecture STRUCTURE of system3_calculator_0_0_flipflop_0 is
  signal \^btn[3]_0\ : STD_LOGIC;
begin
  \btn[3]_0\ <= \^btn[3]_0\;
d_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^btn[3]_0\,
      I1 => p_0_in(0),
      O => st_reg_0
    );
st_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => st,
      Q => \^btn[3]_0\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system3_calculator_0_0_flipflop_11 is
  port (
    st_reg_0 : out STD_LOGIC;
    st_reg_1 : in STD_LOGIC;
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system3_calculator_0_0_flipflop_11 : entity is "flipflop";
end system3_calculator_0_0_flipflop_11;

architecture STRUCTURE of system3_calculator_0_0_flipflop_11 is
begin
st_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => st_reg_1,
      Q => st_reg_0,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system3_calculator_0_0_flipflop_12 is
  port (
    \btn[3]_1\ : out STD_LOGIC;
    st_reg_0 : out STD_LOGIC;
    st_reg_1 : in STD_LOGIC;
    clk : in STD_LOGIC;
    p_0_in : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system3_calculator_0_0_flipflop_12 : entity is "flipflop";
end system3_calculator_0_0_flipflop_12;

architecture STRUCTURE of system3_calculator_0_0_flipflop_12 is
  signal \^btn[3]_1\ : STD_LOGIC;
begin
  \btn[3]_1\ <= \^btn[3]_1\;
\d_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^btn[3]_1\,
      I1 => p_0_in(0),
      O => st_reg_0
    );
st_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => st_reg_1,
      Q => \^btn[3]_1\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system3_calculator_0_0_flipflop_15 is
  port (
    st_reg_0 : out STD_LOGIC;
    st_reg_1 : in STD_LOGIC;
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system3_calculator_0_0_flipflop_15 : entity is "flipflop";
end system3_calculator_0_0_flipflop_15;

architecture STRUCTURE of system3_calculator_0_0_flipflop_15 is
begin
st_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => st_reg_1,
      Q => st_reg_0,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system3_calculator_0_0_flipflop_16 is
  port (
    \btn[3]_2\ : out STD_LOGIC;
    st_reg_0 : out STD_LOGIC;
    st_reg_1 : in STD_LOGIC;
    clk : in STD_LOGIC;
    p_0_in : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system3_calculator_0_0_flipflop_16 : entity is "flipflop";
end system3_calculator_0_0_flipflop_16;

architecture STRUCTURE of system3_calculator_0_0_flipflop_16 is
  signal \^btn[3]_2\ : STD_LOGIC;
begin
  \btn[3]_2\ <= \^btn[3]_2\;
\d_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^btn[3]_2\,
      I1 => p_0_in(0),
      O => st_reg_0
    );
st_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => st_reg_1,
      Q => \^btn[3]_2\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system3_calculator_0_0_flipflop_19 is
  port (
    st_reg_0 : out STD_LOGIC;
    st_reg_1 : in STD_LOGIC;
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system3_calculator_0_0_flipflop_19 : entity is "flipflop";
end system3_calculator_0_0_flipflop_19;

architecture STRUCTURE of system3_calculator_0_0_flipflop_19 is
begin
st_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => st_reg_1,
      Q => st_reg_0,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system3_calculator_0_0_flipflop_2 is
  port (
    st_reg_0 : out STD_LOGIC;
    st_reg_1 : in STD_LOGIC;
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system3_calculator_0_0_flipflop_2 : entity is "flipflop";
end system3_calculator_0_0_flipflop_2;

architecture STRUCTURE of system3_calculator_0_0_flipflop_2 is
begin
st_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => st_reg_1,
      Q => st_reg_0,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system3_calculator_0_0_flipflop_20 is
  port (
    \btn[3]_3\ : out STD_LOGIC;
    st_reg_0 : out STD_LOGIC;
    st_reg_1 : in STD_LOGIC;
    clk : in STD_LOGIC;
    p_0_in : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system3_calculator_0_0_flipflop_20 : entity is "flipflop";
end system3_calculator_0_0_flipflop_20;

architecture STRUCTURE of system3_calculator_0_0_flipflop_20 is
  signal \^btn[3]_3\ : STD_LOGIC;
begin
  \btn[3]_3\ <= \^btn[3]_3\;
\d_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^btn[3]_3\,
      I1 => p_0_in(0),
      O => st_reg_0
    );
st_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => st_reg_1,
      Q => \^btn[3]_3\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system3_calculator_0_0_flipflop_23 is
  port (
    st_reg_0 : out STD_LOGIC;
    st_reg_1 : in STD_LOGIC;
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system3_calculator_0_0_flipflop_23 : entity is "flipflop";
end system3_calculator_0_0_flipflop_23;

architecture STRUCTURE of system3_calculator_0_0_flipflop_23 is
begin
st_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => st_reg_1,
      Q => st_reg_0,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system3_calculator_0_0_flipflop_24 is
  port (
    \btn[3]_4\ : out STD_LOGIC;
    st_reg_0 : out STD_LOGIC;
    st_reg_1 : in STD_LOGIC;
    clk : in STD_LOGIC;
    p_0_in : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system3_calculator_0_0_flipflop_24 : entity is "flipflop";
end system3_calculator_0_0_flipflop_24;

architecture STRUCTURE of system3_calculator_0_0_flipflop_24 is
  signal \^btn[3]_4\ : STD_LOGIC;
begin
  \btn[3]_4\ <= \^btn[3]_4\;
\d_i_1__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^btn[3]_4\,
      I1 => p_0_in(0),
      O => st_reg_0
    );
st_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => st_reg_1,
      Q => \^btn[3]_4\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system3_calculator_0_0_flipflop_27 is
  port (
    st_reg_0 : out STD_LOGIC;
    st_reg_1 : in STD_LOGIC;
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system3_calculator_0_0_flipflop_27 : entity is "flipflop";
end system3_calculator_0_0_flipflop_27;

architecture STRUCTURE of system3_calculator_0_0_flipflop_27 is
begin
st_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => st_reg_1,
      Q => st_reg_0,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system3_calculator_0_0_flipflop_28 is
  port (
    st_reg_0 : out STD_LOGIC;
    st_reg_1 : out STD_LOGIC;
    st_reg_2 : out STD_LOGIC;
    st_reg_3 : out STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 1 downto 0 );
    d_reg : out STD_LOGIC;
    st_reg_4 : in STD_LOGIC;
    clk : in STD_LOGIC;
    \sum_reg[0]\ : in STD_LOGIC;
    p_1_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \sum_reg[1]\ : in STD_LOGIC;
    \sum_reg[1]_0\ : in STD_LOGIC;
    p_12_out : in STD_LOGIC;
    \sum_reg[0]_0\ : in STD_LOGIC;
    \sum_reg[0]_1\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system3_calculator_0_0_flipflop_28 : entity is "flipflop";
end system3_calculator_0_0_flipflop_28;

architecture STRUCTURE of system3_calculator_0_0_flipflop_28 is
  signal \^st_reg_0\ : STD_LOGIC;
  signal \sum[0]_i_10_n_0\ : STD_LOGIC;
  signal \sum[1]_i_7_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \sum[0]_i_15\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \sum[1]_i_7\ : label is "soft_lutpair5";
begin
  st_reg_0 <= \^st_reg_0\;
\i___1_carry_i_6__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7888"
    )
        port map (
      I0 => \^st_reg_0\,
      I1 => p_1_in(1),
      I2 => \sum_reg[0]\,
      I3 => p_1_in(0),
      O => S(1)
    );
\i___1_carry_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^st_reg_0\,
      I1 => p_1_in(0),
      O => S(0)
    );
st_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => st_reg_4,
      Q => \^st_reg_0\,
      R => '0'
    );
\sum[0]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \^st_reg_0\,
      I1 => p_1_in(1),
      I2 => \sum_reg[0]\,
      I3 => p_1_in(0),
      O => \sum[0]_i_10_n_0\
    );
\sum[0]_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30000800"
    )
        port map (
      I0 => \^st_reg_0\,
      I1 => \sum_reg[0]\,
      I2 => p_1_in(1),
      I3 => p_1_in(2),
      I4 => \sum_reg[1]\,
      O => st_reg_1
    );
\sum[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"80800000FF800000"
    )
        port map (
      I0 => \sum[0]_i_10_n_0\,
      I1 => p_12_out,
      I2 => \sum_reg[0]_0\,
      I3 => \sum_reg[0]_1\,
      I4 => p_1_in(2),
      I5 => \sum_reg[0]\,
      O => d_reg
    );
\sum[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000008C888888"
    )
        port map (
      I0 => \sum[1]_i_7_n_0\,
      I1 => \sum_reg[1]_0\,
      I2 => p_1_in(3),
      I3 => p_1_in(1),
      I4 => p_1_in(2),
      I5 => \sum_reg[1]\,
      O => st_reg_2
    );
\sum[1]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0D"
    )
        port map (
      I0 => \^st_reg_0\,
      I1 => p_1_in(1),
      I2 => \sum_reg[0]\,
      O => \sum[1]_i_7_n_0\
    );
\sum[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0D"
    )
        port map (
      I0 => \^st_reg_0\,
      I1 => p_1_in(2),
      I2 => \sum_reg[1]\,
      O => st_reg_3
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system3_calculator_0_0_flipflop_3 is
  port (
    p_1_in : out STD_LOGIC_VECTOR ( 0 to 0 );
    st_reg_0 : out STD_LOGIC;
    st_reg_1 : out STD_LOGIC;
    st_reg_2 : out STD_LOGIC;
    st_reg_3 : out STD_LOGIC;
    st_reg_4 : out STD_LOGIC;
    DI : out STD_LOGIC_VECTOR ( 0 to 0 );
    st_reg_5 : in STD_LOGIC;
    clk : in STD_LOGIC;
    \sum_reg[1]\ : in STD_LOGIC;
    \sum_reg[0]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \i___1_carry_i_5__0\ : in STD_LOGIC;
    \sum_reg[1]_0\ : in STD_LOGIC;
    \sum_reg[0]_0\ : in STD_LOGIC;
    \sum_reg[0]_1\ : in STD_LOGIC;
    \sum_reg[0]_2\ : in STD_LOGIC;
    \sum_reg[1]_1\ : in STD_LOGIC;
    \sum_reg[1]_2\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system3_calculator_0_0_flipflop_3 : entity is "flipflop";
end system3_calculator_0_0_flipflop_3;

architecture STRUCTURE of system3_calculator_0_0_flipflop_3 is
  signal \^p_1_in\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \sum[0]_i_18_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \i___1_carry_i_8__0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \sum[0]_i_18\ : label is "soft_lutpair2";
begin
  p_1_in(0) <= \^p_1_in\(0);
\i___1_carry_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E5307F0070F08000"
    )
        port map (
      I0 => \^p_1_in\(0),
      I1 => \sum_reg[1]\,
      I2 => \sum_reg[0]\(2),
      I3 => \i___1_carry_i_5__0\,
      I4 => \sum_reg[1]_0\,
      I5 => \sum_reg[0]\(1),
      O => st_reg_0
    );
\i___1_carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^p_1_in\(0),
      I1 => \sum_reg[1]_1\,
      O => DI(0)
    );
\i___1_carry_i_8__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^p_1_in\(0),
      I1 => \sum_reg[1]\,
      O => st_reg_1
    );
st_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => st_reg_5,
      Q => \^p_1_in\(0),
      R => '0'
    );
\sum[0]_i_18\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"080F"
    )
        port map (
      I0 => \^p_1_in\(0),
      I1 => \sum_reg[0]\(0),
      I2 => \sum_reg[1]\,
      I3 => \sum_reg[1]_1\,
      O => \sum[0]_i_18_n_0\
    );
\sum[0]_i_24\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^p_1_in\(0),
      I1 => \sum_reg[1]\,
      O => st_reg_4
    );
\sum[0]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBAAAAAAAAAAAAA"
    )
        port map (
      I0 => \sum_reg[0]_0\,
      I1 => \sum_reg[0]_1\,
      I2 => \^p_1_in\(0),
      I3 => \sum[0]_i_18_n_0\,
      I4 => \sum_reg[0]_2\,
      I5 => \sum_reg[0]\(2),
      O => st_reg_2
    );
\sum[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8C8C00000000C000"
    )
        port map (
      I0 => \^p_1_in\(0),
      I1 => \sum_reg[1]_2\,
      I2 => \sum_reg[1]\,
      I3 => \sum_reg[1]_1\,
      I4 => \sum_reg[1]_0\,
      I5 => \sum_reg[0]\(1),
      O => st_reg_3
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system3_calculator_0_0_flipflop_30 is
  port (
    st_reg_0 : out STD_LOGIC;
    st_reg_1 : in STD_LOGIC;
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system3_calculator_0_0_flipflop_30 : entity is "flipflop";
end system3_calculator_0_0_flipflop_30;

architecture STRUCTURE of system3_calculator_0_0_flipflop_30 is
begin
st_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => st_reg_1,
      Q => st_reg_0,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system3_calculator_0_0_flipflop_31 is
  port (
    st_reg_0 : out STD_LOGIC;
    st_reg_1 : out STD_LOGIC;
    st_reg_2 : out STD_LOGIC;
    st_reg_3 : out STD_LOGIC;
    st_reg_4 : out STD_LOGIC;
    DI : out STD_LOGIC_VECTOR ( 0 to 0 );
    st_reg_5 : in STD_LOGIC;
    clk : in STD_LOGIC;
    \sum_reg[0]\ : in STD_LOGIC;
    p_1_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \sum_reg[0]_0\ : in STD_LOGIC;
    \sum_reg[0]_1\ : in STD_LOGIC;
    p_12_out : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system3_calculator_0_0_flipflop_31 : entity is "flipflop";
end system3_calculator_0_0_flipflop_31;

architecture STRUCTURE of system3_calculator_0_0_flipflop_31 is
  signal \^st_reg_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \sum[0]_i_22\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \sum[3]_i_5\ : label is "soft_lutpair6";
begin
  st_reg_0 <= \^st_reg_0\;
\i___1_carry_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7888"
    )
        port map (
      I0 => \^st_reg_0\,
      I1 => p_1_in(1),
      I2 => \sum_reg[0]\,
      I3 => p_1_in(0),
      O => DI(0)
    );
st_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => st_reg_5,
      Q => \^st_reg_0\,
      R => '0'
    );
\sum[0]_i_22\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^st_reg_0\,
      I1 => p_1_in(1),
      O => st_reg_4
    );
\sum[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000101100000000"
    )
        port map (
      I0 => \^st_reg_0\,
      I1 => \sum_reg[0]\,
      I2 => p_1_in(0),
      I3 => \sum_reg[0]_0\,
      I4 => \sum_reg[0]_1\,
      I5 => p_12_out,
      O => st_reg_1
    );
\sum[2]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004000000040004"
    )
        port map (
      I0 => \^st_reg_0\,
      I1 => p_12_out,
      I2 => \sum_reg[0]_1\,
      I3 => \sum_reg[0]\,
      I4 => p_1_in(2),
      I5 => \sum_reg[0]_0\,
      O => st_reg_3
    );
\sum[3]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^st_reg_0\,
      I1 => \sum_reg[0]\,
      O => st_reg_2
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system3_calculator_0_0_flipflop_33 is
  port (
    st_reg_0 : out STD_LOGIC;
    st_reg_1 : in STD_LOGIC;
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system3_calculator_0_0_flipflop_33 : entity is "flipflop";
end system3_calculator_0_0_flipflop_33;

architecture STRUCTURE of system3_calculator_0_0_flipflop_33 is
begin
st_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => st_reg_1,
      Q => st_reg_0,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system3_calculator_0_0_flipflop_34 is
  port (
    st_reg_0 : out STD_LOGIC;
    DI : out STD_LOGIC_VECTOR ( 0 to 0 );
    st_reg_1 : out STD_LOGIC_VECTOR ( 0 to 0 );
    st_reg_2 : out STD_LOGIC;
    st_reg_3 : out STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 0 to 0 );
    st_reg_4 : out STD_LOGIC_VECTOR ( 0 to 0 );
    st_reg_5 : in STD_LOGIC;
    clk : in STD_LOGIC;
    \sum0_inferred__2/i___1_carry\ : in STD_LOGIC;
    \sum0_inferred__2/i___1_carry__0\ : in STD_LOGIC;
    p_1_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \sum0_inferred__2/i___1_carry__0_0\ : in STD_LOGIC;
    \sum0_inferred__2/i___1_carry__0_1\ : in STD_LOGIC;
    \sum0_inferred__2/i___1_carry_0\ : in STD_LOGIC;
    \sum0_inferred__2/i___1_carry__0_2\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system3_calculator_0_0_flipflop_34 : entity is "flipflop";
end system3_calculator_0_0_flipflop_34;

architecture STRUCTURE of system3_calculator_0_0_flipflop_34 is
  signal \^di\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^st_reg_0\ : STD_LOGIC;
  signal \^st_reg_1\ : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \sum[1]_i_6\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \sum[2]_i_5\ : label is "soft_lutpair7";
begin
  DI(0) <= \^di\(0);
  st_reg_0 <= \^st_reg_0\;
  st_reg_1(0) <= \^st_reg_1\(0);
\i___1_carry_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"96663CCC5AAAF000"
    )
        port map (
      I0 => \^st_reg_0\,
      I1 => \sum0_inferred__2/i___1_carry\,
      I2 => \sum0_inferred__2/i___1_carry__0\,
      I3 => p_1_in(0),
      I4 => p_1_in(1),
      I5 => p_1_in(2),
      O => \^di\(0)
    );
\i___1_carry_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0008000000020000"
    )
        port map (
      I0 => \^st_reg_0\,
      I1 => p_1_in(2),
      I2 => \sum0_inferred__2/i___1_carry__0_0\,
      I3 => \sum0_inferred__2/i___1_carry__0_1\,
      I4 => p_1_in(3),
      I5 => \sum0_inferred__2/i___1_carry__0\,
      O => \^st_reg_1\(0)
    );
\i___1_carry_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6A6A956A6A6A6A6A"
    )
        port map (
      I0 => \^di\(0),
      I1 => p_1_in(3),
      I2 => \sum0_inferred__2/i___1_carry_0\,
      I3 => p_1_in(0),
      I4 => \sum0_inferred__2/i___1_carry__0_0\,
      I5 => \^st_reg_0\,
      O => S(0)
    );
\i___1_carry_i_5__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^st_reg_1\(0),
      I1 => \sum0_inferred__2/i___1_carry__0_2\,
      O => st_reg_4(0)
    );
st_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => st_reg_5,
      Q => \^st_reg_0\,
      R => '0'
    );
\sum[1]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^st_reg_0\,
      I1 => p_1_in(2),
      O => st_reg_2
    );
\sum[2]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^st_reg_0\,
      I1 => p_1_in(2),
      O => st_reg_3
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system3_calculator_0_0_flipflop_36 is
  port (
    st_reg_0 : out STD_LOGIC;
    st_reg_1 : in STD_LOGIC;
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system3_calculator_0_0_flipflop_36 : entity is "flipflop";
end system3_calculator_0_0_flipflop_36;

architecture STRUCTURE of system3_calculator_0_0_flipflop_36 is
begin
st_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => st_reg_1,
      Q => st_reg_0,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system3_calculator_0_0_flipflop_37 is
  port (
    st_reg_0 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    st_reg_1 : out STD_LOGIC;
    st_reg_2 : in STD_LOGIC;
    clk : in STD_LOGIC;
    p_1_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    \sum_reg[11]\ : in STD_LOGIC;
    p_10_out : in STD_LOGIC;
    p_12_out : in STD_LOGIC;
    \sum_reg[3]\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system3_calculator_0_0_flipflop_37 : entity is "flipflop";
end system3_calculator_0_0_flipflop_37;

architecture STRUCTURE of system3_calculator_0_0_flipflop_37 is
  signal \^st_reg_0\ : STD_LOGIC;
begin
  st_reg_0 <= \^st_reg_0\;
st_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => st_reg_2,
      Q => \^st_reg_0\,
      R => '0'
    );
\sum[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B200"
    )
        port map (
      I0 => \^st_reg_0\,
      I1 => p_1_in(0),
      I2 => \sum_reg[11]\,
      I3 => p_10_out,
      O => D(0)
    );
\sum[3]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \^st_reg_0\,
      I1 => p_12_out,
      I2 => \sum_reg[3]\,
      O => st_reg_1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system3_calculator_0_0_flipflop_39 is
  port (
    st_reg_0 : out STD_LOGIC;
    st_reg_1 : in STD_LOGIC;
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system3_calculator_0_0_flipflop_39 : entity is "flipflop";
end system3_calculator_0_0_flipflop_39;

architecture STRUCTURE of system3_calculator_0_0_flipflop_39 is
begin
st_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => st_reg_1,
      Q => st_reg_0,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system3_calculator_0_0_flipflop_40 is
  port (
    p_1_in : out STD_LOGIC_VECTOR ( 0 to 0 );
    d_reg : out STD_LOGIC;
    st_reg_0 : out STD_LOGIC;
    st_reg_1 : out STD_LOGIC;
    st_reg_2 : out STD_LOGIC;
    st_reg_3 : out STD_LOGIC;
    st_reg_4 : out STD_LOGIC;
    st_reg_5 : out STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 0 to 0 );
    st_reg_6 : out STD_LOGIC_VECTOR ( 0 to 0 );
    DI : out STD_LOGIC_VECTOR ( 0 to 0 );
    st_reg_7 : in STD_LOGIC;
    clk : in STD_LOGIC;
    \sum_reg[11]\ : in STD_LOGIC;
    \sum_reg[3]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \sum_reg[11]_0\ : in STD_LOGIC;
    \sum_reg[11]_1\ : in STD_LOGIC;
    p_10_out : in STD_LOGIC;
    p_9_out : in STD_LOGIC;
    \sum_reg[2]\ : in STD_LOGIC;
    \sum_reg[3]_0\ : in STD_LOGIC;
    \sum[3]_i_3_0\ : in STD_LOGIC;
    \sum[2]_i_3_0\ : in STD_LOGIC;
    \sum[2]_i_3_1\ : in STD_LOGIC;
    \sum0_inferred__2/i___1_carry__0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system3_calculator_0_0_flipflop_40 : entity is "flipflop";
end system3_calculator_0_0_flipflop_40;

architecture STRUCTURE of system3_calculator_0_0_flipflop_40 is
  signal \^di\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \i___1_carry_i_8_n_0\ : STD_LOGIC;
  signal \^p_1_in\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^st_reg_1\ : STD_LOGIC;
  signal \^st_reg_3\ : STD_LOGIC;
  signal \sum[2]_i_10_n_0\ : STD_LOGIC;
  signal \sum[2]_i_4_n_0\ : STD_LOGIC;
  signal \sum[2]_i_6_n_0\ : STD_LOGIC;
  signal \sum[2]_i_7_n_0\ : STD_LOGIC;
  signal \sum[3]_i_6_n_0\ : STD_LOGIC;
  signal \sum[3]_i_7_n_0\ : STD_LOGIC;
  signal \sum[3]_i_8_n_0\ : STD_LOGIC;
  signal \sum[4]_i_3_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \i___1_carry_i_11\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \i___1_carry_i_7__0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \sum[0]_i_23\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \sum[2]_i_10\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \sum[2]_i_4\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \sum[2]_i_6\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \sum[3]_i_8\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \sum[4]_i_2\ : label is "soft_lutpair8";
begin
  DI(0) <= \^di\(0);
  p_1_in(0) <= \^p_1_in\(0);
  st_reg_1 <= \^st_reg_1\;
  st_reg_3 <= \^st_reg_3\;
\i___1_carry_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^p_1_in\(0),
      I1 => \sum_reg[3]_0\,
      O => \^st_reg_3\
    );
\i___1_carry_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"96695AA56699AA55"
    )
        port map (
      I0 => \i___1_carry_i_8_n_0\,
      I1 => \sum_reg[11]_1\,
      I2 => \sum_reg[3]\(0),
      I3 => \sum0_inferred__2/i___1_carry__0\,
      I4 => \sum_reg[3]\(2),
      I5 => \sum_reg[3]_0\,
      O => \^di\(0)
    );
\i___1_carry_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8777788878887888"
    )
        port map (
      I0 => \^p_1_in\(0),
      I1 => \sum_reg[11]_0\,
      I2 => \sum_reg[3]\(0),
      I3 => \sum_reg[11]_1\,
      I4 => \sum_reg[11]\,
      I5 => \sum_reg[3]\(1),
      O => S(0)
    );
\i___1_carry_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6A55AA6AAA6AAA6A"
    )
        port map (
      I0 => \^di\(0),
      I1 => \sum_reg[3]\(1),
      I2 => \sum_reg[11]_1\,
      I3 => \^st_reg_3\,
      I4 => \sum_reg[3]\(0),
      I5 => \sum_reg[11]_0\,
      O => st_reg_6(0)
    );
\i___1_carry_i_7__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^p_1_in\(0),
      I1 => \sum_reg[11]\,
      O => st_reg_5
    );
\i___1_carry_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \^p_1_in\(0),
      I1 => \sum_reg[11]\,
      I2 => \sum_reg[3]\(2),
      I3 => \sum_reg[11]_0\,
      I4 => \sum_reg[3]\(0),
      I5 => \sum_reg[11]_1\,
      O => \i___1_carry_i_8_n_0\
    );
st_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => st_reg_7,
      Q => \^p_1_in\(0),
      R => '0'
    );
\sum[0]_i_23\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^p_1_in\(0),
      I1 => \sum_reg[11]\,
      O => st_reg_4
    );
\sum[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"40F40000FFFF40F4"
    )
        port map (
      I0 => \^p_1_in\(0),
      I1 => \sum_reg[11]\,
      I2 => \sum_reg[11]_1\,
      I3 => \sum_reg[3]\(0),
      I4 => \sum_reg[11]_0\,
      I5 => \sum_reg[3]\(1),
      O => \^st_reg_1\
    );
\sum[2]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B0FB"
    )
        port map (
      I0 => \^p_1_in\(0),
      I1 => \sum_reg[11]\,
      I2 => \sum_reg[3]\(0),
      I3 => \sum_reg[11]_1\,
      O => \sum[2]_i_10_n_0\
    );
\sum[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF8008800"
    )
        port map (
      I0 => \sum[2]_i_4_n_0\,
      I1 => p_10_out,
      I2 => p_9_out,
      I3 => \sum_reg[2]\,
      I4 => \sum[2]_i_6_n_0\,
      I5 => \sum[2]_i_7_n_0\,
      O => d_reg
    );
\sum[2]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"40F4"
    )
        port map (
      I0 => \^p_1_in\(0),
      I1 => \sum_reg[11]\,
      I2 => \sum_reg[11]_1\,
      I3 => \sum_reg[3]\(0),
      O => \sum[2]_i_4_n_0\
    );
\sum[2]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F880"
    )
        port map (
      I0 => \^p_1_in\(0),
      I1 => \sum_reg[11]\,
      I2 => \sum_reg[11]_1\,
      I3 => \sum_reg[3]\(0),
      O => \sum[2]_i_6_n_0\
    );
\sum[2]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF8F0F0F8F8F0F0"
    )
        port map (
      I0 => \sum[3]_i_8_n_0\,
      I1 => p_9_out,
      I2 => \sum[2]_i_3_0\,
      I3 => p_10_out,
      I4 => \sum[2]_i_3_1\,
      I5 => \sum[2]_i_10_n_0\,
      O => \sum[2]_i_7_n_0\
    );
\sum[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAEEEEFAAAAAAAAA"
    )
        port map (
      I0 => \sum[3]_i_6_n_0\,
      I1 => \sum[3]_i_7_n_0\,
      I2 => \^st_reg_1\,
      I3 => \sum_reg[3]_0\,
      I4 => \sum_reg[3]\(2),
      I5 => p_10_out,
      O => st_reg_0
    );
\sum[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA00000CCF0000"
    )
        port map (
      I0 => \sum[4]_i_3_n_0\,
      I1 => \sum[3]_i_8_n_0\,
      I2 => \sum_reg[11]_0\,
      I3 => \sum_reg[3]\(1),
      I4 => p_9_out,
      I5 => \sum[3]_i_3_0\,
      O => \sum[3]_i_6_n_0\
    );
\sum[3]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B0FB0000FFFFB0FB"
    )
        port map (
      I0 => \^p_1_in\(0),
      I1 => \sum_reg[11]\,
      I2 => \sum_reg[3]\(0),
      I3 => \sum_reg[11]_1\,
      I4 => \sum_reg[3]\(1),
      I5 => \sum_reg[11]_0\,
      O => \sum[3]_i_7_n_0\
    );
\sum[3]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"077F"
    )
        port map (
      I0 => \^p_1_in\(0),
      I1 => \sum_reg[11]\,
      I2 => \sum_reg[11]_1\,
      I3 => \sum_reg[3]\(0),
      O => \sum[3]_i_8_n_0\
    );
\sum[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E800"
    )
        port map (
      I0 => \sum[4]_i_3_n_0\,
      I1 => \sum_reg[3]_0\,
      I2 => \sum_reg[3]\(2),
      I3 => p_9_out,
      O => st_reg_2
    );
\sum[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF880F8800000"
    )
        port map (
      I0 => \^p_1_in\(0),
      I1 => \sum_reg[11]\,
      I2 => \sum_reg[11]_1\,
      I3 => \sum_reg[3]\(0),
      I4 => \sum_reg[11]_0\,
      I5 => \sum_reg[3]\(1),
      O => \sum[4]_i_3_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system3_calculator_0_0_flipflop_5 is
  port (
    st_reg_0 : out STD_LOGIC;
    st_reg_1 : in STD_LOGIC;
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system3_calculator_0_0_flipflop_5 : entity is "flipflop";
end system3_calculator_0_0_flipflop_5;

architecture STRUCTURE of system3_calculator_0_0_flipflop_5 is
begin
st_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => st_reg_1,
      Q => st_reg_0,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system3_calculator_0_0_flipflop_6 is
  port (
    st_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    st_reg_1 : out STD_LOGIC;
    st_reg_2 : out STD_LOGIC;
    st_reg_3 : out STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 0 to 0 );
    st_reg_4 : in STD_LOGIC;
    clk : in STD_LOGIC;
    \sum_reg[0]\ : in STD_LOGIC;
    p_1_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \sum_reg[0]_0\ : in STD_LOGIC;
    \sum_reg[0]_1\ : in STD_LOGIC;
    \sum[0]_i_7_0\ : in STD_LOGIC;
    \sum[0]_i_7_1\ : in STD_LOGIC;
    \sum[0]_i_7_2\ : in STD_LOGIC;
    \i___1_carry_i_3__0\ : in STD_LOGIC;
    \sum0_inferred__2/i___1_carry__0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system3_calculator_0_0_flipflop_6 : entity is "flipflop";
end system3_calculator_0_0_flipflop_6;

architecture STRUCTURE of system3_calculator_0_0_flipflop_6 is
  signal \^st_reg_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \sum[0]_i_13_n_0\ : STD_LOGIC;
  signal \sum[0]_i_16_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \i___1_carry_i_9\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \sum[2]_i_9\ : label is "soft_lutpair3";
begin
  st_reg_0(0) <= \^st_reg_0\(0);
\i___1_carry_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1777808088000000"
    )
        port map (
      I0 => \^st_reg_0\(0),
      I1 => \i___1_carry_i_3__0\,
      I2 => \sum[0]_i_7_1\,
      I3 => p_1_in(1),
      I4 => \sum0_inferred__2/i___1_carry__0\,
      I5 => p_1_in(2),
      O => S(0)
    );
\i___1_carry_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^st_reg_0\(0),
      I1 => \i___1_carry_i_3__0\,
      O => st_reg_3
    );
st_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => st_reg_4,
      Q => \^st_reg_0\(0),
      R => '0'
    );
\sum[0]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4404400040004000"
    )
        port map (
      I0 => \^st_reg_0\(0),
      I1 => \sum[0]_i_7_0\,
      I2 => p_1_in(1),
      I3 => \sum[0]_i_7_1\,
      I4 => \sum[0]_i_7_2\,
      I5 => p_1_in(0),
      O => \sum[0]_i_13_n_0\
    );
\sum[0]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000400040404000"
    )
        port map (
      I0 => \^st_reg_0\(0),
      I1 => \i___1_carry_i_3__0\,
      I2 => \sum[0]_i_7_0\,
      I3 => \sum[0]_i_7_1\,
      I4 => \sum[0]_i_7_2\,
      I5 => p_1_in(1),
      O => \sum[0]_i_16_n_0\
    );
\sum[0]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEFEEEEEE"
    )
        port map (
      I0 => \sum[0]_i_13_n_0\,
      I1 => \sum_reg[0]\,
      I2 => p_1_in(2),
      I3 => \sum_reg[0]_0\,
      I4 => \sum_reg[0]_1\,
      I5 => \sum[0]_i_16_n_0\,
      O => st_reg_1
    );
\sum[2]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^st_reg_0\(0),
      I1 => \i___1_carry_i_3__0\,
      O => st_reg_2
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system3_calculator_0_0_flipflop_8 is
  port (
    st_reg_0 : out STD_LOGIC;
    st_reg_1 : in STD_LOGIC;
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system3_calculator_0_0_flipflop_8 : entity is "flipflop";
end system3_calculator_0_0_flipflop_8;

architecture STRUCTURE of system3_calculator_0_0_flipflop_8 is
begin
st_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => st_reg_1,
      Q => st_reg_0,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system3_calculator_0_0_flipflop_9 is
  port (
    p_1_in : out STD_LOGIC_VECTOR ( 0 to 0 );
    DI : out STD_LOGIC_VECTOR ( 0 to 0 );
    st_reg_0 : out STD_LOGIC;
    st_reg_1 : in STD_LOGIC;
    clk : in STD_LOGIC;
    \sum[0]_i_4\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system3_calculator_0_0_flipflop_9 : entity is "flipflop";
end system3_calculator_0_0_flipflop_9;

architecture STRUCTURE of system3_calculator_0_0_flipflop_9 is
  signal \^p_1_in\ : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  p_1_in(0) <= \^p_1_in\(0);
\i___1_carry_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^p_1_in\(0),
      I1 => \sum[0]_i_4\,
      O => DI(0)
    );
st_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => st_reg_1,
      Q => \^p_1_in\(0),
      R => '0'
    );
\sum[0]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^p_1_in\(0),
      I1 => \sum[0]_i_4\,
      O => st_reg_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system3_calculator_0_0_singlePulse is
  port (
    p_0_in : out STD_LOGIC_VECTOR ( 0 to 0 );
    p_12_out : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 2 downto 0 );
    d_reg_0 : out STD_LOGIC;
    d_reg_1 : out STD_LOGIC;
    d_reg_2 : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    d_reg_3 : out STD_LOGIC;
    \btn[3]_0\ : in STD_LOGIC;
    clk : in STD_LOGIC;
    d_reg_4 : in STD_LOGIC;
    O : in STD_LOGIC_VECTOR ( 2 downto 0 );
    p_11_out : in STD_LOGIC;
    \sum_reg[3]\ : in STD_LOGIC;
    \sum_reg[3]_0\ : in STD_LOGIC;
    \sum_reg[3]_1\ : in STD_LOGIC;
    \sum_reg[1]\ : in STD_LOGIC;
    \sum_reg[1]_0\ : in STD_LOGIC;
    \sum_reg[1]_1\ : in STD_LOGIC;
    \sum_reg[0]\ : in STD_LOGIC;
    \sum_reg[0]_0\ : in STD_LOGIC;
    \sum_reg[0]_1\ : in STD_LOGIC;
    \sum_reg[0]_2\ : in STD_LOGIC;
    p_1_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \sum_reg[3]_2\ : in STD_LOGIC;
    \sum_reg[0]_3\ : in STD_LOGIC;
    \sum[0]_i_7\ : in STD_LOGIC;
    \sum_reg[1]_2\ : in STD_LOGIC;
    \sum_reg[1]_3\ : in STD_LOGIC;
    \sum_reg[1]_4\ : in STD_LOGIC;
    \sum_reg[0]_4\ : in STD_LOGIC;
    p_9_out : in STD_LOGIC;
    p_10_out : in STD_LOGIC;
    p_8_out : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system3_calculator_0_0_singlePulse : entity is "singlePulse";
end system3_calculator_0_0_singlePulse;

architecture STRUCTURE of system3_calculator_0_0_singlePulse is
  signal \^d_reg_0\ : STD_LOGIC;
  signal \^d_reg_2\ : STD_LOGIC;
  signal \^p_12_out\ : STD_LOGIC;
  signal \sum[0]_i_20_n_0\ : STD_LOGIC;
  signal \sum[0]_i_5_n_0\ : STD_LOGIC;
  signal \sum[0]_i_9_n_0\ : STD_LOGIC;
  signal \sum[1]_i_2_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \sum[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \sum[0]_i_12\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \sum[0]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \sum[3]_i_2\ : label is "soft_lutpair1";
begin
  d_reg_0 <= \^d_reg_0\;
  d_reg_2 <= \^d_reg_2\;
  p_12_out <= \^p_12_out\;
d_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d_reg_4,
      Q => \^p_12_out\,
      R => '0'
    );
st_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \btn[3]_0\,
      Q => p_0_in(0),
      R => '0'
    );
\sum[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000004"
    )
        port map (
      I0 => \^p_12_out\,
      I1 => p_8_out,
      I2 => p_11_out,
      I3 => p_9_out,
      I4 => p_10_out,
      O => SR(0)
    );
\sum[0]_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^p_12_out\,
      I1 => \sum_reg[3]_2\,
      O => \^d_reg_2\
    );
\sum[0]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080000080800080"
    )
        port map (
      I0 => \^p_12_out\,
      I1 => p_1_in(3),
      I2 => \sum_reg[3]_2\,
      I3 => \sum_reg[0]_3\,
      I4 => p_1_in(2),
      I5 => \sum[0]_i_7\,
      O => d_reg_1
    );
\sum[0]_i_19\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^p_12_out\,
      I1 => p_1_in(2),
      O => d_reg_3
    );
\sum[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000116"
    )
        port map (
      I0 => \^p_12_out\,
      I1 => p_11_out,
      I2 => p_9_out,
      I3 => p_10_out,
      I4 => p_8_out,
      O => E(0)
    );
\sum[0]_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000A000AC0000000"
    )
        port map (
      I0 => \^d_reg_2\,
      I1 => \^d_reg_0\,
      I2 => \sum_reg[1]_4\,
      I3 => \sum_reg[0]_3\,
      I4 => \sum_reg[1]_2\,
      I5 => p_1_in(1),
      O => \sum[0]_i_20_n_0\
    );
\sum[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \sum_reg[0]\,
      I1 => \sum[0]_i_5_n_0\,
      I2 => \sum_reg[0]_0\,
      I3 => \sum_reg[0]_1\,
      I4 => \sum_reg[0]_2\,
      I5 => \sum[0]_i_9_n_0\,
      O => D(0)
    );
\sum[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000008080000080"
    )
        port map (
      I0 => \^d_reg_2\,
      I1 => p_1_in(0),
      I2 => p_1_in(1),
      I3 => p_1_in(2),
      I4 => \sum_reg[0]_3\,
      I5 => p_1_in(3),
      O => \sum[0]_i_5_n_0\
    );
\sum[0]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBAAABAAABAAA"
    )
        port map (
      I0 => \sum[0]_i_20_n_0\,
      I1 => \sum_reg[1]_4\,
      I2 => p_1_in(0),
      I3 => \sum_reg[0]_4\,
      I4 => p_11_out,
      I5 => O(0),
      O => \sum[0]_i_9_n_0\
    );
\sum[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFEA"
    )
        port map (
      I0 => \sum[1]_i_2_n_0\,
      I1 => p_11_out,
      I2 => O(1),
      I3 => \sum_reg[1]\,
      I4 => \sum_reg[1]_0\,
      I5 => \sum_reg[1]_1\,
      O => D(1)
    );
\sum[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"080808080AFF0A0A"
    )
        port map (
      I0 => \^d_reg_0\,
      I1 => p_1_in(1),
      I2 => \sum_reg[1]_2\,
      I3 => \sum_reg[1]_3\,
      I4 => \^d_reg_2\,
      I5 => \sum_reg[1]_4\,
      O => \sum[1]_i_2_n_0\
    );
\sum[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEAFFC0FFC0"
    )
        port map (
      I0 => \^d_reg_0\,
      I1 => O(2),
      I2 => p_11_out,
      I3 => \sum_reg[3]\,
      I4 => \sum_reg[3]_0\,
      I5 => \sum_reg[3]_1\,
      O => D(2)
    );
\sum[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^p_12_out\,
      I1 => p_1_in(3),
      I2 => \sum_reg[3]_2\,
      O => \^d_reg_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system3_calculator_0_0_singlePulse_13 is
  port (
    p_11_out : out STD_LOGIC;
    p_0_in : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 3 downto 0 );
    d_reg_0 : in STD_LOGIC;
    clk : in STD_LOGIC;
    \btn[3]_1\ : in STD_LOGIC;
    sum0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \sum_reg[2]\ : in STD_LOGIC;
    \sum_reg[2]_0\ : in STD_LOGIC;
    \sum_reg[2]_1\ : in STD_LOGIC;
    \sum_reg[7]\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system3_calculator_0_0_singlePulse_13 : entity is "singlePulse";
end system3_calculator_0_0_singlePulse_13;

architecture STRUCTURE of system3_calculator_0_0_singlePulse_13 is
  signal \^p_11_out\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \sum[6]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \sum[7]_i_1\ : label is "soft_lutpair4";
begin
  p_11_out <= \^p_11_out\;
d_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d_reg_0,
      Q => \^p_11_out\,
      R => '0'
    );
st_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \btn[3]_1\,
      Q => p_0_in(0),
      R => '0'
    );
\sum[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \^p_11_out\,
      I1 => sum0(0),
      I2 => \sum_reg[2]\,
      I3 => \sum_reg[2]_0\,
      I4 => \sum_reg[2]_1\,
      O => D(0)
    );
\sum[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => \^p_11_out\,
      I1 => sum0(1),
      I2 => \sum_reg[7]\,
      O => D(1)
    );
\sum[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => \^p_11_out\,
      I1 => sum0(2),
      I2 => \sum_reg[7]\,
      O => D(2)
    );
\sum[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => \^p_11_out\,
      I1 => sum0(3),
      I2 => \sum_reg[7]\,
      O => D(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system3_calculator_0_0_singlePulse_17 is
  port (
    p_10_out : out STD_LOGIC;
    p_0_in : out STD_LOGIC_VECTOR ( 0 to 0 );
    st_reg_0 : out STD_LOGIC;
    st_reg_1 : out STD_LOGIC;
    d_reg_0 : out STD_LOGIC;
    d_reg_1 : in STD_LOGIC;
    clk : in STD_LOGIC;
    \btn[3]_2\ : in STD_LOGIC;
    \sum_reg[1]\ : in STD_LOGIC;
    p_1_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \sum_reg[1]_0\ : in STD_LOGIC;
    \sum_reg[1]_1\ : in STD_LOGIC;
    \sum[1]_i_5_0\ : in STD_LOGIC;
    p_9_out : in STD_LOGIC;
    \sum[0]_i_8\ : in STD_LOGIC;
    p_12_out : in STD_LOGIC;
    \sum[0]_i_8_0\ : in STD_LOGIC;
    \sum[0]_i_8_1\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system3_calculator_0_0_singlePulse_17 : entity is "singlePulse";
end system3_calculator_0_0_singlePulse_17;

architecture STRUCTURE of system3_calculator_0_0_singlePulse_17 is
  signal \^d_reg_0\ : STD_LOGIC;
  signal \^p_10_out\ : STD_LOGIC;
  signal \sum[1]_i_8_n_0\ : STD_LOGIC;
begin
  d_reg_0 <= \^d_reg_0\;
  p_10_out <= \^p_10_out\;
d_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d_reg_1,
      Q => \^p_10_out\,
      R => '0'
    );
st_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \btn[3]_2\,
      Q => p_0_in(0),
      R => '0'
    );
\sum[0]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3000AAAA0000AAAA"
    )
        port map (
      I0 => \^d_reg_0\,
      I1 => \sum[0]_i_8\,
      I2 => p_1_in(3),
      I3 => p_12_out,
      I4 => \sum[0]_i_8_0\,
      I5 => \sum[0]_i_8_1\,
      O => st_reg_1
    );
\sum[0]_i_21\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^p_10_out\,
      I1 => p_9_out,
      O => \^d_reg_0\
    );
\sum[1]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFBAAA"
    )
        port map (
      I0 => \sum[1]_i_8_n_0\,
      I1 => \sum_reg[1]\,
      I2 => p_1_in(2),
      I3 => \sum_reg[1]_0\,
      I4 => \sum_reg[1]_1\,
      O => st_reg_0
    );
\sum[1]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EB28282882822828"
    )
        port map (
      I0 => \^p_10_out\,
      I1 => \sum[1]_i_5_0\,
      I2 => p_1_in(1),
      I3 => p_9_out,
      I4 => \sum_reg[1]\,
      I5 => p_1_in(0),
      O => \sum[1]_i_8_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system3_calculator_0_0_singlePulse_21 is
  port (
    p_9_out : out STD_LOGIC;
    p_0_in : out STD_LOGIC_VECTOR ( 0 to 0 );
    d_reg_0 : out STD_LOGIC;
    d_reg_1 : in STD_LOGIC;
    clk : in STD_LOGIC;
    \btn[3]_3\ : in STD_LOGIC;
    p_1_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \sum[1]_i_5\ : in STD_LOGIC;
    \sum[1]_i_5_0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system3_calculator_0_0_singlePulse_21 : entity is "singlePulse";
end system3_calculator_0_0_singlePulse_21;

architecture STRUCTURE of system3_calculator_0_0_singlePulse_21 is
  signal \^p_9_out\ : STD_LOGIC;
begin
  p_9_out <= \^p_9_out\;
d_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d_reg_1,
      Q => \^p_9_out\,
      R => '0'
    );
st_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \btn[3]_3\,
      Q => p_0_in(0),
      R => '0'
    );
\sum[1]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"002A2A00"
    )
        port map (
      I0 => \^p_9_out\,
      I1 => p_1_in(0),
      I2 => \sum[1]_i_5\,
      I3 => \sum[1]_i_5_0\,
      I4 => p_1_in(1),
      O => d_reg_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system3_calculator_0_0_singlePulse_25 is
  port (
    p_8_out : out STD_LOGIC;
    p_0_in : out STD_LOGIC_VECTOR ( 0 to 0 );
    d_reg_0 : in STD_LOGIC;
    clk : in STD_LOGIC;
    \btn[3]_4\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system3_calculator_0_0_singlePulse_25 : entity is "singlePulse";
end system3_calculator_0_0_singlePulse_25;

architecture STRUCTURE of system3_calculator_0_0_singlePulse_25 is
begin
d_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d_reg_0,
      Q => p_8_out,
      R => '0'
    );
st_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \btn[3]_4\,
      Q => p_0_in(0),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system3_calculator_0_0_calculator is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 11 downto 0 );
    clk : in STD_LOGIC;
    devide : in STD_LOGIC;
    multiply : in STD_LOGIC;
    sub : in STD_LOGIC;
    add : in STD_LOGIC;
    clear : in STD_LOGIC;
    b : in STD_LOGIC_VECTOR ( 3 downto 0 );
    a : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system3_calculator_0_0_calculator : entity is "calculator";
end system3_calculator_0_0_calculator;

architecture STRUCTURE of system3_calculator_0_0_calculator is
  signal \btn[3]_0\ : STD_LOGIC;
  signal \btn[3]_1\ : STD_LOGIC;
  signal \btn[3]_2\ : STD_LOGIC;
  signal \btn[3]_3\ : STD_LOGIC;
  signal \btn[3]_4\ : STD_LOGIC;
  signal d : STD_LOGIC;
  signal \genblk1[0].ff1_n_1\ : STD_LOGIC;
  signal \genblk1[0].sp_n_10\ : STD_LOGIC;
  signal \genblk1[0].sp_n_2\ : STD_LOGIC;
  signal \genblk1[0].sp_n_3\ : STD_LOGIC;
  signal \genblk1[0].sp_n_4\ : STD_LOGIC;
  signal \genblk1[0].sp_n_5\ : STD_LOGIC;
  signal \genblk1[0].sp_n_6\ : STD_LOGIC;
  signal \genblk1[0].sp_n_7\ : STD_LOGIC;
  signal \genblk1[0].sp_n_8\ : STD_LOGIC;
  signal \genblk1[10].db_n_0\ : STD_LOGIC;
  signal \genblk1[10].ff0_n_0\ : STD_LOGIC;
  signal \genblk1[10].ff1_n_1\ : STD_LOGIC;
  signal \genblk1[10].ff1_n_2\ : STD_LOGIC;
  signal \genblk1[10].ff1_n_3\ : STD_LOGIC;
  signal \genblk1[10].ff1_n_4\ : STD_LOGIC;
  signal \genblk1[10].ff1_n_5\ : STD_LOGIC;
  signal \genblk1[10].ff1_n_6\ : STD_LOGIC;
  signal \genblk1[11].db_n_0\ : STD_LOGIC;
  signal \genblk1[11].ff0_n_0\ : STD_LOGIC;
  signal \genblk1[11].ff1_n_1\ : STD_LOGIC;
  signal \genblk1[11].ff1_n_2\ : STD_LOGIC;
  signal \genblk1[11].ff1_n_3\ : STD_LOGIC;
  signal \genblk1[11].ff1_n_4\ : STD_LOGIC;
  signal \genblk1[12].db_n_0\ : STD_LOGIC;
  signal \genblk1[12].ff0_n_0\ : STD_LOGIC;
  signal \genblk1[12].ff1_n_1\ : STD_LOGIC;
  signal \genblk1[12].ff1_n_2\ : STD_LOGIC;
  signal \genblk1[1].db_n_0\ : STD_LOGIC;
  signal \genblk1[1].ff0_n_0\ : STD_LOGIC;
  signal \genblk1[1].ff1_n_1\ : STD_LOGIC;
  signal \genblk1[1].sp_n_2\ : STD_LOGIC;
  signal \genblk1[1].sp_n_3\ : STD_LOGIC;
  signal \genblk1[1].sp_n_4\ : STD_LOGIC;
  signal \genblk1[1].sp_n_5\ : STD_LOGIC;
  signal \genblk1[2].db_n_0\ : STD_LOGIC;
  signal \genblk1[2].ff0_n_0\ : STD_LOGIC;
  signal \genblk1[2].ff1_n_1\ : STD_LOGIC;
  signal \genblk1[2].sp_n_2\ : STD_LOGIC;
  signal \genblk1[2].sp_n_3\ : STD_LOGIC;
  signal \genblk1[2].sp_n_4\ : STD_LOGIC;
  signal \genblk1[3].db_n_0\ : STD_LOGIC;
  signal \genblk1[3].ff0_n_0\ : STD_LOGIC;
  signal \genblk1[3].ff1_n_1\ : STD_LOGIC;
  signal \genblk1[3].sp_n_2\ : STD_LOGIC;
  signal \genblk1[4].db_n_0\ : STD_LOGIC;
  signal \genblk1[4].ff0_n_0\ : STD_LOGIC;
  signal \genblk1[4].ff1_n_1\ : STD_LOGIC;
  signal \genblk1[5].db_n_0\ : STD_LOGIC;
  signal \genblk1[5].ff0_n_0\ : STD_LOGIC;
  signal \genblk1[5].ff1_n_0\ : STD_LOGIC;
  signal \genblk1[5].ff1_n_1\ : STD_LOGIC;
  signal \genblk1[5].ff1_n_2\ : STD_LOGIC;
  signal \genblk1[5].ff1_n_3\ : STD_LOGIC;
  signal \genblk1[5].ff1_n_4\ : STD_LOGIC;
  signal \genblk1[5].ff1_n_5\ : STD_LOGIC;
  signal \genblk1[5].ff1_n_6\ : STD_LOGIC;
  signal \genblk1[6].db_n_0\ : STD_LOGIC;
  signal \genblk1[6].ff0_n_0\ : STD_LOGIC;
  signal \genblk1[6].ff1_n_0\ : STD_LOGIC;
  signal \genblk1[6].ff1_n_1\ : STD_LOGIC;
  signal \genblk1[6].ff1_n_2\ : STD_LOGIC;
  signal \genblk1[6].ff1_n_3\ : STD_LOGIC;
  signal \genblk1[6].ff1_n_4\ : STD_LOGIC;
  signal \genblk1[6].ff1_n_5\ : STD_LOGIC;
  signal \genblk1[7].db_n_0\ : STD_LOGIC;
  signal \genblk1[7].ff0_n_0\ : STD_LOGIC;
  signal \genblk1[7].ff1_n_0\ : STD_LOGIC;
  signal \genblk1[7].ff1_n_1\ : STD_LOGIC;
  signal \genblk1[7].ff1_n_2\ : STD_LOGIC;
  signal \genblk1[7].ff1_n_3\ : STD_LOGIC;
  signal \genblk1[7].ff1_n_4\ : STD_LOGIC;
  signal \genblk1[7].ff1_n_5\ : STD_LOGIC;
  signal \genblk1[7].ff1_n_6\ : STD_LOGIC;
  signal \genblk1[8].db_n_0\ : STD_LOGIC;
  signal \genblk1[8].ff0_n_0\ : STD_LOGIC;
  signal \genblk1[8].ff1_n_0\ : STD_LOGIC;
  signal \genblk1[8].ff1_n_1\ : STD_LOGIC;
  signal \genblk1[8].ff1_n_2\ : STD_LOGIC;
  signal \genblk1[9].db_n_0\ : STD_LOGIC;
  signal \genblk1[9].ff0_n_0\ : STD_LOGIC;
  signal \genblk1[9].ff1_n_1\ : STD_LOGIC;
  signal \genblk1[9].ff1_n_10\ : STD_LOGIC;
  signal \genblk1[9].ff1_n_2\ : STD_LOGIC;
  signal \genblk1[9].ff1_n_3\ : STD_LOGIC;
  signal \genblk1[9].ff1_n_4\ : STD_LOGIC;
  signal \genblk1[9].ff1_n_5\ : STD_LOGIC;
  signal \genblk1[9].ff1_n_6\ : STD_LOGIC;
  signal \genblk1[9].ff1_n_7\ : STD_LOGIC;
  signal \genblk1[9].ff1_n_8\ : STD_LOGIC;
  signal \genblk1[9].ff1_n_9\ : STD_LOGIC;
  signal \i___16_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \i___16_carry_i_1_n_0\ : STD_LOGIC;
  signal \i___16_carry_i_2_n_0\ : STD_LOGIC;
  signal \i___16_carry_i_3_n_0\ : STD_LOGIC;
  signal \i___16_carry_i_4_n_0\ : STD_LOGIC;
  signal \i___16_carry_i_5_n_0\ : STD_LOGIC;
  signal \i___30_carry_i_1__0_n_0\ : STD_LOGIC;
  signal \i___30_carry_i_1__1_n_0\ : STD_LOGIC;
  signal \i___30_carry_i_1_n_0\ : STD_LOGIC;
  signal \i___30_carry_i_2__0_n_0\ : STD_LOGIC;
  signal \i___30_carry_i_2__1_n_0\ : STD_LOGIC;
  signal \i___30_carry_i_2_n_0\ : STD_LOGIC;
  signal \i___30_carry_i_3__0_n_0\ : STD_LOGIC;
  signal \i___30_carry_i_3__1_n_0\ : STD_LOGIC;
  signal \i___30_carry_i_3_n_0\ : STD_LOGIC;
  signal \i___30_carry_i_4__0_n_0\ : STD_LOGIC;
  signal \i___30_carry_i_4__1_n_0\ : STD_LOGIC;
  signal \i___30_carry_i_4_n_0\ : STD_LOGIC;
  signal \i___30_carry_i_5__0_n_0\ : STD_LOGIC;
  signal \i___30_carry_i_5_n_0\ : STD_LOGIC;
  signal \i___30_carry_i_6__0_n_0\ : STD_LOGIC;
  signal \i___30_carry_i_6_n_0\ : STD_LOGIC;
  signal \i___30_carry_i_7__0_n_0\ : STD_LOGIC;
  signal \i___30_carry_i_7_n_0\ : STD_LOGIC;
  signal \i___30_carry_i_8_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_1_n_0\ : STD_LOGIC;
  signal \i__carry_i_1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3_n_0\ : STD_LOGIC;
  signal \^out\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \out1_inferred__0/i___16_carry__0_n_2\ : STD_LOGIC;
  signal \out1_inferred__0/i___16_carry__0_n_7\ : STD_LOGIC;
  signal \out1_inferred__0/i___16_carry_n_0\ : STD_LOGIC;
  signal \out1_inferred__0/i___16_carry_n_1\ : STD_LOGIC;
  signal \out1_inferred__0/i___16_carry_n_2\ : STD_LOGIC;
  signal \out1_inferred__0/i___16_carry_n_3\ : STD_LOGIC;
  signal \out1_inferred__0/i___16_carry_n_4\ : STD_LOGIC;
  signal \out1_inferred__0/i___16_carry_n_5\ : STD_LOGIC;
  signal \out1_inferred__0/i___16_carry_n_6\ : STD_LOGIC;
  signal \out1_inferred__0/i___16_carry_n_7\ : STD_LOGIC;
  signal \out1_inferred__0/i___30_carry__0_n_0\ : STD_LOGIC;
  signal \out1_inferred__0/i___30_carry__0_n_1\ : STD_LOGIC;
  signal \out1_inferred__0/i___30_carry__0_n_2\ : STD_LOGIC;
  signal \out1_inferred__0/i___30_carry__0_n_3\ : STD_LOGIC;
  signal \out1_inferred__0/i___30_carry__1_n_2\ : STD_LOGIC;
  signal \out1_inferred__0/i___30_carry__1_n_3\ : STD_LOGIC;
  signal \out1_inferred__0/i___30_carry_n_0\ : STD_LOGIC;
  signal \out1_inferred__0/i___30_carry_n_1\ : STD_LOGIC;
  signal \out1_inferred__0/i___30_carry_n_2\ : STD_LOGIC;
  signal \out1_inferred__0/i___30_carry_n_3\ : STD_LOGIC;
  signal \out1_inferred__0/i__carry__0_n_0\ : STD_LOGIC;
  signal \out1_inferred__0/i__carry__0_n_1\ : STD_LOGIC;
  signal \out1_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \out1_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \out1_inferred__0/i__carry__1_n_2\ : STD_LOGIC;
  signal \out1_inferred__0/i__carry__1_n_7\ : STD_LOGIC;
  signal \out1_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \out1_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \out1_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \out1_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \out[1]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \out[1]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \out[2]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \out[2]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \out[2]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \out[2]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \out[2]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \out[2]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \out[3]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \out[3]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \out[3]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \out[3]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \out[3]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \out[3]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \out[4]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \out[4]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \out[4]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \out[4]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \out[4]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \out[5]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \out[5]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \out[6]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \out[6]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \out[7]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \out[7]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 1 to 1 );
  signal p_0_in_0 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal p_0_in_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal p_0_in_2 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal p_0_in_3 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal p_10_out : STD_LOGIC;
  signal p_11_out : STD_LOGIC;
  signal p_12_out : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_8_out : STD_LOGIC;
  signal p_9_out : STD_LOGIC;
  signal st : STD_LOGIC;
  signal sum : STD_LOGIC_VECTOR ( 11 downto 1 );
  signal sum0 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \sum0_inferred__2/i___1_carry__0_n_2\ : STD_LOGIC;
  signal \sum0_inferred__2/i___1_carry__0_n_3\ : STD_LOGIC;
  signal \sum0_inferred__2/i___1_carry_n_0\ : STD_LOGIC;
  signal \sum0_inferred__2/i___1_carry_n_1\ : STD_LOGIC;
  signal \sum0_inferred__2/i___1_carry_n_2\ : STD_LOGIC;
  signal \sum0_inferred__2/i___1_carry_n_3\ : STD_LOGIC;
  signal \sum[4]_i_1_n_0\ : STD_LOGIC;
  signal sum_0 : STD_LOGIC;
  signal \NLW_out1_inferred__0/i___16_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_out1_inferred__0/i___16_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_out1_inferred__0/i___30_carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_out1_inferred__0/i___30_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_out1_inferred__0/i___30_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_out1_inferred__0/i___30_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_out1_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_out1_inferred__0/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_out1_inferred__0/i__carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_out1_inferred__0/i__carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_sum0_inferred__2/i___1_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \NLW_sum0_inferred__2/i___1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \out[10]_INST_0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \out[11]_INST_0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \out[1]_INST_0_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \out[1]_INST_0_i_2\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \out[4]_INST_0_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \out[4]_INST_0_i_2\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \out[8]_INST_0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \out[9]_INST_0\ : label is "soft_lutpair13";
begin
  \out\(11 downto 0) <= \^out\(11 downto 0);
\genblk1[0].db\: entity work.system3_calculator_0_0_debound
     port map (
      clk => clk,
      d => d,
      devide => devide
    );
\genblk1[0].ff0\: entity work.system3_calculator_0_0_flipflop
     port map (
      clk => clk,
      d => d,
      st => st
    );
\genblk1[0].ff1\: entity work.system3_calculator_0_0_flipflop_0
     port map (
      \btn[3]_0\ => \btn[3]_0\,
      clk => clk,
      p_0_in(0) => p_0_in(1),
      st => st,
      st_reg_0 => \genblk1[0].ff1_n_1\
    );
\genblk1[0].sp\: entity work.system3_calculator_0_0_singlePulse
     port map (
      D(2) => \genblk1[0].sp_n_2\,
      D(1) => \genblk1[0].sp_n_3\,
      D(0) => \genblk1[0].sp_n_4\,
      E(0) => \genblk1[0].sp_n_8\,
      O(2) => sum0(3),
      O(1 downto 0) => sum0(1 downto 0),
      SR(0) => sum_0,
      \btn[3]_0\ => \btn[3]_0\,
      clk => clk,
      d_reg_0 => \genblk1[0].sp_n_5\,
      d_reg_1 => \genblk1[0].sp_n_6\,
      d_reg_2 => \genblk1[0].sp_n_7\,
      d_reg_3 => \genblk1[0].sp_n_10\,
      d_reg_4 => \genblk1[0].ff1_n_1\,
      p_0_in(0) => p_0_in(1),
      p_10_out => p_10_out,
      p_11_out => p_11_out,
      p_12_out => p_12_out,
      p_1_in(3 downto 0) => p_1_in(3 downto 0),
      p_8_out => p_8_out,
      p_9_out => p_9_out,
      \sum[0]_i_7\ => \genblk1[6].ff1_n_4\,
      \sum_reg[0]\ => \genblk1[5].ff1_n_6\,
      \sum_reg[0]_0\ => \genblk1[6].ff1_n_1\,
      \sum_reg[0]_1\ => \genblk1[11].ff1_n_1\,
      \sum_reg[0]_2\ => \genblk1[10].ff1_n_3\,
      \sum_reg[0]_3\ => \genblk1[7].ff1_n_0\,
      \sum_reg[0]_4\ => \genblk1[2].sp_n_4\,
      \sum_reg[1]\ => \genblk1[5].ff1_n_2\,
      \sum_reg[1]_0\ => \genblk1[10].ff1_n_4\,
      \sum_reg[1]_1\ => \genblk1[2].sp_n_2\,
      \sum_reg[1]_2\ => \genblk1[6].ff1_n_0\,
      \sum_reg[1]_3\ => \genblk1[7].ff1_n_3\,
      \sum_reg[1]_4\ => \genblk1[5].ff1_n_0\,
      \sum_reg[3]\ => \genblk1[9].ff1_n_2\,
      \sum_reg[3]_0\ => \genblk1[8].ff1_n_2\,
      \sum_reg[3]_1\ => \genblk1[6].ff1_n_2\,
      \sum_reg[3]_2\ => \genblk1[8].ff1_n_0\
    );
\genblk1[10].db\: entity work.system3_calculator_0_0_debound_1
     port map (
      a(0) => a(1),
      clk => clk,
      q_reg_0 => \genblk1[10].db_n_0\
    );
\genblk1[10].ff0\: entity work.system3_calculator_0_0_flipflop_2
     port map (
      clk => clk,
      st_reg_0 => \genblk1[10].ff0_n_0\,
      st_reg_1 => \genblk1[10].db_n_0\
    );
\genblk1[10].ff1\: entity work.system3_calculator_0_0_flipflop_3
     port map (
      DI(0) => \genblk1[10].ff1_n_6\,
      clk => clk,
      \i___1_carry_i_5__0\ => \genblk1[8].ff1_n_0\,
      p_1_in(0) => p_1_in(1),
      st_reg_0 => \genblk1[10].ff1_n_1\,
      st_reg_1 => \genblk1[10].ff1_n_2\,
      st_reg_2 => \genblk1[10].ff1_n_3\,
      st_reg_3 => \genblk1[10].ff1_n_4\,
      st_reg_4 => \genblk1[10].ff1_n_5\,
      st_reg_5 => \genblk1[10].ff0_n_0\,
      \sum_reg[0]\(2 downto 1) => p_1_in(3 downto 2),
      \sum_reg[0]\(0) => p_1_in(0),
      \sum_reg[0]_0\ => \genblk1[2].sp_n_3\,
      \sum_reg[0]_1\ => \genblk1[9].ff1_n_5\,
      \sum_reg[0]_2\ => \genblk1[0].sp_n_10\,
      \sum_reg[1]\ => \genblk1[6].ff1_n_0\,
      \sum_reg[1]_0\ => \genblk1[7].ff1_n_0\,
      \sum_reg[1]_1\ => \genblk1[5].ff1_n_0\,
      \sum_reg[1]_2\ => \genblk1[0].sp_n_5\
    );
\genblk1[11].db\: entity work.system3_calculator_0_0_debound_4
     port map (
      a(0) => a(2),
      clk => clk,
      q_reg_0 => \genblk1[11].db_n_0\
    );
\genblk1[11].ff0\: entity work.system3_calculator_0_0_flipflop_5
     port map (
      clk => clk,
      st_reg_0 => \genblk1[11].ff0_n_0\,
      st_reg_1 => \genblk1[11].db_n_0\
    );
\genblk1[11].ff1\: entity work.system3_calculator_0_0_flipflop_6
     port map (
      S(0) => \genblk1[11].ff1_n_4\,
      clk => clk,
      \i___1_carry_i_3__0\ => \genblk1[7].ff1_n_0\,
      p_1_in(2) => p_1_in(3),
      p_1_in(1 downto 0) => p_1_in(1 downto 0),
      st_reg_0(0) => p_1_in(2),
      st_reg_1 => \genblk1[11].ff1_n_1\,
      st_reg_2 => \genblk1[11].ff1_n_2\,
      st_reg_3 => \genblk1[11].ff1_n_3\,
      st_reg_4 => \genblk1[11].ff0_n_0\,
      \sum0_inferred__2/i___1_carry__0\ => \genblk1[8].ff1_n_0\,
      \sum[0]_i_7_0\ => \genblk1[0].sp_n_5\,
      \sum[0]_i_7_1\ => \genblk1[6].ff1_n_0\,
      \sum[0]_i_7_2\ => \genblk1[5].ff1_n_0\,
      \sum_reg[0]\ => \genblk1[0].sp_n_6\,
      \sum_reg[0]_0\ => \genblk1[0].sp_n_7\,
      \sum_reg[0]_1\ => \genblk1[5].ff1_n_1\
    );
\genblk1[12].db\: entity work.system3_calculator_0_0_debound_7
     port map (
      a(0) => a(3),
      clk => clk,
      q_reg_0 => \genblk1[12].db_n_0\
    );
\genblk1[12].ff0\: entity work.system3_calculator_0_0_flipflop_8
     port map (
      clk => clk,
      st_reg_0 => \genblk1[12].ff0_n_0\,
      st_reg_1 => \genblk1[12].db_n_0\
    );
\genblk1[12].ff1\: entity work.system3_calculator_0_0_flipflop_9
     port map (
      DI(0) => \genblk1[12].ff1_n_1\,
      clk => clk,
      p_1_in(0) => p_1_in(3),
      st_reg_0 => \genblk1[12].ff1_n_2\,
      st_reg_1 => \genblk1[12].ff0_n_0\,
      \sum[0]_i_4\ => \genblk1[8].ff1_n_0\
    );
\genblk1[1].db\: entity work.system3_calculator_0_0_debound_10
     port map (
      clk => clk,
      multiply => multiply,
      q_reg_0 => \genblk1[1].db_n_0\
    );
\genblk1[1].ff0\: entity work.system3_calculator_0_0_flipflop_11
     port map (
      clk => clk,
      st_reg_0 => \genblk1[1].ff0_n_0\,
      st_reg_1 => \genblk1[1].db_n_0\
    );
\genblk1[1].ff1\: entity work.system3_calculator_0_0_flipflop_12
     port map (
      \btn[3]_1\ => \btn[3]_1\,
      clk => clk,
      p_0_in(0) => p_0_in_0(1),
      st_reg_0 => \genblk1[1].ff1_n_1\,
      st_reg_1 => \genblk1[1].ff0_n_0\
    );
\genblk1[1].sp\: entity work.system3_calculator_0_0_singlePulse_13
     port map (
      D(3) => \genblk1[1].sp_n_2\,
      D(2) => \genblk1[1].sp_n_3\,
      D(1) => \genblk1[1].sp_n_4\,
      D(0) => \genblk1[1].sp_n_5\,
      \btn[3]_1\ => \btn[3]_1\,
      clk => clk,
      d_reg_0 => \genblk1[1].ff1_n_1\,
      p_0_in(0) => p_0_in_0(1),
      p_11_out => p_11_out,
      sum0(3 downto 1) => sum0(7 downto 5),
      sum0(0) => sum0(2),
      \sum_reg[2]\ => \genblk1[5].ff1_n_3\,
      \sum_reg[2]_0\ => \genblk1[0].sp_n_5\,
      \sum_reg[2]_1\ => \genblk1[9].ff1_n_1\,
      \sum_reg[7]\ => \genblk1[8].ff1_n_1\
    );
\genblk1[2].db\: entity work.system3_calculator_0_0_debound_14
     port map (
      clk => clk,
      q_reg_0 => \genblk1[2].db_n_0\,
      sub => sub
    );
\genblk1[2].ff0\: entity work.system3_calculator_0_0_flipflop_15
     port map (
      clk => clk,
      st_reg_0 => \genblk1[2].ff0_n_0\,
      st_reg_1 => \genblk1[2].db_n_0\
    );
\genblk1[2].ff1\: entity work.system3_calculator_0_0_flipflop_16
     port map (
      \btn[3]_2\ => \btn[3]_2\,
      clk => clk,
      p_0_in(0) => p_0_in_1(1),
      st_reg_0 => \genblk1[2].ff1_n_1\,
      st_reg_1 => \genblk1[2].ff0_n_0\
    );
\genblk1[2].sp\: entity work.system3_calculator_0_0_singlePulse_17
     port map (
      \btn[3]_2\ => \btn[3]_2\,
      clk => clk,
      d_reg_0 => \genblk1[2].sp_n_4\,
      d_reg_1 => \genblk1[2].ff1_n_1\,
      p_0_in(0) => p_0_in_1(1),
      p_10_out => p_10_out,
      p_12_out => p_12_out,
      p_1_in(3 downto 0) => p_1_in(3 downto 0),
      p_9_out => p_9_out,
      st_reg_0 => \genblk1[2].sp_n_2\,
      st_reg_1 => \genblk1[2].sp_n_3\,
      \sum[0]_i_8\ => \genblk1[7].ff1_n_0\,
      \sum[0]_i_8_0\ => \genblk1[9].ff1_n_6\,
      \sum[0]_i_8_1\ => \genblk1[10].ff1_n_5\,
      \sum[1]_i_5_0\ => \genblk1[6].ff1_n_0\,
      \sum_reg[1]\ => \genblk1[5].ff1_n_0\,
      \sum_reg[1]_0\ => \genblk1[0].sp_n_5\,
      \sum_reg[1]_1\ => \genblk1[3].sp_n_2\
    );
\genblk1[3].db\: entity work.system3_calculator_0_0_debound_18
     port map (
      add => add,
      clk => clk,
      q_reg_0 => \genblk1[3].db_n_0\
    );
\genblk1[3].ff0\: entity work.system3_calculator_0_0_flipflop_19
     port map (
      clk => clk,
      st_reg_0 => \genblk1[3].ff0_n_0\,
      st_reg_1 => \genblk1[3].db_n_0\
    );
\genblk1[3].ff1\: entity work.system3_calculator_0_0_flipflop_20
     port map (
      \btn[3]_3\ => \btn[3]_3\,
      clk => clk,
      p_0_in(0) => p_0_in_2(1),
      st_reg_0 => \genblk1[3].ff1_n_1\,
      st_reg_1 => \genblk1[3].ff0_n_0\
    );
\genblk1[3].sp\: entity work.system3_calculator_0_0_singlePulse_21
     port map (
      \btn[3]_3\ => \btn[3]_3\,
      clk => clk,
      d_reg_0 => \genblk1[3].sp_n_2\,
      d_reg_1 => \genblk1[3].ff1_n_1\,
      p_0_in(0) => p_0_in_2(1),
      p_1_in(1 downto 0) => p_1_in(1 downto 0),
      p_9_out => p_9_out,
      \sum[1]_i_5\ => \genblk1[5].ff1_n_0\,
      \sum[1]_i_5_0\ => \genblk1[6].ff1_n_0\
    );
\genblk1[4].db\: entity work.system3_calculator_0_0_debound_22
     port map (
      clear => clear,
      clk => clk,
      q_reg_0 => \genblk1[4].db_n_0\
    );
\genblk1[4].ff0\: entity work.system3_calculator_0_0_flipflop_23
     port map (
      clk => clk,
      st_reg_0 => \genblk1[4].ff0_n_0\,
      st_reg_1 => \genblk1[4].db_n_0\
    );
\genblk1[4].ff1\: entity work.system3_calculator_0_0_flipflop_24
     port map (
      \btn[3]_4\ => \btn[3]_4\,
      clk => clk,
      p_0_in(0) => p_0_in_3(1),
      st_reg_0 => \genblk1[4].ff1_n_1\,
      st_reg_1 => \genblk1[4].ff0_n_0\
    );
\genblk1[4].sp\: entity work.system3_calculator_0_0_singlePulse_25
     port map (
      \btn[3]_4\ => \btn[3]_4\,
      clk => clk,
      d_reg_0 => \genblk1[4].ff1_n_1\,
      p_0_in(0) => p_0_in_3(1),
      p_8_out => p_8_out
    );
\genblk1[5].db\: entity work.system3_calculator_0_0_debound_26
     port map (
      b(0) => b(0),
      clk => clk,
      q_reg_0 => \genblk1[5].db_n_0\
    );
\genblk1[5].ff0\: entity work.system3_calculator_0_0_flipflop_27
     port map (
      clk => clk,
      st_reg_0 => \genblk1[5].ff0_n_0\,
      st_reg_1 => \genblk1[5].db_n_0\
    );
\genblk1[5].ff1\: entity work.system3_calculator_0_0_flipflop_28
     port map (
      S(1) => \genblk1[5].ff1_n_4\,
      S(0) => \genblk1[5].ff1_n_5\,
      clk => clk,
      d_reg => \genblk1[5].ff1_n_6\,
      p_12_out => p_12_out,
      p_1_in(3 downto 0) => p_1_in(3 downto 0),
      st_reg_0 => \genblk1[5].ff1_n_0\,
      st_reg_1 => \genblk1[5].ff1_n_1\,
      st_reg_2 => \genblk1[5].ff1_n_2\,
      st_reg_3 => \genblk1[5].ff1_n_3\,
      st_reg_4 => \genblk1[5].ff0_n_0\,
      \sum_reg[0]\ => \genblk1[6].ff1_n_0\,
      \sum_reg[0]_0\ => \genblk1[12].ff1_n_2\,
      \sum_reg[0]_1\ => \genblk1[8].ff1_n_2\,
      \sum_reg[1]\ => \genblk1[7].ff1_n_0\,
      \sum_reg[1]_0\ => \genblk1[0].sp_n_7\
    );
\genblk1[6].db\: entity work.system3_calculator_0_0_debound_29
     port map (
      b(0) => b(1),
      clk => clk,
      q_reg_0 => \genblk1[6].db_n_0\
    );
\genblk1[6].ff0\: entity work.system3_calculator_0_0_flipflop_30
     port map (
      clk => clk,
      st_reg_0 => \genblk1[6].ff0_n_0\,
      st_reg_1 => \genblk1[6].db_n_0\
    );
\genblk1[6].ff1\: entity work.system3_calculator_0_0_flipflop_31
     port map (
      DI(0) => \genblk1[6].ff1_n_5\,
      clk => clk,
      p_12_out => p_12_out,
      p_1_in(2 downto 0) => p_1_in(2 downto 0),
      st_reg_0 => \genblk1[6].ff1_n_0\,
      st_reg_1 => \genblk1[6].ff1_n_1\,
      st_reg_2 => \genblk1[6].ff1_n_2\,
      st_reg_3 => \genblk1[6].ff1_n_3\,
      st_reg_4 => \genblk1[6].ff1_n_4\,
      st_reg_5 => \genblk1[6].ff0_n_0\,
      \sum_reg[0]\ => \genblk1[7].ff1_n_0\,
      \sum_reg[0]_0\ => \genblk1[5].ff1_n_0\,
      \sum_reg[0]_1\ => \genblk1[8].ff1_n_0\
    );
\genblk1[7].db\: entity work.system3_calculator_0_0_debound_32
     port map (
      b(0) => b(2),
      clk => clk,
      q_reg_0 => \genblk1[7].db_n_0\
    );
\genblk1[7].ff0\: entity work.system3_calculator_0_0_flipflop_33
     port map (
      clk => clk,
      st_reg_0 => \genblk1[7].ff0_n_0\,
      st_reg_1 => \genblk1[7].db_n_0\
    );
\genblk1[7].ff1\: entity work.system3_calculator_0_0_flipflop_34
     port map (
      DI(0) => \genblk1[7].ff1_n_1\,
      S(0) => \genblk1[7].ff1_n_5\,
      clk => clk,
      p_1_in(3 downto 0) => p_1_in(3 downto 0),
      st_reg_0 => \genblk1[7].ff1_n_0\,
      st_reg_1(0) => \genblk1[7].ff1_n_2\,
      st_reg_2 => \genblk1[7].ff1_n_3\,
      st_reg_3 => \genblk1[7].ff1_n_4\,
      st_reg_4(0) => \genblk1[7].ff1_n_6\,
      st_reg_5 => \genblk1[7].ff0_n_0\,
      \sum0_inferred__2/i___1_carry\ => \genblk1[6].ff1_n_0\,
      \sum0_inferred__2/i___1_carry_0\ => \genblk1[5].ff1_n_0\,
      \sum0_inferred__2/i___1_carry__0\ => \genblk1[8].ff1_n_0\,
      \sum0_inferred__2/i___1_carry__0_0\ => \genblk1[10].ff1_n_2\,
      \sum0_inferred__2/i___1_carry__0_1\ => \genblk1[9].ff1_n_7\,
      \sum0_inferred__2/i___1_carry__0_2\ => \genblk1[10].ff1_n_1\
    );
\genblk1[8].db\: entity work.system3_calculator_0_0_debound_35
     port map (
      b(0) => b(3),
      clk => clk,
      q_reg_0 => \genblk1[8].db_n_0\
    );
\genblk1[8].ff0\: entity work.system3_calculator_0_0_flipflop_36
     port map (
      clk => clk,
      st_reg_0 => \genblk1[8].ff0_n_0\,
      st_reg_1 => \genblk1[8].db_n_0\
    );
\genblk1[8].ff1\: entity work.system3_calculator_0_0_flipflop_37
     port map (
      D(0) => \genblk1[8].ff1_n_1\,
      clk => clk,
      p_10_out => p_10_out,
      p_12_out => p_12_out,
      p_1_in(0) => p_1_in(3),
      st_reg_0 => \genblk1[8].ff1_n_0\,
      st_reg_1 => \genblk1[8].ff1_n_2\,
      st_reg_2 => \genblk1[8].ff0_n_0\,
      \sum_reg[11]\ => \genblk1[9].ff1_n_3\,
      \sum_reg[3]\ => \genblk1[5].ff1_n_0\
    );
\genblk1[9].db\: entity work.system3_calculator_0_0_debound_38
     port map (
      a(0) => a(0),
      clk => clk,
      q_reg_0 => \genblk1[9].db_n_0\
    );
\genblk1[9].ff0\: entity work.system3_calculator_0_0_flipflop_39
     port map (
      clk => clk,
      st_reg_0 => \genblk1[9].ff0_n_0\,
      st_reg_1 => \genblk1[9].db_n_0\
    );
\genblk1[9].ff1\: entity work.system3_calculator_0_0_flipflop_40
     port map (
      DI(0) => \genblk1[9].ff1_n_10\,
      S(0) => \genblk1[9].ff1_n_8\,
      clk => clk,
      d_reg => \genblk1[9].ff1_n_1\,
      p_10_out => p_10_out,
      p_1_in(0) => p_1_in(0),
      p_9_out => p_9_out,
      st_reg_0 => \genblk1[9].ff1_n_2\,
      st_reg_1 => \genblk1[9].ff1_n_3\,
      st_reg_2 => \genblk1[9].ff1_n_4\,
      st_reg_3 => \genblk1[9].ff1_n_5\,
      st_reg_4 => \genblk1[9].ff1_n_6\,
      st_reg_5 => \genblk1[9].ff1_n_7\,
      st_reg_6(0) => \genblk1[9].ff1_n_9\,
      st_reg_7 => \genblk1[9].ff0_n_0\,
      \sum0_inferred__2/i___1_carry__0\ => \genblk1[11].ff1_n_3\,
      \sum[2]_i_3_0\ => \genblk1[6].ff1_n_3\,
      \sum[2]_i_3_1\ => \genblk1[11].ff1_n_2\,
      \sum[3]_i_3_0\ => \genblk1[12].ff1_n_2\,
      \sum_reg[11]\ => \genblk1[5].ff1_n_0\,
      \sum_reg[11]_0\ => \genblk1[7].ff1_n_0\,
      \sum_reg[11]_1\ => \genblk1[6].ff1_n_0\,
      \sum_reg[2]\ => \genblk1[7].ff1_n_4\,
      \sum_reg[3]\(2 downto 0) => p_1_in(3 downto 1),
      \sum_reg[3]_0\ => \genblk1[8].ff1_n_0\
    );
\i___16_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \out1_inferred__0/i__carry__1_n_2\,
      I1 => sum(11),
      O => \i___16_carry__0_i_1_n_0\
    );
\i___16_carry_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \out1_inferred__0/i__carry__1_n_7\,
      O => \i___16_carry_i_1_n_0\
    );
\i___16_carry_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \out1_inferred__0/i__carry__1_n_7\,
      O => \i___16_carry_i_2_n_0\
    );
\i___16_carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \out1_inferred__0/i__carry__1_n_7\,
      I1 => \out1_inferred__0/i__carry__1_n_2\,
      O => \i___16_carry_i_3_n_0\
    );
\i___16_carry_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \out1_inferred__0/i__carry__1_n_7\,
      O => \i___16_carry_i_4_n_0\
    );
\i___16_carry_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \out1_inferred__0/i__carry__1_n_2\,
      I1 => \out1_inferred__0/i__carry__1_n_7\,
      O => \i___16_carry_i_5_n_0\
    );
\i___30_carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sum(11),
      I1 => sum(4),
      O => \i___30_carry_i_1_n_0\
    );
\i___30_carry_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \out1_inferred__0/i___16_carry_n_4\,
      I1 => sum(11),
      O => \i___30_carry_i_1__0_n_0\
    );
\i___30_carry_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sum(11),
      I1 => \out1_inferred__0/i___16_carry__0_n_2\,
      O => \i___30_carry_i_1__1_n_0\
    );
\i___30_carry_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \out1_inferred__0/i___16_carry_n_5\,
      I1 => sum(7),
      O => \i___30_carry_i_2_n_0\
    );
\i___30_carry_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \out1_inferred__0/i___16_carry__0_n_7\,
      I1 => sum(11),
      O => \i___30_carry_i_2__0_n_0\
    );
\i___30_carry_i_2__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \out1_inferred__0/i__carry__1_n_2\,
      I1 => sum(3),
      O => \i___30_carry_i_2__1_n_0\
    );
\i___30_carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \out1_inferred__0/i__carry__1_n_7\,
      I1 => sum(2),
      O => \i___30_carry_i_3_n_0\
    );
\i___30_carry_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \out1_inferred__0/i___16_carry_n_6\,
      I1 => sum(6),
      O => \i___30_carry_i_3__0_n_0\
    );
\i___30_carry_i_3__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => sum(11),
      I1 => \out1_inferred__0/i___16_carry__0_n_2\,
      O => \i___30_carry_i_3__1_n_0\
    );
\i___30_carry_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \out1_inferred__0/i___16_carry_n_7\,
      I1 => sum(5),
      O => \i___30_carry_i_4_n_0\
    );
\i___30_carry_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4BB4"
    )
        port map (
      I0 => sum(4),
      I1 => sum(11),
      I2 => \out1_inferred__0/i___16_carry_n_7\,
      I3 => sum(5),
      O => \i___30_carry_i_4__0_n_0\
    );
\i___30_carry_i_4__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1E"
    )
        port map (
      I0 => \out1_inferred__0/i___16_carry__0_n_7\,
      I1 => sum(11),
      I2 => \out1_inferred__0/i___16_carry__0_n_2\,
      O => \i___30_carry_i_4__1_n_0\
    );
\i___30_carry_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => sum(3),
      I1 => \out1_inferred__0/i__carry__1_n_2\,
      I2 => sum(11),
      I3 => sum(4),
      O => \i___30_carry_i_5_n_0\
    );
\i___30_carry_i_5__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C9"
    )
        port map (
      I0 => \out1_inferred__0/i___16_carry_n_4\,
      I1 => \out1_inferred__0/i___16_carry__0_n_7\,
      I2 => sum(11),
      O => \i___30_carry_i_5__0_n_0\
    );
\i___30_carry_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2DD2"
    )
        port map (
      I0 => sum(2),
      I1 => \out1_inferred__0/i__carry__1_n_7\,
      I2 => sum(3),
      I3 => \out1_inferred__0/i__carry__1_n_2\,
      O => \i___30_carry_i_6_n_0\
    );
\i___30_carry_i_6__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => sum(7),
      I1 => \out1_inferred__0/i___16_carry_n_5\,
      I2 => \out1_inferred__0/i___16_carry_n_4\,
      I3 => sum(11),
      O => \i___30_carry_i_6__0_n_0\
    );
\i___30_carry_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sum(2),
      I1 => \out1_inferred__0/i__carry__1_n_7\,
      O => \i___30_carry_i_7_n_0\
    );
\i___30_carry_i_7__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2DD2"
    )
        port map (
      I0 => sum(6),
      I1 => \out1_inferred__0/i___16_carry_n_6\,
      I2 => \out1_inferred__0/i___16_carry_n_5\,
      I3 => sum(7),
      O => \i___30_carry_i_7__0_n_0\
    );
\i___30_carry_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D22D"
    )
        port map (
      I0 => sum(5),
      I1 => \out1_inferred__0/i___16_carry_n_7\,
      I2 => \out1_inferred__0/i___16_carry_n_6\,
      I3 => sum(6),
      O => \i___30_carry_i_8_n_0\
    );
\i__carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sum(11),
      I1 => sum(6),
      O => \i__carry__0_i_1_n_0\
    );
\i__carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sum(7),
      I1 => sum(5),
      O => \i__carry__0_i_2_n_0\
    );
\i__carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sum(6),
      I1 => sum(4),
      O => \i__carry__0_i_3_n_0\
    );
\i__carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sum(5),
      I1 => sum(3),
      O => \i__carry__0_i_4_n_0\
    );
\i__carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sum(11),
      I1 => sum(7),
      O => \i__carry__1_i_1_n_0\
    );
\i__carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sum(4),
      I1 => sum(2),
      O => \i__carry_i_1_n_0\
    );
\i__carry_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sum(3),
      I1 => sum(1),
      O => \i__carry_i_2_n_0\
    );
\i__carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sum(2),
      I1 => \^out\(0),
      O => \i__carry_i_3_n_0\
    );
\out1_inferred__0/i___16_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \out1_inferred__0/i___16_carry_n_0\,
      CO(2) => \out1_inferred__0/i___16_carry_n_1\,
      CO(1) => \out1_inferred__0/i___16_carry_n_2\,
      CO(0) => \out1_inferred__0/i___16_carry_n_3\,
      CYINIT => '0',
      DI(3) => \out1_inferred__0/i__carry__1_n_7\,
      DI(2) => \i___16_carry_i_1_n_0\,
      DI(1) => \i___16_carry_i_2_n_0\,
      DI(0) => '0',
      O(3) => \out1_inferred__0/i___16_carry_n_4\,
      O(2) => \out1_inferred__0/i___16_carry_n_5\,
      O(1) => \out1_inferred__0/i___16_carry_n_6\,
      O(0) => \out1_inferred__0/i___16_carry_n_7\,
      S(3) => \i___16_carry_i_3_n_0\,
      S(2) => \i___16_carry_i_4_n_0\,
      S(1) => \i___16_carry_i_5_n_0\,
      S(0) => \out1_inferred__0/i__carry__1_n_7\
    );
\out1_inferred__0/i___16_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \out1_inferred__0/i___16_carry_n_0\,
      CO(3 downto 2) => \NLW_out1_inferred__0/i___16_carry__0_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \out1_inferred__0/i___16_carry__0_n_2\,
      CO(0) => \NLW_out1_inferred__0/i___16_carry__0_CO_UNCONNECTED\(0),
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \out1_inferred__0/i__carry__1_n_2\,
      O(3 downto 1) => \NLW_out1_inferred__0/i___16_carry__0_O_UNCONNECTED\(3 downto 1),
      O(0) => \out1_inferred__0/i___16_carry__0_n_7\,
      S(3 downto 1) => B"001",
      S(0) => \i___16_carry__0_i_1_n_0\
    );
\out1_inferred__0/i___30_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \out1_inferred__0/i___30_carry_n_0\,
      CO(2) => \out1_inferred__0/i___30_carry_n_1\,
      CO(1) => \out1_inferred__0/i___30_carry_n_2\,
      CO(0) => \out1_inferred__0/i___30_carry_n_3\,
      CYINIT => '0',
      DI(3) => \i___30_carry_i_1_n_0\,
      DI(2) => \i___30_carry_i_2__1_n_0\,
      DI(1) => \i___30_carry_i_3_n_0\,
      DI(0) => '0',
      O(3 downto 0) => \NLW_out1_inferred__0/i___30_carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i___30_carry_i_4__0_n_0\,
      S(2) => \i___30_carry_i_5_n_0\,
      S(1) => \i___30_carry_i_6_n_0\,
      S(0) => \i___30_carry_i_7_n_0\
    );
\out1_inferred__0/i___30_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \out1_inferred__0/i___30_carry_n_0\,
      CO(3) => \out1_inferred__0/i___30_carry__0_n_0\,
      CO(2) => \out1_inferred__0/i___30_carry__0_n_1\,
      CO(1) => \out1_inferred__0/i___30_carry__0_n_2\,
      CO(0) => \out1_inferred__0/i___30_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \i___30_carry_i_1__0_n_0\,
      DI(2) => \i___30_carry_i_2_n_0\,
      DI(1) => \i___30_carry_i_3__0_n_0\,
      DI(0) => \i___30_carry_i_4_n_0\,
      O(3 downto 0) => \NLW_out1_inferred__0/i___30_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \i___30_carry_i_5__0_n_0\,
      S(2) => \i___30_carry_i_6__0_n_0\,
      S(1) => \i___30_carry_i_7__0_n_0\,
      S(0) => \i___30_carry_i_8_n_0\
    );
\out1_inferred__0/i___30_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \out1_inferred__0/i___30_carry__0_n_0\,
      CO(3 downto 2) => \NLW_out1_inferred__0/i___30_carry__1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \out1_inferred__0/i___30_carry__1_n_2\,
      CO(0) => \out1_inferred__0/i___30_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \i___30_carry_i_1__1_n_0\,
      DI(0) => \i___30_carry_i_2__0_n_0\,
      O(3 downto 0) => \NLW_out1_inferred__0/i___30_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \i___30_carry_i_3__1_n_0\,
      S(0) => \i___30_carry_i_4__1_n_0\
    );
\out1_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \out1_inferred__0/i__carry_n_0\,
      CO(2) => \out1_inferred__0/i__carry_n_1\,
      CO(1) => \out1_inferred__0/i__carry_n_2\,
      CO(0) => \out1_inferred__0/i__carry_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => sum(4 downto 2),
      DI(0) => '0',
      O(3 downto 0) => \NLW_out1_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_1_n_0\,
      S(2) => \i__carry_i_2_n_0\,
      S(1) => \i__carry_i_3_n_0\,
      S(0) => sum(1)
    );
\out1_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \out1_inferred__0/i__carry_n_0\,
      CO(3) => \out1_inferred__0/i__carry__0_n_0\,
      CO(2) => \out1_inferred__0/i__carry__0_n_1\,
      CO(1) => \out1_inferred__0/i__carry__0_n_2\,
      CO(0) => \out1_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3) => sum(11),
      DI(2 downto 0) => sum(7 downto 5),
      O(3 downto 0) => \NLW_out1_inferred__0/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__0_i_1_n_0\,
      S(2) => \i__carry__0_i_2_n_0\,
      S(1) => \i__carry__0_i_3_n_0\,
      S(0) => \i__carry__0_i_4_n_0\
    );
\out1_inferred__0/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \out1_inferred__0/i__carry__0_n_0\,
      CO(3 downto 2) => \NLW_out1_inferred__0/i__carry__1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \out1_inferred__0/i__carry__1_n_2\,
      CO(0) => \NLW_out1_inferred__0/i__carry__1_CO_UNCONNECTED\(0),
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => sum(11),
      O(3 downto 1) => \NLW_out1_inferred__0/i__carry__1_O_UNCONNECTED\(3 downto 1),
      O(0) => \out1_inferred__0/i__carry__1_n_7\,
      S(3 downto 1) => B"001",
      S(0) => \i__carry__1_i_1_n_0\
    );
\out[10]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30330800"
    )
        port map (
      I0 => \out1_inferred__0/i___16_carry__0_n_2\,
      I1 => \out1_inferred__0/i__carry__1_n_2\,
      I2 => \out1_inferred__0/i___30_carry__1_n_2\,
      I3 => \out1_inferred__0/i__carry__1_n_7\,
      I4 => sum(11),
      O => \^out\(10)
    );
\out[11]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"90A0"
    )
        port map (
      I0 => \out1_inferred__0/i__carry__1_n_2\,
      I1 => \out1_inferred__0/i___30_carry__1_n_2\,
      I2 => sum(11),
      I3 => \out1_inferred__0/i__carry__1_n_7\,
      O => \^out\(11)
    );
\out[1]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \out[1]_INST_0_i_1_n_0\,
      I1 => sum(2),
      I2 => \out[1]_INST_0_i_2_n_0\,
      I3 => sum(1),
      I4 => \out[4]_INST_0_i_3_n_0\,
      O => \^out\(1)
    );
\out[1]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"29C23C43"
    )
        port map (
      I0 => sum(4),
      I1 => sum(3),
      I2 => sum(7),
      I3 => sum(5),
      I4 => sum(6),
      O => \out[1]_INST_0_i_1_n_0\
    );
\out[1]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2DD0422D"
    )
        port map (
      I0 => sum(4),
      I1 => sum(6),
      I2 => sum(3),
      I3 => sum(7),
      I4 => sum(5),
      O => \out[1]_INST_0_i_2_n_0\
    );
\out[2]_INST_0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \out[2]_INST_0_i_1_n_0\,
      I1 => \out[2]_INST_0_i_2_n_0\,
      O => \^out\(2),
      S => sum(1)
    );
\out[2]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \out[2]_INST_0_i_3_n_0\,
      I1 => \out[2]_INST_0_i_4_n_0\,
      O => \out[2]_INST_0_i_1_n_0\,
      S => sum(2)
    );
\out[2]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \out[2]_INST_0_i_5_n_0\,
      I1 => \out[2]_INST_0_i_6_n_0\,
      O => \out[2]_INST_0_i_2_n_0\,
      S => sum(2)
    );
\out[2]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1581A86A"
    )
        port map (
      I0 => sum(4),
      I1 => sum(3),
      I2 => sum(7),
      I3 => sum(5),
      I4 => sum(6),
      O => \out[2]_INST_0_i_3_n_0\
    );
\out[2]_INST_0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6A561581"
    )
        port map (
      I0 => sum(4),
      I1 => sum(3),
      I2 => sum(7),
      I3 => sum(5),
      I4 => sum(6),
      O => \out[2]_INST_0_i_4_n_0\
    );
\out[2]_INST_0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"561581A8"
    )
        port map (
      I0 => sum(4),
      I1 => sum(3),
      I2 => sum(7),
      I3 => sum(5),
      I4 => sum(6),
      O => \out[2]_INST_0_i_5_n_0\
    );
\out[2]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A86A5615"
    )
        port map (
      I0 => sum(4),
      I1 => sum(3),
      I2 => sum(7),
      I3 => sum(5),
      I4 => sum(6),
      O => \out[2]_INST_0_i_6_n_0\
    );
\out[3]_INST_0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \out[3]_INST_0_i_1_n_0\,
      I1 => \out[3]_INST_0_i_2_n_0\,
      O => \^out\(3),
      S => sum(1)
    );
\out[3]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \out[3]_INST_0_i_3_n_0\,
      I1 => \out[3]_INST_0_i_4_n_0\,
      O => \out[3]_INST_0_i_1_n_0\,
      S => sum(2)
    );
\out[3]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \out[3]_INST_0_i_5_n_0\,
      I1 => \out[3]_INST_0_i_6_n_0\,
      O => \out[3]_INST_0_i_2_n_0\,
      S => sum(2)
    );
\out[3]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80422814"
    )
        port map (
      I0 => sum(4),
      I1 => sum(3),
      I2 => sum(7),
      I3 => sum(6),
      I4 => sum(5),
      O => \out[3]_INST_0_i_3_n_0\
    );
\out[3]_INST_0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"14018028"
    )
        port map (
      I0 => sum(4),
      I1 => sum(3),
      I2 => sum(7),
      I3 => sum(5),
      I4 => sum(6),
      O => \out[3]_INST_0_i_4_n_0\
    );
\out[3]_INST_0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01288042"
    )
        port map (
      I0 => sum(4),
      I1 => sum(3),
      I2 => sum(7),
      I3 => sum(6),
      I4 => sum(5),
      O => \out[3]_INST_0_i_5_n_0\
    );
\out[3]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"42140180"
    )
        port map (
      I0 => sum(4),
      I1 => sum(3),
      I2 => sum(7),
      I3 => sum(5),
      I4 => sum(6),
      O => \out[3]_INST_0_i_6_n_0\
    );
\out[4]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \out[4]_INST_0_i_1_n_0\,
      I1 => sum(2),
      I2 => \out[4]_INST_0_i_2_n_0\,
      I3 => sum(1),
      I4 => \out[4]_INST_0_i_3_n_0\,
      O => \^out\(4)
    );
\out[4]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D63DC3BC"
    )
        port map (
      I0 => sum(4),
      I1 => sum(3),
      I2 => sum(7),
      I3 => sum(5),
      I4 => sum(6),
      O => \out[4]_INST_0_i_1_n_0\
    );
\out[4]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D22FBDD2"
    )
        port map (
      I0 => sum(4),
      I1 => sum(6),
      I2 => sum(3),
      I3 => sum(7),
      I4 => sum(5),
      O => \out[4]_INST_0_i_2_n_0\
    );
\out[4]_INST_0_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \out[4]_INST_0_i_4_n_0\,
      I1 => \out[4]_INST_0_i_5_n_0\,
      O => \out[4]_INST_0_i_3_n_0\,
      S => sum(2)
    );
\out[4]_INST_0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"439429C2"
    )
        port map (
      I0 => sum(4),
      I1 => sum(3),
      I2 => sum(7),
      I3 => sum(5),
      I4 => sum(6),
      O => \out[4]_INST_0_i_4_n_0\
    );
\out[4]_INST_0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C2433C94"
    )
        port map (
      I0 => sum(4),
      I1 => sum(3),
      I2 => sum(7),
      I3 => sum(6),
      I4 => sum(5),
      O => \out[4]_INST_0_i_5_n_0\
    );
\out[5]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \out[5]_INST_0_i_1_n_0\,
      I1 => \out[5]_INST_0_i_2_n_0\,
      O => \^out\(5),
      S => sum(2)
    );
\out[5]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"559810A587115588"
    )
        port map (
      I0 => sum(4),
      I1 => sum(3),
      I2 => sum(11),
      I3 => sum(7),
      I4 => sum(5),
      I5 => sum(6),
      O => \out[5]_INST_0_i_1_n_0\
    );
\out[5]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"558898A5A51911AA"
    )
        port map (
      I0 => sum(4),
      I1 => sum(3),
      I2 => sum(11),
      I3 => sum(7),
      I4 => sum(5),
      I5 => sum(6),
      O => \out[5]_INST_0_i_2_n_0\
    );
\out[6]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \out[6]_INST_0_i_1_n_0\,
      I1 => \out[6]_INST_0_i_2_n_0\,
      O => \^out\(6),
      S => sum(2)
    );
\out[6]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5AE0E005071E5AF0"
    )
        port map (
      I0 => sum(4),
      I1 => sum(3),
      I2 => sum(11),
      I3 => sum(7),
      I4 => sum(5),
      I5 => sum(6),
      O => \out[6]_INST_0_i_1_n_0\
    );
\out[6]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5AF0E005051E1EF0"
    )
        port map (
      I0 => sum(4),
      I1 => sum(3),
      I2 => sum(11),
      I3 => sum(7),
      I4 => sum(5),
      I5 => sum(6),
      O => \out[6]_INST_0_i_2_n_0\
    );
\out[7]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \out[7]_INST_0_i_1_n_0\,
      I1 => \out[7]_INST_0_i_2_n_0\,
      O => \^out\(7),
      S => sum(2)
    );
\out[7]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A00108E0010AA000"
    )
        port map (
      I0 => sum(4),
      I1 => sum(3),
      I2 => sum(11),
      I3 => sum(7),
      I4 => sum(6),
      I5 => sum(5),
      O => \out[7]_INST_0_i_1_n_0\
    );
\out[7]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A00E006001A00A00"
    )
        port map (
      I0 => sum(4),
      I1 => sum(3),
      I2 => sum(5),
      I3 => sum(6),
      I4 => sum(7),
      I5 => sum(11),
      O => \out[7]_INST_0_i_2_n_0\
    );
\out[8]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA56"
    )
        port map (
      I0 => \out1_inferred__0/i__carry__1_n_7\,
      I1 => sum(11),
      I2 => \out1_inferred__0/i___16_carry__0_n_2\,
      I3 => \out1_inferred__0/i___30_carry__1_n_2\,
      O => \^out\(8)
    );
\out[9]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44559AAA"
    )
        port map (
      I0 => \out1_inferred__0/i__carry__1_n_2\,
      I1 => \out1_inferred__0/i___30_carry__1_n_2\,
      I2 => \out1_inferred__0/i___16_carry__0_n_2\,
      I3 => \out1_inferred__0/i__carry__1_n_7\,
      I4 => sum(11),
      O => \^out\(9)
    );
\sum0_inferred__2/i___1_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \sum0_inferred__2/i___1_carry_n_0\,
      CO(2) => \sum0_inferred__2/i___1_carry_n_1\,
      CO(1) => \sum0_inferred__2/i___1_carry_n_2\,
      CO(0) => \sum0_inferred__2/i___1_carry_n_3\,
      CYINIT => '0',
      DI(3) => \genblk1[7].ff1_n_1\,
      DI(2) => \genblk1[6].ff1_n_5\,
      DI(1) => \genblk1[10].ff1_n_6\,
      DI(0) => '0',
      O(3 downto 0) => sum0(3 downto 0),
      S(3) => \genblk1[7].ff1_n_5\,
      S(2) => \genblk1[9].ff1_n_8\,
      S(1) => \genblk1[5].ff1_n_4\,
      S(0) => \genblk1[5].ff1_n_5\
    );
\sum0_inferred__2/i___1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum0_inferred__2/i___1_carry_n_0\,
      CO(3) => sum0(7),
      CO(2) => \NLW_sum0_inferred__2/i___1_carry__0_CO_UNCONNECTED\(2),
      CO(1) => \sum0_inferred__2/i___1_carry__0_n_2\,
      CO(0) => \sum0_inferred__2/i___1_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \genblk1[12].ff1_n_1\,
      DI(1) => \genblk1[7].ff1_n_2\,
      DI(0) => \genblk1[9].ff1_n_10\,
      O(3) => \NLW_sum0_inferred__2/i___1_carry__0_O_UNCONNECTED\(3),
      O(2 downto 0) => sum0(6 downto 4),
      S(3) => '1',
      S(2) => \genblk1[11].ff1_n_4\,
      S(1) => \genblk1[7].ff1_n_6\,
      S(0) => \genblk1[9].ff1_n_9\
    );
\sum[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF8"
    )
        port map (
      I0 => sum0(4),
      I1 => p_11_out,
      I2 => \genblk1[9].ff1_n_4\,
      I3 => \genblk1[8].ff1_n_1\,
      O => \sum[4]_i_1_n_0\
    );
\sum_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \genblk1[0].sp_n_8\,
      D => \genblk1[0].sp_n_4\,
      Q => \^out\(0),
      R => sum_0
    );
\sum_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \genblk1[0].sp_n_8\,
      D => \genblk1[8].ff1_n_1\,
      Q => sum(11),
      R => sum_0
    );
\sum_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \genblk1[0].sp_n_8\,
      D => \genblk1[0].sp_n_3\,
      Q => sum(1),
      R => sum_0
    );
\sum_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \genblk1[0].sp_n_8\,
      D => \genblk1[1].sp_n_5\,
      Q => sum(2),
      R => sum_0
    );
\sum_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \genblk1[0].sp_n_8\,
      D => \genblk1[0].sp_n_2\,
      Q => sum(3),
      R => sum_0
    );
\sum_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \genblk1[0].sp_n_8\,
      D => \sum[4]_i_1_n_0\,
      Q => sum(4),
      R => sum_0
    );
\sum_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \genblk1[0].sp_n_8\,
      D => \genblk1[1].sp_n_4\,
      Q => sum(5),
      R => sum_0
    );
\sum_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \genblk1[0].sp_n_8\,
      D => \genblk1[1].sp_n_3\,
      Q => sum(6),
      R => sum_0
    );
\sum_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \genblk1[0].sp_n_8\,
      D => \genblk1[1].sp_n_2\,
      Q => sum(7),
      R => sum_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system3_calculator_0_0 is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    a : in STD_LOGIC_VECTOR ( 3 downto 0 );
    b : in STD_LOGIC_VECTOR ( 3 downto 0 );
    add : in STD_LOGIC;
    sub : in STD_LOGIC;
    multiply : in STD_LOGIC;
    devide : in STD_LOGIC;
    clear : in STD_LOGIC;
    clk : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of system3_calculator_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of system3_calculator_0_0 : entity is "system3_calculator_0_0,calculator,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of system3_calculator_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of system3_calculator_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of system3_calculator_0_0 : entity is "calculator,Vivado 2018.3";
end system3_calculator_0_0;

architecture STRUCTURE of system3_calculator_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^out\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0";
begin
  \out\(15) <= \<const0>\;
  \out\(14) <= \<const0>\;
  \out\(13) <= \<const0>\;
  \out\(12) <= \<const0>\;
  \out\(11 downto 0) <= \^out\(11 downto 0);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.system3_calculator_0_0_calculator
     port map (
      a(3 downto 0) => a(3 downto 0),
      add => add,
      b(3 downto 0) => b(3 downto 0),
      clear => clear,
      clk => clk,
      devide => devide,
      multiply => multiply,
      \out\(11 downto 0) => \^out\(11 downto 0),
      sub => sub
    );
end STRUCTURE;
