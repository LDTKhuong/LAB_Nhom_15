############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
## Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
############################################################
open_project hls_nco
set_top nco
add_files ../../../../Users/PC/Downloads/nco.cpp
add_files -tb ../../../../Users/PC/Downloads/nco_tb.cpp
open_solution "solution1" -flow_target vivado
set_part {xc7z020clg484-1}
create_clock -period 10 -name default
config_export -output C:/HOC/HW_SW/BAI4/4C
source "./hls_nco/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -rtl verilog -format ip_catalog -output C:/HOC/HW_SW/BAI4/4C
