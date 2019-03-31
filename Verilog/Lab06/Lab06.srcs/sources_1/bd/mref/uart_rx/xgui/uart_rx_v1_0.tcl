# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "RX_STATE_DATA" -parent ${Page_0}
  ipgui::add_param $IPINST -name "RX_STATE_START" -parent ${Page_0}
  ipgui::add_param $IPINST -name "RX_STATE_STOP" -parent ${Page_0}


}

proc update_PARAM_VALUE.RX_STATE_DATA { PARAM_VALUE.RX_STATE_DATA } {
	# Procedure called to update RX_STATE_DATA when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.RX_STATE_DATA { PARAM_VALUE.RX_STATE_DATA } {
	# Procedure called to validate RX_STATE_DATA
	return true
}

proc update_PARAM_VALUE.RX_STATE_START { PARAM_VALUE.RX_STATE_START } {
	# Procedure called to update RX_STATE_START when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.RX_STATE_START { PARAM_VALUE.RX_STATE_START } {
	# Procedure called to validate RX_STATE_START
	return true
}

proc update_PARAM_VALUE.RX_STATE_STOP { PARAM_VALUE.RX_STATE_STOP } {
	# Procedure called to update RX_STATE_STOP when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.RX_STATE_STOP { PARAM_VALUE.RX_STATE_STOP } {
	# Procedure called to validate RX_STATE_STOP
	return true
}


proc update_MODELPARAM_VALUE.RX_STATE_START { MODELPARAM_VALUE.RX_STATE_START PARAM_VALUE.RX_STATE_START } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.RX_STATE_START}] ${MODELPARAM_VALUE.RX_STATE_START}
}

proc update_MODELPARAM_VALUE.RX_STATE_DATA { MODELPARAM_VALUE.RX_STATE_DATA PARAM_VALUE.RX_STATE_DATA } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.RX_STATE_DATA}] ${MODELPARAM_VALUE.RX_STATE_DATA}
}

proc update_MODELPARAM_VALUE.RX_STATE_STOP { MODELPARAM_VALUE.RX_STATE_STOP PARAM_VALUE.RX_STATE_STOP } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.RX_STATE_STOP}] ${MODELPARAM_VALUE.RX_STATE_STOP}
}

