vlib work   
#compilation
vlog bin_bcd_tb.v
#elaboration
vsim tb
#adding wave
#add wave -position insertpoint sim:/tb/*
#run
run -all
