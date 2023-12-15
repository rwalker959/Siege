
class Main {
	lookForVars[] = {"Upgrades","Support","Perks"};
};

class Enemies {

	units[] = {"O_G_Soldier_F","O_G_Soldier_lite_F","O_G_Soldier_SL_F","O_G_Soldier_TL_F","O_G_Soldier_AR_F","O_G_medic_F","O_G_engineer_F","O_G_Soldier_exp_F","O_G_Soldier_GL_F","O_G_Soldier_M_F","O_G_Soldier_LAT_F","O_G_Soldier_A_F","O_G_officer_F","O_Soldier_F","O_officer_F","O_Soldier_lite_F","O_Soldier_GL_F","O_Soldier_AR_F","O_Soldier_SL_F","O_Soldier_TL_F","O_soldier_M_F","O_Soldier_LAT_F","O_medic_F","O_soldier_repair_F","O_soldier_exp_F","O_helipilot_F","O_Soldier_A_F","O_Soldier_AT_F","O_Soldier_AA_F","O_engineer_F","O_soldier_PG_F","O_spotter_F","O_sniper_F","O_recon_F","O_recon_M_F","O_recon_LAT_F","O_recon_medic_F","O_recon_exp_F","O_recon_JTAC_F","O_recon_TL_F","O_Soldier_AAR_F","O_Soldier_AAT_F","O_Soldier_AAA_F","O_support_GMG_F","O_support_Mort_F","O_support_AMG_F","O_Soldier_AAA_F","O_Soldier_AAT_F","O_soldierU_F"};
	
	light_vehicles[] = {"I_Truck_02_transport_F","O_LSV_02_unarmed_F","I_Truck_02_covered_F","O_Truck_03_covered_F","I_G_Offroad_01_F","B_Truck_01_Transport_F"};
	medium_vehicles[] = {"I_MRAP_03_hmg_F","I_MRAP_03_F","O_LSV_02_armed_F","O_MRAP_02_hmg_F","O_MRAP_02_gmg_F","O_MRAP_02_F","I_G_Offroad_01_armed_F"};
	heavy_vehicles[] = {"I_MRAP_03_gmg_F","I_MBT_03_cannon_F","B_APC_Tracked_01_rcws_F","I_APC_Wheeled_03_cannon_F","I_APC_tracked_03_cannon_F","B_APC_Tracked_01_CRV_F","O_APC_Tracked_02_AA_F","B_APC_Wheeled_01_cannon_F","O_MBT_02_cannon_F","O_APC_Tracked_02_cannon_F","O_APC_Wheeled_02_rcws_F","B_APC_Tracked_01_AA_F","B_MBT_01_TUSK_F","B_MBT_01_cannon_F"};
	
	air_vehicles[] = {"I_Heli_light_03_F","I_Plane_Fighter_03_AA_F","O_Plane_CAS_02_F","O_Heli_Attack_02_F","B_Heli_Attack_01_F","B_Heli_Light_01_armed_F","B_Plane_CAS_01_F"};
	water_vehicles[] = {""};
};

class VehicleScrapper {
	lVehicles = 25;
	mVehicles = 45;
	hVehicles = 60;
	
	aVehicles = 50;
	bVehicles = 25;
};

class Support {
	dialog = "Support_Terminal";

	class UAV {
		title = "STR_UpgradeTitles_UAV";
		description = "STR_up_UAV";
		_cost = 20;
		varname = "";
		function = "fn_uav";
		condition = "true";
		onServer = false;
	};
	
	class UAV_Strike {
		title = "STR_UpgradeTitles_Falcon";
		description = "STR_up_UAVStrike";
		_cost = 800;
		varname = "";
		function = "fn_air";
		condition = "defense_uav == objNull || !alive defense_uav";
		onServer = false;
	};
	
	class Mortar {
		title = "STR_UpgradeTitles_MS";
		description = "STR_up_Mortar";
		_cost = 120;
		varname = "";
		function = "fn_air";
		condition = "true";
		onServer = false;
	};
	
	class Artillery {
		title = "STR_UpgradeTitles_AS";
		description = "STR_up_Artillery";
		_cost = 50;
		varname = "";
		function = "fn_air";
		condition = "true";
		onServer = false;
	};
	
	class CAS {
		title = "STR_UpgradeTitles_CAS";
		description = "STR_up_CAS";
		_cost = 30;
		varname = "";
		function = "fn_air";
		condition = "true";
		onServer = false;
	};
};

class Difficulty {

	class Man {
		chance = 10000;
	};
	
	class LightVeh {
		chance = 100;
	};
	
	class MedVeh {
		chance = 50;
	};
	
	class HeavyVeh {
		chance = 35;
	};
	
	class Boat {
		chance = 100;
	};
	
	class Air {
		chance = 30;
	};
};
