
################################################################
# This is a generated script based on design: system
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2016.4
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_msg_id "BD_TCL-109" "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source system_script.tcl

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7z020clg400-1
   set_property BOARD_PART digilentinc.com:zybo-z7-20:part0:1.0 [current_project]
}


# CHANGE DESIGN NAME HERE
set design_name system

# This script was generated for a remote BD. To create a non-remote design,
# change the variable <run_remote_bd_flow> to <0>.

set run_remote_bd_flow 1
if { $run_remote_bd_flow == 1 } {
  # Set the reference directory for source file relative paths (by default 
  # the value is script directory path)
  set origin_dir ./bd

  # Use origin directory path location variable, if specified in the tcl shell
  if { [info exists ::origin_dir_loc] } {
     set origin_dir $::origin_dir_loc
  }

  set str_bd_folder [file normalize ${origin_dir}]
  set str_bd_filepath ${str_bd_folder}/${design_name}/${design_name}.bd

  # Check if remote design exists on disk
  if { [file exists $str_bd_filepath ] == 1 } {
     catch {common::send_msg_id "BD_TCL-110" "ERROR" "The remote BD file path <$str_bd_filepath> already exists!"}
     common::send_msg_id "BD_TCL-008" "INFO" "To create a non-remote BD, change the variable <run_remote_bd_flow> to <0>."
     common::send_msg_id "BD_TCL-009" "INFO" "Also make sure there is no design <$design_name> existing in your current project."

     return 1
  }

  # Check if design exists in memory
  set list_existing_designs [get_bd_designs -quiet $design_name]
  if { $list_existing_designs ne "" } {
     catch {common::send_msg_id "BD_TCL-111" "ERROR" "The design <$design_name> already exists in this project! Will not create the remote BD <$design_name> at the folder <$str_bd_folder>."}

     common::send_msg_id "BD_TCL-010" "INFO" "To create a non-remote BD, change the variable <run_remote_bd_flow> to <0> or please set a different value to variable <design_name>."

     return 1
  }

  # Check if design exists on disk within project
  set list_existing_designs [get_files */${design_name}.bd]
  if { $list_existing_designs ne "" } {
     catch {common::send_msg_id "BD_TCL-112" "ERROR" "The design <$design_name> already exists in this project at location:
    $list_existing_designs"}
     catch {common::send_msg_id "BD_TCL-113" "ERROR" "Will not create the remote BD <$design_name> at the folder <$str_bd_folder>."}

     common::send_msg_id "BD_TCL-011" "INFO" "To create a non-remote BD, change the variable <run_remote_bd_flow> to <0> or please set a different value to variable <design_name>."

     return 1
  }

  # Now can create the remote BD
  # NOTE - usage of <-dir> will create <$str_bd_folder/$design_name/$design_name.bd>
  create_bd_design -dir $str_bd_folder $design_name
} else {

  # Create regular design
  if { [catch {create_bd_design $design_name} errmsg] } {
     common::send_msg_id "BD_TCL-012" "INFO" "Please set a different value to variable <design_name>."

     return 1
  }
}

current_bd_design $design_name

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports
  set APB_M [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:apb_rtl:1.0 APB_M ]
  set DDR [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:ddrx_rtl:1.0 DDR ]
  set FIFO_READ [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:fifo_read_rtl:1.0 FIFO_READ ]
  set FIFO_READ_1 [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:fifo_read_rtl:1.0 FIFO_READ_1 ]
  set FIFO_READ_2 [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:fifo_read_rtl:1.0 FIFO_READ_2 ]
  set FIFO_READ_3 [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:fifo_read_rtl:1.0 FIFO_READ_3 ]
  set FIFO_READ_4 [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:fifo_read_rtl:1.0 FIFO_READ_4 ]
  set FIFO_READ_5 [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:fifo_read_rtl:1.0 FIFO_READ_5 ]
  set FIFO_READ_6 [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:fifo_read_rtl:1.0 FIFO_READ_6 ]
  set FIFO_READ_7 [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:fifo_read_rtl:1.0 FIFO_READ_7 ]
  set FIFO_WRITE [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:fifo_write_rtl:1.0 FIFO_WRITE ]
  set FIFO_WRITE_1 [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:fifo_write_rtl:1.0 FIFO_WRITE_1 ]
  set FIFO_WRITE_2 [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:fifo_write_rtl:1.0 FIFO_WRITE_2 ]
  set FIFO_WRITE_3 [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:fifo_write_rtl:1.0 FIFO_WRITE_3 ]
  set FIFO_WRITE_4 [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:fifo_write_rtl:1.0 FIFO_WRITE_4 ]
  set FIFO_WRITE_5 [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:fifo_write_rtl:1.0 FIFO_WRITE_5 ]
  set FIFO_WRITE_6 [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:fifo_write_rtl:1.0 FIFO_WRITE_6 ]
  set FIFO_WRITE_7 [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:fifo_write_rtl:1.0 FIFO_WRITE_7 ]
  set FIXED_IO [ create_bd_intf_port -mode Master -vlnv xilinx.com:display_processing_system7:fixedio_rtl:1.0 FIXED_IO ]
  set M_AXIS_MM2S [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 M_AXIS_MM2S ]
  set S00_AXI [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S00_AXI ]
  set_property -dict [ list \
CONFIG.ADDR_WIDTH {32} \
CONFIG.ARUSER_WIDTH {0} \
CONFIG.AWUSER_WIDTH {0} \
CONFIG.BUSER_WIDTH {0} \
CONFIG.DATA_WIDTH {32} \
CONFIG.HAS_BRESP {1} \
CONFIG.HAS_BURST {1} \
CONFIG.HAS_CACHE {1} \
CONFIG.HAS_LOCK {1} \
CONFIG.HAS_PROT {1} \
CONFIG.HAS_QOS {1} \
CONFIG.HAS_REGION {0} \
CONFIG.HAS_RRESP {1} \
CONFIG.HAS_WSTRB {1} \
CONFIG.ID_WIDTH {2} \
CONFIG.MAX_BURST_LENGTH {256} \
CONFIG.NUM_READ_OUTSTANDING {2} \
CONFIG.NUM_READ_THREADS {1} \
CONFIG.NUM_WRITE_OUTSTANDING {2} \
CONFIG.NUM_WRITE_THREADS {1} \
CONFIG.PROTOCOL {AXI4} \
CONFIG.READ_WRITE_MODE {READ_WRITE} \
CONFIG.RUSER_BITS_PER_BYTE {0} \
CONFIG.RUSER_WIDTH {0} \
CONFIG.SUPPORTS_NARROW_BURST {1} \
CONFIG.WUSER_BITS_PER_BYTE {0} \
CONFIG.WUSER_WIDTH {0} \
 ] $S00_AXI
  set S01_AXI [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S01_AXI ]
  set_property -dict [ list \
CONFIG.ADDR_WIDTH {32} \
CONFIG.ARUSER_WIDTH {0} \
CONFIG.AWUSER_WIDTH {0} \
CONFIG.BUSER_WIDTH {0} \
CONFIG.DATA_WIDTH {32} \
CONFIG.HAS_BRESP {1} \
CONFIG.HAS_BURST {1} \
CONFIG.HAS_CACHE {1} \
CONFIG.HAS_LOCK {1} \
CONFIG.HAS_PROT {1} \
CONFIG.HAS_QOS {1} \
CONFIG.HAS_REGION {0} \
CONFIG.HAS_RRESP {1} \
CONFIG.HAS_WSTRB {1} \
CONFIG.ID_WIDTH {2} \
CONFIG.MAX_BURST_LENGTH {256} \
CONFIG.NUM_READ_OUTSTANDING {2} \
CONFIG.NUM_READ_THREADS {1} \
CONFIG.NUM_WRITE_OUTSTANDING {2} \
CONFIG.NUM_WRITE_THREADS {1} \
CONFIG.PROTOCOL {AXI4} \
CONFIG.READ_WRITE_MODE {READ_WRITE} \
CONFIG.RUSER_BITS_PER_BYTE {0} \
CONFIG.RUSER_WIDTH {0} \
CONFIG.SUPPORTS_NARROW_BURST {1} \
CONFIG.WUSER_BITS_PER_BYTE {0} \
CONFIG.WUSER_WIDTH {0} \
 ] $S01_AXI
  set S02_AXI [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S02_AXI ]
  set_property -dict [ list \
CONFIG.ADDR_WIDTH {32} \
CONFIG.ARUSER_WIDTH {0} \
CONFIG.AWUSER_WIDTH {0} \
CONFIG.BUSER_WIDTH {0} \
CONFIG.DATA_WIDTH {32} \
CONFIG.HAS_BRESP {1} \
CONFIG.HAS_BURST {1} \
CONFIG.HAS_CACHE {1} \
CONFIG.HAS_LOCK {1} \
CONFIG.HAS_PROT {1} \
CONFIG.HAS_QOS {1} \
CONFIG.HAS_REGION {0} \
CONFIG.HAS_RRESP {1} \
CONFIG.HAS_WSTRB {1} \
CONFIG.ID_WIDTH {2} \
CONFIG.MAX_BURST_LENGTH {256} \
CONFIG.NUM_READ_OUTSTANDING {2} \
CONFIG.NUM_READ_THREADS {1} \
CONFIG.NUM_WRITE_OUTSTANDING {2} \
CONFIG.NUM_WRITE_THREADS {1} \
CONFIG.PROTOCOL {AXI4} \
CONFIG.READ_WRITE_MODE {READ_WRITE} \
CONFIG.RUSER_BITS_PER_BYTE {0} \
CONFIG.RUSER_WIDTH {0} \
CONFIG.SUPPORTS_NARROW_BURST {1} \
CONFIG.WUSER_BITS_PER_BYTE {0} \
CONFIG.WUSER_WIDTH {0} \
 ] $S02_AXI
  set S_AXIS_S2MM [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 S_AXIS_S2MM ]
  set_property -dict [ list \
CONFIG.HAS_TKEEP {1} \
CONFIG.HAS_TLAST {1} \
CONFIG.HAS_TREADY {1} \
CONFIG.HAS_TSTRB {0} \
CONFIG.LAYERED_METADATA {undef} \
CONFIG.TDATA_NUM_BYTES {3} \
CONFIG.TDEST_WIDTH {0} \
CONFIG.TID_WIDTH {0} \
CONFIG.TUSER_WIDTH {1} \
 ] $S_AXIS_S2MM
  set cam_gpio [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:gpio_rtl:1.0 cam_gpio ]
  set cam_iic [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:iic_rtl:1.0 cam_iic ]
  set dphy_hs_clock [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:diff_clock_rtl:1.0 dphy_hs_clock ]
  set_property -dict [ list \
CONFIG.FREQ_HZ {336000000} \
 ] $dphy_hs_clock
  set hdmi_tx [ create_bd_intf_port -mode Master -vlnv digilentinc.com:interface:tmds_rtl:1.0 hdmi_tx ]

  # Create ports
  set axi_clk_0 [ create_bd_port -dir I -type clk axi_clk_0 ]
  set_property -dict [ list \
CONFIG.CLK_DOMAIN {system_clk_wiz_0_0_clk_out1} \
CONFIG.FREQ_HZ {50000000} \
CONFIG.PHASE {0.0} \
 ] $axi_clk_0
  set axi_clk_1 [ create_bd_port -dir I -type clk axi_clk_1 ]
  set_property -dict [ list \
CONFIG.CLK_DOMAIN {system_clk_wiz_0_0_clk_out1} \
CONFIG.FREQ_HZ {50000000} \
CONFIG.PHASE {0.0} \
 ] $axi_clk_1
  set axi_clk_2 [ create_bd_port -dir I -type clk axi_clk_2 ]
  set_property -dict [ list \
CONFIG.CLK_DOMAIN {system_clk_wiz_0_0_clk_out1} \
CONFIG.FREQ_HZ {50000000} \
CONFIG.PHASE {0.0} \
 ] $axi_clk_2
  set axi_rst_0 [ create_bd_port -dir I axi_rst_0 ]
  set axi_rst_1 [ create_bd_port -dir I axi_rst_1 ]
  set axi_rst_2 [ create_bd_port -dir I axi_rst_2 ]
  set clk [ create_bd_port -dir O -type clk clk ]
  set_property -dict [ list \
CONFIG.ASSOCIATED_BUSIF {S_AXIS_S2MM:M_AXIS_MM2S:S02_AXI:S01_AXI:S00_AXI} \
 ] $clk
  set clk_1 [ create_bd_port -dir I -type clk clk_1 ]
  set_property -dict [ list \
CONFIG.CLK_DOMAIN {system_clk_wiz_0_0_clk_out1} \
CONFIG.FREQ_HZ {150000000} \
CONFIG.PHASE {0.0} \
 ] $clk_1
  set clk_2 [ create_bd_port -dir I -type clk clk_2 ]
  set_property -dict [ list \
CONFIG.CLK_DOMAIN {system_clk_wiz_0_0_clk_out1} \
CONFIG.FREQ_HZ {150000000} \
CONFIG.PHASE {0.0} \
 ] $clk_2
  set clk_3 [ create_bd_port -dir I -type clk clk_3 ]
  set_property -dict [ list \
CONFIG.CLK_DOMAIN {system_clk_wiz_0_0_clk_out1} \
CONFIG.FREQ_HZ {150000000} \
CONFIG.PHASE {0.0} \
 ] $clk_3
  set clk_4 [ create_bd_port -dir I -type clk clk_4 ]
  set_property -dict [ list \
CONFIG.CLK_DOMAIN {system_clk_wiz_0_0_clk_out1} \
CONFIG.FREQ_HZ {150000000} \
CONFIG.PHASE {0.0} \
 ] $clk_4
  set clk_5 [ create_bd_port -dir I -type clk clk_5 ]
  set_property -dict [ list \
CONFIG.CLK_DOMAIN {system_clk_wiz_0_0_clk_out1} \
CONFIG.FREQ_HZ {150000000} \
CONFIG.PHASE {0.0} \
 ] $clk_5
  set clk_axi [ create_bd_port -dir O -type clk clk_axi ]
  set data_count [ create_bd_port -dir O -from 10 -to 0 data_count ]
  set data_count_1 [ create_bd_port -dir O -from 10 -to 0 data_count_1 ]
  set data_count_2 [ create_bd_port -dir O -from 10 -to 0 data_count_2 ]
  set data_count_3 [ create_bd_port -dir O -from 10 -to 0 data_count_3 ]
  set data_count_4 [ create_bd_port -dir O -from 10 -to 0 data_count_4 ]
  set data_count_5 [ create_bd_port -dir O -from 10 -to 0 data_count_5 ]
  set data_count_6 [ create_bd_port -dir O -from 10 -to 0 data_count_6 ]
  set data_count_7 [ create_bd_port -dir O -from 10 -to 0 data_count_7 ]
  set dphy_clk_lp_n [ create_bd_port -dir I dphy_clk_lp_n ]
  set dphy_clk_lp_p [ create_bd_port -dir I dphy_clk_lp_p ]
  set dphy_data_hs_n [ create_bd_port -dir I -from 1 -to 0 dphy_data_hs_n ]
  set dphy_data_hs_p [ create_bd_port -dir I -from 1 -to 0 dphy_data_hs_p ]
  set dphy_data_lp_n [ create_bd_port -dir I -from 1 -to 0 dphy_data_lp_n ]
  set dphy_data_lp_p [ create_bd_port -dir I -from 1 -to 0 dphy_data_lp_p ]
  set rst [ create_bd_port -dir I rst ]
  set rst_1 [ create_bd_port -dir I rst_1 ]
  set rst_2 [ create_bd_port -dir I rst_2 ]
  set rst_3 [ create_bd_port -dir I rst_3 ]
  set rst_4 [ create_bd_port -dir I rst_4 ]
  set rst_n [ create_bd_port -dir O -from 0 -to 0 -type rst rst_n ]

  # Create instance: AXI_BayerToRGB_1, and set properties
  set AXI_BayerToRGB_1 [ create_bd_cell -type ip -vlnv digilentinc.com:user:AXI_BayerToRGB:1.0 AXI_BayerToRGB_1 ]

  # Create instance: AXI_GammaCorrection_0, and set properties
  set AXI_GammaCorrection_0 [ create_bd_cell -type ip -vlnv digilentinc.com:user:AXI_GammaCorrection:1.0 AXI_GammaCorrection_0 ]

  # Create instance: MIPI_CSI_2_RX_0, and set properties
  set MIPI_CSI_2_RX_0 [ create_bd_cell -type ip -vlnv digilentinc.com:ip:MIPI_CSI_2_RX:1.0 MIPI_CSI_2_RX_0 ]
  set_property -dict [ list \
CONFIG.kDebug {false} \
CONFIG.kGenerateAXIL {true} \
 ] $MIPI_CSI_2_RX_0

  # Need to retain value_src of defaults
  set_property -dict [ list \
CONFIG.kDebug.VALUE_SRC {DEFAULT} \
 ] $MIPI_CSI_2_RX_0

  # Create instance: MIPI_D_PHY_RX_0, and set properties
  set MIPI_D_PHY_RX_0 [ create_bd_cell -type ip -vlnv digilentinc.com:ip:MIPI_D_PHY_RX:1.0 MIPI_D_PHY_RX_0 ]
  set_property -dict [ list \
CONFIG.kDebug {false} \
CONFIG.kGenerateAXIL {true} \
CONFIG.kNoOfDataLanes {2} \
 ] $MIPI_D_PHY_RX_0

  # Need to retain value_src of defaults
  set_property -dict [ list \
CONFIG.kGenerateAXIL.VALUE_SRC {DEFAULT} \
 ] $MIPI_D_PHY_RX_0

  # Create instance: axi_apb_bridge_0, and set properties
  set axi_apb_bridge_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_apb_bridge:3.0 axi_apb_bridge_0 ]
  set_property -dict [ list \
CONFIG.C_APB_NUM_SLAVES {1} \
 ] $axi_apb_bridge_0

  # Create instance: axi_interconnect_0, and set properties
  set axi_interconnect_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_interconnect_0 ]
  set_property -dict [ list \
CONFIG.NUM_MI {1} \
CONFIG.NUM_SI {3} \
 ] $axi_interconnect_0

  # Create instance: axi_mem_intercon, and set properties
  set axi_mem_intercon [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_mem_intercon ]
  set_property -dict [ list \
CONFIG.NUM_MI {1} \
CONFIG.NUM_SI {2} \
 ] $axi_mem_intercon

  # Create instance: axi_mem_intercon_1, and set properties
  set axi_mem_intercon_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_mem_intercon_1 ]
  set_property -dict [ list \
CONFIG.NUM_MI {1} \
CONFIG.NUM_SI {2} \
 ] $axi_mem_intercon_1

  # Create instance: axi_vdma_0, and set properties
  set axi_vdma_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_vdma:6.2 axi_vdma_0 ]
  set_property -dict [ list \
CONFIG.c_addr_width {32} \
CONFIG.c_include_mm2s_dre {0} \
CONFIG.c_include_s2mm {1} \
CONFIG.c_include_s2mm_dre {0} \
CONFIG.c_m_axi_s2mm_data_width {64} \
CONFIG.c_m_axis_mm2s_tdata_width {24} \
CONFIG.c_mm2s_genlock_mode {3} \
CONFIG.c_mm2s_linebuffer_depth {2048} \
CONFIG.c_num_fstores {3} \
CONFIG.c_s2mm_genlock_mode {2} \
CONFIG.c_s2mm_linebuffer_depth {2048} \
 ] $axi_vdma_0

  # Create instance: axi_vdma_1, and set properties
  set axi_vdma_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_vdma:6.2 axi_vdma_1 ]
  set_property -dict [ list \
CONFIG.c_addr_width {32} \
CONFIG.c_include_mm2s_dre {0} \
CONFIG.c_include_s2mm {1} \
CONFIG.c_include_s2mm_dre {0} \
CONFIG.c_m_axi_s2mm_data_width {64} \
CONFIG.c_m_axis_mm2s_tdata_width {24} \
CONFIG.c_mm2s_genlock_mode {3} \
CONFIG.c_mm2s_linebuffer_depth {2048} \
CONFIG.c_num_fstores {3} \
CONFIG.c_s2mm_genlock_mode {2} \
CONFIG.c_s2mm_linebuffer_depth {2048} \
 ] $axi_vdma_1

  # Create instance: clk_wiz_0, and set properties
  set clk_wiz_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:5.3 clk_wiz_0 ]
  set_property -dict [ list \
CONFIG.CLKOUT1_DRIVES {BUFG} \
CONFIG.CLKOUT1_JITTER {151.636} \
CONFIG.CLKOUT1_PHASE_ERROR {98.575} \
CONFIG.CLKOUT1_REQUESTED_OUT_FREQ {50} \
CONFIG.CLKOUT2_DRIVES {BUFG} \
CONFIG.CLKOUT2_JITTER {130.958} \
CONFIG.CLKOUT2_PHASE_ERROR {98.575} \
CONFIG.CLKOUT2_REQUESTED_OUT_FREQ {100} \
CONFIG.CLKOUT2_USED {true} \
CONFIG.CLKOUT3_DRIVES {BUFG} \
CONFIG.CLKOUT3_JITTER {114.829} \
CONFIG.CLKOUT3_PHASE_ERROR {98.575} \
CONFIG.CLKOUT3_REQUESTED_OUT_FREQ {200} \
CONFIG.CLKOUT3_USED {true} \
CONFIG.CLKOUT4_DRIVES {BUFG} \
CONFIG.CLKOUT5_DRIVES {BUFG} \
CONFIG.CLKOUT6_DRIVES {BUFG} \
CONFIG.CLKOUT7_DRIVES {BUFG} \
CONFIG.CLK_OUT2_PORT {clk_out2} \
CONFIG.CLK_OUT3_PORT {clk_out3} \
CONFIG.MMCM_CLKFBOUT_MULT_F {10.000} \
CONFIG.MMCM_CLKIN1_PERIOD {10.0} \
CONFIG.MMCM_CLKIN2_PERIOD {10.0} \
CONFIG.MMCM_CLKOUT0_DIVIDE_F {20.000} \
CONFIG.MMCM_CLKOUT1_DIVIDE {10} \
CONFIG.MMCM_CLKOUT2_DIVIDE {5} \
CONFIG.MMCM_COMPENSATION {ZHOLD} \
CONFIG.MMCM_DIVCLK_DIVIDE {1} \
CONFIG.NUM_OUT_CLKS {3} \
CONFIG.PRIM_SOURCE {Global_buffer} \
CONFIG.RESET_PORT {reset} \
CONFIG.RESET_TYPE {ACTIVE_HIGH} \
CONFIG.SECONDARY_SOURCE {Single_ended_clock_capable_pin} \
CONFIG.USE_PHASE_ALIGNMENT {false} \
CONFIG.USE_RESET {false} \
 ] $clk_wiz_0

  # Need to retain value_src of defaults
  set_property -dict [ list \
CONFIG.CLKOUT3_REQUESTED_OUT_FREQ.VALUE_SRC {DEFAULT} \
CONFIG.MMCM_CLKIN1_PERIOD.VALUE_SRC {DEFAULT} \
CONFIG.MMCM_CLKIN2_PERIOD.VALUE_SRC {DEFAULT} \
CONFIG.MMCM_COMPENSATION.VALUE_SRC {DEFAULT} \
 ] $clk_wiz_0

  # Create instance: fifo_generator_0, and set properties
  set fifo_generator_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:fifo_generator:13.1 fifo_generator_0 ]
  set_property -dict [ list \
CONFIG.Data_Count {true} \
CONFIG.Data_Count_Width {11} \
CONFIG.Fifo_Implementation {Common_Clock_Block_RAM} \
CONFIG.Full_Flags_Reset_Value {1} \
CONFIG.Full_Threshold_Assert_Value {2046} \
CONFIG.Full_Threshold_Negate_Value {2045} \
CONFIG.Input_Data_Width {48} \
CONFIG.Input_Depth {2048} \
CONFIG.Output_Data_Width {48} \
CONFIG.Output_Depth {2048} \
CONFIG.Read_Data_Count_Width {11} \
CONFIG.Reset_Type {Asynchronous_Reset} \
CONFIG.Use_Embedded_Registers {false} \
CONFIG.Write_Data_Count_Width {11} \
 ] $fifo_generator_0

  # Create instance: fifo_generator_1, and set properties
  set fifo_generator_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:fifo_generator:13.1 fifo_generator_1 ]
  set_property -dict [ list \
CONFIG.Data_Count {true} \
CONFIG.Data_Count_Width {11} \
CONFIG.Fifo_Implementation {Common_Clock_Block_RAM} \
CONFIG.Full_Flags_Reset_Value {1} \
CONFIG.Full_Threshold_Assert_Value {2046} \
CONFIG.Full_Threshold_Negate_Value {2045} \
CONFIG.Input_Data_Width {48} \
CONFIG.Input_Depth {2048} \
CONFIG.Output_Data_Width {48} \
CONFIG.Output_Depth {2048} \
CONFIG.Read_Data_Count_Width {11} \
CONFIG.Reset_Type {Asynchronous_Reset} \
CONFIG.Use_Embedded_Registers {false} \
CONFIG.Write_Data_Count_Width {11} \
 ] $fifo_generator_1

  # Create instance: fifo_generator_2, and set properties
  set fifo_generator_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:fifo_generator:13.1 fifo_generator_2 ]
  set_property -dict [ list \
CONFIG.Data_Count {true} \
CONFIG.Data_Count_Width {11} \
CONFIG.Fifo_Implementation {Common_Clock_Block_RAM} \
CONFIG.Full_Flags_Reset_Value {1} \
CONFIG.Full_Threshold_Assert_Value {2046} \
CONFIG.Full_Threshold_Negate_Value {2045} \
CONFIG.Input_Data_Width {48} \
CONFIG.Input_Depth {2048} \
CONFIG.Output_Data_Width {48} \
CONFIG.Output_Depth {2048} \
CONFIG.Read_Data_Count_Width {11} \
CONFIG.Reset_Type {Asynchronous_Reset} \
CONFIG.Use_Embedded_Registers {false} \
CONFIG.Write_Data_Count_Width {11} \
 ] $fifo_generator_2

  # Create instance: fifo_generator_3, and set properties
  set fifo_generator_3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:fifo_generator:13.1 fifo_generator_3 ]
  set_property -dict [ list \
CONFIG.Data_Count {true} \
CONFIG.Data_Count_Width {11} \
CONFIG.Fifo_Implementation {Common_Clock_Block_RAM} \
CONFIG.Full_Flags_Reset_Value {1} \
CONFIG.Full_Threshold_Assert_Value {2046} \
CONFIG.Full_Threshold_Negate_Value {2045} \
CONFIG.Input_Data_Width {48} \
CONFIG.Input_Depth {2048} \
CONFIG.Output_Data_Width {48} \
CONFIG.Output_Depth {2048} \
CONFIG.Read_Data_Count_Width {11} \
CONFIG.Reset_Type {Asynchronous_Reset} \
CONFIG.Use_Embedded_Registers {false} \
CONFIG.Write_Data_Count_Width {11} \
 ] $fifo_generator_3

  # Create instance: fifo_generator_4, and set properties
  set fifo_generator_4 [ create_bd_cell -type ip -vlnv xilinx.com:ip:fifo_generator:13.1 fifo_generator_4 ]
  set_property -dict [ list \
CONFIG.Data_Count {true} \
CONFIG.Data_Count_Width {11} \
CONFIG.Fifo_Implementation {Common_Clock_Block_RAM} \
CONFIG.Full_Flags_Reset_Value {1} \
CONFIG.Full_Threshold_Assert_Value {2046} \
CONFIG.Full_Threshold_Negate_Value {2045} \
CONFIG.Input_Data_Width {48} \
CONFIG.Input_Depth {2048} \
CONFIG.Output_Data_Width {48} \
CONFIG.Output_Depth {2048} \
CONFIG.Read_Data_Count_Width {11} \
CONFIG.Reset_Type {Asynchronous_Reset} \
CONFIG.Use_Embedded_Registers {false} \
CONFIG.Write_Data_Count_Width {11} \
 ] $fifo_generator_4

  # Create instance: fifo_generator_5, and set properties
  set fifo_generator_5 [ create_bd_cell -type ip -vlnv xilinx.com:ip:fifo_generator:13.1 fifo_generator_5 ]
  set_property -dict [ list \
CONFIG.Data_Count {true} \
CONFIG.Data_Count_Width {11} \
CONFIG.Fifo_Implementation {Common_Clock_Block_RAM} \
CONFIG.Full_Flags_Reset_Value {1} \
CONFIG.Full_Threshold_Assert_Value {2046} \
CONFIG.Full_Threshold_Negate_Value {2045} \
CONFIG.Input_Data_Width {64} \
CONFIG.Input_Depth {2048} \
CONFIG.Output_Data_Width {64} \
CONFIG.Output_Depth {2048} \
CONFIG.Read_Data_Count_Width {11} \
CONFIG.Reset_Type {Asynchronous_Reset} \
CONFIG.Use_Embedded_Registers {false} \
CONFIG.Write_Data_Count_Width {11} \
 ] $fifo_generator_5

  # Create instance: fifo_generator_6, and set properties
  set fifo_generator_6 [ create_bd_cell -type ip -vlnv xilinx.com:ip:fifo_generator:13.1 fifo_generator_6 ]
  set_property -dict [ list \
CONFIG.Data_Count {true} \
CONFIG.Data_Count_Width {11} \
CONFIG.Fifo_Implementation {Common_Clock_Block_RAM} \
CONFIG.Full_Flags_Reset_Value {1} \
CONFIG.Full_Threshold_Assert_Value {2046} \
CONFIG.Full_Threshold_Negate_Value {2045} \
CONFIG.Input_Data_Width {64} \
CONFIG.Input_Depth {2048} \
CONFIG.Output_Data_Width {64} \
CONFIG.Output_Depth {2048} \
CONFIG.Read_Data_Count_Width {11} \
CONFIG.Reset_Type {Asynchronous_Reset} \
CONFIG.Use_Embedded_Registers {false} \
CONFIG.Write_Data_Count_Width {11} \
 ] $fifo_generator_6

  # Create instance: fifo_generator_7, and set properties
  set fifo_generator_7 [ create_bd_cell -type ip -vlnv xilinx.com:ip:fifo_generator:13.1 fifo_generator_7 ]
  set_property -dict [ list \
CONFIG.Data_Count {true} \
CONFIG.Data_Count_Width {11} \
CONFIG.Fifo_Implementation {Common_Clock_Block_RAM} \
CONFIG.Full_Flags_Reset_Value {1} \
CONFIG.Full_Threshold_Assert_Value {2046} \
CONFIG.Full_Threshold_Negate_Value {2045} \
CONFIG.Input_Data_Width {64} \
CONFIG.Input_Depth {2048} \
CONFIG.Output_Data_Width {64} \
CONFIG.Output_Depth {2048} \
CONFIG.Read_Data_Count_Width {11} \
CONFIG.Reset_Type {Asynchronous_Reset} \
CONFIG.Use_Embedded_Registers {false} \
CONFIG.Write_Data_Count_Width {11} \
 ] $fifo_generator_7

  # Create instance: processing_system7_0, and set properties
  set processing_system7_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:processing_system7:5.5 processing_system7_0 ]
  set_property -dict [ list \
CONFIG.PCW_ACT_APU_PERIPHERAL_FREQMHZ {666.666687} \
CONFIG.PCW_ACT_CAN0_PERIPHERAL_FREQMHZ {23.8095} \
CONFIG.PCW_ACT_CAN1_PERIPHERAL_FREQMHZ {23.8095} \
CONFIG.PCW_ACT_CAN_PERIPHERAL_FREQMHZ {10.000000} \
CONFIG.PCW_ACT_DCI_PERIPHERAL_FREQMHZ {10.158730} \
CONFIG.PCW_ACT_ENET0_PERIPHERAL_FREQMHZ {125.000000} \
CONFIG.PCW_ACT_ENET1_PERIPHERAL_FREQMHZ {10.000000} \
CONFIG.PCW_ACT_FPGA0_PERIPHERAL_FREQMHZ {100.000000} \
CONFIG.PCW_ACT_FPGA1_PERIPHERAL_FREQMHZ {10.000000} \
CONFIG.PCW_ACT_FPGA2_PERIPHERAL_FREQMHZ {10.000000} \
CONFIG.PCW_ACT_FPGA3_PERIPHERAL_FREQMHZ {10.000000} \
CONFIG.PCW_ACT_I2C_PERIPHERAL_FREQMHZ {50} \
CONFIG.PCW_ACT_PCAP_PERIPHERAL_FREQMHZ {200.000000} \
CONFIG.PCW_ACT_QSPI_PERIPHERAL_FREQMHZ {200.000000} \
CONFIG.PCW_ACT_SDIO_PERIPHERAL_FREQMHZ {100.000000} \
CONFIG.PCW_ACT_SMC_PERIPHERAL_FREQMHZ {10.000000} \
CONFIG.PCW_ACT_SPI_PERIPHERAL_FREQMHZ {10.000000} \
CONFIG.PCW_ACT_TPIU_PERIPHERAL_FREQMHZ {200.000000} \
CONFIG.PCW_ACT_TTC0_CLK0_PERIPHERAL_FREQMHZ {111.111115} \
CONFIG.PCW_ACT_TTC0_CLK1_PERIPHERAL_FREQMHZ {111.111115} \
CONFIG.PCW_ACT_TTC0_CLK2_PERIPHERAL_FREQMHZ {111.111115} \
CONFIG.PCW_ACT_TTC1_CLK0_PERIPHERAL_FREQMHZ {111.111115} \
CONFIG.PCW_ACT_TTC1_CLK1_PERIPHERAL_FREQMHZ {111.111115} \
CONFIG.PCW_ACT_TTC1_CLK2_PERIPHERAL_FREQMHZ {111.111115} \
CONFIG.PCW_ACT_TTC_PERIPHERAL_FREQMHZ {50} \
CONFIG.PCW_ACT_UART_PERIPHERAL_FREQMHZ {100.000000} \
CONFIG.PCW_ACT_USB0_PERIPHERAL_FREQMHZ {60} \
CONFIG.PCW_ACT_USB1_PERIPHERAL_FREQMHZ {60} \
CONFIG.PCW_ACT_WDT_PERIPHERAL_FREQMHZ {111.111115} \
CONFIG.PCW_APU_CLK_RATIO_ENABLE {6:2:1} \
CONFIG.PCW_APU_PERIPHERAL_FREQMHZ {666.666666} \
CONFIG.PCW_ARMPLL_CTRL_FBDIV {40} \
CONFIG.PCW_CAN0_BASEADDR {0xE0008000} \
CONFIG.PCW_CAN0_CAN0_IO {<Select>} \
CONFIG.PCW_CAN0_GRP_CLK_ENABLE {0} \
CONFIG.PCW_CAN0_GRP_CLK_IO {<Select>} \
CONFIG.PCW_CAN0_HIGHADDR {0xE0008FFF} \
CONFIG.PCW_CAN0_PERIPHERAL_CLKSRC {External} \
CONFIG.PCW_CAN0_PERIPHERAL_ENABLE {0} \
CONFIG.PCW_CAN0_PERIPHERAL_FREQMHZ {-1} \
CONFIG.PCW_CAN1_BASEADDR {0xE0009000} \
CONFIG.PCW_CAN1_CAN1_IO {<Select>} \
CONFIG.PCW_CAN1_GRP_CLK_ENABLE {0} \
CONFIG.PCW_CAN1_GRP_CLK_IO {<Select>} \
CONFIG.PCW_CAN1_HIGHADDR {0xE0009FFF} \
CONFIG.PCW_CAN1_PERIPHERAL_CLKSRC {External} \
CONFIG.PCW_CAN1_PERIPHERAL_ENABLE {0} \
CONFIG.PCW_CAN1_PERIPHERAL_FREQMHZ {-1} \
CONFIG.PCW_CAN_PERIPHERAL_CLKSRC {IO PLL} \
CONFIG.PCW_CAN_PERIPHERAL_DIVISOR0 {1} \
CONFIG.PCW_CAN_PERIPHERAL_DIVISOR1 {1} \
CONFIG.PCW_CAN_PERIPHERAL_FREQMHZ {100} \
CONFIG.PCW_CAN_PERIPHERAL_VALID {0} \
CONFIG.PCW_CLK0_FREQ {100000000} \
CONFIG.PCW_CLK1_FREQ {10000000} \
CONFIG.PCW_CLK2_FREQ {10000000} \
CONFIG.PCW_CLK3_FREQ {10000000} \
CONFIG.PCW_CORE0_FIQ_INTR {0} \
CONFIG.PCW_CORE0_IRQ_INTR {0} \
CONFIG.PCW_CORE1_FIQ_INTR {0} \
CONFIG.PCW_CORE1_IRQ_INTR {0} \
CONFIG.PCW_CPU_CPU_6X4X_MAX_RANGE {667} \
CONFIG.PCW_CPU_CPU_PLL_FREQMHZ {1333.333} \
CONFIG.PCW_CPU_PERIPHERAL_CLKSRC {ARM PLL} \
CONFIG.PCW_CPU_PERIPHERAL_DIVISOR0 {2} \
CONFIG.PCW_CRYSTAL_PERIPHERAL_FREQMHZ {33.333333} \
CONFIG.PCW_DCI_PERIPHERAL_CLKSRC {DDR PLL} \
CONFIG.PCW_DCI_PERIPHERAL_DIVISOR0 {15} \
CONFIG.PCW_DCI_PERIPHERAL_DIVISOR1 {7} \
CONFIG.PCW_DCI_PERIPHERAL_FREQMHZ {10.159} \
CONFIG.PCW_DDRPLL_CTRL_FBDIV {32} \
CONFIG.PCW_DDR_DDR_PLL_FREQMHZ {1066.667} \
CONFIG.PCW_DDR_HPRLPR_QUEUE_PARTITION {HPR(0)/LPR(32)} \
CONFIG.PCW_DDR_HPR_TO_CRITICAL_PRIORITY_LEVEL {15} \
CONFIG.PCW_DDR_LPR_TO_CRITICAL_PRIORITY_LEVEL {2} \
CONFIG.PCW_DDR_PERIPHERAL_CLKSRC {DDR PLL} \
CONFIG.PCW_DDR_PERIPHERAL_DIVISOR0 {2} \
CONFIG.PCW_DDR_PORT0_HPR_ENABLE {0} \
CONFIG.PCW_DDR_PORT1_HPR_ENABLE {0} \
CONFIG.PCW_DDR_PORT2_HPR_ENABLE {0} \
CONFIG.PCW_DDR_PORT3_HPR_ENABLE {0} \
CONFIG.PCW_DDR_PRIORITY_READPORT_0 {<Select>} \
CONFIG.PCW_DDR_PRIORITY_READPORT_1 {<Select>} \
CONFIG.PCW_DDR_PRIORITY_READPORT_2 {<Select>} \
CONFIG.PCW_DDR_PRIORITY_READPORT_3 {<Select>} \
CONFIG.PCW_DDR_PRIORITY_WRITEPORT_0 {<Select>} \
CONFIG.PCW_DDR_PRIORITY_WRITEPORT_1 {<Select>} \
CONFIG.PCW_DDR_PRIORITY_WRITEPORT_2 {<Select>} \
CONFIG.PCW_DDR_PRIORITY_WRITEPORT_3 {<Select>} \
CONFIG.PCW_DDR_RAM_BASEADDR {0x00100000} \
CONFIG.PCW_DDR_RAM_HIGHADDR {0x3FFFFFFF} \
CONFIG.PCW_DDR_WRITE_TO_CRITICAL_PRIORITY_LEVEL {2} \
CONFIG.PCW_DM_WIDTH {4} \
CONFIG.PCW_DQS_WIDTH {4} \
CONFIG.PCW_DQ_WIDTH {32} \
CONFIG.PCW_ENET0_BASEADDR {0xE000B000} \
CONFIG.PCW_ENET0_ENET0_IO {MIO 16 .. 27} \
CONFIG.PCW_ENET0_GRP_MDIO_ENABLE {1} \
CONFIG.PCW_ENET0_GRP_MDIO_IO {MIO 52 .. 53} \
CONFIG.PCW_ENET0_HIGHADDR {0xE000BFFF} \
CONFIG.PCW_ENET0_PERIPHERAL_CLKSRC {IO PLL} \
CONFIG.PCW_ENET0_PERIPHERAL_DIVISOR0 {8} \
CONFIG.PCW_ENET0_PERIPHERAL_DIVISOR1 {1} \
CONFIG.PCW_ENET0_PERIPHERAL_ENABLE {1} \
CONFIG.PCW_ENET0_PERIPHERAL_FREQMHZ {1000 Mbps} \
CONFIG.PCW_ENET0_RESET_ENABLE {0} \
CONFIG.PCW_ENET0_RESET_IO {<Select>} \
CONFIG.PCW_ENET1_BASEADDR {0xE000C000} \
CONFIG.PCW_ENET1_ENET1_IO {<Select>} \
CONFIG.PCW_ENET1_GRP_MDIO_ENABLE {0} \
CONFIG.PCW_ENET1_GRP_MDIO_IO {<Select>} \
CONFIG.PCW_ENET1_HIGHADDR {0xE000CFFF} \
CONFIG.PCW_ENET1_PERIPHERAL_CLKSRC {IO PLL} \
CONFIG.PCW_ENET1_PERIPHERAL_DIVISOR0 {1} \
CONFIG.PCW_ENET1_PERIPHERAL_DIVISOR1 {1} \
CONFIG.PCW_ENET1_PERIPHERAL_ENABLE {0} \
CONFIG.PCW_ENET1_PERIPHERAL_FREQMHZ {1000 Mbps} \
CONFIG.PCW_ENET1_RESET_ENABLE {0} \
CONFIG.PCW_ENET1_RESET_IO {<Select>} \
CONFIG.PCW_ENET_RESET_ENABLE {0} \
CONFIG.PCW_ENET_RESET_POLARITY {Active Low} \
CONFIG.PCW_ENET_RESET_SELECT {<Select>} \
CONFIG.PCW_EN_4K_TIMER {0} \
CONFIG.PCW_EN_CAN0 {0} \
CONFIG.PCW_EN_CAN1 {0} \
CONFIG.PCW_EN_CLK0_PORT {1} \
CONFIG.PCW_EN_CLK1_PORT {0} \
CONFIG.PCW_EN_CLK2_PORT {0} \
CONFIG.PCW_EN_CLK3_PORT {0} \
CONFIG.PCW_EN_CLKTRIG0_PORT {0} \
CONFIG.PCW_EN_CLKTRIG1_PORT {0} \
CONFIG.PCW_EN_CLKTRIG2_PORT {0} \
CONFIG.PCW_EN_CLKTRIG3_PORT {0} \
CONFIG.PCW_EN_DDR {1} \
CONFIG.PCW_EN_EMIO_CAN0 {0} \
CONFIG.PCW_EN_EMIO_CAN1 {0} \
CONFIG.PCW_EN_EMIO_CD_SDIO0 {1} \
CONFIG.PCW_EN_EMIO_CD_SDIO1 {0} \
CONFIG.PCW_EN_EMIO_ENET0 {0} \
CONFIG.PCW_EN_EMIO_ENET1 {0} \
CONFIG.PCW_EN_EMIO_GPIO {1} \
CONFIG.PCW_EN_EMIO_I2C0 {1} \
CONFIG.PCW_EN_EMIO_I2C1 {0} \
CONFIG.PCW_EN_EMIO_MODEM_UART0 {0} \
CONFIG.PCW_EN_EMIO_MODEM_UART1 {0} \
CONFIG.PCW_EN_EMIO_PJTAG {0} \
CONFIG.PCW_EN_EMIO_SDIO0 {0} \
CONFIG.PCW_EN_EMIO_SDIO1 {0} \
CONFIG.PCW_EN_EMIO_SPI0 {0} \
CONFIG.PCW_EN_EMIO_SPI1 {0} \
CONFIG.PCW_EN_EMIO_SRAM_INT {0} \
CONFIG.PCW_EN_EMIO_TRACE {0} \
CONFIG.PCW_EN_EMIO_TTC0 {0} \
CONFIG.PCW_EN_EMIO_TTC1 {0} \
CONFIG.PCW_EN_EMIO_UART0 {0} \
CONFIG.PCW_EN_EMIO_UART1 {0} \
CONFIG.PCW_EN_EMIO_WDT {0} \
CONFIG.PCW_EN_EMIO_WP_SDIO0 {0} \
CONFIG.PCW_EN_EMIO_WP_SDIO1 {0} \
CONFIG.PCW_EN_ENET0 {1} \
CONFIG.PCW_EN_ENET1 {0} \
CONFIG.PCW_EN_GPIO {1} \
CONFIG.PCW_EN_I2C0 {1} \
CONFIG.PCW_EN_I2C1 {0} \
CONFIG.PCW_EN_MODEM_UART0 {0} \
CONFIG.PCW_EN_MODEM_UART1 {0} \
CONFIG.PCW_EN_PJTAG {0} \
CONFIG.PCW_EN_PTP_ENET0 {0} \
CONFIG.PCW_EN_PTP_ENET1 {0} \
CONFIG.PCW_EN_QSPI {1} \
CONFIG.PCW_EN_RST0_PORT {1} \
CONFIG.PCW_EN_RST1_PORT {0} \
CONFIG.PCW_EN_RST2_PORT {0} \
CONFIG.PCW_EN_RST3_PORT {0} \
CONFIG.PCW_EN_SDIO0 {1} \
CONFIG.PCW_EN_SDIO1 {0} \
CONFIG.PCW_EN_SMC {0} \
CONFIG.PCW_EN_SPI0 {0} \
CONFIG.PCW_EN_SPI1 {0} \
CONFIG.PCW_EN_TRACE {0} \
CONFIG.PCW_EN_TTC0 {0} \
CONFIG.PCW_EN_TTC1 {0} \
CONFIG.PCW_EN_UART0 {0} \
CONFIG.PCW_EN_UART1 {1} \
CONFIG.PCW_EN_USB0 {1} \
CONFIG.PCW_EN_USB1 {0} \
CONFIG.PCW_EN_WDT {0} \
CONFIG.PCW_FCLK0_PERIPHERAL_CLKSRC {IO PLL} \
CONFIG.PCW_FCLK0_PERIPHERAL_DIVISOR0 {5} \
CONFIG.PCW_FCLK0_PERIPHERAL_DIVISOR1 {2} \
CONFIG.PCW_FCLK1_PERIPHERAL_CLKSRC {IO PLL} \
CONFIG.PCW_FCLK1_PERIPHERAL_DIVISOR0 {1} \
CONFIG.PCW_FCLK1_PERIPHERAL_DIVISOR1 {1} \
CONFIG.PCW_FCLK2_PERIPHERAL_CLKSRC {IO PLL} \
CONFIG.PCW_FCLK2_PERIPHERAL_DIVISOR0 {1} \
CONFIG.PCW_FCLK2_PERIPHERAL_DIVISOR1 {1} \
CONFIG.PCW_FCLK3_PERIPHERAL_CLKSRC {IO PLL} \
CONFIG.PCW_FCLK3_PERIPHERAL_DIVISOR0 {1} \
CONFIG.PCW_FCLK3_PERIPHERAL_DIVISOR1 {1} \
CONFIG.PCW_FCLK_CLK0_BUF {TRUE} \
CONFIG.PCW_FCLK_CLK1_BUF {FALSE} \
CONFIG.PCW_FCLK_CLK2_BUF {FALSE} \
CONFIG.PCW_FCLK_CLK3_BUF {FALSE} \
CONFIG.PCW_FPGA0_PERIPHERAL_FREQMHZ {100} \
CONFIG.PCW_FPGA1_PERIPHERAL_FREQMHZ {200} \
CONFIG.PCW_FPGA2_PERIPHERAL_FREQMHZ {200} \
CONFIG.PCW_FPGA3_PERIPHERAL_FREQMHZ {50} \
CONFIG.PCW_FPGA_FCLK0_ENABLE {1} \
CONFIG.PCW_FPGA_FCLK1_ENABLE {0} \
CONFIG.PCW_FPGA_FCLK2_ENABLE {0} \
CONFIG.PCW_FPGA_FCLK3_ENABLE {0} \
CONFIG.PCW_FTM_CTI_IN0 {<Select>} \
CONFIG.PCW_FTM_CTI_IN1 {<Select>} \
CONFIG.PCW_FTM_CTI_IN2 {<Select>} \
CONFIG.PCW_FTM_CTI_IN3 {<Select>} \
CONFIG.PCW_FTM_CTI_OUT0 {<Select>} \
CONFIG.PCW_FTM_CTI_OUT1 {<Select>} \
CONFIG.PCW_FTM_CTI_OUT2 {<Select>} \
CONFIG.PCW_FTM_CTI_OUT3 {<Select>} \
CONFIG.PCW_GPIO_BASEADDR {0xE000A000} \
CONFIG.PCW_GPIO_EMIO_GPIO_ENABLE {1} \
CONFIG.PCW_GPIO_EMIO_GPIO_IO {2} \
CONFIG.PCW_GPIO_EMIO_GPIO_WIDTH {2} \
CONFIG.PCW_GPIO_HIGHADDR {0xE000AFFF} \
CONFIG.PCW_GPIO_MIO_GPIO_ENABLE {1} \
CONFIG.PCW_GPIO_MIO_GPIO_IO {MIO} \
CONFIG.PCW_GPIO_PERIPHERAL_ENABLE {0} \
CONFIG.PCW_I2C0_BASEADDR {0xE0004000} \
CONFIG.PCW_I2C0_GRP_INT_ENABLE {1} \
CONFIG.PCW_I2C0_GRP_INT_IO {EMIO} \
CONFIG.PCW_I2C0_HIGHADDR {0xE0004FFF} \
CONFIG.PCW_I2C0_I2C0_IO {EMIO} \
CONFIG.PCW_I2C0_PERIPHERAL_ENABLE {1} \
CONFIG.PCW_I2C0_RESET_ENABLE {0} \
CONFIG.PCW_I2C0_RESET_IO {<Select>} \
CONFIG.PCW_I2C1_BASEADDR {0xE0005000} \
CONFIG.PCW_I2C1_GRP_INT_ENABLE {0} \
CONFIG.PCW_I2C1_GRP_INT_IO {<Select>} \
CONFIG.PCW_I2C1_HIGHADDR {0xE0005FFF} \
CONFIG.PCW_I2C1_I2C1_IO {<Select>} \
CONFIG.PCW_I2C1_PERIPHERAL_ENABLE {0} \
CONFIG.PCW_I2C1_RESET_ENABLE {0} \
CONFIG.PCW_I2C1_RESET_IO {<Select>} \
CONFIG.PCW_I2C_PERIPHERAL_FREQMHZ {111.111115} \
CONFIG.PCW_I2C_RESET_ENABLE {0} \
CONFIG.PCW_I2C_RESET_POLARITY {Active Low} \
CONFIG.PCW_I2C_RESET_SELECT {<Select>} \
CONFIG.PCW_IMPORT_BOARD_PRESET {None} \
CONFIG.PCW_INCLUDE_ACP_TRANS_CHECK {0} \
CONFIG.PCW_INCLUDE_TRACE_BUFFER {0} \
CONFIG.PCW_IOPLL_CTRL_FBDIV {30} \
CONFIG.PCW_IO_IO_PLL_FREQMHZ {1000.000} \
CONFIG.PCW_IRQ_F2P_INTR {1} \
CONFIG.PCW_IRQ_F2P_MODE {DIRECT} \
CONFIG.PCW_MIO_0_DIRECTION {inout} \
CONFIG.PCW_MIO_0_IOTYPE {LVCMOS 3.3V} \
CONFIG.PCW_MIO_0_PULLUP {enabled} \
CONFIG.PCW_MIO_0_SLEW {slow} \
CONFIG.PCW_MIO_10_DIRECTION {inout} \
CONFIG.PCW_MIO_10_IOTYPE {LVCMOS 3.3V} \
CONFIG.PCW_MIO_10_PULLUP {enabled} \
CONFIG.PCW_MIO_10_SLEW {slow} \
CONFIG.PCW_MIO_11_DIRECTION {inout} \
CONFIG.PCW_MIO_11_IOTYPE {LVCMOS 3.3V} \
CONFIG.PCW_MIO_11_PULLUP {enabled} \
CONFIG.PCW_MIO_11_SLEW {slow} \
CONFIG.PCW_MIO_12_DIRECTION {inout} \
CONFIG.PCW_MIO_12_IOTYPE {LVCMOS 3.3V} \
CONFIG.PCW_MIO_12_PULLUP {enabled} \
CONFIG.PCW_MIO_12_SLEW {slow} \
CONFIG.PCW_MIO_13_DIRECTION {inout} \
CONFIG.PCW_MIO_13_IOTYPE {LVCMOS 3.3V} \
CONFIG.PCW_MIO_13_PULLUP {enabled} \
CONFIG.PCW_MIO_13_SLEW {slow} \
CONFIG.PCW_MIO_14_DIRECTION {inout} \
CONFIG.PCW_MIO_14_IOTYPE {LVCMOS 3.3V} \
CONFIG.PCW_MIO_14_PULLUP {enabled} \
CONFIG.PCW_MIO_14_SLEW {slow} \
CONFIG.PCW_MIO_15_DIRECTION {inout} \
CONFIG.PCW_MIO_15_IOTYPE {LVCMOS 3.3V} \
CONFIG.PCW_MIO_15_PULLUP {enabled} \
CONFIG.PCW_MIO_15_SLEW {slow} \
CONFIG.PCW_MIO_16_DIRECTION {out} \
CONFIG.PCW_MIO_16_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_16_PULLUP {enabled} \
CONFIG.PCW_MIO_16_SLEW {slow} \
CONFIG.PCW_MIO_17_DIRECTION {out} \
CONFIG.PCW_MIO_17_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_17_PULLUP {enabled} \
CONFIG.PCW_MIO_17_SLEW {slow} \
CONFIG.PCW_MIO_18_DIRECTION {out} \
CONFIG.PCW_MIO_18_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_18_PULLUP {enabled} \
CONFIG.PCW_MIO_18_SLEW {slow} \
CONFIG.PCW_MIO_19_DIRECTION {out} \
CONFIG.PCW_MIO_19_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_19_PULLUP {enabled} \
CONFIG.PCW_MIO_19_SLEW {slow} \
CONFIG.PCW_MIO_1_DIRECTION {out} \
CONFIG.PCW_MIO_1_IOTYPE {LVCMOS 3.3V} \
CONFIG.PCW_MIO_1_PULLUP {enabled} \
CONFIG.PCW_MIO_1_SLEW {slow} \
CONFIG.PCW_MIO_20_DIRECTION {out} \
CONFIG.PCW_MIO_20_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_20_PULLUP {enabled} \
CONFIG.PCW_MIO_20_SLEW {slow} \
CONFIG.PCW_MIO_21_DIRECTION {out} \
CONFIG.PCW_MIO_21_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_21_PULLUP {enabled} \
CONFIG.PCW_MIO_21_SLEW {slow} \
CONFIG.PCW_MIO_22_DIRECTION {in} \
CONFIG.PCW_MIO_22_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_22_PULLUP {enabled} \
CONFIG.PCW_MIO_22_SLEW {slow} \
CONFIG.PCW_MIO_23_DIRECTION {in} \
CONFIG.PCW_MIO_23_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_23_PULLUP {enabled} \
CONFIG.PCW_MIO_23_SLEW {slow} \
CONFIG.PCW_MIO_24_DIRECTION {in} \
CONFIG.PCW_MIO_24_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_24_PULLUP {enabled} \
CONFIG.PCW_MIO_24_SLEW {slow} \
CONFIG.PCW_MIO_25_DIRECTION {in} \
CONFIG.PCW_MIO_25_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_25_PULLUP {enabled} \
CONFIG.PCW_MIO_25_SLEW {slow} \
CONFIG.PCW_MIO_26_DIRECTION {in} \
CONFIG.PCW_MIO_26_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_26_PULLUP {enabled} \
CONFIG.PCW_MIO_26_SLEW {slow} \
CONFIG.PCW_MIO_27_DIRECTION {in} \
CONFIG.PCW_MIO_27_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_27_PULLUP {enabled} \
CONFIG.PCW_MIO_27_SLEW {slow} \
CONFIG.PCW_MIO_28_DIRECTION {inout} \
CONFIG.PCW_MIO_28_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_28_PULLUP {enabled} \
CONFIG.PCW_MIO_28_SLEW {slow} \
CONFIG.PCW_MIO_29_DIRECTION {in} \
CONFIG.PCW_MIO_29_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_29_PULLUP {enabled} \
CONFIG.PCW_MIO_29_SLEW {slow} \
CONFIG.PCW_MIO_2_DIRECTION {inout} \
CONFIG.PCW_MIO_2_IOTYPE {LVCMOS 3.3V} \
CONFIG.PCW_MIO_2_PULLUP {disabled} \
CONFIG.PCW_MIO_2_SLEW {slow} \
CONFIG.PCW_MIO_30_DIRECTION {out} \
CONFIG.PCW_MIO_30_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_30_PULLUP {enabled} \
CONFIG.PCW_MIO_30_SLEW {slow} \
CONFIG.PCW_MIO_31_DIRECTION {in} \
CONFIG.PCW_MIO_31_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_31_PULLUP {enabled} \
CONFIG.PCW_MIO_31_SLEW {slow} \
CONFIG.PCW_MIO_32_DIRECTION {inout} \
CONFIG.PCW_MIO_32_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_32_PULLUP {enabled} \
CONFIG.PCW_MIO_32_SLEW {slow} \
CONFIG.PCW_MIO_33_DIRECTION {inout} \
CONFIG.PCW_MIO_33_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_33_PULLUP {enabled} \
CONFIG.PCW_MIO_33_SLEW {slow} \
CONFIG.PCW_MIO_34_DIRECTION {inout} \
CONFIG.PCW_MIO_34_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_34_PULLUP {enabled} \
CONFIG.PCW_MIO_34_SLEW {slow} \
CONFIG.PCW_MIO_35_DIRECTION {inout} \
CONFIG.PCW_MIO_35_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_35_PULLUP {enabled} \
CONFIG.PCW_MIO_35_SLEW {slow} \
CONFIG.PCW_MIO_36_DIRECTION {in} \
CONFIG.PCW_MIO_36_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_36_PULLUP {enabled} \
CONFIG.PCW_MIO_36_SLEW {slow} \
CONFIG.PCW_MIO_37_DIRECTION {inout} \
CONFIG.PCW_MIO_37_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_37_PULLUP {enabled} \
CONFIG.PCW_MIO_37_SLEW {slow} \
CONFIG.PCW_MIO_38_DIRECTION {inout} \
CONFIG.PCW_MIO_38_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_38_PULLUP {enabled} \
CONFIG.PCW_MIO_38_SLEW {slow} \
CONFIG.PCW_MIO_39_DIRECTION {inout} \
CONFIG.PCW_MIO_39_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_39_PULLUP {enabled} \
CONFIG.PCW_MIO_39_SLEW {slow} \
CONFIG.PCW_MIO_3_DIRECTION {inout} \
CONFIG.PCW_MIO_3_IOTYPE {LVCMOS 3.3V} \
CONFIG.PCW_MIO_3_PULLUP {disabled} \
CONFIG.PCW_MIO_3_SLEW {slow} \
CONFIG.PCW_MIO_40_DIRECTION {inout} \
CONFIG.PCW_MIO_40_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_40_PULLUP {enabled} \
CONFIG.PCW_MIO_40_SLEW {slow} \
CONFIG.PCW_MIO_41_DIRECTION {inout} \
CONFIG.PCW_MIO_41_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_41_PULLUP {enabled} \
CONFIG.PCW_MIO_41_SLEW {slow} \
CONFIG.PCW_MIO_42_DIRECTION {inout} \
CONFIG.PCW_MIO_42_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_42_PULLUP {enabled} \
CONFIG.PCW_MIO_42_SLEW {slow} \
CONFIG.PCW_MIO_43_DIRECTION {inout} \
CONFIG.PCW_MIO_43_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_43_PULLUP {enabled} \
CONFIG.PCW_MIO_43_SLEW {slow} \
CONFIG.PCW_MIO_44_DIRECTION {inout} \
CONFIG.PCW_MIO_44_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_44_PULLUP {enabled} \
CONFIG.PCW_MIO_44_SLEW {slow} \
CONFIG.PCW_MIO_45_DIRECTION {inout} \
CONFIG.PCW_MIO_45_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_45_PULLUP {enabled} \
CONFIG.PCW_MIO_45_SLEW {slow} \
CONFIG.PCW_MIO_46_DIRECTION {out} \
CONFIG.PCW_MIO_46_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_46_PULLUP {enabled} \
CONFIG.PCW_MIO_46_SLEW {slow} \
CONFIG.PCW_MIO_47_DIRECTION {inout} \
CONFIG.PCW_MIO_47_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_47_PULLUP {enabled} \
CONFIG.PCW_MIO_47_SLEW {slow} \
CONFIG.PCW_MIO_48_DIRECTION {out} \
CONFIG.PCW_MIO_48_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_48_PULLUP {enabled} \
CONFIG.PCW_MIO_48_SLEW {slow} \
CONFIG.PCW_MIO_49_DIRECTION {in} \
CONFIG.PCW_MIO_49_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_49_PULLUP {enabled} \
CONFIG.PCW_MIO_49_SLEW {slow} \
CONFIG.PCW_MIO_4_DIRECTION {inout} \
CONFIG.PCW_MIO_4_IOTYPE {LVCMOS 3.3V} \
CONFIG.PCW_MIO_4_PULLUP {disabled} \
CONFIG.PCW_MIO_4_SLEW {slow} \
CONFIG.PCW_MIO_50_DIRECTION {inout} \
CONFIG.PCW_MIO_50_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_50_PULLUP {enabled} \
CONFIG.PCW_MIO_50_SLEW {slow} \
CONFIG.PCW_MIO_51_DIRECTION {inout} \
CONFIG.PCW_MIO_51_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_51_PULLUP {enabled} \
CONFIG.PCW_MIO_51_SLEW {slow} \
CONFIG.PCW_MIO_52_DIRECTION {out} \
CONFIG.PCW_MIO_52_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_52_PULLUP {enabled} \
CONFIG.PCW_MIO_52_SLEW {slow} \
CONFIG.PCW_MIO_53_DIRECTION {inout} \
CONFIG.PCW_MIO_53_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_53_PULLUP {enabled} \
CONFIG.PCW_MIO_53_SLEW {slow} \
CONFIG.PCW_MIO_5_DIRECTION {inout} \
CONFIG.PCW_MIO_5_IOTYPE {LVCMOS 3.3V} \
CONFIG.PCW_MIO_5_PULLUP {disabled} \
CONFIG.PCW_MIO_5_SLEW {slow} \
CONFIG.PCW_MIO_6_DIRECTION {out} \
CONFIG.PCW_MIO_6_IOTYPE {LVCMOS 3.3V} \
CONFIG.PCW_MIO_6_PULLUP {disabled} \
CONFIG.PCW_MIO_6_SLEW {slow} \
CONFIG.PCW_MIO_7_DIRECTION {out} \
CONFIG.PCW_MIO_7_IOTYPE {LVCMOS 3.3V} \
CONFIG.PCW_MIO_7_PULLUP {disabled} \
CONFIG.PCW_MIO_7_SLEW {slow} \
CONFIG.PCW_MIO_8_DIRECTION {out} \
CONFIG.PCW_MIO_8_IOTYPE {LVCMOS 3.3V} \
CONFIG.PCW_MIO_8_PULLUP {disabled} \
CONFIG.PCW_MIO_8_SLEW {slow} \
CONFIG.PCW_MIO_9_DIRECTION {inout} \
CONFIG.PCW_MIO_9_IOTYPE {LVCMOS 3.3V} \
CONFIG.PCW_MIO_9_PULLUP {enabled} \
CONFIG.PCW_MIO_9_SLEW {slow} \
CONFIG.PCW_MIO_PRIMITIVE {54} \
CONFIG.PCW_MIO_TREE_PERIPHERALS {GPIO#Quad SPI Flash#Quad SPI Flash#Quad SPI Flash#Quad SPI Flash#Quad SPI Flash#Quad SPI Flash#GPIO#Quad SPI Flash#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#Enet 0#Enet 0#Enet 0#Enet 0#Enet 0#Enet 0#Enet 0#Enet 0#Enet 0#Enet 0#Enet 0#Enet 0#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#SD 0#SD 0#SD 0#SD 0#SD 0#SD 0#USB Reset#GPIO#UART 1#UART 1#GPIO#GPIO#Enet 0#Enet 0} \
CONFIG.PCW_MIO_TREE_SIGNALS {gpio[0]#qspi0_ss_b#qspi0_io[0]#qspi0_io[1]#qspi0_io[2]#qspi0_io[3]#qspi0_sclk#gpio[7]#qspi_fbclk#gpio[9]#gpio[10]#gpio[11]#gpio[12]#gpio[13]#gpio[14]#gpio[15]#tx_clk#txd[0]#txd[1]#txd[2]#txd[3]#tx_ctl#rx_clk#rxd[0]#rxd[1]#rxd[2]#rxd[3]#rx_ctl#data[4]#dir#stp#nxt#data[0]#data[1]#data[2]#data[3]#clk#data[5]#data[6]#data[7]#clk#cmd#data[0]#data[1]#data[2]#data[3]#reset#gpio[47]#tx#rx#gpio[50]#gpio[51]#mdc#mdio} \
CONFIG.PCW_M_AXI_GP0_ENABLE_STATIC_REMAP {0} \
CONFIG.PCW_M_AXI_GP0_FREQMHZ {10} \
CONFIG.PCW_M_AXI_GP0_ID_WIDTH {12} \
CONFIG.PCW_M_AXI_GP0_SUPPORT_NARROW_BURST {0} \
CONFIG.PCW_M_AXI_GP0_THREAD_ID_WIDTH {12} \
CONFIG.PCW_M_AXI_GP1_ENABLE_STATIC_REMAP {0} \
CONFIG.PCW_M_AXI_GP1_FREQMHZ {10} \
CONFIG.PCW_M_AXI_GP1_ID_WIDTH {12} \
CONFIG.PCW_M_AXI_GP1_SUPPORT_NARROW_BURST {0} \
CONFIG.PCW_M_AXI_GP1_THREAD_ID_WIDTH {12} \
CONFIG.PCW_NAND_CYCLES_T_AR {1} \
CONFIG.PCW_NAND_CYCLES_T_CLR {1} \
CONFIG.PCW_NAND_CYCLES_T_RC {11} \
CONFIG.PCW_NAND_CYCLES_T_REA {1} \
CONFIG.PCW_NAND_CYCLES_T_RR {1} \
CONFIG.PCW_NAND_CYCLES_T_WC {11} \
CONFIG.PCW_NAND_CYCLES_T_WP {1} \
CONFIG.PCW_NAND_GRP_D8_ENABLE {0} \
CONFIG.PCW_NAND_GRP_D8_IO {<Select>} \
CONFIG.PCW_NAND_NAND_IO {<Select>} \
CONFIG.PCW_NAND_PERIPHERAL_ENABLE {0} \
CONFIG.PCW_NOR_CS0_T_CEOE {1} \
CONFIG.PCW_NOR_CS0_T_PC {1} \
CONFIG.PCW_NOR_CS0_T_RC {11} \
CONFIG.PCW_NOR_CS0_T_TR {1} \
CONFIG.PCW_NOR_CS0_T_WC {11} \
CONFIG.PCW_NOR_CS0_T_WP {1} \
CONFIG.PCW_NOR_CS0_WE_TIME {0} \
CONFIG.PCW_NOR_CS1_T_CEOE {1} \
CONFIG.PCW_NOR_CS1_T_PC {1} \
CONFIG.PCW_NOR_CS1_T_RC {11} \
CONFIG.PCW_NOR_CS1_T_TR {1} \
CONFIG.PCW_NOR_CS1_T_WC {11} \
CONFIG.PCW_NOR_CS1_T_WP {1} \
CONFIG.PCW_NOR_CS1_WE_TIME {0} \
CONFIG.PCW_NOR_GRP_A25_ENABLE {0} \
CONFIG.PCW_NOR_GRP_A25_IO {<Select>} \
CONFIG.PCW_NOR_GRP_CS0_ENABLE {0} \
CONFIG.PCW_NOR_GRP_CS0_IO {<Select>} \
CONFIG.PCW_NOR_GRP_CS1_ENABLE {0} \
CONFIG.PCW_NOR_GRP_CS1_IO {<Select>} \
CONFIG.PCW_NOR_GRP_SRAM_CS0_ENABLE {0} \
CONFIG.PCW_NOR_GRP_SRAM_CS0_IO {<Select>} \
CONFIG.PCW_NOR_GRP_SRAM_CS1_ENABLE {0} \
CONFIG.PCW_NOR_GRP_SRAM_CS1_IO {<Select>} \
CONFIG.PCW_NOR_GRP_SRAM_INT_ENABLE {0} \
CONFIG.PCW_NOR_GRP_SRAM_INT_IO {<Select>} \
CONFIG.PCW_NOR_NOR_IO {<Select>} \
CONFIG.PCW_NOR_PERIPHERAL_ENABLE {0} \
CONFIG.PCW_NOR_SRAM_CS0_T_CEOE {1} \
CONFIG.PCW_NOR_SRAM_CS0_T_PC {1} \
CONFIG.PCW_NOR_SRAM_CS0_T_RC {11} \
CONFIG.PCW_NOR_SRAM_CS0_T_TR {1} \
CONFIG.PCW_NOR_SRAM_CS0_T_WC {11} \
CONFIG.PCW_NOR_SRAM_CS0_T_WP {1} \
CONFIG.PCW_NOR_SRAM_CS0_WE_TIME {0} \
CONFIG.PCW_NOR_SRAM_CS1_T_CEOE {1} \
CONFIG.PCW_NOR_SRAM_CS1_T_PC {1} \
CONFIG.PCW_NOR_SRAM_CS1_T_RC {11} \
CONFIG.PCW_NOR_SRAM_CS1_T_TR {1} \
CONFIG.PCW_NOR_SRAM_CS1_T_WC {11} \
CONFIG.PCW_NOR_SRAM_CS1_T_WP {1} \
CONFIG.PCW_NOR_SRAM_CS1_WE_TIME {0} \
CONFIG.PCW_OVERRIDE_BASIC_CLOCK {0} \
CONFIG.PCW_P2F_CAN0_INTR {0} \
CONFIG.PCW_P2F_CAN1_INTR {0} \
CONFIG.PCW_P2F_CTI_INTR {0} \
CONFIG.PCW_P2F_DMAC0_INTR {0} \
CONFIG.PCW_P2F_DMAC1_INTR {0} \
CONFIG.PCW_P2F_DMAC2_INTR {0} \
CONFIG.PCW_P2F_DMAC3_INTR {0} \
CONFIG.PCW_P2F_DMAC4_INTR {0} \
CONFIG.PCW_P2F_DMAC5_INTR {0} \
CONFIG.PCW_P2F_DMAC6_INTR {0} \
CONFIG.PCW_P2F_DMAC7_INTR {0} \
CONFIG.PCW_P2F_DMAC_ABORT_INTR {0} \
CONFIG.PCW_P2F_ENET0_INTR {0} \
CONFIG.PCW_P2F_ENET1_INTR {0} \
CONFIG.PCW_P2F_GPIO_INTR {0} \
CONFIG.PCW_P2F_I2C0_INTR {0} \
CONFIG.PCW_P2F_I2C1_INTR {0} \
CONFIG.PCW_P2F_QSPI_INTR {0} \
CONFIG.PCW_P2F_SDIO0_INTR {0} \
CONFIG.PCW_P2F_SDIO1_INTR {0} \
CONFIG.PCW_P2F_SMC_INTR {0} \
CONFIG.PCW_P2F_SPI0_INTR {0} \
CONFIG.PCW_P2F_SPI1_INTR {0} \
CONFIG.PCW_P2F_UART0_INTR {0} \
CONFIG.PCW_P2F_UART1_INTR {0} \
CONFIG.PCW_P2F_USB0_INTR {0} \
CONFIG.PCW_P2F_USB1_INTR {0} \
CONFIG.PCW_PACKAGE_DDR_BOARD_DELAY0 {0.089} \
CONFIG.PCW_PACKAGE_DDR_BOARD_DELAY1 {0.075} \
CONFIG.PCW_PACKAGE_DDR_BOARD_DELAY2 {0.085} \
CONFIG.PCW_PACKAGE_DDR_BOARD_DELAY3 {0.092} \
CONFIG.PCW_PACKAGE_DDR_DQS_TO_CLK_DELAY_0 {-0.025} \
CONFIG.PCW_PACKAGE_DDR_DQS_TO_CLK_DELAY_1 {0.014} \
CONFIG.PCW_PACKAGE_DDR_DQS_TO_CLK_DELAY_2 {-0.009} \
CONFIG.PCW_PACKAGE_DDR_DQS_TO_CLK_DELAY_3 {-0.033} \
CONFIG.PCW_PACKAGE_NAME {clg400} \
CONFIG.PCW_PCAP_PERIPHERAL_CLKSRC {IO PLL} \
CONFIG.PCW_PCAP_PERIPHERAL_DIVISOR0 {5} \
CONFIG.PCW_PCAP_PERIPHERAL_FREQMHZ {200} \
CONFIG.PCW_PERIPHERAL_BOARD_PRESET {part0} \
CONFIG.PCW_PJTAG_PERIPHERAL_ENABLE {0} \
CONFIG.PCW_PJTAG_PJTAG_IO {<Select>} \
CONFIG.PCW_PLL_BYPASSMODE_ENABLE {0} \
CONFIG.PCW_PRESET_BANK0_VOLTAGE {LVCMOS 3.3V} \
CONFIG.PCW_PRESET_BANK1_VOLTAGE {LVCMOS 1.8V} \
CONFIG.PCW_PS7_SI_REV {PRODUCTION} \
CONFIG.PCW_QSPI_GRP_FBCLK_ENABLE {1} \
CONFIG.PCW_QSPI_GRP_FBCLK_IO {MIO 8} \
CONFIG.PCW_QSPI_GRP_IO1_ENABLE {0} \
CONFIG.PCW_QSPI_GRP_IO1_IO {<Select>} \
CONFIG.PCW_QSPI_GRP_SINGLE_SS_ENABLE {1} \
CONFIG.PCW_QSPI_GRP_SINGLE_SS_IO {MIO 1 .. 6} \
CONFIG.PCW_QSPI_GRP_SS1_ENABLE {0} \
CONFIG.PCW_QSPI_GRP_SS1_IO {<Select>} \
CONFIG.PCW_QSPI_INTERNAL_HIGHADDRESS {0xFCFFFFFF} \
CONFIG.PCW_QSPI_PERIPHERAL_CLKSRC {IO PLL} \
CONFIG.PCW_QSPI_PERIPHERAL_DIVISOR0 {5} \
CONFIG.PCW_QSPI_PERIPHERAL_ENABLE {1} \
CONFIG.PCW_QSPI_PERIPHERAL_FREQMHZ {200} \
CONFIG.PCW_QSPI_QSPI_IO {MIO 1 .. 6} \
CONFIG.PCW_SD0_GRP_CD_ENABLE {1} \
CONFIG.PCW_SD0_GRP_CD_IO {EMIO} \
CONFIG.PCW_SD0_GRP_POW_ENABLE {0} \
CONFIG.PCW_SD0_GRP_POW_IO {<Select>} \
CONFIG.PCW_SD0_GRP_WP_ENABLE {0} \
CONFIG.PCW_SD0_GRP_WP_IO {<Select>} \
CONFIG.PCW_SD0_PERIPHERAL_ENABLE {1} \
CONFIG.PCW_SD0_SD0_IO {MIO 40 .. 45} \
CONFIG.PCW_SD1_GRP_CD_ENABLE {0} \
CONFIG.PCW_SD1_GRP_CD_IO {<Select>} \
CONFIG.PCW_SD1_GRP_POW_ENABLE {0} \
CONFIG.PCW_SD1_GRP_POW_IO {<Select>} \
CONFIG.PCW_SD1_GRP_WP_ENABLE {0} \
CONFIG.PCW_SD1_GRP_WP_IO {<Select>} \
CONFIG.PCW_SD1_PERIPHERAL_ENABLE {0} \
CONFIG.PCW_SD1_SD1_IO {<Select>} \
CONFIG.PCW_SDIO0_BASEADDR {0xE0100000} \
CONFIG.PCW_SDIO0_HIGHADDR {0xE0100FFF} \
CONFIG.PCW_SDIO1_BASEADDR {0xE0101000} \
CONFIG.PCW_SDIO1_HIGHADDR {0xE0101FFF} \
CONFIG.PCW_SDIO_PERIPHERAL_CLKSRC {IO PLL} \
CONFIG.PCW_SDIO_PERIPHERAL_DIVISOR0 {10} \
CONFIG.PCW_SDIO_PERIPHERAL_FREQMHZ {100} \
CONFIG.PCW_SDIO_PERIPHERAL_VALID {1} \
CONFIG.PCW_SMC_CYCLE_T0 {NA} \
CONFIG.PCW_SMC_CYCLE_T1 {NA} \
CONFIG.PCW_SMC_CYCLE_T2 {NA} \
CONFIG.PCW_SMC_CYCLE_T3 {NA} \
CONFIG.PCW_SMC_CYCLE_T4 {NA} \
CONFIG.PCW_SMC_CYCLE_T5 {NA} \
CONFIG.PCW_SMC_CYCLE_T6 {NA} \
CONFIG.PCW_SMC_PERIPHERAL_CLKSRC {IO PLL} \
CONFIG.PCW_SMC_PERIPHERAL_DIVISOR0 {1} \
CONFIG.PCW_SMC_PERIPHERAL_FREQMHZ {100} \
CONFIG.PCW_SMC_PERIPHERAL_VALID {0} \
CONFIG.PCW_SPI0_BASEADDR {0xE0006000} \
CONFIG.PCW_SPI0_GRP_SS0_ENABLE {0} \
CONFIG.PCW_SPI0_GRP_SS0_IO {<Select>} \
CONFIG.PCW_SPI0_GRP_SS1_ENABLE {0} \
CONFIG.PCW_SPI0_GRP_SS1_IO {<Select>} \
CONFIG.PCW_SPI0_GRP_SS2_ENABLE {0} \
CONFIG.PCW_SPI0_GRP_SS2_IO {<Select>} \
CONFIG.PCW_SPI0_HIGHADDR {0xE0006FFF} \
CONFIG.PCW_SPI0_PERIPHERAL_ENABLE {0} \
CONFIG.PCW_SPI0_SPI0_IO {<Select>} \
CONFIG.PCW_SPI1_BASEADDR {0xE0007000} \
CONFIG.PCW_SPI1_GRP_SS0_ENABLE {0} \
CONFIG.PCW_SPI1_GRP_SS0_IO {<Select>} \
CONFIG.PCW_SPI1_GRP_SS1_ENABLE {0} \
CONFIG.PCW_SPI1_GRP_SS1_IO {<Select>} \
CONFIG.PCW_SPI1_GRP_SS2_ENABLE {0} \
CONFIG.PCW_SPI1_GRP_SS2_IO {<Select>} \
CONFIG.PCW_SPI1_HIGHADDR {0xE0007FFF} \
CONFIG.PCW_SPI1_PERIPHERAL_ENABLE {0} \
CONFIG.PCW_SPI1_SPI1_IO {<Select>} \
CONFIG.PCW_SPI_PERIPHERAL_CLKSRC {IO PLL} \
CONFIG.PCW_SPI_PERIPHERAL_DIVISOR0 {1} \
CONFIG.PCW_SPI_PERIPHERAL_FREQMHZ {166.666666} \
CONFIG.PCW_SPI_PERIPHERAL_VALID {0} \
CONFIG.PCW_S_AXI_ACP_ARUSER_VAL {31} \
CONFIG.PCW_S_AXI_ACP_AWUSER_VAL {31} \
CONFIG.PCW_S_AXI_ACP_FREQMHZ {10} \
CONFIG.PCW_S_AXI_ACP_ID_WIDTH {3} \
CONFIG.PCW_S_AXI_GP0_FREQMHZ {10} \
CONFIG.PCW_S_AXI_GP0_ID_WIDTH {6} \
CONFIG.PCW_S_AXI_GP1_FREQMHZ {10} \
CONFIG.PCW_S_AXI_GP1_ID_WIDTH {6} \
CONFIG.PCW_S_AXI_HP0_DATA_WIDTH {64} \
CONFIG.PCW_S_AXI_HP0_FREQMHZ {10} \
CONFIG.PCW_S_AXI_HP0_ID_WIDTH {6} \
CONFIG.PCW_S_AXI_HP1_DATA_WIDTH {64} \
CONFIG.PCW_S_AXI_HP1_FREQMHZ {10} \
CONFIG.PCW_S_AXI_HP1_ID_WIDTH {6} \
CONFIG.PCW_S_AXI_HP2_DATA_WIDTH {64} \
CONFIG.PCW_S_AXI_HP2_FREQMHZ {10} \
CONFIG.PCW_S_AXI_HP2_ID_WIDTH {6} \
CONFIG.PCW_S_AXI_HP3_DATA_WIDTH {64} \
CONFIG.PCW_S_AXI_HP3_FREQMHZ {10} \
CONFIG.PCW_S_AXI_HP3_ID_WIDTH {6} \
CONFIG.PCW_TPIU_PERIPHERAL_CLKSRC {External} \
CONFIG.PCW_TPIU_PERIPHERAL_DIVISOR0 {1} \
CONFIG.PCW_TPIU_PERIPHERAL_FREQMHZ {200} \
CONFIG.PCW_TRACE_BUFFER_CLOCK_DELAY {12} \
CONFIG.PCW_TRACE_BUFFER_FIFO_SIZE {128} \
CONFIG.PCW_TRACE_GRP_16BIT_ENABLE {0} \
CONFIG.PCW_TRACE_GRP_16BIT_IO {<Select>} \
CONFIG.PCW_TRACE_GRP_2BIT_ENABLE {0} \
CONFIG.PCW_TRACE_GRP_2BIT_IO {<Select>} \
CONFIG.PCW_TRACE_GRP_32BIT_ENABLE {0} \
CONFIG.PCW_TRACE_GRP_32BIT_IO {<Select>} \
CONFIG.PCW_TRACE_GRP_4BIT_ENABLE {0} \
CONFIG.PCW_TRACE_GRP_4BIT_IO {<Select>} \
CONFIG.PCW_TRACE_GRP_8BIT_ENABLE {0} \
CONFIG.PCW_TRACE_GRP_8BIT_IO {<Select>} \
CONFIG.PCW_TRACE_INTERNAL_WIDTH {2} \
CONFIG.PCW_TRACE_PERIPHERAL_ENABLE {0} \
CONFIG.PCW_TRACE_PIPELINE_WIDTH {8} \
CONFIG.PCW_TRACE_TRACE_IO {<Select>} \
CONFIG.PCW_TTC0_BASEADDR {0xE0104000} \
CONFIG.PCW_TTC0_CLK0_PERIPHERAL_CLKSRC {CPU_1X} \
CONFIG.PCW_TTC0_CLK0_PERIPHERAL_DIVISOR0 {1} \
CONFIG.PCW_TTC0_CLK0_PERIPHERAL_FREQMHZ {133.333333} \
CONFIG.PCW_TTC0_CLK1_PERIPHERAL_CLKSRC {CPU_1X} \
CONFIG.PCW_TTC0_CLK1_PERIPHERAL_DIVISOR0 {1} \
CONFIG.PCW_TTC0_CLK1_PERIPHERAL_FREQMHZ {133.333333} \
CONFIG.PCW_TTC0_CLK2_PERIPHERAL_CLKSRC {CPU_1X} \
CONFIG.PCW_TTC0_CLK2_PERIPHERAL_DIVISOR0 {1} \
CONFIG.PCW_TTC0_CLK2_PERIPHERAL_FREQMHZ {133.333333} \
CONFIG.PCW_TTC0_HIGHADDR {0xE0104fff} \
CONFIG.PCW_TTC0_PERIPHERAL_ENABLE {0} \
CONFIG.PCW_TTC0_TTC0_IO {<Select>} \
CONFIG.PCW_TTC1_BASEADDR {0xE0105000} \
CONFIG.PCW_TTC1_CLK0_PERIPHERAL_CLKSRC {CPU_1X} \
CONFIG.PCW_TTC1_CLK0_PERIPHERAL_DIVISOR0 {1} \
CONFIG.PCW_TTC1_CLK0_PERIPHERAL_FREQMHZ {133.333333} \
CONFIG.PCW_TTC1_CLK1_PERIPHERAL_CLKSRC {CPU_1X} \
CONFIG.PCW_TTC1_CLK1_PERIPHERAL_DIVISOR0 {1} \
CONFIG.PCW_TTC1_CLK1_PERIPHERAL_FREQMHZ {133.333333} \
CONFIG.PCW_TTC1_CLK2_PERIPHERAL_CLKSRC {CPU_1X} \
CONFIG.PCW_TTC1_CLK2_PERIPHERAL_DIVISOR0 {1} \
CONFIG.PCW_TTC1_CLK2_PERIPHERAL_FREQMHZ {133.333333} \
CONFIG.PCW_TTC1_HIGHADDR {0xE0105fff} \
CONFIG.PCW_TTC1_PERIPHERAL_ENABLE {0} \
CONFIG.PCW_TTC1_TTC1_IO {<Select>} \
CONFIG.PCW_TTC_PERIPHERAL_FREQMHZ {50} \
CONFIG.PCW_UART0_BASEADDR {0xE0000000} \
CONFIG.PCW_UART0_BAUD_RATE {115200} \
CONFIG.PCW_UART0_GRP_FULL_ENABLE {0} \
CONFIG.PCW_UART0_GRP_FULL_IO {<Select>} \
CONFIG.PCW_UART0_HIGHADDR {0xE0000FFF} \
CONFIG.PCW_UART0_PERIPHERAL_ENABLE {0} \
CONFIG.PCW_UART0_UART0_IO {<Select>} \
CONFIG.PCW_UART1_BASEADDR {0xE0001000} \
CONFIG.PCW_UART1_BAUD_RATE {115200} \
CONFIG.PCW_UART1_GRP_FULL_ENABLE {0} \
CONFIG.PCW_UART1_GRP_FULL_IO {<Select>} \
CONFIG.PCW_UART1_HIGHADDR {0xE0001FFF} \
CONFIG.PCW_UART1_PERIPHERAL_ENABLE {1} \
CONFIG.PCW_UART1_UART1_IO {MIO 48 .. 49} \
CONFIG.PCW_UART_PERIPHERAL_CLKSRC {IO PLL} \
CONFIG.PCW_UART_PERIPHERAL_DIVISOR0 {10} \
CONFIG.PCW_UART_PERIPHERAL_FREQMHZ {100} \
CONFIG.PCW_UART_PERIPHERAL_VALID {1} \
CONFIG.PCW_UIPARAM_ACT_DDR_FREQ_MHZ {533.333374} \
CONFIG.PCW_UIPARAM_DDR_ADV_ENABLE {0} \
CONFIG.PCW_UIPARAM_DDR_AL {0} \
CONFIG.PCW_UIPARAM_DDR_BANK_ADDR_COUNT {3} \
CONFIG.PCW_UIPARAM_DDR_BL {8} \
CONFIG.PCW_UIPARAM_DDR_BOARD_DELAY0 {0.176} \
CONFIG.PCW_UIPARAM_DDR_BOARD_DELAY1 {0.159} \
CONFIG.PCW_UIPARAM_DDR_BOARD_DELAY2 {0.162} \
CONFIG.PCW_UIPARAM_DDR_BOARD_DELAY3 {0.187} \
CONFIG.PCW_UIPARAM_DDR_BUS_WIDTH {32 Bit} \
CONFIG.PCW_UIPARAM_DDR_CL {7} \
CONFIG.PCW_UIPARAM_DDR_CLOCK_0_LENGTH_MM {0} \
CONFIG.PCW_UIPARAM_DDR_CLOCK_0_PACKAGE_LENGTH {80.4535} \
CONFIG.PCW_UIPARAM_DDR_CLOCK_0_PROPOGATION_DELAY {160} \
CONFIG.PCW_UIPARAM_DDR_CLOCK_1_LENGTH_MM {0} \
CONFIG.PCW_UIPARAM_DDR_CLOCK_1_PACKAGE_LENGTH {80.4535} \
CONFIG.PCW_UIPARAM_DDR_CLOCK_1_PROPOGATION_DELAY {160} \
CONFIG.PCW_UIPARAM_DDR_CLOCK_2_LENGTH_MM {0} \
CONFIG.PCW_UIPARAM_DDR_CLOCK_2_PACKAGE_LENGTH {80.4535} \
CONFIG.PCW_UIPARAM_DDR_CLOCK_2_PROPOGATION_DELAY {160} \
CONFIG.PCW_UIPARAM_DDR_CLOCK_3_LENGTH_MM {0} \
CONFIG.PCW_UIPARAM_DDR_CLOCK_3_PACKAGE_LENGTH {80.4535} \
CONFIG.PCW_UIPARAM_DDR_CLOCK_3_PROPOGATION_DELAY {160} \
CONFIG.PCW_UIPARAM_DDR_CLOCK_STOP_EN {0} \
CONFIG.PCW_UIPARAM_DDR_COL_ADDR_COUNT {10} \
CONFIG.PCW_UIPARAM_DDR_CWL {6} \
CONFIG.PCW_UIPARAM_DDR_DEVICE_CAPACITY {4096 MBits} \
CONFIG.PCW_UIPARAM_DDR_DQS_0_LENGTH_MM {0} \
CONFIG.PCW_UIPARAM_DDR_DQS_0_PACKAGE_LENGTH {105.056} \
CONFIG.PCW_UIPARAM_DDR_DQS_0_PROPOGATION_DELAY {160} \
CONFIG.PCW_UIPARAM_DDR_DQS_1_LENGTH_MM {0} \
CONFIG.PCW_UIPARAM_DDR_DQS_1_PACKAGE_LENGTH {66.904} \
CONFIG.PCW_UIPARAM_DDR_DQS_1_PROPOGATION_DELAY {160} \
CONFIG.PCW_UIPARAM_DDR_DQS_2_LENGTH_MM {0} \
CONFIG.PCW_UIPARAM_DDR_DQS_2_PACKAGE_LENGTH {89.1715} \
CONFIG.PCW_UIPARAM_DDR_DQS_2_PROPOGATION_DELAY {160} \
CONFIG.PCW_UIPARAM_DDR_DQS_3_LENGTH_MM {0} \
CONFIG.PCW_UIPARAM_DDR_DQS_3_PACKAGE_LENGTH {113.63} \
CONFIG.PCW_UIPARAM_DDR_DQS_3_PROPOGATION_DELAY {160} \
CONFIG.PCW_UIPARAM_DDR_DQS_TO_CLK_DELAY_0 {-0.073} \
CONFIG.PCW_UIPARAM_DDR_DQS_TO_CLK_DELAY_1 {-0.034} \
CONFIG.PCW_UIPARAM_DDR_DQS_TO_CLK_DELAY_2 {-0.03} \
CONFIG.PCW_UIPARAM_DDR_DQS_TO_CLK_DELAY_3 {-0.082} \
CONFIG.PCW_UIPARAM_DDR_DQ_0_LENGTH_MM {0} \
CONFIG.PCW_UIPARAM_DDR_DQ_0_PACKAGE_LENGTH {98.503} \
CONFIG.PCW_UIPARAM_DDR_DQ_0_PROPOGATION_DELAY {160} \
CONFIG.PCW_UIPARAM_DDR_DQ_1_LENGTH_MM {0} \
CONFIG.PCW_UIPARAM_DDR_DQ_1_PACKAGE_LENGTH {68.5855} \
CONFIG.PCW_UIPARAM_DDR_DQ_1_PROPOGATION_DELAY {160} \
CONFIG.PCW_UIPARAM_DDR_DQ_2_LENGTH_MM {0} \
CONFIG.PCW_UIPARAM_DDR_DQ_2_PACKAGE_LENGTH {90.295} \
CONFIG.PCW_UIPARAM_DDR_DQ_2_PROPOGATION_DELAY {160} \
CONFIG.PCW_UIPARAM_DDR_DQ_3_LENGTH_MM {0} \
CONFIG.PCW_UIPARAM_DDR_DQ_3_PACKAGE_LENGTH {103.977} \
CONFIG.PCW_UIPARAM_DDR_DQ_3_PROPOGATION_DELAY {160} \
CONFIG.PCW_UIPARAM_DDR_DRAM_WIDTH {16 Bits} \
CONFIG.PCW_UIPARAM_DDR_ECC {Disabled} \
CONFIG.PCW_UIPARAM_DDR_ENABLE {1} \
CONFIG.PCW_UIPARAM_DDR_FREQ_MHZ {533.333333} \
CONFIG.PCW_UIPARAM_DDR_HIGH_TEMP {Normal (0-85)} \
CONFIG.PCW_UIPARAM_DDR_MEMORY_TYPE {DDR 3 (Low Voltage)} \
CONFIG.PCW_UIPARAM_DDR_PARTNO {MT41K256M16 RE-125} \
CONFIG.PCW_UIPARAM_DDR_ROW_ADDR_COUNT {15} \
CONFIG.PCW_UIPARAM_DDR_SPEED_BIN {DDR3_1066F} \
CONFIG.PCW_UIPARAM_DDR_TRAIN_DATA_EYE {1} \
CONFIG.PCW_UIPARAM_DDR_TRAIN_READ_GATE {1} \
CONFIG.PCW_UIPARAM_DDR_TRAIN_WRITE_LEVEL {1} \
CONFIG.PCW_UIPARAM_DDR_T_FAW {40.0} \
CONFIG.PCW_UIPARAM_DDR_T_RAS_MIN {35.0} \
CONFIG.PCW_UIPARAM_DDR_T_RC {48.75} \
CONFIG.PCW_UIPARAM_DDR_T_RCD {7} \
CONFIG.PCW_UIPARAM_DDR_T_RP {7} \
CONFIG.PCW_UIPARAM_DDR_USE_INTERNAL_VREF {0} \
CONFIG.PCW_UIPARAM_GENERATE_SUMMARY {NA} \
CONFIG.PCW_USB0_BASEADDR {0xE0102000} \
CONFIG.PCW_USB0_HIGHADDR {0xE0102fff} \
CONFIG.PCW_USB0_PERIPHERAL_ENABLE {1} \
CONFIG.PCW_USB0_PERIPHERAL_FREQMHZ {60} \
CONFIG.PCW_USB0_RESET_ENABLE {1} \
CONFIG.PCW_USB0_RESET_IO {MIO 46} \
CONFIG.PCW_USB0_USB0_IO {MIO 28 .. 39} \
CONFIG.PCW_USB1_BASEADDR {0xE0103000} \
CONFIG.PCW_USB1_HIGHADDR {0xE0103fff} \
CONFIG.PCW_USB1_PERIPHERAL_ENABLE {0} \
CONFIG.PCW_USB1_PERIPHERAL_FREQMHZ {60} \
CONFIG.PCW_USB1_RESET_ENABLE {0} \
CONFIG.PCW_USB1_RESET_IO {<Select>} \
CONFIG.PCW_USB1_USB1_IO {<Select>} \
CONFIG.PCW_USB_RESET_ENABLE {1} \
CONFIG.PCW_USB_RESET_POLARITY {Active Low} \
CONFIG.PCW_USB_RESET_SELECT {Share reset pin} \
CONFIG.PCW_USE_AXI_FABRIC_IDLE {0} \
CONFIG.PCW_USE_AXI_NONSECURE {0} \
CONFIG.PCW_USE_CORESIGHT {0} \
CONFIG.PCW_USE_CROSS_TRIGGER {0} \
CONFIG.PCW_USE_CR_FABRIC {1} \
CONFIG.PCW_USE_DDR_BYPASS {0} \
CONFIG.PCW_USE_DEBUG {0} \
CONFIG.PCW_USE_DEFAULT_ACP_USER_VAL {0} \
CONFIG.PCW_USE_DMA0 {0} \
CONFIG.PCW_USE_DMA1 {0} \
CONFIG.PCW_USE_DMA2 {0} \
CONFIG.PCW_USE_DMA3 {0} \
CONFIG.PCW_USE_EXPANDED_IOP {0} \
CONFIG.PCW_USE_EXPANDED_PS_SLCR_REGISTERS {0} \
CONFIG.PCW_USE_FABRIC_INTERRUPT {1} \
CONFIG.PCW_USE_HIGH_OCM {0} \
CONFIG.PCW_USE_M_AXI_GP0 {1} \
CONFIG.PCW_USE_M_AXI_GP1 {0} \
CONFIG.PCW_USE_PROC_EVENT_BUS {0} \
CONFIG.PCW_USE_PS_SLCR_REGISTERS {0} \
CONFIG.PCW_USE_S_AXI_ACP {0} \
CONFIG.PCW_USE_S_AXI_GP0 {0} \
CONFIG.PCW_USE_S_AXI_GP1 {0} \
CONFIG.PCW_USE_S_AXI_HP0 {1} \
CONFIG.PCW_USE_S_AXI_HP1 {0} \
CONFIG.PCW_USE_S_AXI_HP2 {1} \
CONFIG.PCW_USE_S_AXI_HP3 {1} \
CONFIG.PCW_USE_TRACE {0} \
CONFIG.PCW_USE_TRACE_DATA_EDGE_DETECTOR {0} \
CONFIG.PCW_VALUE_SILVERSION {3} \
CONFIG.PCW_WDT_PERIPHERAL_CLKSRC {CPU_1X} \
CONFIG.PCW_WDT_PERIPHERAL_DIVISOR0 {1} \
CONFIG.PCW_WDT_PERIPHERAL_ENABLE {0} \
CONFIG.PCW_WDT_PERIPHERAL_FREQMHZ {133.333333} \
CONFIG.PCW_WDT_WDT_IO {<Select>} \
 ] $processing_system7_0

  # Create instance: ps7_0_axi_periph, and set properties
  set ps7_0_axi_periph [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 ps7_0_axi_periph ]
  set_property -dict [ list \
CONFIG.NUM_MI {8} \
CONFIG.NUM_SI {1} \
 ] $ps7_0_axi_periph

  # Create instance: rgb2dvi_0, and set properties
  set rgb2dvi_0 [ create_bd_cell -type ip -vlnv digilentinc.com:ip:rgb2dvi:1.4 rgb2dvi_0 ]
  set_property -dict [ list \
CONFIG.kClkPrimitive {PLL} \
CONFIG.kClkRange {1} \
CONFIG.kGenerateSerialClk {false} \
CONFIG.kRstActiveHigh {false} \
 ] $rgb2dvi_0

  # Create instance: rst_clk_wiz_0_50M, and set properties
  set rst_clk_wiz_0_50M [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 rst_clk_wiz_0_50M ]

  # Create instance: rst_vid_clk_dyn, and set properties
  set rst_vid_clk_dyn [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 rst_vid_clk_dyn ]

  # Create instance: v_axi4s_vid_out_0, and set properties
  set v_axi4s_vid_out_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:v_axi4s_vid_out:4.0 v_axi4s_vid_out_0 ]
  set_property -dict [ list \
CONFIG.C_ADDR_WIDTH {11} \
CONFIG.C_HAS_ASYNC_CLK {1} \
CONFIG.C_VTG_MASTER_SLAVE {1} \
 ] $v_axi4s_vid_out_0

  # Create instance: video_dynclk, and set properties
  set video_dynclk [ create_bd_cell -type ip -vlnv digilentinc.com:ip:axi_dynclk:1.1 video_dynclk ]

  # Create instance: vtg, and set properties
  set vtg [ create_bd_cell -type ip -vlnv xilinx.com:ip:v_tc:6.1 vtg ]
  set_property -dict [ list \
CONFIG.GEN_F0_VBLANK_HEND {1280} \
CONFIG.GEN_F0_VBLANK_HSTART {1280} \
CONFIG.GEN_F0_VFRAME_SIZE {750} \
CONFIG.GEN_F0_VSYNC_HEND {1280} \
CONFIG.GEN_F0_VSYNC_HSTART {1280} \
CONFIG.GEN_F0_VSYNC_VEND {729} \
CONFIG.GEN_F0_VSYNC_VSTART {724} \
CONFIG.GEN_F1_VBLANK_HEND {1280} \
CONFIG.GEN_F1_VBLANK_HSTART {1280} \
CONFIG.GEN_F1_VFRAME_SIZE {750} \
CONFIG.GEN_F1_VSYNC_HEND {1280} \
CONFIG.GEN_F1_VSYNC_HSTART {1280} \
CONFIG.GEN_F1_VSYNC_VEND {729} \
CONFIG.GEN_F1_VSYNC_VSTART {724} \
CONFIG.GEN_HACTIVE_SIZE {1280} \
CONFIG.GEN_HFRAME_SIZE {1650} \
CONFIG.GEN_HSYNC_END {1430} \
CONFIG.GEN_HSYNC_START {1390} \
CONFIG.GEN_VACTIVE_SIZE {720} \
CONFIG.VIDEO_MODE {720p} \
CONFIG.enable_detection {false} \
CONFIG.max_clocks_per_line {4096} \
CONFIG.max_lines_per_frame {4096} \
 ] $vtg

  # Create instance: xlconcat_0, and set properties
  set xlconcat_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_0 ]
  set_property -dict [ list \
CONFIG.NUM_PORTS {5} \
 ] $xlconcat_0

  # Create instance: xlconstant_0, and set properties
  set xlconstant_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_0 ]
  set_property -dict [ list \
CONFIG.CONST_VAL {7} \
CONFIG.CONST_WIDTH {3} \
 ] $xlconstant_0

  # Create interface connections
  connect_bd_intf_net -intf_net AXI_BayerToRGB_1_AXI_Stream_Master [get_bd_intf_pins AXI_BayerToRGB_1/AXI_Stream_Master] [get_bd_intf_pins AXI_GammaCorrection_0/AXI_Slave_Interface]
  connect_bd_intf_net -intf_net AXI_GammaCorrection_0_AXI_Stream_Master [get_bd_intf_pins AXI_GammaCorrection_0/AXI_Stream_Master] [get_bd_intf_pins axi_vdma_1/S_AXIS_S2MM]
  connect_bd_intf_net -intf_net FIFO_READ_1_1 [get_bd_intf_ports FIFO_READ_1] [get_bd_intf_pins fifo_generator_1/FIFO_READ]
  connect_bd_intf_net -intf_net FIFO_READ_2_2 [get_bd_intf_ports FIFO_READ_2] [get_bd_intf_pins fifo_generator_2/FIFO_READ]
  connect_bd_intf_net -intf_net FIFO_READ_3_2 [get_bd_intf_ports FIFO_READ_3] [get_bd_intf_pins fifo_generator_3/FIFO_READ]
  connect_bd_intf_net -intf_net FIFO_READ_4_1 [get_bd_intf_ports FIFO_READ_4] [get_bd_intf_pins fifo_generator_4/FIFO_READ]
  connect_bd_intf_net -intf_net FIFO_READ_5 [get_bd_intf_ports FIFO_READ] [get_bd_intf_pins fifo_generator_0/FIFO_READ]
  connect_bd_intf_net -intf_net FIFO_READ_5_1 [get_bd_intf_ports FIFO_READ_5] [get_bd_intf_pins fifo_generator_5/FIFO_READ]
  connect_bd_intf_net -intf_net FIFO_READ_6_1 [get_bd_intf_ports FIFO_READ_6] [get_bd_intf_pins fifo_generator_6/FIFO_READ]
  connect_bd_intf_net -intf_net FIFO_READ_7_1 [get_bd_intf_ports FIFO_READ_7] [get_bd_intf_pins fifo_generator_7/FIFO_READ]
  connect_bd_intf_net -intf_net FIFO_WRITE_1_1 [get_bd_intf_ports FIFO_WRITE_1] [get_bd_intf_pins fifo_generator_1/FIFO_WRITE]
  connect_bd_intf_net -intf_net FIFO_WRITE_2_2 [get_bd_intf_ports FIFO_WRITE_2] [get_bd_intf_pins fifo_generator_2/FIFO_WRITE]
  connect_bd_intf_net -intf_net FIFO_WRITE_3_2 [get_bd_intf_ports FIFO_WRITE_3] [get_bd_intf_pins fifo_generator_3/FIFO_WRITE]
  connect_bd_intf_net -intf_net FIFO_WRITE_4_1 [get_bd_intf_ports FIFO_WRITE_4] [get_bd_intf_pins fifo_generator_4/FIFO_WRITE]
  connect_bd_intf_net -intf_net FIFO_WRITE_5 [get_bd_intf_ports FIFO_WRITE] [get_bd_intf_pins fifo_generator_0/FIFO_WRITE]
  connect_bd_intf_net -intf_net FIFO_WRITE_5_1 [get_bd_intf_ports FIFO_WRITE_5] [get_bd_intf_pins fifo_generator_5/FIFO_WRITE]
  connect_bd_intf_net -intf_net FIFO_WRITE_6_1 [get_bd_intf_ports FIFO_WRITE_6] [get_bd_intf_pins fifo_generator_6/FIFO_WRITE]
  connect_bd_intf_net -intf_net FIFO_WRITE_7_1 [get_bd_intf_ports FIFO_WRITE_7] [get_bd_intf_pins fifo_generator_7/FIFO_WRITE]
  connect_bd_intf_net -intf_net MIPI_CSI_2_RX_0_m_axis_video [get_bd_intf_pins AXI_BayerToRGB_1/AXI_Slave_Interface] [get_bd_intf_pins MIPI_CSI_2_RX_0/m_axis_video]
  connect_bd_intf_net -intf_net MIPI_D_PHY_RX_0_D_PHY_PPI [get_bd_intf_pins MIPI_CSI_2_RX_0/rx_mipi_ppi] [get_bd_intf_pins MIPI_D_PHY_RX_0/D_PHY_PPI]
  connect_bd_intf_net -intf_net S00_AXI_1 [get_bd_intf_ports S00_AXI] [get_bd_intf_pins axi_interconnect_0/S00_AXI]
  connect_bd_intf_net -intf_net S01_AXI_1 [get_bd_intf_ports S01_AXI] [get_bd_intf_pins axi_interconnect_0/S01_AXI]
  connect_bd_intf_net -intf_net S02_AXI_1 [get_bd_intf_ports S02_AXI] [get_bd_intf_pins axi_interconnect_0/S02_AXI]
  connect_bd_intf_net -intf_net S_AXIS_S2MM_1 [get_bd_intf_ports S_AXIS_S2MM] [get_bd_intf_pins axi_vdma_0/S_AXIS_S2MM]
  connect_bd_intf_net -intf_net axi_apb_bridge_0_APB_M [get_bd_intf_ports APB_M] [get_bd_intf_pins axi_apb_bridge_0/APB_M]
  connect_bd_intf_net -intf_net axi_interconnect_0_M00_AXI [get_bd_intf_pins axi_interconnect_0/M00_AXI] [get_bd_intf_pins processing_system7_0/S_AXI_HP3]
  connect_bd_intf_net -intf_net axi_mem_intercon_1_M00_AXI [get_bd_intf_pins axi_mem_intercon_1/M00_AXI] [get_bd_intf_pins processing_system7_0/S_AXI_HP2]
  connect_bd_intf_net -intf_net axi_mem_intercon_M00_AXI [get_bd_intf_pins axi_mem_intercon/M00_AXI] [get_bd_intf_pins processing_system7_0/S_AXI_HP0]
  connect_bd_intf_net -intf_net axi_vdma_0_M_AXIS_MM2S [get_bd_intf_pins axi_vdma_0/M_AXIS_MM2S] [get_bd_intf_pins v_axi4s_vid_out_0/video_in]
  connect_bd_intf_net -intf_net axi_vdma_0_M_AXI_MM2S [get_bd_intf_pins axi_mem_intercon/S01_AXI] [get_bd_intf_pins axi_vdma_0/M_AXI_MM2S]
  connect_bd_intf_net -intf_net axi_vdma_0_M_AXI_S2MM [get_bd_intf_pins axi_mem_intercon_1/S00_AXI] [get_bd_intf_pins axi_vdma_0/M_AXI_S2MM]
  connect_bd_intf_net -intf_net axi_vdma_1_M_AXIS_MM2S [get_bd_intf_ports M_AXIS_MM2S] [get_bd_intf_pins axi_vdma_1/M_AXIS_MM2S]
  connect_bd_intf_net -intf_net axi_vdma_1_M_AXI_MM2S [get_bd_intf_pins axi_mem_intercon/S00_AXI] [get_bd_intf_pins axi_vdma_1/M_AXI_MM2S]
  connect_bd_intf_net -intf_net axi_vdma_1_M_AXI_S2MM [get_bd_intf_pins axi_mem_intercon_1/S01_AXI] [get_bd_intf_pins axi_vdma_1/M_AXI_S2MM]
  connect_bd_intf_net -intf_net dphy_hs_clock_1 [get_bd_intf_ports dphy_hs_clock] [get_bd_intf_pins MIPI_D_PHY_RX_0/dphy_hs_clock]
  connect_bd_intf_net -intf_net processing_system7_0_DDR [get_bd_intf_ports DDR] [get_bd_intf_pins processing_system7_0/DDR]
  connect_bd_intf_net -intf_net processing_system7_0_FIXED_IO [get_bd_intf_ports FIXED_IO] [get_bd_intf_pins processing_system7_0/FIXED_IO]
  connect_bd_intf_net -intf_net processing_system7_0_GPIO_0 [get_bd_intf_ports cam_gpio] [get_bd_intf_pins processing_system7_0/GPIO_0]
  connect_bd_intf_net -intf_net processing_system7_0_IIC_0 [get_bd_intf_ports cam_iic] [get_bd_intf_pins processing_system7_0/IIC_0]
  connect_bd_intf_net -intf_net processing_system7_0_M_AXI_GP0 [get_bd_intf_pins processing_system7_0/M_AXI_GP0] [get_bd_intf_pins ps7_0_axi_periph/S00_AXI]
  connect_bd_intf_net -intf_net ps7_0_axi_periph_M00_AXI [get_bd_intf_pins axi_vdma_0/S_AXI_LITE] [get_bd_intf_pins ps7_0_axi_periph/M00_AXI]
  connect_bd_intf_net -intf_net ps7_0_axi_periph_M01_AXI [get_bd_intf_pins ps7_0_axi_periph/M01_AXI] [get_bd_intf_pins video_dynclk/S_AXI_LITE]
  connect_bd_intf_net -intf_net ps7_0_axi_periph_M02_AXI [get_bd_intf_pins ps7_0_axi_periph/M02_AXI] [get_bd_intf_pins vtg/ctrl]
  connect_bd_intf_net -intf_net ps7_0_axi_periph_M03_AXI [get_bd_intf_pins MIPI_D_PHY_RX_0/S_AXI_LITE] [get_bd_intf_pins ps7_0_axi_periph/M03_AXI]
  connect_bd_intf_net -intf_net ps7_0_axi_periph_M04_AXI [get_bd_intf_pins MIPI_CSI_2_RX_0/S_AXI_LITE] [get_bd_intf_pins ps7_0_axi_periph/M04_AXI]
  connect_bd_intf_net -intf_net ps7_0_axi_periph_M05_AXI [get_bd_intf_pins AXI_GammaCorrection_0/AXI_Lite_Reg_Intf] [get_bd_intf_pins ps7_0_axi_periph/M05_AXI]
  connect_bd_intf_net -intf_net ps7_0_axi_periph_M06_AXI [get_bd_intf_pins axi_apb_bridge_0/AXI4_LITE] [get_bd_intf_pins ps7_0_axi_periph/M06_AXI]
  connect_bd_intf_net -intf_net ps7_0_axi_periph_M07_AXI [get_bd_intf_pins axi_vdma_1/S_AXI_LITE] [get_bd_intf_pins ps7_0_axi_periph/M07_AXI]
  connect_bd_intf_net -intf_net rgb2dvi_0_TMDS [get_bd_intf_ports hdmi_tx] [get_bd_intf_pins rgb2dvi_0/TMDS]
  connect_bd_intf_net -intf_net v_axi4s_vid_out_0_vid_io_out [get_bd_intf_pins rgb2dvi_0/RGB] [get_bd_intf_pins v_axi4s_vid_out_0/vid_io_out]
  connect_bd_intf_net -intf_net v_tc_0_vtiming_out [get_bd_intf_pins v_axi4s_vid_out_0/vtiming_in] [get_bd_intf_pins vtg/vtiming_out]

  # Create port connections
  connect_bd_net -net MIPI_D_PHY_RX_0_RxByteClkHS [get_bd_pins MIPI_CSI_2_RX_0/RxByteClkHS] [get_bd_pins MIPI_D_PHY_RX_0/RxByteClkHS]
  connect_bd_net -net PixelClk_Generator_clk_out1 [get_bd_pins rgb2dvi_0/PixelClk] [get_bd_pins rst_vid_clk_dyn/slowest_sync_clk] [get_bd_pins v_axi4s_vid_out_0/vid_io_out_clk] [get_bd_pins video_dynclk/PXL_CLK_O] [get_bd_pins vtg/clk]
  connect_bd_net -net axi_dynclk_0_LOCKED_O [get_bd_pins rst_vid_clk_dyn/dcm_locked] [get_bd_pins video_dynclk/LOCKED_O]
  connect_bd_net -net axi_dynclk_0_PXL_CLK_5X_O [get_bd_pins rgb2dvi_0/SerialClk] [get_bd_pins video_dynclk/PXL_CLK_5X_O]
  connect_bd_net -net axi_vdma_0_mm2s_introut [get_bd_pins axi_vdma_0/mm2s_introut] [get_bd_pins xlconcat_0/In1]
  connect_bd_net -net axi_vdma_0_s2mm_introut [get_bd_pins axi_vdma_0/s2mm_introut] [get_bd_pins xlconcat_0/In2]
  connect_bd_net -net axi_vdma_1_mm2s_introut [get_bd_pins axi_vdma_1/mm2s_introut] [get_bd_pins xlconcat_0/In3]
  connect_bd_net -net axi_vdma_1_s2mm_introut [get_bd_pins axi_vdma_1/s2mm_introut] [get_bd_pins xlconcat_0/In4]
  connect_bd_net -net clk_1_1 [get_bd_ports clk_1] [get_bd_pins fifo_generator_1/clk]
  connect_bd_net -net clk_2_1 [get_bd_ports clk_2] [get_bd_pins fifo_generator_0/clk]
  connect_bd_net -net clk_3_1 [get_bd_ports clk_3] [get_bd_pins fifo_generator_2/clk]
  connect_bd_net -net clk_4_1 [get_bd_ports clk_4] [get_bd_pins fifo_generator_3/clk]
  connect_bd_net -net clk_5_1 [get_bd_ports clk_5] [get_bd_pins fifo_generator_4/clk]
  connect_bd_net -net clk_6_1 [get_bd_ports axi_clk_2] [get_bd_pins fifo_generator_6/clk]
  connect_bd_net -net clk_7_1 [get_bd_ports axi_clk_0] [get_bd_pins fifo_generator_7/clk]
  connect_bd_net -net clk_8_1 [get_bd_ports axi_clk_1] [get_bd_pins fifo_generator_5/clk]
  connect_bd_net -net clk_wiz_0_locked [get_bd_pins clk_wiz_0/locked] [get_bd_pins rst_clk_wiz_0_50M/dcm_locked]
  connect_bd_net -net dphy_clk_lp_n_1 [get_bd_ports dphy_clk_lp_n] [get_bd_pins MIPI_D_PHY_RX_0/dphy_clk_lp_n]
  connect_bd_net -net dphy_clk_lp_p_1 [get_bd_ports dphy_clk_lp_p] [get_bd_pins MIPI_D_PHY_RX_0/dphy_clk_lp_p]
  connect_bd_net -net dphy_data_hs_n_1 [get_bd_ports dphy_data_hs_n] [get_bd_pins MIPI_D_PHY_RX_0/dphy_data_hs_n]
  connect_bd_net -net dphy_data_hs_p_1 [get_bd_ports dphy_data_hs_p] [get_bd_pins MIPI_D_PHY_RX_0/dphy_data_hs_p]
  connect_bd_net -net dphy_data_lp_n_1 [get_bd_ports dphy_data_lp_n] [get_bd_pins MIPI_D_PHY_RX_0/dphy_data_lp_n]
  connect_bd_net -net dphy_data_lp_p_1 [get_bd_ports dphy_data_lp_p] [get_bd_pins MIPI_D_PHY_RX_0/dphy_data_lp_p]
  connect_bd_net -net fifo_generator_0_data_count [get_bd_ports data_count] [get_bd_pins fifo_generator_0/data_count]
  connect_bd_net -net fifo_generator_1_data_count [get_bd_ports data_count_1] [get_bd_pins fifo_generator_1/data_count]
  connect_bd_net -net fifo_generator_2_data_count [get_bd_ports data_count_2] [get_bd_pins fifo_generator_2/data_count]
  connect_bd_net -net fifo_generator_3_data_count [get_bd_ports data_count_3] [get_bd_pins fifo_generator_3/data_count]
  connect_bd_net -net fifo_generator_4_data_count [get_bd_ports data_count_4] [get_bd_pins fifo_generator_4/data_count]
  connect_bd_net -net fifo_generator_5_data_count [get_bd_ports data_count_5] [get_bd_pins fifo_generator_5/data_count]
  connect_bd_net -net fifo_generator_6_data_count [get_bd_ports data_count_6] [get_bd_pins fifo_generator_6/data_count]
  connect_bd_net -net fifo_generator_7_data_count [get_bd_ports data_count_7] [get_bd_pins fifo_generator_7/data_count]
  connect_bd_net -net mm_clk_100 [get_bd_ports clk] [get_bd_pins AXI_BayerToRGB_1/StreamClk] [get_bd_pins AXI_GammaCorrection_0/StreamClk] [get_bd_pins MIPI_CSI_2_RX_0/video_aclk] [get_bd_pins axi_interconnect_0/ACLK] [get_bd_pins axi_interconnect_0/M00_ACLK] [get_bd_pins axi_interconnect_0/S00_ACLK] [get_bd_pins axi_interconnect_0/S01_ACLK] [get_bd_pins axi_interconnect_0/S02_ACLK] [get_bd_pins axi_mem_intercon/ACLK] [get_bd_pins axi_mem_intercon/M00_ACLK] [get_bd_pins axi_mem_intercon/S00_ACLK] [get_bd_pins axi_mem_intercon/S01_ACLK] [get_bd_pins axi_mem_intercon_1/ACLK] [get_bd_pins axi_mem_intercon_1/M00_ACLK] [get_bd_pins axi_mem_intercon_1/S00_ACLK] [get_bd_pins axi_mem_intercon_1/S01_ACLK] [get_bd_pins axi_vdma_0/m_axi_mm2s_aclk] [get_bd_pins axi_vdma_0/m_axi_s2mm_aclk] [get_bd_pins axi_vdma_0/m_axis_mm2s_aclk] [get_bd_pins axi_vdma_0/s_axis_s2mm_aclk] [get_bd_pins axi_vdma_1/m_axi_mm2s_aclk] [get_bd_pins axi_vdma_1/m_axi_s2mm_aclk] [get_bd_pins axi_vdma_1/m_axis_mm2s_aclk] [get_bd_pins axi_vdma_1/s_axis_s2mm_aclk] [get_bd_pins clk_wiz_0/clk_out2] [get_bd_pins processing_system7_0/S_AXI_HP0_ACLK] [get_bd_pins processing_system7_0/S_AXI_HP2_ACLK] [get_bd_pins processing_system7_0/S_AXI_HP3_ACLK] [get_bd_pins v_axi4s_vid_out_0/aclk]
  connect_bd_net -net processing_system7_0_FCLK_CLK0 [get_bd_pins clk_wiz_0/clk_in1] [get_bd_pins processing_system7_0/FCLK_CLK0] [get_bd_pins video_dynclk/REF_CLK_I]
  connect_bd_net -net processing_system7_0_FCLK_RESET0_N [get_bd_pins processing_system7_0/FCLK_RESET0_N] [get_bd_pins rst_clk_wiz_0_50M/ext_reset_in] [get_bd_pins rst_vid_clk_dyn/ext_reset_in]
  connect_bd_net -net ref_clk_200 [get_bd_pins MIPI_D_PHY_RX_0/RefClk] [get_bd_pins clk_wiz_0/clk_out3]
  connect_bd_net -net rst_1 [get_bd_ports rst] [get_bd_pins fifo_generator_1/rst]
  connect_bd_net -net rst_1_1 [get_bd_ports rst_1] [get_bd_pins fifo_generator_0/rst]
  connect_bd_net -net rst_2_1 [get_bd_ports rst_2] [get_bd_pins fifo_generator_2/rst]
  connect_bd_net -net rst_3_1 [get_bd_ports rst_3] [get_bd_pins fifo_generator_3/rst]
  connect_bd_net -net rst_4_1 [get_bd_ports rst_4] [get_bd_pins fifo_generator_4/rst]
  connect_bd_net -net rst_5_1 [get_bd_ports axi_rst_2] [get_bd_pins fifo_generator_6/rst]
  connect_bd_net -net rst_6_1 [get_bd_ports axi_rst_0] [get_bd_pins fifo_generator_7/rst]
  connect_bd_net -net rst_7_1 [get_bd_ports axi_rst_1] [get_bd_pins fifo_generator_5/rst]
  connect_bd_net -net rst_clk_wiz_0_50M_interconnect_aresetn [get_bd_pins axi_interconnect_0/ARESETN] [get_bd_pins axi_interconnect_0/M00_ARESETN] [get_bd_pins axi_interconnect_0/S00_ARESETN] [get_bd_pins axi_interconnect_0/S01_ARESETN] [get_bd_pins axi_interconnect_0/S02_ARESETN] [get_bd_pins ps7_0_axi_periph/ARESETN] [get_bd_pins rst_clk_wiz_0_50M/interconnect_aresetn]
  connect_bd_net -net rst_clk_wiz_0_50M_peripheral_aresetn [get_bd_ports rst_n] [get_bd_pins AXI_BayerToRGB_1/sStreamReset_n] [get_bd_pins AXI_GammaCorrection_0/aAxiLiteReset_n] [get_bd_pins AXI_GammaCorrection_0/sStreamReset_n] [get_bd_pins MIPI_CSI_2_RX_0/s_axi_lite_aresetn] [get_bd_pins MIPI_D_PHY_RX_0/s_axi_lite_aresetn] [get_bd_pins axi_apb_bridge_0/s_axi_aresetn] [get_bd_pins axi_mem_intercon/ARESETN] [get_bd_pins axi_mem_intercon/M00_ARESETN] [get_bd_pins axi_mem_intercon/S00_ARESETN] [get_bd_pins axi_mem_intercon/S01_ARESETN] [get_bd_pins axi_mem_intercon_1/ARESETN] [get_bd_pins axi_mem_intercon_1/M00_ARESETN] [get_bd_pins axi_mem_intercon_1/S00_ARESETN] [get_bd_pins axi_mem_intercon_1/S01_ARESETN] [get_bd_pins axi_vdma_0/axi_resetn] [get_bd_pins axi_vdma_1/axi_resetn] [get_bd_pins ps7_0_axi_periph/M00_ARESETN] [get_bd_pins ps7_0_axi_periph/M01_ARESETN] [get_bd_pins ps7_0_axi_periph/M02_ARESETN] [get_bd_pins ps7_0_axi_periph/M03_ARESETN] [get_bd_pins ps7_0_axi_periph/M04_ARESETN] [get_bd_pins ps7_0_axi_periph/M05_ARESETN] [get_bd_pins ps7_0_axi_periph/M06_ARESETN] [get_bd_pins ps7_0_axi_periph/M07_ARESETN] [get_bd_pins ps7_0_axi_periph/S00_ARESETN] [get_bd_pins rst_clk_wiz_0_50M/peripheral_aresetn] [get_bd_pins v_axi4s_vid_out_0/aresetn] [get_bd_pins video_dynclk/s_axi_lite_aresetn] [get_bd_pins vtg/s_axi_aresetn]
  connect_bd_net -net rst_clk_wiz_0_50M_peripheral_reset [get_bd_pins MIPI_D_PHY_RX_0/aRst] [get_bd_pins rst_clk_wiz_0_50M/peripheral_reset]
  connect_bd_net -net rst_vid_clk_dyn_peripheral_aresetn [get_bd_pins rst_vid_clk_dyn/peripheral_aresetn] [get_bd_pins vtg/resetn]
  connect_bd_net -net rst_vid_clk_dyn_peripheral_reset [get_bd_pins rst_vid_clk_dyn/peripheral_reset] [get_bd_pins v_axi4s_vid_out_0/vid_io_out_reset]
  connect_bd_net -net s_axil_clk_50 [get_bd_ports clk_axi] [get_bd_pins AXI_GammaCorrection_0/AxiLiteClk] [get_bd_pins MIPI_CSI_2_RX_0/s_axi_lite_aclk] [get_bd_pins MIPI_D_PHY_RX_0/s_axi_lite_aclk] [get_bd_pins axi_apb_bridge_0/s_axi_aclk] [get_bd_pins axi_vdma_0/s_axi_lite_aclk] [get_bd_pins axi_vdma_1/s_axi_lite_aclk] [get_bd_pins clk_wiz_0/clk_out1] [get_bd_pins processing_system7_0/M_AXI_GP0_ACLK] [get_bd_pins ps7_0_axi_periph/ACLK] [get_bd_pins ps7_0_axi_periph/M00_ACLK] [get_bd_pins ps7_0_axi_periph/M01_ACLK] [get_bd_pins ps7_0_axi_periph/M02_ACLK] [get_bd_pins ps7_0_axi_periph/M03_ACLK] [get_bd_pins ps7_0_axi_periph/M04_ACLK] [get_bd_pins ps7_0_axi_periph/M05_ACLK] [get_bd_pins ps7_0_axi_periph/M06_ACLK] [get_bd_pins ps7_0_axi_periph/M07_ACLK] [get_bd_pins ps7_0_axi_periph/S00_ACLK] [get_bd_pins rst_clk_wiz_0_50M/slowest_sync_clk] [get_bd_pins video_dynclk/s_axi_lite_aclk] [get_bd_pins vtg/s_axi_aclk]
  connect_bd_net -net v_axi4s_vid_out_0_locked [get_bd_pins rgb2dvi_0/aRst_n] [get_bd_pins v_axi4s_vid_out_0/locked]
  connect_bd_net -net v_axi4s_vid_out_0_vtg_ce [get_bd_pins v_axi4s_vid_out_0/vtg_ce] [get_bd_pins vtg/gen_clken]
  connect_bd_net -net v_tc_0_irq [get_bd_pins vtg/irq] [get_bd_pins xlconcat_0/In0]
  connect_bd_net -net xlconcat_0_dout [get_bd_pins processing_system7_0/IRQ_F2P] [get_bd_pins xlconcat_0/dout]
  connect_bd_net -net xlconstant_0_dout [get_bd_pins axi_vdma_1/s_axis_s2mm_tkeep] [get_bd_pins xlconstant_0/dout]

  # Create address segments
  create_bd_addr_seg -range 0x40000000 -offset 0x00000000 [get_bd_addr_spaces axi_vdma_0/Data_MM2S] [get_bd_addr_segs processing_system7_0/S_AXI_HP0/HP0_DDR_LOWOCM] SEG_processing_system7_0_HP0_DDR_LOWOCM
  create_bd_addr_seg -range 0x40000000 -offset 0x00000000 [get_bd_addr_spaces axi_vdma_0/Data_S2MM] [get_bd_addr_segs processing_system7_0/S_AXI_HP2/HP2_DDR_LOWOCM] SEG_processing_system7_0_HP2_DDR_LOWOCM
  create_bd_addr_seg -range 0x40000000 -offset 0x00000000 [get_bd_addr_spaces axi_vdma_1/Data_MM2S] [get_bd_addr_segs processing_system7_0/S_AXI_HP0/HP0_DDR_LOWOCM] SEG_processing_system7_0_HP0_DDR_LOWOCM
  create_bd_addr_seg -range 0x40000000 -offset 0x00000000 [get_bd_addr_spaces axi_vdma_1/Data_S2MM] [get_bd_addr_segs processing_system7_0/S_AXI_HP2/HP2_DDR_LOWOCM] SEG_processing_system7_0_HP2_DDR_LOWOCM
  create_bd_addr_seg -range 0x00010000 -offset 0x43C50000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs APB_M/Reg] SEG_APB_M_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x43C40000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs AXI_GammaCorrection_0/AXI_Lite_Reg_Intf/Reg] SEG_AXI_GammaCorrection_0_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x43C30000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs MIPI_CSI_2_RX_0/S_AXI_LITE/S_AXI_LITE_reg] SEG_MIPI_CSI_2_RX_0_S_AXI_LITE_reg
  create_bd_addr_seg -range 0x00010000 -offset 0x43C20000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs MIPI_D_PHY_RX_0/S_AXI_LITE/S_AXI_LITE_reg] SEG_MIPI_D_PHY_RX_0_S_AXI_LITE_reg
  create_bd_addr_seg -range 0x00010000 -offset 0x43C00000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs video_dynclk/S_AXI_LITE/S_AXI_LITE_reg] SEG_axi_dynclk_0_S_AXI_LITE_reg
  create_bd_addr_seg -range 0x00010000 -offset 0x43000000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs axi_vdma_0/S_AXI_LITE/Reg] SEG_axi_vdma_0_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x43010000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs axi_vdma_1/S_AXI_LITE/Reg] SEG_axi_vdma_1_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x43C10000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs vtg/ctrl/Reg] SEG_vtg_Reg
  create_bd_addr_seg -range 0x40000000 -offset 0x00000000 [get_bd_addr_spaces S00_AXI] [get_bd_addr_segs processing_system7_0/S_AXI_HP3/HP3_DDR_LOWOCM] SEG_processing_system7_0_HP3_DDR_LOWOCM
  create_bd_addr_seg -range 0x40000000 -offset 0x00000000 [get_bd_addr_spaces S01_AXI] [get_bd_addr_segs processing_system7_0/S_AXI_HP3/HP3_DDR_LOWOCM] SEG_processing_system7_0_HP3_DDR_LOWOCM
  create_bd_addr_seg -range 0x40000000 -offset 0x00000000 [get_bd_addr_spaces S02_AXI] [get_bd_addr_segs processing_system7_0/S_AXI_HP3/HP3_DDR_LOWOCM] SEG_processing_system7_0_HP3_DDR_LOWOCM

  # Perform GUI Layout
  regenerate_bd_layout -layout_string {
   guistr: "# # String gsaved with Nlview 6.6.5b  2016-09-06 bk=1.3687 VDI=39 GEI=35 GUI=JA:1.6
#  -string -flagsOSRD
preplace port axi_rst_2 -pg 1 -y 380 -defaultsOSRD
preplace port FIFO_WRITE_5 -pg 1 -y 180 -defaultsOSRD
preplace port FIFO_READ_2 -pg 1 -y 760 -defaultsOSRD
preplace port FIFO_WRITE -pg 1 -y 460 -defaultsOSRD
preplace port DDR -pg 1 -y 1480 -defaultsOSRD
preplace port FIFO_WRITE_6 -pg 1 -y 320 -defaultsOSRD
preplace port FIFO_READ_3 -pg 1 -y 890 -defaultsOSRD
preplace port dphy_hs_clock -pg 1 -y 1400 -defaultsOSRD
preplace port axi_clk_0 -pg 1 -y 80 -defaultsOSRD
preplace port dphy_clk_lp_n -pg 1 -y 1440 -defaultsOSRD
preplace port FIFO_WRITE_7 -pg 1 -y 40 -defaultsOSRD
preplace port FIFO_READ_4 -pg 1 -y 1310 -defaultsOSRD
preplace port S02_AXI -pg 1 -y 1040 -defaultsOSRD
preplace port S00_AXI -pg 1 -y 1000 -defaultsOSRD
preplace port cam_gpio -pg 1 -y 1460 -defaultsOSRD
preplace port axi_clk_1 -pg 1 -y 220 -defaultsOSRD
preplace port rst_1 -pg 1 -y 520 -defaultsOSRD
preplace port FIFO_READ_5 -pg 1 -y 200 -defaultsOSRD
preplace port S01_AXI -pg 1 -y 1020 -defaultsOSRD
preplace port axi_clk_2 -pg 1 -y 340 -defaultsOSRD
preplace port rst_2 -pg 1 -y 800 -defaultsOSRD
preplace port dphy_clk_lp_p -pg 1 -y 1420 -defaultsOSRD
preplace port FIFO_READ_6 -pg 1 -y 300 -defaultsOSRD
preplace port rst_3 -pg 1 -y 930 -defaultsOSRD
preplace port FIFO_READ_7 -pg 1 -y 60 -defaultsOSRD
preplace port rst_4 -pg 1 -y 1350 -defaultsOSRD
preplace port rst -pg 1 -y 660 -defaultsOSRD
preplace port clk_1 -pg 1 -y 640 -defaultsOSRD
preplace port clk_2 -pg 1 -y 500 -defaultsOSRD
preplace port M_AXIS_MM2S -pg 1 -y 2670 -defaultsOSRD
preplace port FIFO_READ -pg 1 -y 480 -defaultsOSRD
preplace port S_AXIS_S2MM -pg 1 -y 2650 -defaultsOSRD
preplace port hdmi_tx -pg 1 -y 1800 -defaultsOSRD
preplace port FIXED_IO -pg 1 -y 1500 -defaultsOSRD
preplace port clk_3 -pg 1 -y 780 -defaultsOSRD
preplace port FIFO_WRITE_1 -pg 1 -y 600 -defaultsOSRD
preplace port APB_M -pg 1 -y 1950 -defaultsOSRD
preplace port clk_4 -pg 1 -y 910 -defaultsOSRD
preplace port clk -pg 1 -y 1720 -defaultsOSRD
preplace port FIFO_WRITE_2 -pg 1 -y 740 -defaultsOSRD
preplace port cam_iic -pg 1 -y 1520 -defaultsOSRD
preplace port axi_rst_0 -pg 1 -y 100 -defaultsOSRD
preplace port clk_5 -pg 1 -y 1330 -defaultsOSRD
preplace port FIFO_WRITE_3 -pg 1 -y 870 -defaultsOSRD
preplace port axi_rst_1 -pg 1 -y 240 -defaultsOSRD
preplace port clk_axi -pg 1 -y 1700 -defaultsOSRD
preplace port FIFO_WRITE_4 -pg 1 -y 1290 -defaultsOSRD
preplace port FIFO_READ_1 -pg 1 -y 620 -defaultsOSRD
preplace portBus data_count_1 -pg 1 -y 630 -defaultsOSRD
preplace portBus dphy_data_hs_n -pg 1 -y 1480 -defaultsOSRD
preplace portBus data_count_2 -pg 1 -y 770 -defaultsOSRD
preplace portBus data_count -pg 1 -y 490 -defaultsOSRD
preplace portBus data_count_3 -pg 1 -y 910 -defaultsOSRD
preplace portBus dphy_data_hs_p -pg 1 -y 1680 -defaultsOSRD
preplace portBus data_count_4 -pg 1 -y 1330 -defaultsOSRD
preplace portBus data_count_5 -pg 1 -y 210 -defaultsOSRD
preplace portBus data_count_6 -pg 1 -y 350 -defaultsOSRD
preplace portBus data_count_7 -pg 1 -y 70 -defaultsOSRD
preplace portBus dphy_data_lp_n -pg 1 -y 1500 -defaultsOSRD
preplace portBus dphy_data_lp_p -pg 1 -y 1460 -defaultsOSRD
preplace portBus rst_n -pg 1 -y 1880 -defaultsOSRD
preplace inst fifo_generator_3 -pg 1 -lvl 8 -y 910 -defaultsOSRD
preplace inst v_axi4s_vid_out_0 -pg 1 -lvl 7 -y 2394 -defaultsOSRD
preplace inst fifo_generator_4 -pg 1 -lvl 8 -y 1330 -defaultsOSRD
preplace inst vtg -pg 1 -lvl 6 -y 2060 -defaultsOSRD
preplace inst axi_vdma_0 -pg 1 -lvl 6 -y 2700 -defaultsOSRD
preplace inst MIPI_D_PHY_RX_0 -pg 1 -lvl 2 -y 1520 -defaultsOSRD
preplace inst MIPI_CSI_2_RX_0 -pg 1 -lvl 3 -y 2410 -defaultsOSRD
preplace inst xlconstant_0 -pg 1 -lvl 5 -y 2540 -defaultsOSRD
preplace inst axi_vdma_1 -pg 1 -lvl 6 -y 2470 -defaultsOSRD
preplace inst fifo_generator_5 -pg 1 -lvl 8 -y 210 -defaultsOSRD
preplace inst axi_mem_intercon_1 -pg 1 -lvl 7 -y 3330 -defaultsOSRD
preplace inst fifo_generator_6 -pg 1 -lvl 8 -y 350 -defaultsOSRD
preplace inst fifo_generator_7 -pg 1 -lvl 8 -y 70 -defaultsOSRD
preplace inst AXI_GammaCorrection_0 -pg 1 -lvl 5 -y 2410 -defaultsOSRD
preplace inst rst_vid_clk_dyn -pg 1 -lvl 5 -y 1620 -defaultsOSRD
preplace inst xlconcat_0 -pg 1 -lvl 7 -y 3090 -defaultsOSRD
preplace inst rgb2dvi_0 -pg 1 -lvl 8 -y 1800 -defaultsOSRD
preplace inst axi_interconnect_0 -pg 1 -lvl 7 -y 1122 -defaultsOSRD
preplace inst axi_apb_bridge_0 -pg 1 -lvl 8 -y 1950 -defaultsOSRD
preplace inst ps7_0_axi_periph -pg 1 -lvl 5 -y 2020 -defaultsOSRD
preplace inst clk_wiz_0 -pg 1 -lvl 7 -y 2134 -defaultsOSRD
preplace inst fifo_generator_0 -pg 1 -lvl 8 -y 490 -defaultsOSRD
preplace inst video_dynclk -pg 1 -lvl 6 -y 1850 -defaultsOSRD
preplace inst fifo_generator_1 -pg 1 -lvl 8 -y 630 -defaultsOSRD
preplace inst axi_mem_intercon -pg 1 -lvl 7 -y 2696 -defaultsOSRD
preplace inst AXI_BayerToRGB_1 -pg 1 -lvl 4 -y 2430 -defaultsOSRD
preplace inst rst_clk_wiz_0_50M -pg 1 -lvl 1 -y 1590 -defaultsOSRD
preplace inst processing_system7_0 -pg 1 -lvl 8 -y 1540 -defaultsOSRD
preplace inst fifo_generator_2 -pg 1 -lvl 8 -y 770 -defaultsOSRD
preplace netloc axi_vdma_0_M_AXI_MM2S 1 6 1 2320
preplace netloc axi_vdma_1_M_AXI_S2MM 1 6 1 2300
preplace netloc mm_clk_100 1 2 7 730 1062 1030 1062 1380 1062 1820 1062 2340 1580 2820 1710 4560J
preplace netloc dphy_hs_clock_1 1 0 2 NJ 1400 420J
preplace netloc FIFO_READ_5_1 1 0 8 NJ 200 NJ 200 NJ 200 NJ 200 NJ 200 NJ 200 NJ 200 NJ
preplace netloc processing_system7_0_FIXED_IO 1 8 1 NJ
preplace netloc FIFO_WRITE_4_1 1 0 8 0J 1300 NJ 1300 NJ 1300 NJ 1300 NJ 1300 NJ 1300 NJ 1300 NJ
preplace netloc axi_vdma_0_M_AXI_S2MM 1 6 1 2260
preplace netloc dphy_clk_lp_p_1 1 0 2 NJ 1420 410J
preplace netloc axi_vdma_1_s2mm_introut 1 6 1 2280
preplace netloc axi_vdma_0_s2mm_introut 1 6 1 2270
preplace netloc FIFO_READ_7_1 1 0 8 NJ 60 NJ 60 NJ 60 NJ 60 NJ 60 NJ 60 NJ 60 NJ
preplace netloc fifo_generator_1_data_count 1 8 1 NJ
preplace netloc rst_1 1 0 8 NJ 660 NJ 660 NJ 660 NJ 660 NJ 660 NJ 660 NJ 660 NJ
preplace netloc ps7_0_axi_periph_M02_AXI 1 5 1 1760
preplace netloc dphy_data_hs_p_1 1 0 2 NJ 1680 400J
preplace netloc axi_vdma_0_M_AXIS_MM2S 1 6 1 2270
preplace netloc fifo_generator_0_data_count 1 8 1 NJ
preplace netloc ps7_0_axi_periph_M04_AXI 1 2 4 740 2300 NJ 2300 NJ 2300 1770
preplace netloc FIFO_WRITE_5_1 1 0 8 NJ 180 NJ 180 NJ 180 NJ 180 NJ 180 NJ 180 NJ 180 NJ
preplace netloc xlconcat_0_dout 1 7 1 2880
preplace netloc rst_clk_wiz_0_50M_peripheral_aresetn 1 1 8 370 3300 740 3300 1030 3300 1410 3300 1850 3300 2370 1970 2910 1880 NJ
preplace netloc processing_system7_0_GPIO_0 1 8 1 NJ
preplace netloc v_tc_0_vtiming_out 1 6 1 2400
preplace netloc clk_2_1 1 0 8 NJ 500 NJ 500 NJ 500 NJ 500 NJ 500 NJ 500 NJ 500 NJ
preplace netloc rst_3_1 1 0 8 0J 940 NJ 940 NJ 940 NJ 940 NJ 940 NJ 940 NJ 940 NJ
preplace netloc FIFO_WRITE_2_2 1 0 8 NJ 740 NJ 740 NJ 740 NJ 740 NJ 740 NJ 740 NJ 740 NJ
preplace netloc ps7_0_axi_periph_M03_AXI 1 1 5 430 2280 NJ 2280 NJ 2280 NJ 2280 1780
preplace netloc MIPI_D_PHY_RX_0_RxByteClkHS 1 2 1 710
preplace netloc rst_5_1 1 0 8 NJ 380 NJ 380 NJ 380 NJ 380 NJ 380 NJ 380 NJ 380 NJ
preplace netloc processing_system7_0_DDR 1 8 1 NJ
preplace netloc PixelClk_Generator_clk_out1 1 4 4 1420 2590 1840 2210 2410 2210 2890
preplace netloc S01_AXI_1 1 0 7 0J 1022 NJ 1022 NJ 1022 NJ 1022 NJ 1022 NJ 1022 NJ
preplace netloc FIFO_READ_2_2 1 0 8 NJ 760 NJ 760 NJ 760 NJ 760 NJ 760 NJ 760 NJ 760 NJ
preplace netloc FIFO_READ_1_1 1 0 8 NJ 620 NJ 620 NJ 620 NJ 620 NJ 620 NJ 620 NJ 620 NJ
preplace netloc FIFO_READ_4_1 1 0 8 NJ 1310 NJ 1310 NJ 1310 NJ 1310 NJ 1310 NJ 1310 NJ 1310 2840J
preplace netloc clk_3_1 1 0 8 NJ 780 NJ 780 NJ 780 NJ 780 NJ 780 NJ 780 NJ 780 NJ
preplace netloc rst_1_1 1 0 8 NJ 520 NJ 520 NJ 520 NJ 520 NJ 520 NJ 520 NJ 520 NJ
preplace netloc ref_clk_200 1 1 7 440 2610 NJ 2610 NJ 2610 NJ 2610 1880J 2340 2380J 2520 2830
preplace netloc dphy_data_lp_n_1 1 0 2 NJ 1500 360J
preplace netloc axi_vdma_1_M_AXIS_MM2S 1 6 3 2320J 2540 NJ 2540 4550J
preplace netloc S_AXIS_S2MM_1 1 0 6 NJ 2650 NJ 2650 NJ 2650 NJ 2650 NJ 2650 NJ
preplace netloc ps7_0_axi_periph_M00_AXI 1 5 1 1800
preplace netloc clk_8_1 1 0 8 NJ 220 NJ 220 NJ 220 NJ 220 NJ 220 NJ 220 NJ 220 NJ
preplace netloc processing_system7_0_FCLK_RESET0_N 1 0 9 10 1710 NJ 1710 NJ 1710 NJ 1710 1360 1710 NJ 1710 NJ 1710 2810J 1690 4530
preplace netloc dphy_clk_lp_n_1 1 0 2 NJ 1440 400J
preplace netloc clk_1_1 1 0 8 NJ 640 NJ 640 NJ 640 NJ 640 NJ 640 NJ 640 NJ 640 NJ
preplace netloc S02_AXI_1 1 0 7 0J 1042 NJ 1042 NJ 1042 NJ 1042 NJ 1042 NJ 1042 NJ
preplace netloc rst_4_1 1 0 8 NJ 1350 NJ 1350 NJ 1350 NJ 1350 NJ 1350 NJ 1350 NJ 1350 2810J
preplace netloc AXI_GammaCorrection_0_AXI_Stream_Master 1 5 1 N
preplace netloc ps7_0_axi_periph_M01_AXI 1 5 1 1760
preplace netloc clk_7_1 1 0 8 NJ 80 NJ 80 NJ 80 NJ 80 NJ 80 NJ 80 NJ 80 NJ
preplace netloc clk_6_1 1 0 8 0J 360 NJ 360 NJ 360 NJ 360 NJ 360 NJ 360 NJ 360 NJ
preplace netloc axi_apb_bridge_0_APB_M 1 8 1 NJ
preplace netloc ps7_0_axi_periph_M07_AXI 1 5 1 1790
preplace netloc dphy_data_lp_p_1 1 0 2 NJ 1460 390J
preplace netloc fifo_generator_3_data_count 1 8 1 NJ
preplace netloc axi_vdma_1_M_AXI_MM2S 1 6 1 2330
preplace netloc axi_vdma_0_mm2s_introut 1 6 1 2290
preplace netloc processing_system7_0_IIC_0 1 8 1 NJ
preplace netloc rst_6_1 1 0 8 NJ 100 NJ 100 NJ 100 NJ 100 NJ 100 NJ 100 NJ 100 NJ
preplace netloc FIFO_WRITE_7_1 1 0 8 NJ 40 NJ 40 NJ 40 NJ 40 NJ 40 NJ 40 NJ 40 NJ
preplace netloc fifo_generator_6_data_count 1 8 1 NJ
preplace netloc FIFO_READ_5 1 0 8 NJ 480 NJ 480 NJ 480 NJ 480 NJ 480 NJ 480 NJ 480 NJ
preplace netloc rst_clk_wiz_0_50M_interconnect_aresetn 1 1 6 370J 1082 NJ 1082 NJ 1082 1370 1082 NJ 1082 2420
preplace netloc processing_system7_0_FCLK_CLK0 1 5 4 1870 2200 2350 2050 NJ 2050 4540
preplace netloc FIFO_WRITE_3_2 1 0 8 NJ 870 NJ 870 NJ 870 NJ 870 NJ 870 NJ 870 NJ 870 2820J
preplace netloc clk_4_1 1 0 8 NJ 910 NJ 910 NJ 910 NJ 910 NJ 910 NJ 910 NJ 910 2820J
preplace netloc dphy_data_hs_n_1 1 0 2 NJ 1480 380J
preplace netloc fifo_generator_4_data_count 1 8 1 NJ
preplace netloc clk_5_1 1 0 8 NJ 1330 NJ 1330 NJ 1330 NJ 1330 NJ 1330 NJ 1330 NJ 1330 2810J
preplace netloc clk_wiz_0_locked 1 0 8 20 2600 NJ 2600 NJ 2600 NJ 2600 NJ 2600 1860J 2330 2390J 2530 2820
preplace netloc ps7_0_axi_periph_M06_AXI 1 5 3 1810 2190 2300J 1930 NJ
preplace netloc MIPI_CSI_2_RX_0_m_axis_video 1 3 1 N
preplace netloc v_tc_0_irq 1 6 1 2360
preplace netloc v_axi4s_vid_out_0_locked 1 7 1 2900
preplace netloc axi_dynclk_0_LOCKED_O 1 4 3 1430 2290 NJ 2290 2270
preplace netloc FIFO_WRITE_5 1 0 8 NJ 460 NJ 460 NJ 460 NJ 460 NJ 460 NJ 460 NJ 460 NJ
preplace netloc ps7_0_axi_periph_M05_AXI 1 4 2 1440 2310 1760
preplace netloc MIPI_D_PHY_RX_0_D_PHY_PPI 1 2 1 720
preplace netloc fifo_generator_2_data_count 1 8 1 NJ
preplace netloc fifo_generator_7_data_count 1 8 1 NJ
preplace netloc v_axi4s_vid_out_0_vtg_ce 1 5 3 1880 2230 NJ 2230 2810
preplace netloc axi_mem_intercon_1_M00_AXI 1 7 1 2860
preplace netloc FIFO_READ_3_2 1 0 8 NJ 890 NJ 890 NJ 890 NJ 890 NJ 890 NJ 890 NJ 890 2820J
preplace netloc rst_vid_clk_dyn_peripheral_aresetn 1 5 1 1860
preplace netloc rst_vid_clk_dyn_peripheral_reset 1 5 2 NJ 1620 2420
preplace netloc rst_clk_wiz_0_50M_peripheral_reset 1 1 1 380
preplace netloc processing_system7_0_M_AXI_GP0 1 4 5 1440 1720 NJ 1720 NJ 1720 NJ 1720 4550
preplace netloc FIFO_READ_6_1 1 0 8 NJ 300 NJ 300 NJ 300 NJ 300 NJ 300 NJ 300 NJ 300 2820J
preplace netloc FIFO_WRITE_1_1 1 0 8 NJ 600 NJ 600 NJ 600 NJ 600 NJ 600 NJ 600 NJ 600 NJ
preplace netloc xlconstant_0_dout 1 5 1 1870J
preplace netloc rst_7_1 1 0 8 NJ 240 NJ 240 NJ 240 NJ 240 NJ 240 NJ 240 NJ 240 NJ
preplace netloc rst_2_1 1 0 8 NJ 800 NJ 800 NJ 800 NJ 800 NJ 800 NJ 800 NJ 800 NJ
preplace netloc FIFO_WRITE_6_1 1 0 8 NJ 320 NJ 320 NJ 320 NJ 320 NJ 320 NJ 320 NJ 320 NJ
preplace netloc rgb2dvi_0_TMDS 1 8 1 NJ
preplace netloc axi_mem_intercon_M00_AXI 1 7 1 2840
preplace netloc AXI_BayerToRGB_1_AXI_Stream_Master 1 4 1 1400
preplace netloc fifo_generator_5_data_count 1 8 1 NJ
preplace netloc axi_vdma_1_mm2s_introut 1 6 1 2310
preplace netloc s_axil_clk_50 1 0 9 0 2670 420 2670 720 2670 NJ 2670 1390 2670 1830 1930 2280J 1920 2830 1700 NJ
preplace netloc S00_AXI_1 1 0 7 0J 1002 NJ 1002 NJ 1002 NJ 1002 NJ 1002 NJ 1002 NJ
preplace netloc axi_interconnect_0_M00_AXI 1 7 1 2820
preplace netloc v_axi4s_vid_out_0_vid_io_out 1 7 1 2870
preplace netloc axi_dynclk_0_PXL_CLK_5X_O 1 6 2 NJ 1850 2850
levelinfo -pg 1 -20 200 580 900 1200 1600 2070 2680 4330 4580 -top 0 -bot 3650
",
}

  # Restore current instance
  current_bd_instance $oldCurInst

  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


