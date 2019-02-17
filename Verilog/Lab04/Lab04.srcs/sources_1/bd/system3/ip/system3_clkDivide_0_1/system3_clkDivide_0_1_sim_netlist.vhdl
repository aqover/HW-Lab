-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Sun Feb 17 19:51:27 2019
-- Host        : DESKTOP-M83089R running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/aqover-pc/Documents/Learning/HWLabI/Verilog/Lab04/Lab04.srcs/sources_1/bd/system3/ip/system3_clkDivide_0_1/system3_clkDivide_0_1_sim_netlist.vhdl
-- Design      : system3_clkDivide_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system3_clkDivide_0_1_flipflop is
  port (
    p_11_out : out STD_LOGIC;
    p_12_out : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system3_clkDivide_0_1_flipflop : entity is "flipflop";
end system3_clkDivide_0_1_flipflop;

architecture STRUCTURE of system3_clkDivide_0_1_flipflop is
  signal \^p_11_out\ : STD_LOGIC;
  signal \st_i_1__8_n_0\ : STD_LOGIC;
begin
  p_11_out <= \^p_11_out\;
\st_i_1__8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^p_11_out\,
      O => \st_i_1__8_n_0\
    );
st_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => p_12_out,
      CE => '1',
      D => \st_i_1__8_n_0\,
      Q => \^p_11_out\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system3_clkDivide_0_1_flipflop_0 is
  port (
    p_10_out : out STD_LOGIC;
    bit_2_sp_1 : out STD_LOGIC;
    p_11_out : in STD_LOGIC;
    bit : in STD_LOGIC_VECTOR ( 2 downto 0 );
    fClk : in STD_LOGIC;
    p_12_out : in STD_LOGIC;
    p_13_out : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system3_clkDivide_0_1_flipflop_0 : entity is "flipflop";
end system3_clkDivide_0_1_flipflop_0;

architecture STRUCTURE of system3_clkDivide_0_1_flipflop_0 is
  signal bit_2_sn_1 : STD_LOGIC;
  signal fClk_INST_0_i_6_n_0 : STD_LOGIC;
  signal \^p_10_out\ : STD_LOGIC;
  signal \st_i_1__9_n_0\ : STD_LOGIC;
begin
  bit_2_sp_1 <= bit_2_sn_1;
  p_10_out <= \^p_10_out\;
fClk_INST_0_i_2: unisim.vcomponents.MUXF7
     port map (
      I0 => fClk_INST_0_i_6_n_0,
      I1 => fClk,
      O => bit_2_sn_1,
      S => bit(2)
    );
fClk_INST_0_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^p_10_out\,
      I1 => p_11_out,
      I2 => bit(1),
      I3 => p_12_out,
      I4 => bit(0),
      I5 => p_13_out,
      O => fClk_INST_0_i_6_n_0
    );
\st_i_1__9\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^p_10_out\,
      O => \st_i_1__9_n_0\
    );
st_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => p_11_out,
      CE => '1',
      D => \st_i_1__9_n_0\,
      Q => \^p_10_out\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system3_clkDivide_0_1_flipflop_1 is
  port (
    p_9_out : out STD_LOGIC;
    p_10_out : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system3_clkDivide_0_1_flipflop_1 : entity is "flipflop";
end system3_clkDivide_0_1_flipflop_1;

architecture STRUCTURE of system3_clkDivide_0_1_flipflop_1 is
  signal \^p_9_out\ : STD_LOGIC;
  signal \st_i_1__10_n_0\ : STD_LOGIC;
begin
  p_9_out <= \^p_9_out\;
\st_i_1__10\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^p_9_out\,
      O => \st_i_1__10_n_0\
    );
