# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "Buadrate" -parent ${Page_0}
  ipgui::add_param $IPINST -name "RX_ACC_MAX" -parent ${Page_0}
  ipgui::add_param $IPINST -name "RX_ACC_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "TX_ACC_MAX" -parent ${Page_0}
  ipgui::add_param $IPINST -name "TX_ACC_WIDTH" -parent ${Page_0}


}

proc update_PARAM_VALUE.Buadrate { PARAM_VALUE.Buadrate } {
	# Procedure called to update Buadrate when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Buadrate { PARAM_VALUE.Buadrate } {
	# Procedure called to validate Buadrate
	return true
}

proc update_PARAM_VALUE.RX_ACC_MAX { PARAM_VALUE.RX_ACC_MAX } {
	# Procedure called to update RX_ACC_MAX when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.RX_ACC_MAX { PARAM_VALUE.RX_ACC_MAX } {
	# Procedure called to validate RX_ACC_MAX
	return true
}

proc update_PARAM_VALUE.RX_ACC_WIDTH { PARAM_VALUE.RX_ACC_WIDTH } {
	# Procedure called to update RX_ACC_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.RX_ACC_WIDTH { PARAM_VALUE.RX_ACC_WIDTH } {
	# Procedure called to validate RX_ACC_WIDTH
	return true
}

proc update_PARAM_VALUE.TX_ACC_MAX { PARAM_VALUE.TX_ACC_MAX } {
	# Procedure called to update TX_ACC_MAX when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.TX_ACC_MAX { PARAM_VALUE.TX_ACC_MAX } {
	# Procedure called to validate TX_ACC_MAX
	return true
}

proc update_PARAM_VALUE.TX_ACC_WIDTH { PARAM_VALUE.TX_ACC_WIDTH } {
	# Procedure called to update TX_ACC_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.TX_ACC_WIDTH { PARAM_VALUE.TX_ACC_WIDTH } {
	# Procedure called to validate TX_ACC_WIDTH
	return true
}


proc update_MODELPARAM_VALUE.Buadrate { MODELPARAM_VALUE.Buadrate PARAM_VALUE.Buadrate } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.Buadrate}] ${MODELPARAM_VALUE.Buadrate}
}

proc update_MODELPARAM_VALUE.RX_ACC_MAX { MODELPARAM_VALUE.RX_ACC_MAX PARAM_VALUE.RX_ACC_MAX } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.RX_ACC_MAX}] ${MODELPARAM_VALUE.RX_ACC_MAX}
}

proc update_MODELPARAM_VALUE.TX_ACC_MAX { MODELPARAM_VALUE.TX_ACC_MAX PARAM_VALUE.TX_ACC_MAX } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.TX_ACC_MAX}] ${MODELPARAM_VALUE.TX_ACC_MAX}
}

proc update_MODELPARAM_VALUE.RX_ACC_WIDTH { MODELPARAM_VALUE.RX_ACC_WIDTH PARAM_VALUE.RX_ACC_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.RX_ACC_WIDTH}] ${MODELPARAM_VALUE.RX_ACC_WIDTH}
}

proc update_MODELPARAM_VALUE.TX_ACC_WIDTH { MODELPARAM_VALUE.TX_ACC_WIDTH PARAM_VALUE.TX_ACC_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.TX_ACC_WIDTH}] ${MODELPARAM_VALUE.TX_ACC_WIDTH}
}

