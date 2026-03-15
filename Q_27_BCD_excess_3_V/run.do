vlib work   
#compilation
#vlog bcd_exc3_tb.v +define+COMB
vlog bcd_exc3_tb.v
#elaboration
vsim tb
#adding wave
#add wave -position insertpoint sim:/tb/*
#run
run -all
