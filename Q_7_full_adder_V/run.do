vlib work   
#compilation
vlog fa_tb.v +define+DATA
#elaboration
vsim tb
#adding wave
#add wave -position insertpoint sim:/tb/*
#run
run -all
