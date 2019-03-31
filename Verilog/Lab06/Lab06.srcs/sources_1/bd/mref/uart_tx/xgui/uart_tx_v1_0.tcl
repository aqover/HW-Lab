# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "STATE_DATA" -parent ${Page_0}
  ipgui::add_param $IPINST -name "STATE_IDLE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "STATE_START" -parent ${Page_0}
  ipgui::add_param $IPINST -name "STATE_STOP" -parent ${Page_0}


}

proc update_PARAM_VALUE.STATE_DATA { PARAM_VALUE.STATE_DATA } {
	# Procedure called to update STATE_DATA when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.STATE_DATA { PARAM_VALUE.STATE_DATA } {
	# Procedure called to validate STATE_DATA
	return true
}

proc update_PARAM_VALUE.STATE_IDLE { PARAM_VALUE.STATE_IDLE } {
	# Procedure called to update STATE_IDLE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.STATE_IDLE { PARAM_VALUE.STATE_IDLE } {
	# Procedure called to validate STATE_IDLE
	return true
}

proc update_PARAM_VALUE.STATE_START { PARAM_VALUE.STATE_START } {
	# Procedure called to update STATE_START when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.STATE_START { PARAM_VALUE.STATE_START } {
	# Procedure called to validate STATE_START
	return true
}

proc update_PARAM_VALUE.STATE_STOP { PARAM_VALUE.STATE_STOP } {
	# Procedure called to update STATE_STOP when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.STATE_STOP { PARAM_VALUE.STATE_STOP } {
	# Procedure called to validate STATE_STOP
	return true
}


proc update_MODELPARAM_VALUE.STATE_IDLE { MODELPARAM_VALUE.STATE_IDLE PARAM_VALUE.STATE_IDLE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.STATE_IDLE}] ${MODELPARAM_VALUE.STATE_IDLE}
}

proc update_MODELPARAM_VALUE.STATE_START { MODELPARAM_VALUE.STATE_START PARAM_VALUE.STATE_START } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.STATE_START}] ${MODELPARAM_VALUE.STATE_START}
}

proc update_MODELPARAM_VALUE.STATE_DATA { MODELPARAM_VALUE.STATE_DATA PARAM_VALUE.STATE_DATA } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.STATE_DATA}] ${MODELPARAM_VALUE.STATE_DATA}
}

proc update_MODELPARAM_VALUE.STATE_STOP { MODELPARAM_VALUE.STATE_STOP PARAM_VALUE.STATE_STOP } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.STATE_STOP}] ${MODELPARAM_VALUE.STATE_STOP}
}

