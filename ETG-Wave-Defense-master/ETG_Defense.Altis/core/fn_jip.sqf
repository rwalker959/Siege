/*
	Filename: fn_jip.sqf
	Author: Kellojo
	Description: main function for jip clients
*/
_mode = _this select 0;
if (isNil "_mode") exitWith {};

//send vars
if (_mode == 0) then {
	publicvariable "defense_wave";
	publicvariable "defense_money";
	publicvariable "defense_tickets";
	publicvariable "defense_startingTickets";
	publicvariable "defense_att_main_group_scale";
	publicvariable "defense_att_Groups";

	publicvariable "defense_uav";
	publicvariable "defense_upgrade_air";
};




