
WORKDIR = work

RTL = ../src
TB = ../tb

SIM_SRCS = $(TB)/$(TOP)_tb.sv

SRCH_PATH = -y $(TB) -y $(RTL)

VLOG_OPTS = -warning 2892 -lint -pedanticerrors +libext+.v +libext+.sv $(SRCH_PATH)
VSIM_OPTS = -warning 3009

.PHONY: compile sim lib clean

compile: $(WORKDIR) $(SRCS) $(SIM_SRCS)
	vlog $(VLOG_OPTS) $(SIM_SRCS)

sim:
	vsim $(VSIM_OPTS) -c -do "run -all; quit" work.$(TOP)_tb

sim_gui:
	vsim $(VSIM_OPTS) -gui work.$(TOP)_tb

$(WORKDIR):
	vlib work

clean:
	rm -r transcript $(WORKDIR) *.wlf *.vcd