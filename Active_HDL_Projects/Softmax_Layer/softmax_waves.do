onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /softmax_unit_tb/clk
add wave -noupdate /softmax_unit_tb/reset_n
add wave -noupdate /softmax_unit_tb/reset
add wave -noupdate /softmax_unit_tb/inbuff_din
add wave -noupdate /softmax_unit_tb/inbuff_wr_en
add wave -noupdate /softmax_unit_tb/inbuff_full
add wave -noupdate /softmax_unit_tb/inbuff_almost_full
add wave -noupdate /softmax_unit_tb/outbuff_rd_en
add wave -noupdate /softmax_unit_tb/outbuff_dout
add wave -noupdate /softmax_unit_tb/outbuff_empty
add wave -noupdate /softmax_unit_tb/outbuff_almost_empty
add wave -noupdate /softmax_unit_tb/outbuff_valid
add wave -noupdate /softmax_unit_tb/softmax_complete
add wave -noupdate /softmax_unit_tb/mem_addr
add wave -noupdate /softmax_unit_tb/mem_data
add wave -noupdate /softmax_unit_tb/mem_addr_counter
add wave -noupdate /softmax_unit_tb/loop_counter
add wave -noupdate -expand -group MEMORY_UNIT /softmax_unit_tb/memory_unit/clka
add wave -noupdate -expand -group MEMORY_UNIT /softmax_unit_tb/memory_unit/wea
add wave -noupdate -expand -group MEMORY_UNIT /softmax_unit_tb/memory_unit/addra
add wave -noupdate -expand -group MEMORY_UNIT /softmax_unit_tb/memory_unit/dina
add wave -noupdate -expand -group MEMORY_UNIT /softmax_unit_tb/memory_unit/douta
add wave -noupdate -expand -group SOFTMAX_UNIT /softmax_unit_tb/uut/i_clk
add wave -noupdate -expand -group SOFTMAX_UNIT /softmax_unit_tb/uut/i_reset_n
add wave -noupdate -expand -group SOFTMAX_UNIT /softmax_unit_tb/uut/i_inbuff_din
add wave -noupdate -expand -group SOFTMAX_UNIT /softmax_unit_tb/uut/i_inbuff_wr_en
add wave -noupdate -expand -group SOFTMAX_UNIT /softmax_unit_tb/uut/o_inbuff_full
add wave -noupdate -expand -group SOFTMAX_UNIT /softmax_unit_tb/uut/o_inbuff_almost_full
add wave -noupdate -expand -group SOFTMAX_UNIT /softmax_unit_tb/uut/i_outbuff_rd_en
add wave -noupdate -expand -group SOFTMAX_UNIT /softmax_unit_tb/uut/o_outbuff_dout
add wave -noupdate -expand -group SOFTMAX_UNIT /softmax_unit_tb/uut/o_outbuff_empty
add wave -noupdate -expand -group SOFTMAX_UNIT /softmax_unit_tb/uut/o_outbuff_almost_empty
add wave -noupdate -expand -group SOFTMAX_UNIT /softmax_unit_tb/uut/o_outbuff_valid
add wave -noupdate -expand -group SOFTMAX_UNIT /softmax_unit_tb/uut/o_softmax_complete
add wave -noupdate -expand -group SOFTMAX_UNIT /softmax_unit_tb/uut/inbuff_rd_en
add wave -noupdate -expand -group SOFTMAX_UNIT /softmax_unit_tb/uut/inbuff_dout
add wave -noupdate -expand -group SOFTMAX_UNIT /softmax_unit_tb/uut/inbuff_empty
add wave -noupdate -expand -group SOFTMAX_UNIT /softmax_unit_tb/uut/inbuff_almost_empty
add wave -noupdate -expand -group SOFTMAX_UNIT /softmax_unit_tb/uut/inbuff_valid
add wave -noupdate -expand -group SOFTMAX_UNIT /softmax_unit_tb/uut/outbuff_din
add wave -noupdate -expand -group SOFTMAX_UNIT /softmax_unit_tb/uut/outbuff_wr_en
add wave -noupdate -expand -group SOFTMAX_UNIT /softmax_unit_tb/uut/outbuff_full
add wave -noupdate -expand -group SOFTMAX_UNIT /softmax_unit_tb/uut/outbuff_almost_full
add wave -noupdate -expand -group SOFTMAX_UNIT /softmax_unit_tb/uut/reset
add wave -noupdate -expand -group SOFTMAX_UNIT /softmax_unit_tb/uut/exp_ready
add wave -noupdate -expand -group SOFTMAX_UNIT /softmax_unit_tb/uut/exp_input
add wave -noupdate -expand -group SOFTMAX_UNIT /softmax_unit_tb/uut/exp_input_valid
add wave -noupdate -expand -group SOFTMAX_UNIT /softmax_unit_tb/uut/controller_ready
add wave -noupdate -expand -group SOFTMAX_UNIT /softmax_unit_tb/uut/exp_output
add wave -noupdate -expand -group SOFTMAX_UNIT /softmax_unit_tb/uut/exp_output_valid
add wave -noupdate -expand -group SOFTMAX_UNIT /softmax_unit_tb/uut/exp_fifo_dout
add wave -noupdate -expand -group SOFTMAX_UNIT /softmax_unit_tb/uut/exp_fifo_valid
add wave -noupdate -expand -group SOFTMAX_UNIT /softmax_unit_tb/uut/exp_fifo_rd_en_adder
add wave -noupdate -expand -group SOFTMAX_UNIT /softmax_unit_tb/uut/exp_fifo_rd_en_divider
add wave -noupdate -expand -group SOFTMAX_UNIT /softmax_unit_tb/uut/exp_fifo_rd_en
add wave -noupdate -expand -group SOFTMAX_UNIT /softmax_unit_tb/uut/exp_fifo_full
add wave -noupdate -expand -group SOFTMAX_UNIT /softmax_unit_tb/uut/exp_fifo_almost_full
add wave -noupdate -expand -group SOFTMAX_UNIT /softmax_unit_tb/uut/exp_fifo_empty
add wave -noupdate -expand -group SOFTMAX_UNIT /softmax_unit_tb/uut/exp_fifo_almost_empty
add wave -noupdate -expand -group SOFTMAX_UNIT /softmax_unit_tb/uut/exp_fifo_mux_select
add wave -noupdate -expand -group SOFTMAX_UNIT /softmax_unit_tb/uut/exp_complete
add wave -noupdate -expand -group SOFTMAX_UNIT /softmax_unit_tb/uut/summing_complete
add wave -noupdate -expand -group SOFTMAX_UNIT /softmax_unit_tb/uut/sum_result
add wave -noupdate -expand -group SOFTMAX_UNIT /softmax_unit_tb/uut/division_complete
add wave -noupdate -expand -group SOFTMAX_UNIT /softmax_unit_tb/uut/quotient_result
add wave -noupdate -expand -group SOFTMAX_UNIT /softmax_unit_tb/uut/quotient_result_valid
add wave -noupdate -expand -group SOFTMAX_UNIT /softmax_unit_tb/uut/exp_mux_data
add wave -noupdate -expand -group SOFTMAX_UNIT /softmax_unit_tb/uut/exp_mux_wr_en
add wave -noupdate -expand -group SOFTMAX_UNIT /softmax_unit_tb/uut/num_elements
add wave -noupdate -expand -group SOFTMAX_UNIT /softmax_unit_tb/uut/softmax_complete
add wave -noupdate -expand -group SOFTMAX_UNIT -expand -group INPUT_BUFFER /softmax_unit_tb/uut/input_buffer/rst
add wave -noupdate -expand -group SOFTMAX_UNIT -expand -group INPUT_BUFFER /softmax_unit_tb/uut/input_buffer/wr_clk
add wave -noupdate -expand -group SOFTMAX_UNIT -expand -group INPUT_BUFFER /softmax_unit_tb/uut/input_buffer/rd_clk
add wave -noupdate -expand -group SOFTMAX_UNIT -expand -group INPUT_BUFFER /softmax_unit_tb/uut/input_buffer/din
add wave -noupdate -expand -group SOFTMAX_UNIT -expand -group INPUT_BUFFER /softmax_unit_tb/uut/input_buffer/wr_en
add wave -noupdate -expand -group SOFTMAX_UNIT -expand -group INPUT_BUFFER /softmax_unit_tb/uut/input_buffer/rd_en
add wave -noupdate -expand -group SOFTMAX_UNIT -expand -group INPUT_BUFFER /softmax_unit_tb/uut/input_buffer/dout
add wave -noupdate -expand -group SOFTMAX_UNIT -expand -group INPUT_BUFFER /softmax_unit_tb/uut/input_buffer/full
add wave -noupdate -expand -group SOFTMAX_UNIT -expand -group INPUT_BUFFER /softmax_unit_tb/uut/input_buffer/almost_full
add wave -noupdate -expand -group SOFTMAX_UNIT -expand -group INPUT_BUFFER /softmax_unit_tb/uut/input_buffer/empty
add wave -noupdate -expand -group SOFTMAX_UNIT -expand -group INPUT_BUFFER /softmax_unit_tb/uut/input_buffer/almost_empty
add wave -noupdate -expand -group SOFTMAX_UNIT -expand -group INPUT_BUFFER /softmax_unit_tb/uut/input_buffer/valid
add wave -noupdate -expand -group SOFTMAX_UNIT -expand -group CONTROLLER /softmax_unit_tb/uut/controller/i_clk
add wave -noupdate -expand -group SOFTMAX_UNIT -expand -group CONTROLLER /softmax_unit_tb/uut/controller/i_reset_n
add wave -noupdate -expand -group SOFTMAX_UNIT -expand -group CONTROLLER /softmax_unit_tb/uut/controller/i_inbuff_dout
add wave -noupdate -expand -group SOFTMAX_UNIT -expand -group CONTROLLER /softmax_unit_tb/uut/controller/i_inbuff_valid
add wave -noupdate -expand -group SOFTMAX_UNIT -expand -group CONTROLLER /softmax_unit_tb/uut/controller/i_inbuff_empty
add wave -noupdate -expand -group SOFTMAX_UNIT -expand -group CONTROLLER /softmax_unit_tb/uut/controller/i_inbuff_almost_empty
add wave -noupdate -expand -group SOFTMAX_UNIT -expand -group CONTROLLER /softmax_unit_tb/uut/controller/i_outbuff_full
add wave -noupdate -expand -group SOFTMAX_UNIT -expand -group CONTROLLER /softmax_unit_tb/uut/controller/i_outbuff_almost_full
add wave -noupdate -expand -group SOFTMAX_UNIT -expand -group CONTROLLER /softmax_unit_tb/uut/controller/i_exp_ready
add wave -noupdate -expand -group SOFTMAX_UNIT -expand -group CONTROLLER /softmax_unit_tb/uut/controller/o_exp_input
add wave -noupdate -expand -group SOFTMAX_UNIT -expand -group CONTROLLER /softmax_unit_tb/uut/controller/o_exp_input_valid
add wave -noupdate -expand -group SOFTMAX_UNIT -expand -group CONTROLLER /softmax_unit_tb/uut/controller/o_controller_ready
add wave -noupdate -expand -group SOFTMAX_UNIT -expand -group CONTROLLER /softmax_unit_tb/uut/controller/o_exp_fifo_select
add wave -noupdate -expand -group SOFTMAX_UNIT -expand -group CONTROLLER /softmax_unit_tb/uut/controller/o_exp_complete
add wave -noupdate -expand -group SOFTMAX_UNIT -expand -group CONTROLLER /softmax_unit_tb/uut/controller/i_summing_complete
add wave -noupdate -expand -group SOFTMAX_UNIT -expand -group CONTROLLER /softmax_unit_tb/uut/controller/i_divsion_complete
add wave -noupdate -expand -group SOFTMAX_UNIT -expand -group CONTROLLER /softmax_unit_tb/uut/controller/i_quotient_result
add wave -noupdate -expand -group SOFTMAX_UNIT -expand -group CONTROLLER /softmax_unit_tb/uut/controller/i_quotient_result_valid
add wave -noupdate -expand -group SOFTMAX_UNIT -expand -group CONTROLLER /softmax_unit_tb/uut/controller/i_num_elements
add wave -noupdate -expand -group SOFTMAX_UNIT -expand -group CONTROLLER /softmax_unit_tb/uut/controller/o_outbuff_din
add wave -noupdate -expand -group SOFTMAX_UNIT -expand -group CONTROLLER /softmax_unit_tb/uut/controller/o_outbuff_wr_en
add wave -noupdate -expand -group SOFTMAX_UNIT -expand -group CONTROLLER /softmax_unit_tb/uut/controller/o_softmax_complete
add wave -noupdate -expand -group SOFTMAX_UNIT -expand -group CONTROLLER /softmax_unit_tb/uut/controller/current_state
add wave -noupdate -expand -group SOFTMAX_UNIT -expand -group CONTROLLER /softmax_unit_tb/uut/controller/next_state
add wave -noupdate -expand -group SOFTMAX_UNIT -expand -group CONTROLLER /softmax_unit_tb/uut/controller/exp_input
add wave -noupdate -expand -group SOFTMAX_UNIT -expand -group CONTROLLER /softmax_unit_tb/uut/controller/exp_input_valid
add wave -noupdate -expand -group SOFTMAX_UNIT -expand -group CONTROLLER /softmax_unit_tb/uut/controller/controller_ready
add wave -noupdate -expand -group SOFTMAX_UNIT -expand -group CONTROLLER /softmax_unit_tb/uut/controller/exp_fifo_select
add wave -noupdate -expand -group SOFTMAX_UNIT -expand -group CONTROLLER /softmax_unit_tb/uut/controller/exp_complete
add wave -noupdate -expand -group SOFTMAX_UNIT -expand -group CONTROLLER /softmax_unit_tb/uut/controller/element_counter
add wave -noupdate -expand -group SOFTMAX_UNIT -expand -group CONTROLLER /softmax_unit_tb/uut/controller/softmax_complete
add wave -noupdate -expand -group SOFTMAX_UNIT -expand -group CONTROLLER /softmax_unit_tb/uut/controller/outbuff_din
add wave -noupdate -expand -group SOFTMAX_UNIT -expand -group CONTROLLER /softmax_unit_tb/uut/controller/outbuff_wr_en
add wave -noupdate -expand -group SOFTMAX_UNIT -expand -group EXPONENTIAL_FUNCTION /softmax_unit_tb/uut/exp_func/i_clk
add wave -noupdate -expand -group SOFTMAX_UNIT -expand -group EXPONENTIAL_FUNCTION /softmax_unit_tb/uut/exp_func/i_reset_n
add wave -noupdate -expand -group SOFTMAX_UNIT -expand -group EXPONENTIAL_FUNCTION /softmax_unit_tb/uut/exp_func/i_data
add wave -noupdate -expand -group SOFTMAX_UNIT -expand -group EXPONENTIAL_FUNCTION /softmax_unit_tb/uut/exp_func/i_valid
add wave -noupdate -expand -group SOFTMAX_UNIT -expand -group EXPONENTIAL_FUNCTION /softmax_unit_tb/uut/exp_func/i_ready
add wave -noupdate -expand -group SOFTMAX_UNIT -expand -group EXPONENTIAL_FUNCTION /softmax_unit_tb/uut/exp_func/o_data
add wave -noupdate -expand -group SOFTMAX_UNIT -expand -group EXPONENTIAL_FUNCTION /softmax_unit_tb/uut/exp_func/o_valid
add wave -noupdate -expand -group SOFTMAX_UNIT -expand -group EXPONENTIAL_FUNCTION /softmax_unit_tb/uut/exp_func/o_ready
add wave -noupdate -expand -group SOFTMAX_UNIT -expand -group EXPONENTIAL_FUNCTION /softmax_unit_tb/uut/exp_func/i_fifo_full
add wave -noupdate -expand -group SOFTMAX_UNIT -expand -group EXPONENTIAL_FUNCTION /softmax_unit_tb/uut/exp_func/i_fifo_almost_full
add wave -noupdate -expand -group SOFTMAX_UNIT -expand -group EXPONENTIAL_FUNCTION /softmax_unit_tb/uut/exp_func/factorials
add wave -noupdate -expand -group SOFTMAX_UNIT -expand -group EXPONENTIAL_FUNCTION /softmax_unit_tb/uut/exp_func/current_state
add wave -noupdate -expand -group SOFTMAX_UNIT -expand -group EXPONENTIAL_FUNCTION /softmax_unit_tb/uut/exp_func/next_state
add wave -noupdate -expand -group SOFTMAX_UNIT -expand -group EXPONENTIAL_FUNCTION /softmax_unit_tb/uut/exp_func/valid_result
add wave -noupdate -expand -group SOFTMAX_UNIT -expand -group EXPONENTIAL_FUNCTION /softmax_unit_tb/uut/exp_func/function_ready
add wave -noupdate -expand -group SOFTMAX_UNIT -expand -group EXPONENTIAL_FUNCTION /softmax_unit_tb/uut/exp_func/step_counter
add wave -noupdate -expand -group SOFTMAX_UNIT -expand -group EXPONENTIAL_FUNCTION /softmax_unit_tb/uut/exp_func/multiplication_counter
add wave -noupdate -expand -group SOFTMAX_UNIT -expand -group EXPONENTIAL_FUNCTION /softmax_unit_tb/uut/exp_func/hold_counter
add wave -noupdate -expand -group SOFTMAX_UNIT -expand -group EXPONENTIAL_FUNCTION /softmax_unit_tb/uut/exp_func/sum_counter
add wave -noupdate -expand -group SOFTMAX_UNIT -expand -group EXPONENTIAL_FUNCTION /softmax_unit_tb/uut/exp_func/multiplicand_a
add wave -noupdate -expand -group SOFTMAX_UNIT -expand -group EXPONENTIAL_FUNCTION /softmax_unit_tb/uut/exp_func/multiplicand_b
add wave -noupdate -expand -group SOFTMAX_UNIT -expand -group EXPONENTIAL_FUNCTION /softmax_unit_tb/uut/exp_func/product
add wave -noupdate -expand -group SOFTMAX_UNIT -expand -group EXPONENTIAL_FUNCTION /softmax_unit_tb/uut/exp_func/augend
add wave -noupdate -expand -group SOFTMAX_UNIT -expand -group EXPONENTIAL_FUNCTION /softmax_unit_tb/uut/exp_func/addend
add wave -noupdate -expand -group SOFTMAX_UNIT -expand -group EXPONENTIAL_FUNCTION /softmax_unit_tb/uut/exp_func/sum
add wave -noupdate -expand -group SOFTMAX_UNIT -expand -group EXPONENTIAL_FUNCTION /softmax_unit_tb/uut/exp_func/data_reg
add wave -noupdate -expand -group SOFTMAX_UNIT -expand -group EXPONENTIAL_FUNCTION /softmax_unit_tb/uut/exp_func/sum_array
add wave -noupdate -expand -group SOFTMAX_UNIT -expand -group EXPONENTIAL_FUNCTION /softmax_unit_tb/uut/exp_func/mult_reg
add wave -noupdate -expand -group SOFTMAX_UNIT -expand -group EXPONENTIAL_FUNCTION /softmax_unit_tb/uut/exp_func/fifo_data
add wave -noupdate -expand -group SOFTMAX_UNIT -expand -group EXPONENTIAL_FUNCTION /softmax_unit_tb/uut/exp_func/fifo_wr_en
add wave -noupdate -expand -group SOFTMAX_UNIT -expand -group EXP_BUFFER /softmax_unit_tb/uut/exp_buffer/rst
add wave -noupdate -expand -group SOFTMAX_UNIT -expand -group EXP_BUFFER /softmax_unit_tb/uut/exp_buffer/wr_clk
add wave -noupdate -expand -group SOFTMAX_UNIT -expand -group EXP_BUFFER /softmax_unit_tb/uut/exp_buffer/rd_clk
add wave -noupdate -expand -group SOFTMAX_UNIT -expand -group EXP_BUFFER /softmax_unit_tb/uut/exp_buffer/din
add wave -noupdate -expand -group SOFTMAX_UNIT -expand -group EXP_BUFFER /softmax_unit_tb/uut/exp_buffer/wr_en
add wave -noupdate -expand -group SOFTMAX_UNIT -expand -group EXP_BUFFER /softmax_unit_tb/uut/exp_buffer/rd_en
add wave -noupdate -expand -group SOFTMAX_UNIT -expand -group EXP_BUFFER /softmax_unit_tb/uut/exp_buffer/dout
add wave -noupdate -expand -group SOFTMAX_UNIT -expand -group EXP_BUFFER /softmax_unit_tb/uut/exp_buffer/full
add wave -noupdate -expand -group SOFTMAX_UNIT -expand -group EXP_BUFFER /softmax_unit_tb/uut/exp_buffer/almost_full
add wave -noupdate -expand -group SOFTMAX_UNIT -expand -group EXP_BUFFER /softmax_unit_tb/uut/exp_buffer/empty
add wave -noupdate -expand -group SOFTMAX_UNIT -expand -group EXP_BUFFER /softmax_unit_tb/uut/exp_buffer/almost_empty
add wave -noupdate -expand -group SOFTMAX_UNIT -expand -group EXP_BUFFER /softmax_unit_tb/uut/exp_buffer/valid
add wave -noupdate -expand -group SOFTMAX_UNIT -expand -group ADDER /softmax_unit_tb/uut/adder/i_clk
add wave -noupdate -expand -group SOFTMAX_UNIT -expand -group ADDER /softmax_unit_tb/uut/adder/i_reset_n
add wave -noupdate -expand -group SOFTMAX_UNIT -expand -group ADDER /softmax_unit_tb/uut/adder/i_exp_fifo_dout
add wave -noupdate -expand -group SOFTMAX_UNIT -expand -group ADDER /softmax_unit_tb/uut/adder/i_exp_fifo_valid
add wave -noupdate -expand -group SOFTMAX_UNIT -expand -group ADDER /softmax_unit_tb/uut/adder/i_exp_fifo_empty
add wave -noupdate -expand -group SOFTMAX_UNIT -expand -group ADDER /softmax_unit_tb/uut/adder/i_exp_fifo_almost_empty
add wave -noupdate -expand -group SOFTMAX_UNIT -expand -group ADDER /softmax_unit_tb/uut/adder/i_exp_complete
add wave -noupdate -expand -group SOFTMAX_UNIT -expand -group ADDER /softmax_unit_tb/uut/adder/i_num_elements
add wave -noupdate -expand -group SOFTMAX_UNIT -expand -group ADDER /softmax_unit_tb/uut/adder/o_exp_rd_en
add wave -noupdate -expand -group SOFTMAX_UNIT -expand -group ADDER /softmax_unit_tb/uut/adder/o_summing_complete
add wave -noupdate -expand -group SOFTMAX_UNIT -expand -group ADDER /softmax_unit_tb/uut/adder/o_sum_result
add wave -noupdate -expand -group SOFTMAX_UNIT -expand -group ADDER /softmax_unit_tb/uut/adder/addend
add wave -noupdate -expand -group SOFTMAX_UNIT -expand -group ADDER /softmax_unit_tb/uut/adder/augend
add wave -noupdate -expand -group SOFTMAX_UNIT -expand -group ADDER /softmax_unit_tb/uut/adder/sum
add wave -noupdate -expand -group SOFTMAX_UNIT -expand -group ADDER /softmax_unit_tb/uut/adder/rd_en
add wave -noupdate -expand -group SOFTMAX_UNIT -expand -group ADDER /softmax_unit_tb/uut/adder/summing_complete
add wave -noupdate -expand -group SOFTMAX_UNIT -expand -group ADDER /softmax_unit_tb/uut/adder/current_state
add wave -noupdate -expand -group SOFTMAX_UNIT -expand -group ADDER /softmax_unit_tb/uut/adder/next_state
add wave -noupdate -expand -group SOFTMAX_UNIT -expand -group ADDER /softmax_unit_tb/uut/adder/hold_counter
add wave -noupdate -expand -group SOFTMAX_UNIT -expand -group ADDER /softmax_unit_tb/uut/adder/sum_counter
add wave -noupdate -expand -group SOFTMAX_UNIT -expand -group ADDER /softmax_unit_tb/uut/adder/sum_reg
add wave -noupdate -expand -group SOFTMAX_UNIT -expand -group ADDER /softmax_unit_tb/uut/adder/sum_result_valid
add wave -noupdate -expand -group SOFTMAX_UNIT -expand -group DIVIDER /softmax_unit_tb/uut/divider/i_clk
add wave -noupdate -expand -group SOFTMAX_UNIT -expand -group DIVIDER /softmax_unit_tb/uut/divider/i_reset_n
add wave -noupdate -expand -group SOFTMAX_UNIT -expand -group DIVIDER /softmax_unit_tb/uut/divider/i_exp_fifo_dout
add wave -noupdate -expand -group SOFTMAX_UNIT -expand -group DIVIDER /softmax_unit_tb/uut/divider/i_exp_fifo_valid
add wave -noupdate -expand -group SOFTMAX_UNIT -expand -group DIVIDER /softmax_unit_tb/uut/divider/i_exp_fifo_empty
add wave -noupdate -expand -group SOFTMAX_UNIT -expand -group DIVIDER /softmax_unit_tb/uut/divider/i_exp_fifo_almost_empty
add wave -noupdate -expand -group SOFTMAX_UNIT -expand -group DIVIDER /softmax_unit_tb/uut/divider/i_summing_complete
add wave -noupdate -expand -group SOFTMAX_UNIT -expand -group DIVIDER /softmax_unit_tb/uut/divider/i_divisor
add wave -noupdate -expand -group SOFTMAX_UNIT -expand -group DIVIDER /softmax_unit_tb/uut/divider/i_num_elements
add wave -noupdate -expand -group SOFTMAX_UNIT -expand -group DIVIDER /softmax_unit_tb/uut/divider/o_exp_rd_en
add wave -noupdate -expand -group SOFTMAX_UNIT -expand -group DIVIDER /softmax_unit_tb/uut/divider/o_division_complete
add wave -noupdate -expand -group SOFTMAX_UNIT -expand -group DIVIDER /softmax_unit_tb/uut/divider/o_quotient_result
add wave -noupdate -expand -group SOFTMAX_UNIT -expand -group DIVIDER /softmax_unit_tb/uut/divider/o_quotient_result_valid
add wave -noupdate -expand -group SOFTMAX_UNIT -expand -group DIVIDER /softmax_unit_tb/uut/divider/divisor
add wave -noupdate -expand -group SOFTMAX_UNIT -expand -group DIVIDER /softmax_unit_tb/uut/divider/dividend
add wave -noupdate -expand -group SOFTMAX_UNIT -expand -group DIVIDER /softmax_unit_tb/uut/divider/quotient
add wave -noupdate -expand -group SOFTMAX_UNIT -expand -group DIVIDER /softmax_unit_tb/uut/divider/rd_en
add wave -noupdate -expand -group SOFTMAX_UNIT -expand -group DIVIDER /softmax_unit_tb/uut/divider/division_complete
add wave -noupdate -expand -group SOFTMAX_UNIT -expand -group DIVIDER /softmax_unit_tb/uut/divider/current_state
add wave -noupdate -expand -group SOFTMAX_UNIT -expand -group DIVIDER /softmax_unit_tb/uut/divider/next_state
add wave -noupdate -expand -group SOFTMAX_UNIT -expand -group DIVIDER /softmax_unit_tb/uut/divider/hold_counter
add wave -noupdate -expand -group SOFTMAX_UNIT -expand -group DIVIDER /softmax_unit_tb/uut/divider/quotient_counter
add wave -noupdate -expand -group SOFTMAX_UNIT -expand -group DIVIDER /softmax_unit_tb/uut/divider/division_reg
add wave -noupdate -expand -group SOFTMAX_UNIT -expand -group DIVIDER /softmax_unit_tb/uut/divider/quotient_result_valid
add wave -noupdate -expand -group SOFTMAX_UNIT -expand -group OUTPUT_BUFFER /softmax_unit_tb/uut/output_buffer/rst
add wave -noupdate -expand -group SOFTMAX_UNIT -expand -group OUTPUT_BUFFER /softmax_unit_tb/uut/output_buffer/wr_clk
add wave -noupdate -expand -group SOFTMAX_UNIT -expand -group OUTPUT_BUFFER /softmax_unit_tb/uut/output_buffer/rd_clk
add wave -noupdate -expand -group SOFTMAX_UNIT -expand -group OUTPUT_BUFFER /softmax_unit_tb/uut/output_buffer/din
add wave -noupdate -expand -group SOFTMAX_UNIT -expand -group OUTPUT_BUFFER /softmax_unit_tb/uut/output_buffer/wr_en
add wave -noupdate -expand -group SOFTMAX_UNIT -expand -group OUTPUT_BUFFER /softmax_unit_tb/uut/output_buffer/rd_en
add wave -noupdate -expand -group SOFTMAX_UNIT -expand -group OUTPUT_BUFFER /softmax_unit_tb/uut/output_buffer/dout
add wave -noupdate -expand -group SOFTMAX_UNIT -expand -group OUTPUT_BUFFER /softmax_unit_tb/uut/output_buffer/full
add wave -noupdate -expand -group SOFTMAX_UNIT -expand -group OUTPUT_BUFFER /softmax_unit_tb/uut/output_buffer/almost_full
add wave -noupdate -expand -group SOFTMAX_UNIT -expand -group OUTPUT_BUFFER /softmax_unit_tb/uut/output_buffer/empty
add wave -noupdate -expand -group SOFTMAX_UNIT -expand -group OUTPUT_BUFFER /softmax_unit_tb/uut/output_buffer/almost_empty
add wave -noupdate -expand -group SOFTMAX_UNIT -expand -group OUTPUT_BUFFER /softmax_unit_tb/uut/output_buffer/valid
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {21841 ns} 0}
quietly wave cursor active 1
configure wave -namecolwidth 301
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
WaveRestoreZoom {0 ns} {61903 ns}
