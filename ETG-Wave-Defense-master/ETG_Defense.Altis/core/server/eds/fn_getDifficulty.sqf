/*
	Filename: fn_getDifficulty.sqf
	Author: Spikey & Kellojo
	Description: gets the difficulty of a vehicle/man
*/

private ["_difficulty"];

_mode = _this select 0;
if (isNil "_mode") exitWith {};

//Round Difficulty
if (_mode == 2) then {
	_round = defense_wave;
	_playerCount = count (allPlayers - entities "HeadlessClient_F");
	_fac = ln(_round + 1);

	_difficulty = [(((ln(_round * 2) + ln(_fac) * _playerCount) * 1000) / 100),2]call BIS_fnc_cutDecimals;
	if (_round == 1) then {
		_difficulty = 10;
	};
};

_difficulty

