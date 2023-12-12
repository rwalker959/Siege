//actions
UpgradeTerminal AddAction [localize "STR_Action_UpgradeTerminal", {[0, "Upgrades", false] call fn_UpgradeTerminal;}];
VehicleScrapper AddAction [localize "STR_Action_VehicleScrapper", {[0] call fn_VehicleScrapper;}];

	_action1 = ["SpawnsmallUKCrate","Demand Section Resupply Crate","",{execvm "ammoboxes\Troop Resupply.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_action1,true] call ace_interact_menu_fnc_addActionToClass;
	_action2 = ["spawncrate","Demand Sling Loadable Crate","",{execvm "ammoboxes\Sling Loadable Box.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_action2,true] call ace_interact_menu_fnc_addActionToClass;
	_action3 = ["spawnnlaw","Demand Matador Crate","",{execvm "ammoboxes\NLAW Resupply.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_action3,true] call ace_interact_menu_fnc_addActionToClass;
	_action4 = ["spawnnlaw","Demand Medic Resupply Crate","",{execvm "ammoboxes\Medical Resupply.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_action4,true] call ace_interact_menu_fnc_addActionToClass;
	_action5 = ["spawnnlaw","Demand Explosive Crate","",{execvm "ammoboxes\Explosive Crate.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_action5,true] call ace_interact_menu_fnc_addActionToClass;

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