onerror {exit -code 1}
vlib work
vcom -work work Lib_Pack.vho
vcom -work work Lib_Pack_Waveform.vwf.vht
vsim -novopt -c -t 1ps -L cycloneive -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.Lib_Pack_vhd_vec_tst
vcd file -direction Lib_Pack.msim.vcd
vcd add -internal Lib_Pack_vhd_vec_tst/*
vcd add -internal Lib_Pack_vhd_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f
