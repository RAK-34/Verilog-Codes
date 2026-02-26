vlib work   
#compilation
vlog literals.v
#elaboration
vsim literals
#adding wave
#add wave -position insertpoint sim:/tb/*
#run
run -all
