params ["_box"];

_boxClass = "ACE_medicalSupplyCrate";

if (isnil "_box") then {
	_box = _boxClass createVehicle (getPos AmmoBoxSpawner);
};

clearWeaponCargoGlobal _box;
clearBackpackCargoGlobal _box;
clearMagazineCargoGlobal _box;
clearitemCargoGlobal _box;
[_box, 1] call ace_cargo_fnc_setSize;

_box addItemCargoGlobal ["ACE_fieldDressing",15];
_box addItemCargoGlobal ["ACE_packingBandage",15];
_box addItemCargoGlobal ["ACE_elasticBandage",15];
_box addItemCargoGlobal ["ACE_quikclot",15];
_box addItemCargoGlobal ["ACE_tourniquet",4];
_box addItemCargoGlobal ["ACE_splint",8];
_box addItemCargoGlobal ["ACE_morphine",4];
_box addItemCargoGlobal ["ACE_epinephrine",4];
_box addItemCargoGlobal ["ACE_salineIV_250,",5];
_box addItemCargoGlobal ["ACE_salineIV_500,",5];
_box addItemCargoGlobal ["kat_PainkillerItem",1];
_box addItemCargoGlobal ["kat_guedel",8];
_box addItemCargoGlobal ["kat_chestSeal",8];
_box addItemCargoGlobal ["ACE_bodyBag",6];

_box addItemCargoGlobal ["UK3CB_BAF_SmokeShell",3];
_box addItemCargoGlobal ["UK3CB_BAF_SmokeShellRed",3];
_box addItemCargoGlobal ["UK3CB_BAF_SmokeShellBlue",3];
_box addItemCargoGlobal ["UK3CB_BAF_SmokeShellPurple",3];
_box addItemCargoGlobal ["Chemlight_blue",1];
_box addItemCargoGlobal ["Chemlight_red",1];
_box addItemCargoGlobal ["Chemlight_green",1];