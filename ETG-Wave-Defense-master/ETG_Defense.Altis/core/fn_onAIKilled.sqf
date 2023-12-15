/*
	Filename: fn_onAIKilled.sqf
	Author: Kellojo
	Description: main function for the kill reward
*/

private ["_target","_killer","_ret"];
_target = _this select 0;
_killer = _this select 1;

//give money to killer

_money = player getvariable ["ttt_money", 1];
player setvariable ["seige_money", (_money + 1)];
_money = player getvariable ["seige_money", 1];

