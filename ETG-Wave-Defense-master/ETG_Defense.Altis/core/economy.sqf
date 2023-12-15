_checkmoney = ["Supplies","Check Bank Balance","",{call _checkbank},{true}] call ace_interact_menu_fnc_createAction;
[player, 1, ["ACE_SelfActions", "Check Money"], _checkmoney] call ace_interact_menu_fnc_addActionToObject;

_sectioncrate = ["Buy Supplies","SpawnUKCrate","Buy Section Resupply Crate","",{call _buysectionresupply},{true}] call ace_interact_menu_fnc_createAction;
["Land_InfoStand_V1_F",0,["ACE_MainActions"],_sectioncrate,true] call ace_interact_menu_fnc_addActionToClass;
_launchercrate = ["Buy Supplies","spawnnlaw","Buy NLAW Crate","",{call _buylauncherresupply},{true}] call ace_interact_menu_fnc_createAction;
["Land_InfoStand_V1_F",0,["ACE_MainActions"],_action3,true] call ace_interact_menu_fnc_addActionToClass;
_mediccrate = ["Buy Supplies","spawnnlaw","Buy Medic Resupply Crate","",{call _buymedicresupply},{true}] call ace_interact_menu_fnc_createAction;
["Land_InfoStand_V1_F",0,["ACE_MainActions"],_action4,true] call ace_interact_menu_fnc_addActionToClass;

buysectionresupply = {
	_money = player getvariable ["seige_money", 1];
	_cost = 5;
	if (_money < _cost) exitwith {
		hint ("You need £" + (str _cost) + " for that. You have £" + (str _money));
	};
  execvm "cfg\ammoboxes\Section Resupply.sqf"
	hint "You have bought a Section Resupply Crate";
};

buylauncherresupply = {
	_money = player getvariable ["seige_money", 1];
	_cost = 10;
	if (_money < _cost) exitwith {
		hint ("You need £" + (str _cost) + " for that. You have £" + (str _money));
	};
  execvm "cfg\ammoboxes\NLAW Resupply.sqf"
	hint "You have bought a Launcher Resupply Crate";
};

buymedicresupply = {
	_money = player getvariable ["seige_money", 1];
	_cost = 2;
	if (_money < _cost) exitwith {
		hint ("You need £" + (str _cost) + " for that. You have £" + (str _money));
	};
  execvm "cfg\ammoboxes\Medical Resupply.sqf"
	hint "You have bought a Medic Resupply Crate";
};


//possibly add buy engineer and medic trait?
