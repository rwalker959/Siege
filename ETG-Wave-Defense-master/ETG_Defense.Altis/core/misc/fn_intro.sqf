/*
	Filename: fn_intro.sqf
	Author: Kellojo
	Description: handles the intro (clientside)
*/
waituntil {!isNil {findDisplay 46}};

_camera = "camera" camCreate [position player select 0,position player select 1,3];
_camera cameraEffect ["internal","back"];
_camera camSetFOV 0.700;
_camera camCommit 0;
showCinemaBorder false;
 //Need to add radio message here. playMusic "";

_camera camSetPos [28443.4,25691.1,2.86622];
_camera camSetTarget defense_intro_target;
_camera camCommit 0;
uisleep 0;

"SmokeShellRed" createVehicle [28375.7,25758.8,0];

_camera camSetPos [28546,25745.2,23.3874];
_camera camCommit 8;
uisleep 8;

_camera camSetPos [28355.3,25884.1,39.9841];
_camera camSetTarget player;
_camera camCommit 6;
uisleep 6;

_camera camSetPos [28243.1,25773.7,20.7746];
_camera camCommit 5;
uisleep 5;

_camera camSetPos [28327.3,25757,4.35792];
_camera camCommit 4;
uisleep 4;

6 fadeMusic 0;

_camera camSetPos [28370,25739.7,5.40371];
_camera camCommit 6;
uisleep 6;

_camera camSetRelPos [-0.5,0,2];
_camera camCommit 2;
uisleep 2;

_camera cameraEffect ["terminate","back"];
camDestroy _camera;

if (!isNil "defense_heli") then {
	waituntil {(position defense_heli select 2) < 5};
	{
		if !(isplayer _x) then {
			_x action ["Eject", defense_heli];
			unassignVehicle _x;
		};
	} forEach units group player;
};

