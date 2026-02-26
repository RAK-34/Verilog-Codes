vlib work   
#compilation
vlog demux_g_tb.v
#elaboration
vsim xnor_tb
#adding wave
#add wave -position insertpoint sim:/and_tb/*
#run
run -all