st_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => p_10_out,
      CE => '1',
      D => \st_i_1__10_n_0\,
      Q => \^p_9_out\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system3_clkDivide_0_1_flipflop_10 is
  port (
    p_1_out : out STD_LOGIC;
    p_2_out : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system3_clkDivide_0_1_flipflop_10 : entity is "flipflop";
end system3_clkDivide_0_1_flipflop_10;

architecture STRUCTURE of system3_clkDivide_0_1_flipflop_10 is
  signal \^p_1_out\ : STD_LOGIC;
  signal \st_i_1__18_n_0\ : STD_LOGIC;
begin
  p_1_out <= \^p_1_out\;
\st_i_1__18\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^p_1_out\,
      O => \st_i_1__18_n_0\
    );
st_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => p_2_out,
      CE => '1',
      D => \st_i_1__18_n_0\,
      Q => \^p_1_out\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system3_clkDivide_0_1_flipflop_11 is
  port (
    st_reg_0 : out STD_LOGIC;
    p_1_out : in STD_LOGIC;
    bit : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system3_clkDivide_0_1_flipflop_11 : entity is "flipflop";
end system3_clkDivide_0_1_flipflop_11;

architecture STRUCTURE of system3_clkDivide_0_1_flipflop_11 is
  signal p_0_out : STD_LOGIC;
  signal \st_i_1__19_n_0\ : STD_LOGIC;
begin
fClk_INST_0_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_0_out,
      I1 => bit(0),
      I2 => p_1_out,
      O => st_reg_0
    );
\st_i_1__19\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p_0_out,
      O => \st_i_1__19_n_0\
    );
st_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => p_1_out,
      CE => '1',
      D => \st_i_1__19_n_0\,
      Q => p_0_out,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system3_clkDivide_0_1_flipflop_12 is
  port (
    p_19_out : out STD_LOGIC;
    p_20_out : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system3_clkDivide_0_1_flipflop_12 : entity is "flipflop";
end system3_clkDivide_0_1_flipflop_12;

architecture STRUCTURE of system3_clkDivide_0_1_flipflop_12 is
  signal \^p_19_out\ : STD_LOGIC;
  signal \st_i_1__0_n_0\ : STD_LOGIC;
begin
  p_19_out <= \^p_19_out\;
\st_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^p_19_out\,
      O => \st_i_1__0_n_0\
    );
st_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => p_20_out,
      CE => '1',
      D => \st_i_1__0_n_0\,
      Q => \^p_19_out\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system3_clkDivide_0_1_flipflop_13 is
  port (
    p_18_out : out STD_LOGIC;
    bit_2_sp_1 : out STD_LOGIC;
    p_19_out : in STD_LOGIC;
    bit : in STD_LOGIC_VECTOR ( 2 downto 0 );
    fClk : in STD_LOGIC;
    p_20_out : in STD_LOGIC;
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system3_clkDivide_0_1_flipflop_13 : entity is "flipflop";
end system3_clkDivide_0_1_flipflop_13;

architecture STRUCTURE of system3_clkDivide_0_1_flipflop_13 is
  signal bit_2_sn_1 : STD_LOGIC;
  signal fClk_INST_0_i_8_n_0 : STD_LOGIC;
  signal \^p_18_out\ : STD_LOGIC;
  signal \st_i_1__1_n_0\ : STD_LOGIC;
begin
  bit_2_sp_1 <= bit_2_sn_1;
  p_18_out <= \^p_18_out\;
fClk_INST_0_i_3: unisim.vcomponents.MUXF7
     port map (
      I0 => fClk_INST_0_i_8_n_0,
      I1 => fClk,
      O => bit_2_sn_1,
      S => bit(2)
    );
fClk_INST_0_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^p_18_out\,
      I1 => p_19_out,
      I2 => bit(1),
      I3 => p_20_out,
      I4 => bit(0),
      I5 => clk,
      O => fClk_INST_0_i_8_n_0
    );
\st_i_1__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^p_18_out\,
      O => \st_i_1__1_n_0\
    );
