transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Perry/Documents/GitHub/Embedded-systems-final-assignment/quartus_project/eatercpu.vhd}

