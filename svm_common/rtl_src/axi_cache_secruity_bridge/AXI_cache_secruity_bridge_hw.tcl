# TCL File Generated by Component Editor 15.1
# Mon Nov 30 16:52:49 CST 2015
# DO NOT MODIFY


# 
# AXI_cache_secruity_bridge "AXI Cache Secruity Bridge" v1.0
# JCJB 2015.11.30.16:52:48
# 
# 

# 
# request TCL package from ACDS 15.1
# 
package require -exact qsys 15.1


# 
# module AXI_cache_secruity_bridge
# 
set_module_property DESCRIPTION ""
set_module_property NAME AXI_cache_secruity_bridge
set_module_property VERSION 1.0
set_module_property INTERNAL false
set_module_property OPAQUE_ADDRESS_MAP true
set_module_property AUTHOR JCJB
set_module_property DISPLAY_NAME "AXI Cache Secruity Bridge"
set_module_property INSTANTIATE_IN_SYSTEM_MODULE true
set_module_property EDITABLE true
set_module_property REPORT_TO_TALKBACK false
set_module_property ALLOW_GREYBOX_GENERATION false
set_module_property REPORT_HIERARCHY false

set_module_property VALIDATION_CALLBACK validate_me

# 
# file sets
# 
add_fileset QUARTUS_SYNTH QUARTUS_SYNTH "" ""
set_fileset_property QUARTUS_SYNTH TOP_LEVEL axi_cache_secruity_bridge
set_fileset_property QUARTUS_SYNTH ENABLE_RELATIVE_INCLUDE_PATHS false
set_fileset_property QUARTUS_SYNTH ENABLE_FILE_OVERWRITE_MODE false
add_fileset_file axi_cache_secruity_bridge.v VERILOG PATH axi_cache_secruity_bridge.v TOP_LEVEL_FILE

add_fileset SIM_VERILOG SIM_VERILOG "" ""
set_fileset_property SIM_VERILOG TOP_LEVEL axi_cache_secruity_bridge
set_fileset_property SIM_VERILOG ENABLE_RELATIVE_INCLUDE_PATHS false
set_fileset_property SIM_VERILOG ENABLE_FILE_OVERWRITE_MODE false
add_fileset_file axi_cache_secruity_bridge.v VERILOG PATH axi_cache_secruity_bridge.v

add_fileset SIM_VHDL SIM_VHDL "" ""
set_fileset_property SIM_VHDL TOP_LEVEL axi_cache_secruity_bridge
set_fileset_property SIM_VHDL ENABLE_RELATIVE_INCLUDE_PATHS false
set_fileset_property SIM_VHDL ENABLE_FILE_OVERWRITE_MODE false
add_fileset_file axi_cache_secruity_bridge.v VERILOG PATH axi_cache_secruity_bridge.v


# 
# parameters
# 
add_parameter ADDRESS_WIDTH INTEGER 32 "Address width of the AXI master and slave ports"
set_parameter_property ADDRESS_WIDTH DEFAULT_VALUE 32
set_parameter_property ADDRESS_WIDTH DISPLAY_NAME "Bridge Address Width"
set_parameter_property ADDRESS_WIDTH TYPE INTEGER
set_parameter_property ADDRESS_WIDTH UNITS None
set_parameter_property ADDRESS_WIDTH ALLOWED_RANGES 10:32
set_parameter_property ADDRESS_WIDTH DESCRIPTION "Address width of the AXI master and slave ports"
set_parameter_property ADDRESS_WIDTH HDL_PARAMETER true

add_parameter DATA_WIDTH INTEGER 32 "Width of the AXI master and slave ports"
set_parameter_property DATA_WIDTH DEFAULT_VALUE 32
set_parameter_property DATA_WIDTH DISPLAY_NAME "Bridge Data Width"
set_parameter_property DATA_WIDTH TYPE INTEGER
set_parameter_property DATA_WIDTH UNITS None
set_parameter_property DATA_WIDTH ALLOWED_RANGES {8 16 32 64 128 256 512 1024}
set_parameter_property DATA_WIDTH DESCRIPTION "Width of the AXI master and slave ports"
set_parameter_property DATA_WIDTH HDL_PARAMETER true

