set ::env(DESIGN_NAME) tt_um_icell
set ::env(VERILOG_FILES) "src/tt_um_icell.v"

set ::env(CLOCK_PORT) ""
set ::env(CLOCK_NET) ""

set ::env(FP_CORE_UTIL) 5
set ::env(PL_TARGET_DENSITY) 0.1

# Since analog block is pre-designed
set ::env(SYNTH_TOP_LEVEL) 1
set ::env(PL_RANDOM_GLB_PLACEMENT) 1

# Power
set ::env(VDD_NETS) "VPWR"
set ::env(GND_NETS) "VGND"