st_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => p_19_out,
      CE => '1',
      D => \st_i_1__1_n_0\,
      Q => \^p_18_out\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system3_clkDivide_0_1_flipflop_14 is
  port (
    p_17_out : out STD_LOGIC;
    p_18_out : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system3_clkDivide_0_1_flipflop_14 : entity is "flipflop";
end system3_clkDivide_0_1_flipflop_14;

architecture STRUCTURE of system3_clkDivide_0_1_flipflop_14 is
  signal \^p_17_out\ : STD_LOGIC;
  signal \st_i_1__2_n_0\ : STD_LOGIC;
begin
  p_17_out <= \^p_17_out\;
\st_i_1__2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^p_17_out\,
      O => \st_i_1__2_n_0\
    );
st_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => p_18_out,
      CE => '1',
      D => \st_i_1__2_n_0\,
      Q => \^p_17_out\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system3_clkDivide_0_1_flipflop_15 is
  port (
    p_16_out : out STD_LOGIC;
    p_17_out : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system3_clkDivide_0_1_flipflop_15 : entity is "flipflop";
end system3_clkDivide_0_1_flipflop_15;

architecture STRUCTURE of system3_clkDivide_0_1_flipflop_15 is
  signal \^p_16_out\ : STD_LOGIC;
  signal \st_i_1__3_n_0\ : STD_LOGIC;
begin
  p_16_out <= \^p_16_out\;
\st_i_1__3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^p_16_out\,
      O => \st_i_1__3_n_0\
    );
st_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => p_17_out,
      CE => '1',
      D => \st_i_1__3_n_0\,
      Q => \^p_16_out\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system3_clkDivide_0_1_flipflop_16 is
  port (
    p_15_out : out STD_LOGIC;
    p_16_out : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system3_clkDivide_0_1_flipflop_16 : entity is "flipflop";
end system3_clkDivide_0_1_flipflop_16;

architecture STRUCTURE of system3_clkDivide_0_1_flipflop_16 is
  signal \^p_15_out\ : STD_LOGIC;
  signal \st_i_1__4_n_0\ : STD_LOGIC;
begin
  p_15_out <= \^p_15_out\;
\st_i_1__4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^p_15_out\,
      O => \st_i_1__4_n_0\
    );
st_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => p_16_out,
      CE => '1',
      D => \st_i_1__4_n_0\,
      Q => \^p_15_out\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system3_clkDivide_0_1_flipflop_17 is
  port (
    p_14_out : out STD_LOGIC;
    st_reg_0 : out STD_LOGIC;
    p_15_out : in STD_LOGIC;
    bit : in STD_LOGIC_VECTOR ( 1 downto 0 );
    p_16_out : in STD_LOGIC;
    p_17_out : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system3_clkDivide_0_1_flipflop_17 : entity is "flipflop";
end system3_clkDivide_0_1_flipflop_17;

architecture STRUCTURE of system3_clkDivide_0_1_flipflop_17 is
  signal \^p_14_out\ : STD_LOGIC;
  signal \st_i_1__5_n_0\ : STD_LOGIC;
begin
  p_14_out <= \^p_14_out\;
fClk_INST_0_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^p_14_out\,
      I1 => p_15_out,
      I2 => bit(1),
      I3 => p_16_out,
      I4 => bit(0),
      I5 => p_17_out,
      O => st_reg_0
    );
\st_i_1__5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^p_14_out\,
      O => \st_i_1__5_n_0\
    );
st_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => p_15_out,
      CE => '1',
      D => \st_i_1__5_n_0\,
      Q => \^p_14_out\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system3_clkDivide_0_1_flipflop_18 is
  port (
    p_13_out : out STD_LOGIC;
    p_14_out : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system3_clkDivide_0_1_flipflop_18 : entity is "flipflop";
end system3_clkDivide_0_1_flipflop_18;

architecture STRUCTURE of system3_clkDivide_0_1_flipflop_18 is
  signal \^p_13_out\ : STD_LOGIC;
  signal \st_i_1__6_n_0\ : STD_LOGIC;
begin
  p_13_out <= \^p_13_out\;
\st_i_1__6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^p_13_out\,
      O => \st_i_1__6_n_0\
    );
