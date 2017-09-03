onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /bubble_sorter_tb/bubble_sorter_UUT/i_clk
add wave -noupdate /bubble_sorter_tb/bubble_sorter_UUT/i_reset_n
add wave -noupdate -expand /bubble_sorter_tb/bubble_sorter_UUT/i_data
add wave -noupdate -expand /bubble_sorter_tb/bubble_sorter_UUT/o_sorted_data
add wave -noupdate -expand /bubble_sorter_tb/bubble_sorter_UUT/data_reg
add wave -noupdate /bubble_sorter_tb/bubble_sorter_UUT/q
add wave -noupdate /bubble_sorter_tb/bubble_sorter_UUT/current_state
add wave -noupdate /bubble_sorter_tb/bubble_sorter_UUT/next_state
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {259 ns} 0}
quietly wave cursor active 1
configure wave -namecolwidth 168
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
WaveRestoreZoom {0 ns} {1408 ns}
