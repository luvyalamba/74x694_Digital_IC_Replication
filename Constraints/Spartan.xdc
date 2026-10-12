#d3-d0 inputs from left hand side
set_property -dict {PACKAGE_PIN M1 IOSTANDARD LVCMOS33} [get_ports {d0}]
set_property -dict {PACKAGE_PIN L1 IOSTANDARD LVCMOS33} [get_ports {d1}]
set_property -dict {PACKAGE_PIN K2 IOSTANDARD LVCMOS33} [get_ports {d2}]
set_property -dict {PACKAGE_PIN K1 IOSTANDARD LVCMOS33} [get_ports {d3}]

#async_rst, sync_rst, OE from right hand side
set_property -dict {PACKAGE_PIN V2 IOSTANDARD LVCMOS33} [get_ports {OE}]
set_property -dict {PACKAGE_PIN U2 IOSTANDARD LVCMOS33} [get_ports {sync_rst}]
set_property -dict {PACKAGE_PIN U1 IOSTANDARD LVCMOS33} [get_ports {async_rst}]


#s1, s0 after from left after space
set_property -dict {PACKAGE_PIN N2 IOSTANDARD LVCMOS33} [get_ports {s0}]
set_property -dict {PACKAGE_PIN N1 IOSTANDARD LVCMOS33} [get_ports {s1}]


#Q from left side
set_property -dict {PACKAGE_PIN B3 IOSTANDARD LVCMOS33} [get_ports {Q[0]}]
set_property -dict {PACKAGE_PIN A3 IOSTANDARD LVCMOS33} [get_ports {Q[1]}]
set_property -dict {PACKAGE_PIN B4 IOSTANDARD LVCMOS33} [get_ports {Q[2]}]
set_property -dict {PACKAGE_PIN A4 IOSTANDARD LVCMOS33} [get_ports {Q[3]}]


#Q_bar from left after space
set_property -dict {PACKAGE_PIN E5 IOSTANDARD LVCMOS33} [get_ports {Q_bar[0]}]
set_property -dict {PACKAGE_PIN E6 IOSTANDARD LVCMOS33} [get_ports {Q_bar[1]}]
set_property -dict {PACKAGE_PIN C3 IOSTANDARD LVCMOS33} [get_ports {Q_bar[2]}]
set_property -dict {PACKAGE_PIN B2 IOSTANDARD LVCMOS33} [get_ports {Q_bar[3]}]

#Register from right side
set_property -dict {PACKAGE_PIN G1 IOSTANDARD LVCMOS33} [get_ports {R[0]}]
set_property -dict {PACKAGE_PIN G2 IOSTANDARD LVCMOS33} [get_ports {R[1]}]
set_property -dict {PACKAGE_PIN F1 IOSTANDARD LVCMOS33} [get_ports {R[2]}]
set_property -dict {PACKAGE_PIN F2 IOSTANDARD LVCMOS33} [get_ports {R[3]}]


#clock
set_property -dict {PACKAGE_PIN F14 IOSTANDARD LVCMOS33} [get_ports {clk}]


