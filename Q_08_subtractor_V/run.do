vlib work   
#compilation
#vlog hs_tb.v 
vlog fs_tb.v 
#elaboration
vsim tb
#adding wave
add wave -position insertpoint sim:/tb/*
#run
run -all
