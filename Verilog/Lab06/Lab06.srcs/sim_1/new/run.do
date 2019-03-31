##
quit -sim
vlib work

vmap work work
#--------------------------------#
#--      Compile Source        --#
#--------------------------------#
vlog uart.v

#--------------------------------#
#--     Compile Test Bench     --#
#--------------------------------#
vlog gen_test.v

vsim -t 100ps -novopt work.uart_tx_test
view wave

#add wave *
do wave.do


view structure
view signals

run 1000 us	