add_parameter AXUSER_WIDTH INTEGER 5 "Width of the AXI USER signal"
set_parameter_property AXUSER_WIDTH DEFAULT_VALUE 5
set_parameter_property AXUSER_WIDTH DISPLAY_NAME "AXI USER Width"
set_parameter_property AXUSER_WIDTH TYPE INTEGER
set_parameter_property AXUSER_WIDTH UNITS None
set_parameter_property AXUSER_WIDTH ALLOWED_RANGES 1:31
set_parameter_property AXUSER_WIDTH DESCRIPTION "Width of the AXI USER signal"
set_parameter_property AXUSER_WIDTH HDL_PARAMETER true

add_parameter ID_WIDTH INTEGER 1 "Width of the AXI ID signal"
set_parameter_property ID_WIDTH DEFAULT_VALUE 1
set_parameter_property ID_WIDTH DISPLAY_NAME "AXI ID Width"
set_parameter_property ID_WIDTH TYPE INTEGER
set_parameter_property ID_WIDTH UNITS None
set_parameter_property ID_WIDTH ALLOWED_RANGES 1:32
set_parameter_property ID_WIDTH DESCRIPTION "Width of the AXI ID signal"
set_parameter_property ID_WIDTH HDL_PARAMETER true

# 
# display items
# 


# 
# connection point clock
# 
add_interface clock clock end
set_interface_property clock clockRate 0
set_interface_property clock ENABLED true
set_interface_property clock EXPORT_OF ""
set_interface_property clock PORT_NAME_MAP ""
set_interface_property clock CMSIS_SVD_VARIABLES ""
set_interface_property clock SVD_ADDRESS_GROUP ""

add_interface_port clock clk clk Input 1



# 
# connection point reset_sink
# 
add_interface reset_sink reset end
set_interface_property reset_sink associatedClock clock
set_interface_property reset_sink synchronousEdges DEASSERT
set_interface_property reset_sink ENABLED true
set_interface_property reset_sink EXPORT_OF ""
set_interface_property reset_sink PORT_NAME_MAP ""
set_interface_property reset_sink CMSIS_SVD_VARIABLES ""
set_interface_property reset_sink SVD_ADDRESS_GROUP ""

add_interface_port reset_sink rst_n reset_n Input 1


# 
# connection point avalon_csr_slave
# 
add_interface avalon_csr_slave avalon end
set_interface_property avalon_csr_slave addressUnits WORDS
set_interface_property avalon_csr_slave associatedClock clock
set_interface_property avalon_csr_slave associatedReset reset_sink
set_interface_property avalon_csr_slave bitsPerSymbol 8
set_interface_property avalon_csr_slave burstOnBurstBoundariesOnly false
set_interface_property avalon_csr_slave burstcountUnits WORDS
set_interface_property avalon_csr_slave explicitAddressSpan 0
set_interface_property avalon_csr_slave holdTime 0
set_interface_property avalon_csr_slave linewrapBursts false
set_interface_property avalon_csr_slave maximumPendingReadTransactions 0
set_interface_property avalon_csr_slave maximumPendingWriteTransactions 0
set_interface_property avalon_csr_slave readLatency 1
set_interface_property avalon_csr_slave readWaitTime 1
set_interface_property avalon_csr_slave setupTime 0
set_interface_property avalon_csr_slave timingUnits Cycles
set_interface_property avalon_csr_slave writeWaitTime 0
set_interface_property avalon_csr_slave ENABLED true
set_interface_property avalon_csr_slave EXPORT_OF ""
set_interface_property avalon_csr_slave PORT_NAME_MAP ""
set_interface_property avalon_csr_slave CMSIS_SVD_VARIABLES ""
set_interface_property avalon_csr_slave SVD_ADDRESS_GROUP ""

