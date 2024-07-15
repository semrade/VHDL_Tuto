onerror {exit -code 1}
vlib work
vcom -work work Top.vho
vcom -work work Waveform_buffer.vwf.vht
vsim -novopt -c -t 1ps -L cycloneive -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.TopLevel_vhd_vec_tst
vcd file -direction Top.msim.vcd
vcd add -internal TopLevel_vhd_vec_tst/*
vcd add -internal TopLevel_vhd_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f

