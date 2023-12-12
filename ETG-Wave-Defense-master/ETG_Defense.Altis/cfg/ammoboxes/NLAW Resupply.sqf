params ["_box"];

_boxClass = "Box_NATO_WpsSpecial_F";

if (isnil "_box") then {
	_box = _boxClass createVehicle (getPos AmmoBoxSpawner);
};

clearWeaponCargoGlobal _box;
clearBackpackCargoGlobal _box;
clearMagazineCargoGlobal _box;
clearitemCargoGlobal _box;
[_box, 1] call ace_cargo_fnc_setSize;

//supplies
_box AddWeaponCargoGlobal ["launch_NLAW_F",2];