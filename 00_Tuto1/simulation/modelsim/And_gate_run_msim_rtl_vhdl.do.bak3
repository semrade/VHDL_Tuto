transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {D:/20_FPGA_Demo/00_Tuto1/And_gate.vhd}

vcom -93 -work work {D:/20_FPGA_Demo/00_Tuto1/And_gate_test_bench.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneive -L rtl_work -L work -voptargs="+acc"  And_gate_test_bench

add wave *
view structure
view signals
run -all
