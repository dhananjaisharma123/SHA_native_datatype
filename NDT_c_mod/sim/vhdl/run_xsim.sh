
/opt/Xilinx2018/Vivado/2018.3/bin/xelab xil_defaultlib.apatb_pqcrystals_fips202_ref_sha3_256_top glbl -prj pqcrystals_fips202_ref_sha3_256.prj -L smartconnect_v1_0 -L axi_protocol_checker_v1_1_12 -L axi_protocol_checker_v1_1_13 -L axis_protocol_checker_v1_1_11 -L axis_protocol_checker_v1_1_12 -L xil_defaultlib -L unisims -L xpm --initfile "/opt/Xilinx2018/Vivado/2018.3/data/xsim/ip/xsim_ip.ini" --lib "ieee_proposed=./ieee_proposed" -s pqcrystals_fips202_ref_sha3_256 -debug wave
/opt/Xilinx2018/Vivado/2018.3/bin/xsim --noieeewarnings pqcrystals_fips202_ref_sha3_256 -tclbatch pqcrystals_fips202_ref_sha3_256.tcl

