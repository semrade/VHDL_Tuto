transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {D:/20_FPGA_Demo/09_Mini_Project_ALU/ALU.vhd}

vcom -93 -work work {D:/20_FPGA_Demo/09_Mini_Project_ALU/ALU_tb2.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneive -L rtl_work -L work -voptargs="+acc"  ALU_tb2

add wave *
view structure
view signals
run -all
