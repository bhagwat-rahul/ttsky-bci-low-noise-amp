PROJECT_NAME := tt_um_rahulbhagwat_brainamp_lna

# ==================================================
# Default cell to operate on
# Override with:
# make lvs CELL=ota_5t
# ==================================================

CELL ?= eeg_lna_top

# ==================================================
# Tool / PDK Setup
# ==================================================

MAGIC_RC := $(PDK_ROOT)/sky130A/libs.tech/magic/sky130A.magicrc
NETGEN_SETUP := $(PDK_ROOT)/sky130A/libs.tech/netgen/sky130A_setup.tcl

XSCHEM := xschem
XSCHEM_RC := ~/.xschem/xschemrc

# ==================================================
# Project Directories
# ==================================================

MAGIC_DIR := magic
XSCHEM_DIR := xschem
TCL_DIR := tcl/magic

BUILD_DIR := build
LVS_DIR := $(BUILD_DIR)/lvs
LOG_DIR := $(BUILD_DIR)/logs
NETLIST_DIR := $(BUILD_DIR)/netlists

# ==================================================
# Source Files
# ==================================================

LAYOUT_MAG := $(MAGIC_DIR)/$(CELL).mag
SCHEMATIC := $(XSCHEM_DIR)/$(CELL).sch

# ==================================================
# Generated Files
# ==================================================

LAYOUT_LVS_SPICE := $(LVS_DIR)/$(CELL).lvs.spice
SCHEMATIC_LVS_SPICE := $(NETLIST_DIR)/$(CELL)_schem.spice
LVS_REPORT := $(LOG_DIR)/$(CELL)_lvs.report

# ==================================================
# Phony Targets
# ==================================================

.PHONY: magic drc extract lvs clean gds dirs

# ==================================================
# Create Build Directories
# ==================================================

dirs:
	mkdir -p $(BUILD_DIR)
	mkdir -p $(LVS_DIR)
	mkdir -p $(LOG_DIR)
	mkdir -p $(NETLIST_DIR)

# ==================================================
# Open Magic GUI
# ==================================================

magic:
	cd $(MAGIC_DIR) && \
	magic -rcfile $(MAGIC_RC) $(PROJECT_NAME).mag

# ==================================================
# DRC
# ==================================================

drc:
	cd $(MAGIC_DIR) && \
	magic -rcfile $(MAGIC_RC) \
		-noconsole \
		-dnull \
		../$(TCL_DIR)/drc.tcl \
		$(PROJECT_NAME)

# ==================================================
# Extract LVS Netlist From Layout
# ==================================================

extract: $(LAYOUT_LVS_SPICE)

$(LAYOUT_LVS_SPICE): $(LAYOUT_MAG) | dirs
	cd $(MAGIC_DIR) && \
	magic -rcfile $(MAGIC_RC) \
		-noconsole \
		-dnull \
		../$(TCL_DIR)/extract_for_lvs.tcl \
		$(CELL)

	mv $(MAGIC_DIR)/$(CELL).lvs.spice $(LAYOUT_LVS_SPICE)
	rm -f $(MAGIC_DIR)/*.ext

# ==================================================
# Generate Clean LVS Schematic Netlist From xschem
# ==================================================

$(SCHEMATIC_LVS_SPICE): $(SCHEMATIC) | dirs
	cd $(XSCHEM_DIR) && \
	$(XSCHEM) -n -q \
		--rcfile $(XSCHEM_RC) \
		--command "set netlist_type lvs; set lvs_netlist 1; set netlist_dir ..\/$(NETLIST_DIR); xschem netlist" \
		$(CELL).sch

	mv $(NETLIST_DIR)/$(CELL).spice $(SCHEMATIC_LVS_SPICE)

# ==================================================
# LVS
# ==================================================

lvs: $(LAYOUT_LVS_SPICE) $(SCHEMATIC_LVS_SPICE)
	netgen -batch lvs \
		"$(LAYOUT_LVS_SPICE) $(CELL)" \
		"$(SCHEMATIC_LVS_SPICE) $(CELL)" \
		$(NETGEN_SETUP) \
		$(LVS_REPORT)

	@if grep -q "Circuits match uniquely" $(LVS_REPORT); then \
		echo "==================================="; \
		echo "LVS OK"; \
		echo "==================================="; \
	else \
		echo "==================================="; \
		echo "LVS FAILED"; \
		echo "See: $(LVS_REPORT)"; \
		echo "==================================="; \
	fi

# ==================================================
# GDS / LEF Export
# ==================================================

gds:
	mkdir -p gds lef

	cd $(MAGIC_DIR) && \
	magic -rcfile $(MAGIC_RC) \
		-noconsole \
		-dnull \
		../$(TCL_DIR)/update_gds_lef.tcl \
		$(PROJECT_NAME)

# ==================================================
# Clean Generated Build Files
# ==================================================

clean:
	rm -rf $(BUILD_DIR)

	rm -f $(MAGIC_DIR)/*.ext
	rm -f $(MAGIC_DIR)/*.sim.spice
	rm -f $(MAGIC_DIR)/*.nodes
	rm -f $(MAGIC_DIR)/*.fb
	rm -f $(MAGIC_DIR)/*.fb.txt

	rm -f $(XSCHEM_DIR)/*.spice