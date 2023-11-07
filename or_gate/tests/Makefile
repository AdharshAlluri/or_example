SIM ?= icarus
TOPLEVEL_LANG ?= verilog
VERILOG_SOURCES += $(PWD)/hdl/or_gate.v
VERILOG_SOURCES += $(PWD)/wrappers/ifc_test.v
VERILOG_SOURCES += $(PWD)/hdl/ifc_or.v
VERILOG_SOURCES += $(PWD)/hdl/FIFO1.v
VERILOG_SOURCES += $(PWD)/hdl/FIFO2.v

or:
	rm sim_build -rf
	$(MAKE) sim MODULE=or_tests TOPLEVEL=or_gate
ifc:
	rm sim_build -rf
	$(MAKE) sim MODULE=ifc_test TOPLEVEL=ifc_test
include $(shell cocotb-config --makefiles)/Makefile.sim		
		
