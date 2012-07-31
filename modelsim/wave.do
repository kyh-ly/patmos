onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -radix hexadecimal /patmos_testbench/clk
add wave -noupdate -radix hexadecimal /patmos_testbench/rst
add wave -noupdate -radix hexadecimal /patmos_testbench/core/int_res
add wave -noupdate -radix hexadecimal -childformat {{/patmos_testbench/core/fetch_dout.pc -radix hexadecimal} {/patmos_testbench/core/fetch_dout.instruction -radix hexadecimal}} -expand -subitemconfig {/patmos_testbench/core/fetch_dout.pc {-height 15 -radix hexadecimal} /patmos_testbench/core/fetch_dout.instruction {-height 15 -radix hexadecimal}} /patmos_testbench/core/fetch_dout
add wave -noupdate -radix hexadecimal /patmos_testbench/core/decode_dout
add wave -noupdate -radix hexadecimal /patmos_testbench/core/execute_dout
add wave -noupdate -radix hexadecimal -childformat {{/patmos_testbench/core/memory_stage/dout.reg_write_out -radix hexadecimal} {/patmos_testbench/core/memory_stage/dout.ps_reg_write_out -radix hexadecimal} {/patmos_testbench/core/memory_stage/dout.predicate_reg_write_out -radix hexadecimal} {/patmos_testbench/core/memory_stage/dout.mem_to_reg_out -radix hexadecimal} {/patmos_testbench/core/memory_stage/dout.mem_data_out -radix hexadecimal} {/patmos_testbench/core/memory_stage/dout.alu_result_out -radix hexadecimal} {/patmos_testbench/core/memory_stage/dout.alu_result_predicate_out -radix hexadecimal} {/patmos_testbench/core/memory_stage/dout.write_back_reg_out -radix hexadecimal} {/patmos_testbench/core/memory_stage/dout.ps_write_back_reg_out -radix hexadecimal} {/patmos_testbench/core/memory_stage/dout.mem_write_data_out -radix hexadecimal}} -subitemconfig {/patmos_testbench/core/memory_stage/dout.reg_write_out {-height 15 -radix hexadecimal} /patmos_testbench/core/memory_stage/dout.ps_reg_write_out {-height 15 -radix hexadecimal} /patmos_testbench/core/memory_stage/dout.predicate_reg_write_out {-height 15 -radix hexadecimal} /patmos_testbench/core/memory_stage/dout.mem_to_reg_out {-height 15 -radix hexadecimal} /patmos_testbench/core/memory_stage/dout.mem_data_out {-height 15 -radix hexadecimal} /patmos_testbench/core/memory_stage/dout.alu_result_out {-height 15 -radix hexadecimal} /patmos_testbench/core/memory_stage/dout.alu_result_predicate_out {-height 15 -radix hexadecimal} /patmos_testbench/core/memory_stage/dout.write_back_reg_out {-height 15 -radix hexadecimal} /patmos_testbench/core/memory_stage/dout.ps_write_back_reg_out {-height 15 -radix hexadecimal} /patmos_testbench/core/memory_stage/dout.mem_write_data_out {-height 15 -radix hexadecimal}} /patmos_testbench/core/memory_stage/dout
add wave -noupdate -radix hexadecimal -childformat {{/patmos_testbench/core/reg_file/reg_bank(0) -radix hexadecimal} {/patmos_testbench/core/reg_file/reg_bank(1) -radix hexadecimal} {/patmos_testbench/core/reg_file/reg_bank(2) -radix hexadecimal} {/patmos_testbench/core/reg_file/reg_bank(3) -radix hexadecimal} {/patmos_testbench/core/reg_file/reg_bank(4) -radix hexadecimal} {/patmos_testbench/core/reg_file/reg_bank(5) -radix hexadecimal} {/patmos_testbench/core/reg_file/reg_bank(6) -radix hexadecimal} {/patmos_testbench/core/reg_file/reg_bank(7) -radix hexadecimal} {/patmos_testbench/core/reg_file/reg_bank(8) -radix hexadecimal} {/patmos_testbench/core/reg_file/reg_bank(9) -radix hexadecimal} {/patmos_testbench/core/reg_file/reg_bank(10) -radix hexadecimal} {/patmos_testbench/core/reg_file/reg_bank(11) -radix hexadecimal} {/patmos_testbench/core/reg_file/reg_bank(12) -radix hexadecimal} {/patmos_testbench/core/reg_file/reg_bank(13) -radix hexadecimal} {/patmos_testbench/core/reg_file/reg_bank(14) -radix hexadecimal} {/patmos_testbench/core/reg_file/reg_bank(15) -radix hexadecimal} {/patmos_testbench/core/reg_file/reg_bank(16) -radix hexadecimal} {/patmos_testbench/core/reg_file/reg_bank(17) -radix hexadecimal} {/patmos_testbench/core/reg_file/reg_bank(18) -radix hexadecimal} {/patmos_testbench/core/reg_file/reg_bank(19) -radix hexadecimal} {/patmos_testbench/core/reg_file/reg_bank(20) -radix hexadecimal} {/patmos_testbench/core/reg_file/reg_bank(21) -radix hexadecimal} {/patmos_testbench/core/reg_file/reg_bank(22) -radix hexadecimal} {/patmos_testbench/core/reg_file/reg_bank(23) -radix hexadecimal} {/patmos_testbench/core/reg_file/reg_bank(24) -radix hexadecimal} {/patmos_testbench/core/reg_file/reg_bank(25) -radix hexadecimal} {/patmos_testbench/core/reg_file/reg_bank(26) -radix hexadecimal} {/patmos_testbench/core/reg_file/reg_bank(27) -radix hexadecimal} {/patmos_testbench/core/reg_file/reg_bank(28) -radix hexadecimal} {/patmos_testbench/core/reg_file/reg_bank(29) -radix hexadecimal} {/patmos_testbench/core/reg_file/reg_bank(30) -radix hexadecimal} {/patmos_testbench/core/reg_file/reg_bank(31) -radix hexadecimal}} -expand -subitemconfig {/patmos_testbench/core/reg_file/reg_bank(0) {-height 15 -radix hexadecimal} /patmos_testbench/core/reg_file/reg_bank(1) {-height 15 -radix hexadecimal} /patmos_testbench/core/reg_file/reg_bank(2) {-height 15 -radix hexadecimal} /patmos_testbench/core/reg_file/reg_bank(3) {-height 15 -radix hexadecimal} /patmos_testbench/core/reg_file/reg_bank(4) {-height 15 -radix hexadecimal} /patmos_testbench/core/reg_file/reg_bank(5) {-height 15 -radix hexadecimal} /patmos_testbench/core/reg_file/reg_bank(6) {-height 15 -radix hexadecimal} /patmos_testbench/core/reg_file/reg_bank(7) {-height 15 -radix hexadecimal} /patmos_testbench/core/reg_file/reg_bank(8) {-height 15 -radix hexadecimal} /patmos_testbench/core/reg_file/reg_bank(9) {-height 15 -radix hexadecimal} /patmos_testbench/core/reg_file/reg_bank(10) {-height 15 -radix hexadecimal} /patmos_testbench/core/reg_file/reg_bank(11) {-height 15 -radix hexadecimal} /patmos_testbench/core/reg_file/reg_bank(12) {-height 15 -radix hexadecimal} /patmos_testbench/core/reg_file/reg_bank(13) {-height 15 -radix hexadecimal} /patmos_testbench/core/reg_file/reg_bank(14) {-height 15 -radix hexadecimal} /patmos_testbench/core/reg_file/reg_bank(15) {-height 15 -radix hexadecimal} /patmos_testbench/core/reg_file/reg_bank(16) {-height 15 -radix hexadecimal} /patmos_testbench/core/reg_file/reg_bank(17) {-height 15 -radix hexadecimal} /patmos_testbench/core/reg_file/reg_bank(18) {-height 15 -radix hexadecimal} /patmos_testbench/core/reg_file/reg_bank(19) {-height 15 -radix hexadecimal} /patmos_testbench/core/reg_file/reg_bank(20) {-height 15 -radix hexadecimal} /patmos_testbench/core/reg_file/reg_bank(21) {-height 15 -radix hexadecimal} /patmos_testbench/core/reg_file/reg_bank(22) {-height 15 -radix hexadecimal} /patmos_testbench/core/reg_file/reg_bank(23) {-height 15 -radix hexadecimal} /patmos_testbench/core/reg_file/reg_bank(24) {-height 15 -radix hexadecimal} /patmos_testbench/core/reg_file/reg_bank(25) {-height 15 -radix hexadecimal} /patmos_testbench/core/reg_file/reg_bank(26) {-height 15 -radix hexadecimal} /patmos_testbench/core/reg_file/reg_bank(27) {-height 15 -radix hexadecimal} /patmos_testbench/core/reg_file/reg_bank(28) {-height 15 -radix hexadecimal} /patmos_testbench/core/reg_file/reg_bank(29) {-height 15 -radix hexadecimal} /patmos_testbench/core/reg_file/reg_bank(30) {-height 15 -radix hexadecimal} /patmos_testbench/core/reg_file/reg_bank(31) {-height 15 -radix hexadecimal}} /patmos_testbench/core/reg_file/reg_bank
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {28171 ps} 0}
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
configure wave -timelineunits ps
update
WaveRestoreZoom {52942 ps} {157826 ps}
