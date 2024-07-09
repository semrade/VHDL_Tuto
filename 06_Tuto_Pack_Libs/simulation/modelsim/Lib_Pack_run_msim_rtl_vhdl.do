transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {D:/20_FPGA_Demo/06_Tuto_Pack_Libs/BinaryMultiplier .vhd}

vcom -93 -work work {D:/20_FPGA_Demo/06_Tuto_Pack_Libs/BinaryMultiplier_Testbench.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneive -L rtl_work -L work -voptargs="+acc"  BinaryMultiplier_Testbench

add wave *
view structure
view signals
run -all
