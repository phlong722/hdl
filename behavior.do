vlib work

vcom -2008 multiplier.vhd
vcom -2008 multiplier_v1_0.vhd
vcom -2008 multiplier_v1_0_S_AXI.vhd
vcom -2008 S_AXI_tb.vhd

vsim -t 1ns -wlf behavior.wlf -voptargs="+acc" work.S_AXI_tb
log -r /*
run 1000 ns