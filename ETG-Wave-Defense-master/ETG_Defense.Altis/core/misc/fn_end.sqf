/*
	Filename: fn_end.sqf
	Author: Kellojo
	Description: handles the end & Highscoore management... (client side)
*/

player allowDamage false;
//Save Stats
_stats = [];
_stats pushback defense_wave;
_stats pushback defense_money;
_stats pushback defense_kills;
_stats pushback defense_assists;
_stats pushback time;

_camera = "camera" camCreate [position player select 0,position player select 1,3];
_camera cameraEffect ["internal","back"];
_camera camSetFOV 0.700;
_camera camCommit 0;
showCinemaBorder false;	

_camera camSetTarget player;
_camera camSetRelPos [-2,0,5];
_camera camCommit 2;
sleep 2;

//Create round stats hud and fill it...
12 cutRsc ["ETG_End_Stats","PLAIN"];
disableSerialization;
_disp = uiNamespace getVariable "ETG_End_Stats";
_ctrl_1 = _disp displayCtrl 4001;

if ((profilenamespace getVariable ["ETG_Defense_Mission_Highscore", [0]] select 0) <= defense_wave) then {
	profilenamespace setVariable ["ETG_Defense_Mission_Highscore", _stats];
	saveProfileNamespace;
	
	_ctrl_1 ctrlSetStructuredText parseText format [
	"<t color='#97FA21'><t size='2.2'>Round Stats:<br/></t></t><t align='left'><br/>
	<t color='#97FA21'><t size='1'>Waves survived:</t></t> %1<br/>
	<t color='#97FA21'><t size='1'>Money:</t></t> %2<br/>
	<t color='#97FA21'><t size='1'>Kills:</t></t> %3<br/>
	<t color='#97FA21'><t size='1'>Assists:</t></t> %4<br/>
	<t color='#97FA21'><t size='1'>Time survived:</t></t> %5<br/>

	</t>",defense_wave,defense_money,defense_kills,defense_assists,time,defense_upgrade_arsenal_u,defense_upgrade_arsenal_1,defense_upgrade_arsenal_2,defense_upgrade_arsenal_3,defense_upgrade_arsenal_4,defense_upgrade_arsenal_5,defense_upgrade_arsenal_6,defense_upgrade_arsenal_7,defense_upgrade_air,defense_upgrade_wall_v1,defense_upgrade_wall_v2,defense_upgrade_wall_v3,defense_upgrade_turret_1,defense_upgrade_turret_2,defense_upgrade_turret_3,defense_upgrade_perk];
} else {
	_ctrl_1 ctrlSetStructuredText parseText format [
	"<t color='#97FA21'><t size='2.2'>New Highscore:<br/></t></t><t align='left'><br/>
	<t color='#97FA21'><t size='1'>Waves survived:</t></t> %1<br/>
	<t color='#97FA21'><t size='1'>Money:</t></t> %2<br/>
	<t color='#97FA21'><t size='1'>Kills:</t></t> %3<br/>
	<t color='#97FA21'><t size='1'>Assists:</t></t> %4<br/>
	<t color='#97FA21'><t size='1'>Time survived:</t></t> %5<br/>
	</t>",defense_wave,defense_money,defense_kills,defense_assists,time];
};

_camera camSetTarget player;
_camera camSetPos [28254.4,25726.2,15.3976];
_camera camCommit 10;
sleep 10;

_camera camSetTarget player;
_camera camSetPos [28488.2,25685.9,2.60886];
_camera camCommit 10;
sleep 10;

_camera camSetTarget player;
_camera camSetPos [28607.2,25769.8,13.6098];
_camera camCommit 10;
sleep 10;

[] remoteExec ["fn_end_server", 2, false];
