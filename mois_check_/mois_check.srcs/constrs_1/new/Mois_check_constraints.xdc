set_property PACKAGE_PIN W5 [get_ports CLK]							
	set_property IOSTANDARD LVCMOS33 [get_ports CLK]
	create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports CLK]

set_property PACKAGE_PIN V17 [get_ports {switch[0]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {switch[0]}]
set_property PACKAGE_PIN V16 [get_ports {switch[1]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {switch[1]}]
set_property PACKAGE_PIN W16 [get_ports {switch[2]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {switch[2]}]
set_property PACKAGE_PIN W17 [get_ports {switch[3]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {switch[3]}]
set_property PACKAGE_PIN W15 [get_ports {switch[4]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {switch[4]}]
set_property PACKAGE_PIN V15 [get_ports {switch[5]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {switch[5]}]
set_property PACKAGE_PIN W14 [get_ports {switch[6]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {switch[6]}]
	
set_property PACKAGE_PIN R2 [get_ports {button_e}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {button_e}]

set_property PACKAGE_PIN W7 [get_ports {segments[7]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {segments[7]}]
set_property PACKAGE_PIN W6 [get_ports {segments[6]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {segments[6]}]
set_property PACKAGE_PIN U8 [get_ports {segments[5]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {segments[5]}]
set_property PACKAGE_PIN V8 [get_ports {segments[4]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {segments[4]}]
set_property PACKAGE_PIN U5 [get_ports {segments[3]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {segments[3]}]
set_property PACKAGE_PIN V5 [get_ports {segments[2]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {segments[2]}]
set_property PACKAGE_PIN U7 [get_ports {segments[1]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {segments[1]}]
set_property PACKAGE_PIN V7 [get_ports segments[0]]							
	set_property IOSTANDARD LVCMOS33 [get_ports segments[0]]

set_property PACKAGE_PIN U2 [get_ports {anodes[0]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {anodes[0]}]
set_property PACKAGE_PIN U4 [get_ports {anodes[1]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {anodes[1]}]
set_property PACKAGE_PIN V4 [get_ports {anodes[2]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {anodes[2]}]
set_property PACKAGE_PIN W4 [get_ports {anodes[3]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {anodes[3]}]
	
set_property -dict { PACKAGE_PIN A14   IOSTANDARD LVCMOS33 } [get_ports {sensor[6]}];#Sch name = JB1
set_property -dict { PACKAGE_PIN A16   IOSTANDARD LVCMOS33 } [get_ports {sensor[7]}];#Sch name = JB2
set_property -dict { PACKAGE_PIN B15   IOSTANDARD LVCMOS33 } [get_ports {sensor[8]}];#Sch name = JB3
set_property -dict { PACKAGE_PIN B16   IOSTANDARD LVCMOS33 } [get_ports {sensor[9]}];#Sch name = JB4
set_property -dict { PACKAGE_PIN A15   IOSTANDARD LVCMOS33 } [get_ports {sensor[2]}];#Sch name = JB7
set_property -dict { PACKAGE_PIN A17   IOSTANDARD LVCMOS33 } [get_ports {sensor[3]}];#Sch name = JB8
set_property -dict { PACKAGE_PIN C15   IOSTANDARD LVCMOS33 } [get_ports {sensor[4]}];#Sch name = JB9
set_property -dict { PACKAGE_PIN C16   IOSTANDARD LVCMOS33 } [get_ports {sensor[5]}];#Sch name = JB10

set_property -dict { PACKAGE_PIN K17   IOSTANDARD LVCMOS33 } [get_ports {data[6]}];#Sch name = JC1
set_property -dict { PACKAGE_PIN M18   IOSTANDARD LVCMOS33 } [get_ports {data[7]}];#Sch name = JC2
set_property -dict { PACKAGE_PIN L17   IOSTANDARD LVCMOS33 } [get_ports {sensor[0]}];#Sch name = JC7
set_property -dict { PACKAGE_PIN M19   IOSTANDARD LVCMOS33 } [get_ports {sensor[1]}];#Sch name = JC8


set_property -dict { PACKAGE_PIN J1   IOSTANDARD LVCMOS33 } [get_ports {data[1]}];#Sch name = JA1
set_property -dict { PACKAGE_PIN L2   IOSTANDARD LVCMOS33 } [get_ports {data[0]}];#Sch name = JA2
set_property -dict { PACKAGE_PIN J2   IOSTANDARD LVCMOS33 } [get_ports {lcd_e}];#Sch name = JA3
set_property -dict { PACKAGE_PIN G2   IOSTANDARD LVCMOS33 } [get_ports {lcd_rs}];#Sch name = JA4
set_property -dict { PACKAGE_PIN H1   IOSTANDARD LVCMOS33 } [get_ports {data[2]}];#Sch name = JA7
set_property -dict { PACKAGE_PIN K2   IOSTANDARD LVCMOS33 } [get_ports {data[3]}];#Sch name = JA8
set_property -dict { PACKAGE_PIN H2   IOSTANDARD LVCMOS33 } [get_ports {data[4]}];#Sch name = JA9
set_property -dict { PACKAGE_PIN G3   IOSTANDARD LVCMOS33 } [get_ports {data[5]}];#Sch name = JA10