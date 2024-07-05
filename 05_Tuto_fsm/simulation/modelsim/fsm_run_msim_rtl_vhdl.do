transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {D:/20_FPGA_Demo/05_Tuto_fsm/elevator_Controller.vhd}

vcom -93 -work work {D:/20_FPGA_Demo/05_Tuto_fsm/elevator_Controller_testbench.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneive -L rtl_work -L work -voptargs="+acc"  elevator_Controller_testbench

add wave *
view structure
view signals
run -all