st_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => p_14_out,
      CE => '1',
      D => \st_i_1__6_n_0\,
      Q => \^p_13_out\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system3_clkDivide_0_1_flipflop_19 is
  port (
    p_12_out : out STD_LOGIC;
    p_13_out : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system3_clkDivide_0_1_flipflop_19 : entity is "flipflop";
end system3_clkDivide_0_1_flipflop_19;

architecture STRUCTURE of system3_clkDivide_0_1_flipflop_19 is
  signal \^p_12_out\ : STD_LOGIC;
  signal \st_i_1__7_n_0\ : STD_LOGIC;
begin
  p_12_out <= \^p_12_out\;
\st_i_1__7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^p_12_out\,
      O => \st_i_1__7_n_0\
    );
st_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => p_13_out,
      CE => '1',
      D => \st_i_1__7_n_0\,
      Q => \^p_12_out\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system3_clkDivide_0_1_flipflop_2 is
  port (
    p_8_out : out STD_LOGIC;
    p_9_out : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system3_clkDivide_0_1_flipflop_2 : entity is "flipflop";
end system3_clkDivide_0_1_flipflop_2;

architecture STRUCTURE of system3_clkDivide_0_1_flipflop_2 is
  signal \^p_8_out\ : STD_LOGIC;
  signal \st_i_1__11_n_0\ : STD_LOGIC;
begin
  p_8_out <= \^p_8_out\;
\st_i_1__11\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^p_8_out\,
      O => \st_i_1__11_n_0\
    );
st_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => p_9_out,
      CE => '1',
      D => \st_i_1__11_n_0\,
      Q => \^p_8_out\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system3_clkDivide_0_1_flipflop_3 is
  port (
    p_7_out : out STD_LOGIC;
    p_8_out : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system3_clkDivide_0_1_flipflop_3 : entity is "flipflop";
end system3_clkDivide_0_1_flipflop_3;

architecture STRUCTURE of system3_clkDivide_0_1_flipflop_3 is
  signal \^p_7_out\ : STD_LOGIC;
  signal \st_i_1__12_n_0\ : STD_LOGIC;
begin
  p_7_out <= \^p_7_out\;
\st_i_1__12\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^p_7_out\,
      O => \st_i_1__12_n_0\
    );
st_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => p_8_out,
      CE => '1',
      D => \st_i_1__12_n_0\,
      Q => \^p_7_out\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system3_clkDivide_0_1_flipflop_4 is
  port (
    p_6_out : out STD_LOGIC;
    st_reg_0 : out STD_LOGIC;
    p_7_out : in STD_LOGIC;
    bit : in STD_LOGIC_VECTOR ( 1 downto 0 );
    p_8_out : in STD_LOGIC;
    p_9_out : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system3_clkDivide_0_1_flipflop_4 : entity is "flipflop";
end system3_clkDivide_0_1_flipflop_4;

architecture STRUCTURE of system3_clkDivide_0_1_flipflop_4 is
  signal \^p_6_out\ : STD_LOGIC;
  signal \st_i_1__13_n_0\ : STD_LOGIC;
begin
  p_6_out <= \^p_6_out\;
fClk_INST_0_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^p_6_out\,
      I1 => p_7_out,
      I2 => bit(1),
      I3 => p_8_out,
      I4 => bit(0),
      I5 => p_9_out,
      O => st_reg_0
    );
\st_i_1__13\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^p_6_out\,
      O => \st_i_1__13_n_0\
    );
st_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => p_7_out,
      CE => '1',
      D => \st_i_1__13_n_0\,
      Q => \^p_6_out\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system3_clkDivide_0_1_flipflop_5 is
  port (
    p_5_out : out STD_LOGIC;
    p_6_out : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system3_clkDivide_0_1_flipflop_5 : entity is "flipflop";
end system3_clkDivide_0_1_flipflop_5;

architecture STRUCTURE of system3_clkDivide_0_1_flipflop_5 is
  signal \^p_5_out\ : STD_LOGIC;
  signal \st_i_1__14_n_0\ : STD_LOGIC;
begin
  p_5_out <= \^p_5_out\;
\st_i_1__14\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^p_5_out\,
      O => \st_i_1__14_n_0\
    );
