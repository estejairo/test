## Voltage config
set_property CFGBVS VCCO [current_design]
set_property CONFIG_VOLTAGE 3.3 [current_design]

## Reset
# set_property PACKAGE_PIN T3 [get_ports reset]
# set_property IOSTANDARD LVCMOS33 [get_ports reset]
# set_property PULLDOWN true [get_ports reset]

# Clock
# create_clock -name sys_diff_clock_clk_p -period 20 [get_ports sys_diff_clock_clk_p]
# set_property -dict {PACKAGE_PIN H4 IOSTANDARD DIFF_SSTL15} [get_ports sysClk_p]
# set_property -dict {PACKAGE_PIN G4 IOSTANDARD DIFF_SSTL15} [get_ports sysClk_n]
# create_clock -period 20.000 -name sys_diff_clock_clk_p -waveform {0.000 5.000} -add [get_ports sysClk_p]

# Others
# set_property PACKAGE_PIN AA13 [get_ports B13_L3_P]
# set_property PACKAGE_PIN AB13 [get_ports B13_L3_N]
# set_property PACKAGE_PIN Y12 [get_ports B13_L11_N]
# set_property PACKAGE_PIN Y11 [get_ports B13_L11_P]
# set_property PACKAGE_PIN AA11 [get_ports B13_L9_N]
# set_property PACKAGE_PIN AA10 [get_ports B13_L9_P]
# set_property -dict {PACKAGE_PIN E22 IOSTANDARD LVDS_25} [get_ports B16_L22_P]
# set_property -dict {PACKAGE_PIN D22 IOSTANDARD LVDS_25} [get_ports B16_L22_N]
# set_property PACKAGE_PIN G22 [get_ports B16_L24_N]
# set_property PACKAGE_PIN G21 [get_ports B16_L24_P]
# set_property PACKAGE_PIN E21 [get_ports B16_L23_P]
# set_property PACKAGE_PIN D21 [get_ports B16_L23_N]
# set_property PACKAGE_PIN F18 [get_ports B16_L15_P]
# set_property PACKAGE_PIN E18 [get_ports B16_L15_N]
# set_property PACKAGE_PIN C22 [get_ports B16_L20_P]
# set_property PACKAGE_PIN B22 [get_ports B16_L20_N]
# set_property PACKAGE_PIN B21 [get_ports B16_L21_P]
# set_property PACKAGE_PIN A21 [get_ports B16_L21_N]
# set_property PACKAGE_PIN C18 [get_ports B16_L13_P]
# set_property PACKAGE_PIN C19 [get_ports B16_L13_N]
# set_property PACKAGE_PIN E19 [get_ports B16_L14_P]
# set_property PACKAGE_PIN D19 [get_ports B16_L14_N]
# set_property PACKAGE_PIN C15 [get_ports B16_L3_N]
# set_property PACKAGE_PIN C14 [get_ports B16_L3_P]
# set_property PACKAGE_PIN D17 [get_ports B16_L12_P]
# set_property PACKAGE_PIN C17 [get_ports B16_L12_N]
# set_property PACKAGE_PIN B13 [get_ports B16_L8_N]
# set_property PACKAGE_PIN C13 [get_ports B16_L8_P]
# set_property PACKAGE_PIN U18 [get_ports B14_L18_N]
# set_property PACKAGE_PIN U17 [get_ports B14_L18_P]
# set_property PACKAGE_PIN Y21 [get_ports B14_L9_P]
# set_property PACKAGE_PIN Y22 [get_ports B14_L9_N]
# set_property PACKAGE_PIN T21 [get_ports B14_L4_P]
# set_property PACKAGE_PIN U21 [get_ports B14_L4_N]
# set_property PACKAGE_PIN R17 [get_ports B14_L24_N]
# set_property PACKAGE_PIN Y14 [get_ports B13_L6_N]
# set_property PACKAGE_PIN W14 [get_ports B13_L6_P]
# set_property PACKAGE_PIN AA14 [get_ports B13_L5_N]
# set_property PACKAGE_PIN Y13 [get_ports B13_L5_P]
# set_property PACKAGE_PIN B20 [get_ports B16_L16_P]
# set_property PACKAGE_PIN A20 [get_ports B16_L16_N]
# set_property PACKAGE_PIN C20 [get_ports B16_L19_N]
# set_property PACKAGE_PIN D20 [get_ports B16_L19_P]
# set_property PACKAGE_PIN A19 [get_ports B16_L17_N]
# set_property PACKAGE_PIN A18 [get_ports B16_L17_P]
# set_property PACKAGE_PIN F20 [get_ports B16_L18_N]
# set_property PACKAGE_PIN F19 [get_ports B16_L18_P]
# set_property PACKAGE_PIN A16 [get_ports B16_L9_N]
# set_property PACKAGE_PIN A15 [get_ports B16_L9_P]
# set_property PACKAGE_PIN B16 [get_ports B16_L7_N]
# set_property PACKAGE_PIN B15 [get_ports B16_L7_P]
# set_property PACKAGE_PIN B17 [get_ports B16_L11_P]
# set_property PACKAGE_PIN B18 [get_ports B16_L11_N]
# set_property PACKAGE_PIN A14 [get_ports B16_L10_N]
# set_property PACKAGE_PIN A13 [get_ports B16_L10_P]
# set_property PACKAGE_PIN D16 [get_ports B16_L5_N]
# set_property PACKAGE_PIN E16 [get_ports B16_L5_P]
# set_property PACKAGE_PIN E17 [get_ports B16_L2_N]
# set_property PACKAGE_PIN F16 [get_ports B16_L2_P]
# set_property PACKAGE_PIN D15 [get_ports B16_L6_N]
# set_property PACKAGE_PIN D14 [get_ports B16_L6_P]
# set_property PACKAGE_PIN P16 [get_ports B14_L24_P]
# set_property PACKAGE_PIN E14 [get_ports B16_L4_N]
# set_property PACKAGE_PIN E13 [get_ports B16_L4_P]
# set_property PACKAGE_PIN F14 [get_ports B16_L1_N]
# set_property PACKAGE_PIN F13 [get_ports B16_L1_P]
# set_property PACKAGE_PIN AA21 [get_ports B14_L8_N]
# set_property PACKAGE_PIN AA20 [get_ports B14_L8_P]
# set_property PACKAGE_PIN AB18 [get_ports B14_L17_N]
# set_property PACKAGE_PIN AA18 [get_ports B14_L17_P]
# set_property PACKAGE_PIN V18 [get_ports B14_L14_P]
# set_property PACKAGE_PIN V19 [get_ports B14_L14_N]
# set_property PACKAGE_PIN Y18 [get_ports B14_L13_P]
# set_property PACKAGE_PIN Y19 [get_ports B14_L13_N]
# set_property PACKAGE_PIN V17 [get_ports B14_L16_P]
# set_property PACKAGE_PIN W17 [get_ports B14_L16_N]
# set_property PACKAGE_PIN AA19 [get_ports B14_L15_P]
# set_property PACKAGE_PIN AB20 [get_ports B14_L15_N]
# set_property PACKAGE_PIN L16 [get_ports B15_L23_P]
# set_property PACKAGE_PIN K16 [get_ports B15_L23_N]
# set_property PACKAGE_PIN K13 [get_ports B15_L19_P]
# set_property PACKAGE_PIN K14 [get_ports B15_L19_N]
# set_property PACKAGE_PIN J20 [get_ports B15_L11_P]
# set_property PACKAGE_PIN J21 [get_ports B15_L11_N]
# set_property PACKAGE_PIN J14 [get_ports B15_L3_P]
# set_property PACKAGE_PIN H14 [get_ports B15_L3_N]
# set_property PACKAGE_PIN N19 [get_ports B15_L17_N]
# set_property PACKAGE_PIN N18 [get_ports B15_L17_P]
# set_property PACKAGE_PIN M18 [get_ports B15_L16_P]
# set_property PACKAGE_PIN L18 [get_ports B15_L16_N]
# set_property PACKAGE_PIN H13 [get_ports B15_L1_P]
# set_property PACKAGE_PIN G13 [get_ports B15_L1_N]
# set_property PACKAGE_PIN G16 [get_ports B15_L2_N]
# set_property PACKAGE_PIN G15 [get_ports B15_L2_P]
# set_property PACKAGE_PIN G17 [get_ports B15_L4_P]
# set_property PACKAGE_PIN G18 [get_ports B15_L4_N]
# set_property PACKAGE_PIN H15 [get_ports B15_L5_N]
# set_property PACKAGE_PIN J15 [get_ports B15_L5_P]
# set_property -dict {PACKAGE_PIN J16 IOSTANDARD LVCMOS33} [get_ports B15_IO0]
# set_property PACKAGE_PIN AB22 [get_ports B14_L10_N]
# set_property PACKAGE_PIN AB21 [get_ports B14_L10_P]
# set_property PACKAGE_PIN W19 [get_ports B14_L12_P]
# set_property PACKAGE_PIN W20 [get_ports B14_L12_N]
# set_property PACKAGE_PIN U20 [get_ports B14_L11_P]
# set_property PACKAGE_PIN V20 [get_ports B14_L11_N]
# set_property PACKAGE_PIN K22 [get_ports B15_L9_N]
# set_property PACKAGE_PIN K21 [get_ports B15_L9_P]
# set_property PACKAGE_PIN G20 [get_ports B15_L8_N]
# set_property PACKAGE_PIN H20 [get_ports B15_L8_P]
# set_property PACKAGE_PIN H22 [get_ports B15_L7_N]
# set_property PACKAGE_PIN J22 [get_ports B15_L7_P]
# set_property PACKAGE_PIN K18 [get_ports B15_L13_P]
# set_property PACKAGE_PIN K19 [get_ports B15_L13_N]
# set_property PACKAGE_PIN L19 [get_ports B15_L14_P]
# set_property PACKAGE_PIN L20 [get_ports B15_L14_N]
# set_property PACKAGE_PIN J19 [get_ports B15_L12_P]
# set_property PACKAGE_PIN H19 [get_ports B15_L12_N]
# set_property PACKAGE_PIN L21 [get_ports B15_L10_N]
# set_property PACKAGE_PIN M21 [get_ports B15_L10_P]
# set_property PACKAGE_PIN N20 [get_ports B15_L18_P]
# set_property PACKAGE_PIN M20 [get_ports B15_L18_N]
# set_property PACKAGE_PIN M13 [get_ports B15_L20_P]
# set_property PACKAGE_PIN L13 [get_ports B15_L20_N]
# set_property PACKAGE_PIN N22 [get_ports B15_L15_P]
# set_property PACKAGE_PIN M22 [get_ports B15_L15_N]
# set_property PACKAGE_PIN H18 [get_ports B15_L6_N]
# set_property PACKAGE_PIN H17 [get_ports B15_L6_P]
# set_property PACKAGE_PIN K17 [get_ports B15_L21_P]
# set_property PACKAGE_PIN J17 [get_ports B15_L21_N]
# set_property PACKAGE_PIN M16 [get_ports B15_L24_N]
# set_property PACKAGE_PIN M15 [get_ports B15_L24_P]
# set_property PACKAGE_PIN L15 [get_ports B15_L22_N]
# set_property PACKAGE_PIN L14 [get_ports B15_L22_P]
set_property -dict {PACKAGE_PIN M17 IOSTANDARD LVCMOS33} [get_ports B15_IO25]
# set_property PACKAGE_PIN T16 [get_ports B13_L17_P]
# set_property PACKAGE_PIN U16 [get_ports B13_L17_N]
# set_property PACKAGE_PIN A4 [get_ports MGT_TX0_N]
# set_property PACKAGE_PIN B4 [get_ports MGT_TX0_P]
# set_property PACKAGE_PIN C5 [get_ports MGT_TX1_N]
# set_property PACKAGE_PIN D5 [get_ports MGT_TX1_P]
# set_property PACKAGE_PIN A6 [get_ports MGT_TX2_N]
# set_property PACKAGE_PIN B6 [get_ports MGT_TX2_P]
# set_property PACKAGE_PIN C7 [get_ports MGT_TX3_N]
# set_property PACKAGE_PIN D7 [get_ports MGT_TX3_P]
# set_property -dict {PACKAGE_PIN E10 IOSTANDARD LVCMOS33} [get_ports MGT_CLK1_N]
# set_property -dict {PACKAGE_PIN F10 IOSTANDARD LVCMOS33} [get_ports MGT_CLK1_P]
# set_property PACKAGE_PIN V10 [get_ports B13_L10_P]
# set_property PACKAGE_PIN W10 [get_ports B13_L10_N]
# set_property PACKAGE_PIN T14 [get_ports B13_L15_P]
# set_property PACKAGE_PIN T15 [get_ports B13_L15_N]
# set_property PACKAGE_PIN P19 [get_ports B14_L5_P]
# set_property PACKAGE_PIN R19 [get_ports B14_L5_N]
# set_property PACKAGE_PIN R18 [get_ports B14_L20_P]
# set_property PACKAGE_PIN T18 [get_ports B14_L20_N]
# set_property PACKAGE_PIN V13 [get_ports B13_L13_P]
# set_property PACKAGE_PIN V14 [get_ports B13_L13_N]
# set_property PACKAGE_PIN U15 [get_ports B13_L14_P]
# set_property PACKAGE_PIN V15 [get_ports B13_L14_N]
# set_property PACKAGE_PIN A8 [get_ports MGT_RX0_N]
# set_property PACKAGE_PIN B8 [get_ports MGT_RX0_P]
# set_property PACKAGE_PIN C11 [get_ports MGT_RX1_N]
# set_property PACKAGE_PIN D11 [get_ports MGT_RX1_P]
# set_property PACKAGE_PIN A10 [get_ports MGT_RX2_N]
# set_property PACKAGE_PIN B10 [get_ports MGT_RX2_P]
# set_property PACKAGE_PIN C9 [get_ports MGT_RX3_N]
# set_property PACKAGE_PIN D9 [get_ports MGT_RX3_P]
# set_property PACKAGE_PIN W15 [get_ports B13_L16_P]
# set_property PACKAGE_PIN W16 [get_ports B13_L16_N]
# set_property PACKAGE_PIN Y16 [get_ports B13_L1_P]
# set_property PACKAGE_PIN AA16 [get_ports B13_L1_N]
# set_property PACKAGE_PIN AA15 [get_ports B13_L4_P]
# set_property PACKAGE_PIN AB15 [get_ports B13_L4_N]
# set_property PACKAGE_PIN AB17 [get_ports B13_L2_N]
# set_property PACKAGE_PIN AB16 [get_ports B13_L2_P]
# set_property PACKAGE_PIN W11 [get_ports B13_L12_P]
# set_property PACKAGE_PIN W12 [get_ports B13_L12_N]

