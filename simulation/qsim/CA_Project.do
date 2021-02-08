onerror {quit -f}
vlib work
vlog -work work CA_Project.vo
vlog -work work CA_Project.vt
vsim -novopt -c -t 1ps -L cycloneiv_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.CA_Project_vlg_vec_tst
vcd file -direction CA_Project.msim.vcd
vcd add -internal CA_Project_vlg_vec_tst/*
vcd add -internal CA_Project_vlg_vec_tst/i1/*
add wave /*
run -all
