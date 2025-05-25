# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct C:\immune_working\CPU\20250523_SPI_AXI_Master\vitis\design_1_wrapper\platform.tcl
# 
# OR launch xsct and run below command.
# source C:\immune_working\CPU\20250523_SPI_AXI_Master\vitis\design_1_wrapper\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {design_1_wrapper}\
-hw {C:\immune_working\CPU\20250523_SPI_AXI_Master\vitis\design_1_wrapper.xsa}\
-fsbl-target {psu_cortexa53_0} -out {C:/immune_working/CPU/20250523_SPI_AXI_Master/vitis}

platform write
domain create -name {standalone_microblaze_0} -display-name {standalone_microblaze_0} -os {standalone} -proc {microblaze_0} -runtime {cpp} -arch {32-bit} -support-app {hello_world}
platform generate -domains 
platform active {design_1_wrapper}
platform generate -quick
platform generate
platform config -updatehw {C:/immune_working/CPU/20250523_SPI_AXI_Master/vitis/design_1_wrapper2.xsa}
platform clean
platform generate
platform config -updatehw {C:/immune_working/CPU/20250523_SPI_AXI_Master/vitis/design_1_wrapper3.xsa}
platform clean
platform generate
platform config -updatehw {C:/immune_working/CPU/20250523_SPI_AXI_Master/vitis/design_1_wrapper3.xsa}
platform clean
platform generate
platform generate -domains 
platform active {design_1_wrapper}
platform config -updatehw {C:/immune_working/CPU/20250523_SPI_AXI_Master/vitis/design_1_wrapper_0524.xsa}
platform generate -domains 
platform clean
platform clean
platform generate
platform config -updatehw {C:/immune_working/CPU/20250523_SPI_AXI_Master/vitis/design_1_wrapper_0524.xsa}
platform clean
platform generate
platform generate -domains 
platform clean
platform generate
platform active {design_1_wrapper}
platform config -updatehw {C:/immune_working/CPU/20250523_SPI_AXI_Master/vitis/design_1_wrapper_0524.xsa}
platform clean
platform generate
platform config -updatehw {C:/immune_working/CPU/20250523_SPI_AXI_Master/vitis/design_1_wrapper0525.xsa}
platform clean
platform generate
platform clean
platform generate
platform config -updatehw {C:/immune_working/CPU/20250523_SPI_AXI_Master/vitis/design_1_wrapper_0524.xsa}
platform clean
platform generate
