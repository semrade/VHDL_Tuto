transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {D:/20_FPGA_Demo/06_Tuto_Pack_Libs/FullAdder.vhd}
vcom -93 -work work {D:/20_FPGA_Demo/06_Tuto_Pack_Libs/Ripple_Adder.vhd}
vcom -93 -work work {D:/20_FPGA_Demo/06_Tuto_Pack_Libs/multy.vhd}

vcom -93 -work work {D:/20_FPGA_Demo/06_Tuto_Pack_Libs/multy_tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneive -L rtl_work -L work -voptargs="+acc"  multy_tb

add wave *
view structure
view signals
run -all
