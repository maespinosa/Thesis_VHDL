onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /exponential_function_tb/clk
add wave -noupdate /exponential_function_tb/reset_n
add wave -noupdate /exponential_function_tb/reset
add wave -noupdate /exponential_function_tb/exp_input
add wave -noupdate /exponential_function_tb/exp_input_valid
add wave -noupdate /exponential_function_tb/sender_ready
add wave -noupdate /exponential_function_tb/exp_result
add wave -noupdate /exponential_function_tb/exp_result_valid
add wave -noupdate /exponential_function_tb/function_ready
add wave -noupdate -expand -group EXP_FUNCTION /exponential_function_tb/uut/i_clk
add wave -noupdate -expand -group EXP_FUNCTION /exponential_function_tb/uut/i_reset_n
add wave -noupdate -expand -group EXP_FUNCTION /exponential_function_tb/uut/i_data
add wave -noupdate -expand -group EXP_FUNCTION /exponential_function_tb/uut/i_valid
add wave -noupdate -expand -group EXP_FUNCTION /exponential_function_tb/uut/i_ready
add wave -noupdate -expand -group EXP_FUNCTION /exponential_function_tb/uut/o_data
add wave -noupdate -expand -group EXP_FUNCTION /exponential_function_tb/uut/o_valid
add wave -noupdate -expand -group EXP_FUNCTION /exponential_function_tb/uut/o_ready
add wave -noupdate -expand -group EXP_FUNCTION /exponential_function_tb/uut/factorials
add wave -noupdate -expand -group EXP_FUNCTION /exponential_function_tb/uut/current_state
add wave -noupdate -expand -group EXP_FUNCTION /exponential_function_tb/uut/next_state
add wave -noupdate -expand -group EXP_FUNCTION /exponential_function_tb/uut/ready_out
add wave -noupdate -expand -group EXP_FUNCTION /exponential_function_tb/uut/valid_out
add wave -noupdate -expand -group EXP_FUNCTION /exponential_function_tb/uut/data_out
add wave -noupdate -expand -group EXP_FUNCTION /exponential_function_tb/uut/valid_result
add wave -noupdate -expand -group EXP_FUNCTION /exponential_function_tb/uut/function_ready
add wave -noupdate -expand -group EXP_FUNCTION -radix unsigned /exponential_function_tb/uut/step_counter
add wave -noupdate -expand -group EXP_FUNCTION -radix unsigned /exponential_function_tb/uut/multiplication_counter
add wave -noupdate -expand -group EXP_FUNCTION -radix unsigned /exponential_function_tb/uut/hold_counter
add wave -noupdate -expand -group EXP_FUNCTION -radix unsigned /exponential_function_tb/uut/sum_counter
add wave -noupdate -expand -group EXP_FUNCTION /exponential_function_tb/uut/multiplicand_a
add wave -noupdate -expand -group EXP_FUNCTION /exponential_function_tb/uut/multiplicand_b
add wave -noupdate -expand -group EXP_FUNCTION /exponential_function_tb/uut/product
add wave -noupdate -expand -group EXP_FUNCTION /exponential_function_tb/uut/augend
add wave -noupdate -expand -group EXP_FUNCTION /exponential_function_tb/uut/addend
add wave -noupdate -expand -group EXP_FUNCTION /exponential_function_tb/uut/sum
add wave -noupdate -expand -group EXP_FUNCTION /exponential_function_tb/uut/data_reg
add wave -noupdate -expand -group EXP_FUNCTION /exponential_function_tb/uut/sum_array
add wave -noupdate -expand -group EXP_FUNCTION -expand -group EXP_MULTIPLIER /exponential_function_tb/uut/multiplier/a
add wave -noupdate -expand -group EXP_FUNCTION -expand -group EXP_MULTIPLIER /exponential_function_tb/uut/multiplier/b
add wave -noupdate -expand -group EXP_FUNCTION -expand -group EXP_MULTIPLIER /exponential_function_tb/uut/multiplier/clk
add wave -noupdate -expand -group EXP_FUNCTION -expand -group EXP_MULTIPLIER /exponential_function_tb/uut/multiplier/result
add wave -noupdate -expand -group EXP_FUNCTION -expand -group EXP_ADDER /exponential_function_tb/uut/adder/a
add wave -noupdate -expand -group EXP_FUNCTION -expand -group EXP_ADDER /exponential_function_tb/uut/adder/b
add wave -noupdate -expand -group EXP_FUNCTION -expand -group EXP_ADDER /exponential_function_tb/uut/adder/clk
add wave -noupdate -expand -group EXP_FUNCTION -expand -group EXP_ADDER /exponential_function_tb/uut/adder/result
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {101 ns} 0}
quietly wave cursor active 1
configure wave -namecolwidth 398
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ns} {215 ns}
