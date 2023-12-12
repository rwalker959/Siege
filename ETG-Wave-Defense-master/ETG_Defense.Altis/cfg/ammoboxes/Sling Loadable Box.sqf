params ["_box"];

_boxClass = "UK3CB_BAF_SupplyCrate_Ammo";

if (isnil "_box") then {
	_box = _boxClass createVehicle (getPos AmmoBoxSpawner);
};

clearWeaponCargoGlobal _box;
clearBackpackCargoGlobal _box;
clearMagazineCargoGlobal _box;
clearitemCargoGlobal _box;
[_box, 10] call ace_cargo_fnc_setSize;
[_box, 10] call ace_cargo_fnc_setSpace;
[_box, true, [0, 2, 0], 90] call ace_dragging_fnc_setDraggable;
_box setVariable ["slr_slingload_isRiggingEnabled", true, true];