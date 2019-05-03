-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
-- Date        : Fri Mar 08 18:06:24 2019
-- Host        : shegedus running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ system_system_ila_0_stub.vhdl
-- Design      : system_system_ila_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    clk : in STD_LOGIC;
    SLOT_0_FIFO_WRITE_wr_data : in STD_LOGIC;
    SLOT_0_FIFO_WRITE_wr_en : in STD_LOGIC;
    SLOT_0_FIFO_WRITE_full : in STD_LOGIC;
    SLOT_1_FIFO_READ_rd_data : in STD_LOGIC;
    SLOT_1_FIFO_READ_rd_en : in STD_LOGIC;
    SLOT_1_FIFO_READ_empty : in STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,SLOT_0_FIFO_WRITE_wr_data,SLOT_0_FIFO_WRITE_wr_en,SLOT_0_FIFO_WRITE_full,SLOT_1_FIFO_READ_rd_data,SLOT_1_FIFO_READ_rd_en,SLOT_1_FIFO_READ_empty";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "bd_0203,Vivado 2016.4";
begin
end;