st_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => p_6_out,
      CE => '1',
      D => \st_i_1__14_n_0\,
      Q => \^p_5_out\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system3_clkDivide_0_1_flipflop_6 is
  port (
    p_4_out : out STD_LOGIC;
    p_5_out : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system3_clkDivide_0_1_flipflop_6 : entity is "flipflop";
end system3_clkDivide_0_1_flipflop_6;

architecture STRUCTURE of system3_clkDivide_0_1_flipflop_6 is
  signal \^p_4_out\ : STD_LOGIC;
  signal \st_i_1__15_n_0\ : STD_LOGIC;
begin
  p_4_out <= \^p_4_out\;
\st_i_1__15\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^p_4_out\,
      O => \st_i_1__15_n_0\
    );
st_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => p_5_out,
      CE => '1',
      D => \st_i_1__15_n_0\,
      Q => \^p_4_out\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system3_clkDivide_0_1_flipflop_7 is
  port (
    p_3_out : out STD_LOGIC;
    p_4_out : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system3_clkDivide_0_1_flipflop_7 : entity is "flipflop";
end system3_clkDivide_0_1_flipflop_7;

architecture STRUCTURE of system3_clkDivide_0_1_flipflop_7 is
  signal \^p_3_out\ : STD_LOGIC;
  signal \st_i_1__16_n_0\ : STD_LOGIC;
begin
  p_3_out <= \^p_3_out\;
\st_i_1__16\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^p_3_out\,
      O => \st_i_1__16_n_0\
    );
st_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => p_4_out,
      CE => '1',
      D => \st_i_1__16_n_0\,
      Q => \^p_3_out\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system3_clkDivide_0_1_flipflop_8 is
  port (
    p_2_out : out STD_LOGIC;
    fClk : out STD_LOGIC;
    p_3_out : in STD_LOGIC;
    bit : in STD_LOGIC_VECTOR ( 4 downto 0 );
    fClk_0 : in STD_LOGIC;
    fClk_1 : in STD_LOGIC;
    fClk_2 : in STD_LOGIC;
    p_4_out : in STD_LOGIC;
    p_5_out : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system3_clkDivide_0_1_flipflop_8 : entity is "flipflop";
end system3_clkDivide_0_1_flipflop_8;

architecture STRUCTURE of system3_clkDivide_0_1_flipflop_8 is
  signal fClk_INST_0_i_1_n_0 : STD_LOGIC;
  signal fClk_INST_0_i_4_n_0 : STD_LOGIC;
  signal \^p_2_out\ : STD_LOGIC;
  signal \st_i_1__17_n_0\ : STD_LOGIC;
begin
  p_2_out <= \^p_2_out\;
fClk_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => fClk_INST_0_i_1_n_0,
      I1 => bit(4),
      I2 => fClk_0,
      I3 => bit(3),
      I4 => fClk_1,
      O => fClk
    );
fClk_INST_0_i_1: unisim.vcomponents.MUXF7
     port map (
      I0 => fClk_INST_0_i_4_n_0,
      I1 => fClk_2,
      O => fClk_INST_0_i_1_n_0,
      S => bit(2)
    );
fClk_INST_0_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^p_2_out\,
      I1 => p_3_out,
      I2 => bit(1),
      I3 => p_4_out,
      I4 => bit(0),
      I5 => p_5_out,
      O => fClk_INST_0_i_4_n_0
    );
\st_i_1__17\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^p_2_out\,
      O => \st_i_1__17_n_0\
    );
