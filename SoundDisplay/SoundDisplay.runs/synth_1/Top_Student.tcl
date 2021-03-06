# 
# Synthesis run script generated by Vivado
# 

set TIME_start [clock seconds] 
proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
create_project -in_memory -part xc7a35tcpg236-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir C:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.cache/wt [current_project]
set_property parent.project_path C:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_output_repo c:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_verilog -library xil_defaultlib {
  C:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/Audio_Capture.v
  C:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/DFF_mod.v
  C:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/G2M1_render.v
  C:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/G2M4_render.v
  C:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/G2_mode_4_processor.v
  C:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/Oled_Display.v
  C:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/advanced_display_mod.v
  C:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/advanced_mode_mod.v
  C:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/basic_game_over_mod.v
  C:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/basic_render.v
  C:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/clock_divider_module.v
  C:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/coordinate_converter.v
  C:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/display_menu_0.v
  C:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/display_menu_1.v
  C:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/display_menu_2.v
  C:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/display_menu_3.v
  C:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/display_menu_4.v
  C:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/display_menu_5.v
  C:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/display_menu_6.v
  C:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/display_menu_7.v
  C:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/display_mod.v
  C:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/display_mod_G2.v
  C:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/display_seven_seg.v
  C:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/game2_mode_selector.v
  C:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/laser_pos_mod.v
  C:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/led_display_mod.v
  C:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/menu_mode_1.v
  C:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/menu_mode_2.v
  C:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/menu_mode_3.v
  C:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/menu_mode_4.v
  C:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/menu_mode_5.v
  C:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/menu_mode_6.v
  C:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/menu_mode_7.v
  C:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/menu_mode_selector.v
  C:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/mic_range_mod.v
  C:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/number_decoder.v
  C:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/oled_menu_mux.v
  C:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/paint_processor.v
  C:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/paint_renderer.v
  C:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/peak_amp_mod.v
  C:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/player_tracker.v
  C:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/randomiser.v
  C:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/score_tracker_mod.v
  C:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/segment_disp_1.v
  C:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/segment_disp_2.v
  C:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/segment_peak.v
  C:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/segment_peakdisp_0.v
  C:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/segment_peakdisp_1.v
  C:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/segment_peakdisp_2.v
  C:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/segment_peakdisp_3.v
  C:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/segment_scoredisp_0.v
  C:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/segment_scoredisp_1.v
  C:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/segment_scoredisp_2.v
  C:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/segment_scoredisp_3.v
  C:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/segment_selector.v
  C:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/single_pulse_mod.v
  C:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/y_tracker_mod.v
  C:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/Top_Student.v
}
# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc C:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/constrs_1/new/test1_constraints.xdc
set_property used_in_implementation false [get_files C:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/constrs_1/new/test1_constraints.xdc]

set_param ips.enableIPCacheLiteLoad 0
close [open __synthesis_is_running__ w]

synth_design -top Top_Student -part xc7a35tcpg236-1


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef Top_Student.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file Top_Student_utilization_synth.rpt -pb Top_Student_utilization_synth.pb"
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]
