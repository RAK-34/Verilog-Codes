vlib work   
#compilation
vlog data_types.v
#elaboration
vsim data_types
#adding wave
#add wave -position insertpoint sim:/tb/*
#run
run -all
