vlib work   
#compilation
vlog decoder_tb.v
#elaboration
vsim tb
#adding wave
#add wave -position insertpoint sim:/tb/*
#run
run -all
