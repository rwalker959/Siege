params ["_box"];

_boxClass = "ACE_Box_Ammo";

if (isnil "_box") then {
	_box = _boxClass createVehicle (getPos AmmoBoxSpawner);
};

clearWeaponCargoGlobal _box;
clearBackpackCargoGlobal _box;
clearMagazineCargoGlobal _box;
clearitemCargoGlobal _box;
[_box, 1] call ace_cargo_fnc_setSize;

//supplies
_box AddMagazineCargoGlobal ["UK3CB_BAF_762_100Rnd",4];

_box AddMagazineCargoGlobal ["UK3CB_BAF_556_30Rnd",16];
_box AddMagazineCargoGlobal ["UK3CB_BAF_556_30Rnd_T",4];

_box AddMagazineCargoGlobal ["UK3CB_BAF_762_L42A1_20Rnd",4];
_box AddMagazineCargoGlobal ["UK3CB_BAF_762_L42A1_20Rnd_T",2];

_box AddMagazineCargoGlobal ["CUP_8Rnd_B_Beneli_74Slug",2];
_box AddMagazineCargoGlobal ["CUP_8Rnd_B_Beneli_74Pellets",2];

_box AddMagazineCargoGlobal ["UK3CB_BAF_556_200Rnd",6];

_box AddMagazineCargoGlobal ["UGL_FlareWhite_F",5];
_box AddMagazineCargoGlobal ["UK3CB_BAF_1Rnd_HE_Grenade_shell",5];
_box AddMagazineCargoGlobal ["UK3CB_BAF_1Rnd_Smoke_Grenade_shell",2];
_box AddMagazineCargoGlobal ["UK3CB_BAF_1Rnd_SmokeRed_Grenade_shell",1];
_box AddMagazineCargoGlobal ["UK3CB_BAF_1Rnd_SmokeBlue_Grenade_shell",1];
_box AddMagazineCargoGlobal ["UK3CB_BAF_1Rnd_SmokeGreen_Grenade_shell",1];

_box AddMagazineCargoGlobal ["CUP_17Rnd_9x19_glock17",8];

_box addItemCargoGlobal ["ACE_fieldDressing",30];
_box addItemCargoGlobal ["ACE_quikclot",10];
_box addItemCargoGlobal ["ACE_tourniquet",2];
_box addItemCargoGlobal ["kat_PainkillerItem",1];
_box addItemCargoGlobal ["CUP_HandGrenade_L109A2_HE",6];
_box addItemCargoGlobal ["UK3CB_BAF_SmokeShell",3];
_box addItemCargoGlobal ["UK3CB_BAF_SmokeShellRed",3];
_box addItemCargoGlobal ["UK3CB_BAF_SmokeShellBlue",3];
_box addItemCargoGlobal ["UK3CB_BAF_SmokeShellPurple",3];
_box addItemCargoGlobal ["Chemlight_blue",1];
_box addItemCargoGlobal ["Chemlight_red",1];
_box addItemCargoGlobal ["Chemlight_green",1];