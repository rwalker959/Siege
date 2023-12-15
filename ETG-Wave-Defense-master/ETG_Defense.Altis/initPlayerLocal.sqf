//actions
VehicleScrapper AddAction [localize "STR_Action_VehicleScrapper", {[0] call fn_VehicleScrapper;}];

//vars
defense_kills = 0;
defense_assists = 0;

#include "core\economy.sqf";

//event handler
player addEventHandler ["Respawn",{[_this select 0,_this select 1] spawn fn_revive}];


//HUD
[0] remoteExec ["fn_jip", 2, false];
