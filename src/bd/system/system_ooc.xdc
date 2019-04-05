################################################################################

# This XDC is used only for OOC mode of synthesis, implementation
# This constraints file contains default clock frequencies to be used during
# out-of-context flows such as OOC Synthesis and Hierarchical Designs.
# This constraints file is not used in normal top-down synthesis (default flow
# of Vivado)
################################################################################
create_clock -name clk_1 -period 6.667 [get_ports clk_1]
create_clock -name clk_2 -period 6.667 [get_ports clk_2]
create_clock -name clk_3 -period 6.667 [get_ports clk_3]
create_clock -name clk_4 -period 6.667 [get_ports clk_4]
create_clock -name clk_5 -period 6.667 [get_ports clk_5]
create_clock -name axi_clk_2 -period 20 [get_ports axi_clk_2]
create_clock -name axi_clk_0 -period 20 [get_ports axi_clk_0]
create_clock -name axi_clk_1 -period 20 [get_ports axi_clk_1]
create_clock -name dphy_hs_clock_clk_p -period 2.976 [get_ports dphy_hs_clock_clk_p]
create_clock -name processing_system7_0_FCLK_CLK0 -period 10 [get_pins processing_system7_0/FCLK_CLK0]

################################################################################