st_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => p_3_out,
      CE => '1',
      D => \st_i_1__17_n_0\,
      Q => \^p_2_out\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system3_clkDivide_0_1_flipflop_9 is
  port (
    p_20_out : out STD_LOGIC;
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system3_clkDivide_0_1_flipflop_9 : entity is "flipflop";
end system3_clkDivide_0_1_flipflop_9;

architecture STRUCTURE of system3_clkDivide_0_1_flipflop_9 is
  signal \^p_20_out\ : STD_LOGIC;
  signal qd : STD_LOGIC;
begin
  p_20_out <= \^p_20_out\;
st_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^p_20_out\,
      O => qd
    );
st_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => qd,
      Q => \^p_20_out\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system3_clkDivide_0_1_clkDivide is
  port (
    fClk : out STD_LOGIC;
    clk : in STD_LOGIC;
    bit : in STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system3_clkDivide_0_1_clkDivide : entity is "clkDivide";
end system3_clkDivide_0_1_clkDivide;

architecture STRUCTURE of system3_clkDivide_0_1_clkDivide is
  signal \genblk1[11].ff_n_1\ : STD_LOGIC;
  signal \genblk1[15].ff_n_1\ : STD_LOGIC;
  signal \genblk1[21].ff_n_0\ : STD_LOGIC;
  signal \genblk1[3].ff_n_1\ : STD_LOGIC;
  signal \genblk1[7].ff_n_1\ : STD_LOGIC;
  signal p_10_out : STD_LOGIC;
  signal p_11_out : STD_LOGIC;
  signal p_12_out : STD_LOGIC;
  signal p_13_out : STD_LOGIC;
  signal p_14_out : STD_LOGIC;
  signal p_15_out : STD_LOGIC;
  signal p_16_out : STD_LOGIC;
  signal p_17_out : STD_LOGIC;
  signal p_18_out : STD_LOGIC;
  signal p_19_out : STD_LOGIC;
  signal p_1_out : STD_LOGIC;
  signal p_20_out : STD_LOGIC;
  signal p_2_out : STD_LOGIC;
  signal p_3_out : STD_LOGIC;
  signal p_4_out : STD_LOGIC;
  signal p_5_out : STD_LOGIC;
  signal p_6_out : STD_LOGIC;
  signal p_7_out : STD_LOGIC;
  signal p_8_out : STD_LOGIC;
  signal p_9_out : STD_LOGIC;
begin
\genblk1[10].ff\: entity work.system3_clkDivide_0_1_flipflop
     port map (
      p_11_out => p_11_out,
      p_12_out => p_12_out
    );
\genblk1[11].ff\: entity work.system3_clkDivide_0_1_flipflop_0
     port map (
      bit(2 downto 0) => bit(2 downto 0),
      bit_2_sp_1 => \genblk1[11].ff_n_1\,
      fClk => \genblk1[15].ff_n_1\,
      p_10_out => p_10_out,
      p_11_out => p_11_out,
      p_12_out => p_12_out,
      p_13_out => p_13_out
    );
\genblk1[12].ff\: entity work.system3_clkDivide_0_1_flipflop_1
     port map (
      p_10_out => p_10_out,
      p_9_out => p_9_out
    );
\genblk1[13].ff\: entity work.system3_clkDivide_0_1_flipflop_2
     port map (
      p_8_out => p_8_out,
      p_9_out => p_9_out
    );
\genblk1[14].ff\: entity work.system3_clkDivide_0_1_flipflop_3
     port map (
      p_7_out => p_7_out,
      p_8_out => p_8_out
    );
\genblk1[15].ff\: entity work.system3_clkDivide_0_1_flipflop_4
     port map (
      bit(1 downto 0) => bit(1 downto 0),
      p_6_out => p_6_out,
      p_7_out => p_7_out,
      p_8_out => p_8_out,
      p_9_out => p_9_out,
      st_reg_0 => \genblk1[15].ff_n_1\
    );
\genblk1[16].ff\: entity work.system3_clkDivide_0_1_flipflop_5
     port map (
      p_5_out => p_5_out,
      p_6_out => p_6_out
    );
\genblk1[17].ff\: entity work.system3_clkDivide_0_1_flipflop_6
     port map (
      p_4_out => p_4_out,
      p_5_out => p_5_out
    );
\genblk1[18].ff\: entity work.system3_clkDivide_0_1_flipflop_7
     port map (
      p_3_out => p_3_out,
      p_4_out => p_4_out
    );
\genblk1[19].ff\: entity work.system3_clkDivide_0_1_flipflop_8
     port map (
      bit(4 downto 0) => bit(4 downto 0),
      fClk => fClk,
      fClk_0 => \genblk1[11].ff_n_1\,
      fClk_1 => \genblk1[3].ff_n_1\,
      fClk_2 => \genblk1[21].ff_n_0\,
      p_2_out => p_2_out,
      p_3_out => p_3_out,
      p_4_out => p_4_out,
      p_5_out => p_5_out
    );
\genblk1[1].ff\: entity work.system3_clkDivide_0_1_flipflop_9
     port map (
      clk => clk,
      p_20_out => p_20_out
    );
\genblk1[20].ff\: entity work.system3_clkDivide_0_1_flipflop_10
     port map (
      p_1_out => p_1_out,
      p_2_out => p_2_out
    );
\genblk1[21].ff\: entity work.system3_clkDivide_0_1_flipflop_11
     port map (
      bit(0) => bit(0),
      p_1_out => p_1_out,
      st_reg_0 => \genblk1[21].ff_n_0\
    );
\genblk1[2].ff\: entity work.system3_clkDivide_0_1_flipflop_12
     port map (
      p_19_out => p_19_out,
      p_20_out => p_20_out
    );
\genblk1[3].ff\: entity work.system3_clkDivide_0_1_flipflop_13
     port map (
      bit(2 downto 0) => bit(2 downto 0),
      bit_2_sp_1 => \genblk1[3].ff_n_1\,
      clk => clk,
      fClk => \genblk1[7].ff_n_1\,
      p_18_out => p_18_out,
      p_19_out => p_19_out,
      p_20_out => p_20_out
    );
\genblk1[4].ff\: entity work.system3_clkDivide_0_1_flipflop_14
     port map (
      p_17_out => p_17_out,
      p_18_out => p_18_out
    );
\genblk1[5].ff\: entity work.system3_clkDivide_0_1_flipflop_15
     port map (
      p_16_out => p_16_out,
      p_17_out => p_17_out
    );
\genblk1[6].ff\: entity work.system3_clkDivide_0_1_flipflop_16
     port map (
      p_15_out => p_15_out,
      p_16_out => p_16_out
    );
\genblk1[7].ff\: entity work.system3_clkDivide_0_1_flipflop_17
     port map (
      bit(1 downto 0) => bit(1 downto 0),
      p_14_out => p_14_out,
      p_15_out => p_15_out,
      p_16_out => p_16_out,
      p_17_out => p_17_out,
      st_reg_0 => \genblk1[7].ff_n_1\
    );
\genblk1[8].ff\: entity work.system3_clkDivide_0_1_flipflop_18
     port map (
      p_13_out => p_13_out,
      p_14_out => p_14_out
    );
\genblk1[9].ff\: entity work.system3_clkDivide_0_1_flipflop_19
     port map (
      p_12_out => p_12_out,
      p_13_out => p_13_out
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system3_clkDivide_0_1 is
  port (
    fClk : out STD_LOGIC;
    clk : in STD_LOGIC;
    bit : in STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of system3_clkDivide_0_1 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of system3_clkDivide_0_1 : entity is "system3_clkDivide_0_1,clkDivide,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of system3_clkDivide_0_1 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of system3_clkDivide_0_1 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of system3_clkDivide_0_1 : entity is "clkDivide,Vivado 2018.3";
end system3_clkDivide_0_1;

architecture STRUCTURE of system3_clkDivide_0_1 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0";
begin
inst: entity work.system3_clkDivide_0_1_clkDivide
     port map (
      bit(4 downto 0) => bit(4 downto 0),
      clk => clk,
      fClk => fClk
    );
end STRUCTURE;
