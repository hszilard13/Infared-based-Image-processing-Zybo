-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
-- Date        : Thu Mar 28 16:38:18 2019
-- Host        : shegedus running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top system_xlconstant_0_0 -prefix
--               system_xlconstant_0_0_ system_xlconstant_0_0_stub.vhdl
-- Design      : system_xlconstant_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity system_xlconstant_0_0 is
  Port ( 
    dout : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );

end system_xlconstant_0_0;

architecture stub of system_xlconstant_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "dout[2:0]";
begin
end;
