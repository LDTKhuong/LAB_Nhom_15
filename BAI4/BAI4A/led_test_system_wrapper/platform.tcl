# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct C:\HOC\HW_SW\BAI4\led_test_system_wrapper\platform.tcl
# 
# OR launch xsct and run below command.
# source C:\HOC\HW_SW\BAI4\led_test_system_wrapper\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {led_test_system_wrapper}\
-hw {C:\HOC\HW_SW\BAI4\ip_repo\led_test_system_wrapper.xsa}\
-out {C:/HOC/HW_SW/BAI4}

platform write
domain create -name {standalone_ps7_cortexa9_0} -display-name {standalone_ps7_cortexa9_0} -os {standalone} -proc {ps7_cortexa9_0} -runtime {cpp} -arch {32-bit} -support-app {empty_application}
platform generate -domains 
platform active {led_test_system_wrapper}
domain active {zynq_fsbl}
domain active {standalone_ps7_cortexa9_0}
platform generate -quick
