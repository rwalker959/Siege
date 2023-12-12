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

_box addItemCargoGlobal ["ACE_Clacker",1];
_box addItemCargoGlobal ["DemoCharge_Remote_Mag",5];
_box addItemCargoGlobal ["ACE_wirecutter",2];
_box addItemCargoGlobal ["ACE_EntrenchingTool",1];
_box addItemCargoGlobal ["ACE_CableTie",6];
_box addItemCargoGlobal ["ACRE_VHF30108",1];