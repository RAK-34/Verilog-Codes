vlib work   
#compilation
vlog ha_tb.v +define+DATA
#elaboration
vsim tb
#adding wave
add wave -position insertpoint sim:/tb/*
#run
run -all