add_interface_port avalon_csr_slave csr_address address Input 3
add_interface_port avalon_csr_slave csr_write write Input 1
add_interface_port avalon_csr_slave csr_read read Input 1
add_interface_port avalon_csr_slave csr_writedata writedata Input 32
add_interface_port avalon_csr_slave csr_byteenable byteenable Input 4
add_interface_port avalon_csr_slave csr_readdata readdata Output 32
set_interface_assignment avalon_csr_slave embeddedsw.configuration.isFlash 0
set_interface_assignment avalon_csr_slave embeddedsw.configuration.isMemoryDevice 0
set_interface_assignment avalon_csr_slave embeddedsw.configuration.isNonVolatileStorage 0
set_interface_assignment avalon_csr_slave embeddedsw.configuration.isPrintableDevice 0


# 
# connection point axi_master
# 
add_interface axi_master axi start
set_interface_property axi_master associatedClock clock
set_interface_property axi_master associatedReset reset_sink
set_interface_property axi_master readIssuingCapability 16
set_interface_property axi_master writeIssuingCapability 16
set_interface_property axi_master combinedIssuingCapability 16
set_interface_property axi_master ENABLED true
set_interface_property axi_master EXPORT_OF ""
set_interface_property axi_master PORT_NAME_MAP ""
set_interface_property axi_master CMSIS_SVD_VARIABLES ""
set_interface_property axi_master SVD_ADDRESS_GROUP ""

add_interface_port axi_master m_awvalid awvalid Output 1
add_interface_port axi_master m_awlen awlen Output 4
add_interface_port axi_master m_awsize awsize Output 3
add_interface_port axi_master m_awburst awburst Output 2
add_interface_port axi_master m_awlock awlock Output 2
add_interface_port axi_master m_awcache awcache Output 4
add_interface_port axi_master m_awprot awprot Output 3
add_interface_port axi_master m_awready awready Input 1
add_interface_port axi_master m_awuser awuser Output AXUSER_WIDTH
add_interface_port axi_master m_arvalid arvalid Output 1
add_interface_port axi_master m_arlen arlen Output 4
add_interface_port axi_master m_arsize arsize Output 3
add_interface_port axi_master m_arburst arburst Output 2
add_interface_port axi_master m_arlock arlock Output 2
add_interface_port axi_master m_arcache arcache Output 4
add_interface_port axi_master m_arprot arprot Output 3
add_interface_port axi_master m_arready arready Input 1
add_interface_port axi_master m_aruser aruser Output AXUSER_WIDTH
add_interface_port axi_master m_rvalid rvalid Input 1
add_interface_port axi_master m_rlast rlast Input 1
add_interface_port axi_master m_rresp rresp Input 2
add_interface_port axi_master m_rready rready Output 1
add_interface_port axi_master m_wvalid wvalid Output 1
add_interface_port axi_master m_wlast wlast Output 1
add_interface_port axi_master m_wready wready Input 1
add_interface_port axi_master m_bvalid bvalid Input 1
add_interface_port axi_master m_bresp bresp Input 2
add_interface_port axi_master m_bready bready Output 1
add_interface_port axi_master m_awaddr awaddr Output ADDRESS_WIDTH
add_interface_port axi_master m_awid awid Output ID_WIDTH
add_interface_port axi_master m_araddr araddr Output ADDRESS_WIDTH
add_interface_port axi_master m_arid arid Output ID_WIDTH
add_interface_port axi_master m_rdata rdata Input DATA_WIDTH
add_interface_port axi_master m_rid rid Input ID_WIDTH
add_interface_port axi_master m_wdata wdata Output DATA_WIDTH
add_interface_port axi_master m_wstrb wstrb Output DATA_WIDTH/8
add_interface_port axi_master m_wid wid Output ID_WIDTH
add_interface_port axi_master m_bid bid Input ID_WIDTH


