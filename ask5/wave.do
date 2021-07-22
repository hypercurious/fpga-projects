onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -format Literal -label Data -radix unsigned /testcounter_8bit/d
add wave -noupdate -format Literal -label Counter -radix unsigned /testcounter_8bit/c
add wave -noupdate -format Logic -label Start/Stop -radix unsigned /testcounter_8bit/s_s
add wave -noupdate -format Logic -label Load -radix unsigned /testcounter_8bit/l
add wave -noupdate -format Logic -label Clock -radix unsigned /testcounter_8bit/clk
add wave -noupdate -format Logic -label Clear -radix unsigned /testcounter_8bit/clr
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {7689 ns} 0}
WaveRestoreZoom {6 us} {8510 ns}
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
