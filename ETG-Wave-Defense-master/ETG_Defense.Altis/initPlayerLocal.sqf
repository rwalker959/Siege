//actions
UpgradeTerminal AddAction [localize "STR_Action_UpgradeTerminal", {[0, "Upgrades", false] call fn_UpgradeTerminal;}];
VehicleScrapper AddAction [localize "STR_Action_VehicleScrapper", {[0] call fn_VehicleScrapper;}];

//vars
defense_kills = 0;
defense_assists = 0;


//event handler
player addEventHandler ["Respawn",{[_this select 0,_this select 1] spawn fn_revive}];


//HUD
[0] remoteExec ["fn_jip", 2, false];


//Key down
waituntil {!(IsNull (findDisplay 46))};
_keyDown = findDisplay 46 displayAddEventHandler ["KeyDown", {_this call fn_keyhandler;}];


//perk vars = false
_entries = "true" configClasses (missionConfigFile >> "Perks");
{
	_var = (_x >> "varname")  call BIS_fnc_getCfgData;
	if (_var != "") then {
		[] call compile (_var + " = false;");
	};
} forEach _entries;
