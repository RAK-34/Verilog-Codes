vlib work   
#compilation
vlog demux_tb.v
#elaboration
vsim tb
#adding wave
add wave -position insertpoint sim:/tb/*
#run
run -all
