-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Sun Feb 17 19:51:27 2019
-- Host        : DESKTOP-M83089R running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/aqover-pc/Documents/Learning/HWLabI/Verilog/Lab04/Lab04.srcs/sources_1/bd/system3/ip/system3_clkDivide_0_1/system3_clkDivide_0_1_stub.vhdl
-- Design      : system3_clkDivide_0_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity system3_clkDivide_0_1 is
  Port ( 
    fClk : out STD_LOGIC;
    clk : in STD_LOGIC;
    bit : in STD_LOGIC_VECTOR ( 4 downto 0 )
  );

end system3_clkDivide_0_1;

architecture stub of system3_clkDivide_0_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "fClk,clk,bit[4:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "clkDivide,Vivado 2018.3";
begin
end;