# 
# connection point axi_slave
# 
add_interface axi_slave axi end
set_interface_property axi_slave associatedClock clock
set_interface_property axi_slave associatedReset reset_sink
set_interface_property axi_slave readAcceptanceCapability 16
set_interface_property axi_slave writeAcceptanceCapability 16
set_interface_property axi_slave combinedAcceptanceCapability 16
set_interface_property axi_slave readDataReorderingDepth 1
set_interface_property axi_slave bridgesToMaster ""
set_interface_property axi_slave ENABLED true
set_interface_property axi_slave EXPORT_OF ""
set_interface_property axi_slave PORT_NAME_MAP ""
set_interface_property axi_slave CMSIS_SVD_VARIABLES ""
set_interface_property axi_slave SVD_ADDRESS_GROUP ""

add_interface_port axi_slave s_araddr araddr Input ADDRESS_WIDTH
add_interface_port axi_slave s_arburst arburst Input 2
add_interface_port axi_slave s_arcache arcache Input 4
add_interface_port axi_slave s_arid arid Input ID_WIDTH
add_interface_port axi_slave s_arlen arlen Input 4
add_interface_port axi_slave s_arlock arlock Input 2
add_interface_port axi_slave s_arprot arprot Input 3
add_interface_port axi_slave s_arready arready Output 1
add_interface_port axi_slave s_arsize arsize Input 3
add_interface_port axi_slave s_aruser aruser Input AXUSER_WIDTH
add_interface_port axi_slave s_arvalid arvalid Input 1
add_interface_port axi_slave s_awaddr awaddr Input ADDRESS_WIDTH
add_interface_port axi_slave s_awburst awburst Input 2
add_interface_port axi_slave s_awcache awcache Input 4
add_interface_port axi_slave s_awid awid Input ID_WIDTH
add_interface_port axi_slave s_awlen awlen Input 4
add_interface_port axi_slave s_awlock awlock Input 2
add_interface_port axi_slave s_awprot awprot Input 3
add_interface_port axi_slave s_awready awready Output 1
add_interface_port axi_slave s_awsize awsize Input 3
add_interface_port axi_slave s_awuser awuser Input AXUSER_WIDTH
add_interface_port axi_slave s_awvalid awvalid Input 1
add_interface_port axi_slave s_bid bid Output ID_WIDTH
add_interface_port axi_slave s_bready bready Input 1
add_interface_port axi_slave s_bresp bresp Output 2
add_interface_port axi_slave s_bvalid bvalid Output 1
add_interface_port axi_slave s_rdata rdata Output DATA_WIDTH
add_interface_port axi_slave s_rid rid Output ID_WIDTH
add_interface_port axi_slave s_rlast rlast Output 1
add_interface_port axi_slave s_rready rready Input 1
add_interface_port axi_slave s_rresp rresp Output 2
add_interface_port axi_slave s_rvalid rvalid Output 1
add_interface_port axi_slave s_wdata wdata Input DATA_WIDTH
add_interface_port axi_slave s_wid wid Input ID_WIDTH
add_interface_port axi_slave s_wlast wlast Input 1
add_interface_port axi_slave s_wready wready Output 1
add_interface_port axi_slave s_wstrb wstrb Input DATA_WIDTH/8
add_interface_port axi_slave s_wvalid wvalid Input 1



proc validate_me {}  {
  if { ([get_parameter_value ADDRESS_WIDTH] > 32) || ([get_parameter_value ADDRESS_WIDTH] < 10) }  {
    send_message Error "The bridge address width must be set between 10 and 32 bits."
  }
  
  if { ([get_parameter_value AXUSER_WIDTH] > 31) || ([get_parameter_value AXUSER_WIDTH] < 1) }  {
    send_message Error "The AXI user sideband width must be set between 1 and 31 bits."
  }  

  if { ([get_parameter_value ID_WIDTH] > 32) || ([get_parameter_value ID_WIDTH] < 1) }  {
    send_message Error "The AXI ID width must be set between 10 and 32 bits."
  }  
}
