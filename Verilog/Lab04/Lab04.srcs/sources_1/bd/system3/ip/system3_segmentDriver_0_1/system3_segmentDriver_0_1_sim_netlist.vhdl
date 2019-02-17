-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Sun Feb 17 18:51:01 2019
-- Host        : DESKTOP-M83089R running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/aqover-pc/Documents/Learning/HWLabI/Verilog/Lab04/Lab04.srcs/sources_1/bd/system3/ip/system3_segmentDriver_0_1/system3_segmentDriver_0_1_sim_netlist.vhdl
-- Design      : system3_segmentDriver_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system3_segmentDriver_0_1_flipflop is
  port (
    p_11_out : out STD_LOGIC;
    p_12_out : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system3_segmentDriver_0_1_flipflop : entity is "flipflop";
end system3_segmentDriver_0_1_flipflop;

architecture STRUCTURE of system3_segmentDriver_0_1_flipflop is
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
entity system3_segmentDriver_0_1_flipflop_0 is
  port (
    p_10_out : out STD_LOGIC;
    p_11_out : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system3_segmentDriver_0_1_flipflop_0 : entity is "flipflop";
end system3_segmentDriver_0_1_flipflop_0;

architecture STRUCTURE of system3_segmentDriver_0_1_flipflop_0 is
  signal \^p_10_out\ : STD_LOGIC;
  signal \st_i_1__9_n_0\ : STD_LOGIC;
begin
  p_10_out <= \^p_10_out\;
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
entity system3_segmentDriver_0_1_flipflop_1 is
  port (
    p_9_out : out STD_LOGIC;
    p_10_out : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system3_segmentDriver_0_1_flipflop_1 : entity is "flipflop";
end system3_segmentDriver_0_1_flipflop_1;

architecture STRUCTURE of system3_segmentDriver_0_1_flipflop_1 is
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
entity system3_segmentDriver_0_1_flipflop_10 is
  port (
    p_19_out : out STD_LOGIC;
    p_20_out : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system3_segmentDriver_0_1_flipflop_10 : entity is "flipflop";
end system3_segmentDriver_0_1_flipflop_10;

architecture STRUCTURE of system3_segmentDriver_0_1_flipflop_10 is
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
entity system3_segmentDriver_0_1_flipflop_11 is
  port (
    p_18_out : out STD_LOGIC;
    p_19_out : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system3_segmentDriver_0_1_flipflop_11 : entity is "flipflop";
end system3_segmentDriver_0_1_flipflop_11;

architecture STRUCTURE of system3_segmentDriver_0_1_flipflop_11 is
  signal \^p_18_out\ : STD_LOGIC;
  signal \st_i_1__1_n_0\ : STD_LOGIC;
begin
  p_18_out <= \^p_18_out\;
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
entity system3_segmentDriver_0_1_flipflop_12 is
  port (
    p_17_out : out STD_LOGIC;
    p_18_out : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system3_segmentDriver_0_1_flipflop_12 : entity is "flipflop";
end system3_segmentDriver_0_1_flipflop_12;

architecture STRUCTURE of system3_segmentDriver_0_1_flipflop_12 is
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
entity system3_segmentDriver_0_1_flipflop_13 is
  port (
    p_16_out : out STD_LOGIC;
    p_17_out : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system3_segmentDriver_0_1_flipflop_13 : entity is "flipflop";
end system3_segmentDriver_0_1_flipflop_13;

architecture STRUCTURE of system3_segmentDriver_0_1_flipflop_13 is
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
entity system3_segmentDriver_0_1_flipflop_14 is
  port (
    p_15_out : out STD_LOGIC;
    p_16_out : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system3_segmentDriver_0_1_flipflop_14 : entity is "flipflop";
end system3_segmentDriver_0_1_flipflop_14;

architecture STRUCTURE of system3_segmentDriver_0_1_flipflop_14 is
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
entity system3_segmentDriver_0_1_flipflop_15 is
  port (
    p_14_out : out STD_LOGIC;
    p_15_out : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system3_segmentDriver_0_1_flipflop_15 : entity is "flipflop";
end system3_segmentDriver_0_1_flipflop_15;

architecture STRUCTURE of system3_segmentDriver_0_1_flipflop_15 is
  signal \^p_14_out\ : STD_LOGIC;
  signal \st_i_1__5_n_0\ : STD_LOGIC;
begin
  p_14_out <= \^p_14_out\;
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
entity system3_segmentDriver_0_1_flipflop_16 is
  port (
    p_13_out : out STD_LOGIC;
    p_14_out : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system3_segmentDriver_0_1_flipflop_16 : entity is "flipflop";
end system3_segmentDriver_0_1_flipflop_16;

architecture STRUCTURE of system3_segmentDriver_0_1_flipflop_16 is
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
entity system3_segmentDriver_0_1_flipflop_17 is
  port (
    p_12_out : out STD_LOGIC;
    p_13_out : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system3_segmentDriver_0_1_flipflop_17 : entity is "flipflop";
end system3_segmentDriver_0_1_flipflop_17;

architecture STRUCTURE of system3_segmentDriver_0_1_flipflop_17 is
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
entity system3_segmentDriver_0_1_flipflop_2 is
  port (
    p_8_out : out STD_LOGIC;
    p_9_out : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system3_segmentDriver_0_1_flipflop_2 : entity is "flipflop";
end system3_segmentDriver_0_1_flipflop_2;

architecture STRUCTURE of system3_segmentDriver_0_1_flipflop_2 is
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
entity system3_segmentDriver_0_1_flipflop_3 is
  port (
    p_7_out : out STD_LOGIC;
    p_8_out : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system3_segmentDriver_0_1_flipflop_3 : entity is "flipflop";
end system3_segmentDriver_0_1_flipflop_3;

architecture STRUCTURE of system3_segmentDriver_0_1_flipflop_3 is
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
entity system3_segmentDriver_0_1_flipflop_4 is
  port (
    p_6_out : out STD_LOGIC;
    p_7_out : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system3_segmentDriver_0_1_flipflop_4 : entity is "flipflop";
end system3_segmentDriver_0_1_flipflop_4;

architecture STRUCTURE of system3_segmentDriver_0_1_flipflop_4 is
  signal \^p_6_out\ : STD_LOGIC;
  signal \st_i_1__13_n_0\ : STD_LOGIC;
begin
  p_6_out <= \^p_6_out\;
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
entity system3_segmentDriver_0_1_flipflop_5 is
  port (
    p_5_out : out STD_LOGIC;
    p_6_out : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system3_segmentDriver_0_1_flipflop_5 : entity is "flipflop";
end system3_segmentDriver_0_1_flipflop_5;

architecture STRUCTURE of system3_segmentDriver_0_1_flipflop_5 is
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
entity system3_segmentDriver_0_1_flipflop_6 is
  port (
    p_4_out : out STD_LOGIC;
    p_5_out : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system3_segmentDriver_0_1_flipflop_6 : entity is "flipflop";
end system3_segmentDriver_0_1_flipflop_6;

architecture STRUCTURE of system3_segmentDriver_0_1_flipflop_6 is
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
entity system3_segmentDriver_0_1_flipflop_7 is
  port (
    p_3_out : out STD_LOGIC;
    p_4_out : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system3_segmentDriver_0_1_flipflop_7 : entity is "flipflop";
end system3_segmentDriver_0_1_flipflop_7;

architecture STRUCTURE of system3_segmentDriver_0_1_flipflop_7 is
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
entity system3_segmentDriver_0_1_flipflop_8 is
  port (
    f : out STD_LOGIC_VECTOR ( 0 to 0 );
    p_3_out : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system3_segmentDriver_0_1_flipflop_8 : entity is "flipflop";
end system3_segmentDriver_0_1_flipflop_8;

architecture STRUCTURE of system3_segmentDriver_0_1_flipflop_8 is
  signal \^f\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \st_i_1__17_n_0\ : STD_LOGIC;
begin
  f(0) <= \^f\(0);
\st_i_1__17\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^f\(0),
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
      Q => \^f\(0),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system3_segmentDriver_0_1_flipflop_9 is
  port (
    p_20_out : out STD_LOGIC;
    fClk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system3_segmentDriver_0_1_flipflop_9 : entity is "flipflop";
end system3_segmentDriver_0_1_flipflop_9;

architecture STRUCTURE of system3_segmentDriver_0_1_flipflop_9 is
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
      C => fClk,
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
entity system3_segmentDriver_0_1_clkDivide is
  port (
    f : out STD_LOGIC_VECTOR ( 0 to 0 );
    fClk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system3_segmentDriver_0_1_clkDivide : entity is "clkDivide";
end system3_segmentDriver_0_1_clkDivide;

architecture STRUCTURE of system3_segmentDriver_0_1_clkDivide is
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
  signal p_20_out : STD_LOGIC;
  signal p_3_out : STD_LOGIC;
  signal p_4_out : STD_LOGIC;
  signal p_5_out : STD_LOGIC;
  signal p_6_out : STD_LOGIC;
  signal p_7_out : STD_LOGIC;
  signal p_8_out : STD_LOGIC;
  signal p_9_out : STD_LOGIC;
begin
\genblk1[10].ff\: entity work.system3_segmentDriver_0_1_flipflop
     port map (
      p_11_out => p_11_out,
      p_12_out => p_12_out
    );
\genblk1[11].ff\: entity work.system3_segmentDriver_0_1_flipflop_0
     port map (
      p_10_out => p_10_out,
      p_11_out => p_11_out
    );
\genblk1[12].ff\: entity work.system3_segmentDriver_0_1_flipflop_1
     port map (
      p_10_out => p_10_out,
      p_9_out => p_9_out
    );
\genblk1[13].ff\: entity work.system3_segmentDriver_0_1_flipflop_2
     port map (
      p_8_out => p_8_out,
      p_9_out => p_9_out
    );
\genblk1[14].ff\: entity work.system3_segmentDriver_0_1_flipflop_3
     port map (
      p_7_out => p_7_out,
      p_8_out => p_8_out
    );
\genblk1[15].ff\: entity work.system3_segmentDriver_0_1_flipflop_4
     port map (
      p_6_out => p_6_out,
      p_7_out => p_7_out
    );
\genblk1[16].ff\: entity work.system3_segmentDriver_0_1_flipflop_5
     port map (
      p_5_out => p_5_out,
      p_6_out => p_6_out
    );
\genblk1[17].ff\: entity work.system3_segmentDriver_0_1_flipflop_6
     port map (
      p_4_out => p_4_out,
      p_5_out => p_5_out
    );
\genblk1[18].ff\: entity work.system3_segmentDriver_0_1_flipflop_7
     port map (
      p_3_out => p_3_out,
      p_4_out => p_4_out
    );
\genblk1[19].ff\: entity work.system3_segmentDriver_0_1_flipflop_8
     port map (
      f(0) => f(0),
      p_3_out => p_3_out
    );
\genblk1[1].ff\: entity work.system3_segmentDriver_0_1_flipflop_9
     port map (
      fClk => fClk,
      p_20_out => p_20_out
    );
\genblk1[2].ff\: entity work.system3_segmentDriver_0_1_flipflop_10
     port map (
      p_19_out => p_19_out,
      p_20_out => p_20_out
    );
\genblk1[3].ff\: entity work.system3_segmentDriver_0_1_flipflop_11
     port map (
      p_18_out => p_18_out,
      p_19_out => p_19_out
    );
\genblk1[4].ff\: entity work.system3_segmentDriver_0_1_flipflop_12
     port map (
      p_17_out => p_17_out,
      p_18_out => p_18_out
    );
\genblk1[5].ff\: entity work.system3_segmentDriver_0_1_flipflop_13
     port map (
      p_16_out => p_16_out,
      p_17_out => p_17_out
    );
\genblk1[6].ff\: entity work.system3_segmentDriver_0_1_flipflop_14
     port map (
      p_15_out => p_15_out,
      p_16_out => p_16_out
    );
\genblk1[7].ff\: entity work.system3_segmentDriver_0_1_flipflop_15
     port map (
      p_14_out => p_14_out,
      p_15_out => p_15_out
    );
\genblk1[8].ff\: entity work.system3_segmentDriver_0_1_flipflop_16
     port map (
      p_13_out => p_13_out,
      p_14_out => p_14_out
    );
\genblk1[9].ff\: entity work.system3_segmentDriver_0_1_flipflop_17
     port map (
      p_12_out => p_12_out,
      p_13_out => p_13_out
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system3_segmentDriver_0_1_segmentDriver is
  port (
    an : out STD_LOGIC_VECTOR ( 3 downto 0 );
    seg : out STD_LOGIC_VECTOR ( 6 downto 0 );
    fClk : in STD_LOGIC;
    hex : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system3_segmentDriver_0_1_segmentDriver : entity is "segmentDriver";
end system3_segmentDriver_0_1_segmentDriver;

architecture STRUCTURE of system3_segmentDriver_0_1_segmentDriver is
  signal p_0_in : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_2_out : STD_LOGIC;
  signal pos : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal sel0 : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \an[0]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \an[1]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \an[2]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \an[3]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \pos[0]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \pos[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \seg[0]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \seg[1]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \seg[2]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \seg[3]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \seg[5]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \seg[6]_INST_0\ : label is "soft_lutpair2";
begin
\an[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => pos(1),
      I1 => pos(0),
      O => an(0)
    );
\an[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => pos(1),
      I1 => pos(0),
      O => an(1)
    );
\an[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => pos(0),
      I1 => pos(1),
      O => an(2)
    );
\an[3]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => pos(1),
      I1 => pos(0),
      O => an(3)
    );
cd: entity work.system3_segmentDriver_0_1_clkDivide
     port map (
      f(0) => p_2_out,
      fClk => fClk
    );
\pos[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pos(0),
      O => p_0_in(0)
    );
\pos[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => pos(0),
      I1 => pos(1),
      O => p_0_in(1)
    );
\pos_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => p_2_out,
      CE => '1',
      D => p_0_in(0),
      Q => pos(0),
      R => '0'
    );
\pos_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => p_2_out,
      CE => '1',
      D => p_0_in(1),
      Q => pos(1),
      R => '0'
    );
\seg[0]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2094"
    )
        port map (
      I0 => sel0(3),
      I1 => sel0(2),
      I2 => sel0(0),
      I3 => sel0(1),
      O => seg(0)
    );
\seg[1]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A4C8"
    )
        port map (
      I0 => sel0(3),
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => sel0(0),
      O => seg(1)
    );
\seg[2]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A210"
    )
        port map (
      I0 => sel0(3),
      I1 => sel0(0),
      I2 => sel0(1),
      I3 => sel0(2),
      O => seg(2)
    );
\seg[3]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C214"
    )
        port map (
      I0 => sel0(3),
      I1 => sel0(2),
      I2 => sel0(0),
      I3 => sel0(1),
      O => seg(3)
    );
\seg[4]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5710"
    )
        port map (
      I0 => sel0(3),
      I1 => sel0(1),
      I2 => sel0(2),
      I3 => sel0(0),
      O => seg(4)
    );
\seg[5]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5190"
    )
        port map (
      I0 => sel0(3),
      I1 => sel0(2),
      I2 => sel0(0),
      I3 => sel0(1),
      O => seg(5)
    );
\seg[6]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4025"
    )
        port map (
      I0 => sel0(3),
      I1 => sel0(0),
      I2 => sel0(2),
      I3 => sel0(1),
      O => seg(6)
    );
\seg[6]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => hex(7),
      I1 => hex(3),
      I2 => hex(15),
      I3 => pos(1),
      I4 => pos(0),
      I5 => hex(11),
      O => sel0(3)
    );
\seg[6]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => hex(4),
      I1 => hex(0),
      I2 => hex(12),
      I3 => pos(1),
      I4 => pos(0),
      I5 => hex(8),
      O => sel0(0)
    );
\seg[6]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => hex(6),
      I1 => hex(2),
      I2 => hex(14),
      I3 => pos(1),
      I4 => pos(0),
      I5 => hex(10),
      O => sel0(2)
    );
\seg[6]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => hex(5),
      I1 => hex(1),
      I2 => hex(13),
      I3 => pos(1),
      I4 => pos(0),
      I5 => hex(9),
      O => sel0(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system3_segmentDriver_0_1 is
  port (
    seg : out STD_LOGIC_VECTOR ( 6 downto 0 );
    an : out STD_LOGIC_VECTOR ( 3 downto 0 );
    hex : in STD_LOGIC_VECTOR ( 15 downto 0 );
    fClk : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of system3_segmentDriver_0_1 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of system3_segmentDriver_0_1 : entity is "system3_segmentDriver_0_1,segmentDriver,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of system3_segmentDriver_0_1 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of system3_segmentDriver_0_1 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of system3_segmentDriver_0_1 : entity is "segmentDriver,Vivado 2018.3";
end system3_segmentDriver_0_1;

architecture STRUCTURE of system3_segmentDriver_0_1 is
begin
inst: entity work.system3_segmentDriver_0_1_segmentDriver
     port map (
      an(3 downto 0) => an(3 downto 0),
      fClk => fClk,
      hex(15 downto 0) => hex(15 downto 0),
      seg(6 downto 0) => seg(6 downto 0)
    );
end STRUCTURE;
