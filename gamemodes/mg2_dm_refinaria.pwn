
#include <a_samp>
#include <a_actor>
#include <a_http>
//#include <a_npc>
#include <a_objects>
#include <a_players>
#include <a_sampdb>
#include <a_vehicles>
#include <core>
#include <datagram>
#include <file>
#include <float>
#include <string>
#include <time>
#include <sscanf2>
#include <fixes2>
#include <clear_death_messages>
#include <YSI\y_hooks>
#include <speccamfix>

new bugfixobj;

new Pickup0;
new Pickup1;
new Pickup2;
new Pickup3;
new Pickup4;
new Pickup5;
new Pickup6;
new Pickup7;
new Pickup8;
new Pickup9;
new Pickup10;

new APickup0;
new APickup1;

new HPickup0;
new HPickup1;
new HPickup2;
new HPickup3;
new HPickup4;
new HPickup5;
new HPickup6;
new HPickup7;

#if defined FILTERSCRIPT

public OnFilterScriptInit()
{
	print("\n--------------------------------------");
	print(" Blank Filterscript by your name here");
	print("--------------------------------------\n");
	return 1;
}

public OnFilterScriptExit()
{
	return 1;
}

#else

main()
{
	print("\n----------------------------------");
	print(" mg2_dm_refinaria by Letruta");
	print("----------------------------------\n");
}

#endif

public OnGameModeInit()
{
	SetGameModeText("mg2_dm_refinaria");
	
	UsePlayerPedAnims();
	ShowPlayerMarkers(0);
	
	AddPlayerClass(3, -2145.815429 ,-241.956970 ,36.515625, 229.458694, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(19, -2145.815429 ,-241.956970 ,36.515625, 229.458694, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(21, -2145.815429 ,-241.956970 ,36.515625, 229.458694, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(28, -2145.815429 ,-241.956970 ,36.515625, 229.458694, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(30, -2145.815429 ,-241.956970 ,36.515625, 229.458694, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(100, -2145.815429 ,-241.956970 ,36.515625, 229.458694, 0, 0, 0, 0, 0, 0);
    AddPlayerClass(113, -2145.815429 ,-241.956970 ,36.515625, 229.458694, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(125, -2145.815429 ,-241.956970 ,36.515625, 229.458694, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(147, -2145.815429 ,-241.956970 ,36.515625, 229.458694, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(223, -2145.815429 ,-241.956970 ,36.515625, 229.458694, 0, 0, 0, 0, 0, 0);
	
	bugfixobj = CreateObject(5153, -2171.37817, -255.39067, 35.51560,   0.00000, -120.00000, 0.00000);
	SetObjectMaterial(bugfixobj, 0, 0, "none", "none", 0x00000000);

    CreateObject(19913, -2138.06689, -229.23010, 35.69176,   0.00000, 0.00000, 88.85027);
	CreateObject(3576, -2144.18530, -251.20488, 37.02536,   0.00000, 0.00000, 0.00000);
	CreateObject(3577, -2144.55786, -262.65961, 40.50560,   0.00000, 0.00000, 0.00000);
	CreateObject(19913, -2162.52515, -204.45840, 35.71590,   0.00000, 0.00000, 0.44280);
	CreateObject(3568, -2168.26855, -209.46698, 36.63387,   0.00000, 0.00000, 269.99420);
	CreateObject(3568, -2148.86182, -214.54010, 36.63390,   0.00000, 0.00000, 310.95950);
	CreateObject(936, -2147.36450, -243.95370, 35.99130,   0.00000, 0.00000, 84.37700);
	CreateObject(1510, -2146.78955, -242.44341, 36.47910,   0.00000, 0.00000, 0.00000);
	CreateObject(1485, -2146.84741, -242.40401, 36.42700,   0.00000, -33.00000, -35.00000);
	CreateObject(19820, -2146.98975, -243.27991, 36.45300,   0.00000, 0.00000, 0.00000);
	CreateObject(19819, -2146.72217, -242.15331, 36.55000,   0.00000, 0.00000, 359.79901);
	CreateObject(2197, -2146.60376, -246.09990, 35.51770,   0.00000, 0.00000, 85.21950);
	CreateObject(2197, -2146.55347, -245.38651, 35.51770,   0.00000, 0.00000, 85.21950);
	CreateObject(1714, -2145.95142, -243.47116, 35.51426,   0.00000, 0.00000, 238.88043);
	CreateObject(3577, -2144.47266, -219.44119, 35.06420,   0.00000, 0.00000, 0.00000);
	CreateObject(3798, -2161.32910, -221.95367, 34.30812,   0.00000, 0.00000, 0.00000);
	CreateObject(931, -2153.85571, -256.58319, 36.57430,   0.00000, 0.00000, 0.00000);
	CreateObject(937, -2158.33838, -248.12781, 35.98890,   0.00000, 0.00000, -90.00000);
	CreateObject(937, -2167.96069, -248.24290, 35.98890,   0.00000, 0.00000, -90.00000);
	CreateObject(937, -2162.46240, -248.17149, 35.98890,   0.00000, 0.00000, -90.00000);
	CreateObject(1279, -2146.97656, -242.17712, 35.72430,   0.00000, 0.00000, -96.00000);
	CreateObject(1279, -2158.31177, -248.00729, 36.46020,   0.00000, 0.00000, 0.00000);
	CreateObject(1279, -2158.28784, -248.70233, 36.46202,   0.00000, 0.00000, 0.00000);
	CreateObject(1279, -2162.22095, -248.16789, 36.46040,   0.00000, 0.00000, -75.00000);
	CreateObject(1279, -2162.70581, -248.51010, 36.46240,   0.00000, 0.00000, 101.00000);
	CreateObject(1279, -2167.94067, -248.09860, 36.46080,   0.00000, 0.00000, 0.00000);
	CreateObject(19913, -2138.06689, -229.23010, 46.63180,   0.00000, 0.00000, 88.85030);
	CreateObject(19913, -2212.47241, -204.84711, 46.63590,   0.00000, 0.00000, 0.44280);
	CreateObject(19913, -2190.60840, -229.64529, 46.63180,   0.00000, 0.00000, 90.00000);
	CreateObject(19913, -2165.65234, -225.76556, 46.63590,   0.00000, 0.00000, 0.44280);
	CreateObject(19913, -2162.52515, -204.45840, 46.63590,   0.00000, 0.00000, 0.44280);
	CreateObject(3576, -2158.34351, -209.53590, 35.80610,   0.00000, 0.00000, 0.00000);
	CreateObject(3576, -2141.17944, -208.02119, 35.81440,   0.00000, 0.00000, 42.00000);
	CreateObject(944, -2142.20337, -212.07420, 35.20370,   0.00000, 0.00000, 40.55390);
	CreateObject(944, -2145.47070, -208.30881, 35.18990,   0.00000, 0.00000, 41.55480);
	CreateObject(3798, -2143.27490, -209.08450, 34.31720,   0.00000, 0.00000, 41.00000);
	CreateObject(944, -2161.34448, -207.08000, 35.23594,   0.00000, 0.00000, 0.00000);
	CreateObject(944, -2161.40234, -211.98579, 35.20270,   0.00000, 0.00000, 0.00000);
	CreateObject(3798, -2160.46924, -208.99631, 34.31590,   0.00000, 0.00000, 0.00000);
	CreateObject(1752, -2147.39478, -241.33870, 36.46620,   0.00000, 0.00000, 55.13100);
	CreateObject(1752, -2147.75708, -242.39281, 36.46610,   0.00000, 0.00000, 86.56710);
	CreateObject(931, -2181.99609, -213.80840, 36.57440,   0.00000, 0.00000, 270.59839);
	CreateObject(3577, -2176.34180, -231.28842, 36.27300,   0.00000, 0.00000, 0.00000);
	CreateObject(931, -2181.63501, -227.03690, 36.57380,   0.00000, 0.00000, 0.00000);
	CreateObject(3576, -2151.57422, -265.86179, 37.01240,   0.00000, 0.00000, 0.00000);
	CreateObject(3576, -2172.96582, -221.24100, 35.80480,   0.00000, 0.00000, 0.00000);
	CreateObject(3630, -2163.19678, -232.89880, 36.97620,   0.00000, 0.00000, 0.00000);
	CreateObject(944, -2183.42773, -250.21591, 40.55510,   0.00000, 0.00000, 89.93230);
	CreateObject(944, -2183.36011, -244.92012, 40.57270,   0.00000, 0.00000, 0.00000);
	
	Pickup0 = CreatePickup(342, 1, -2179.208496 ,-216.270904 ,42.046478, -1);
    Pickup1 = CreatePickup(349, 1, -2144.203369 ,-219.548919 ,36.849582, -1);
    Pickup2 = CreatePickup(353, 1, -2183.703125 ,-213.863220 ,36.515625, -1);
    Pickup3 = CreatePickup(349, 1, -2181.651123 ,-228.884704 ,36.515625, -1);
    Pickup4 = CreatePickup(356, 1, -2160.189208 ,-232.905181 ,39.476329, -1);
    Pickup5 = CreatePickup(359, 1, -2162.397705 ,-268.719696 ,40.719501, -1);
    Pickup6 = CreatePickup(353, 1, -2183.649414 ,-263.067108 ,36.515625, -1);
    Pickup7 = CreatePickup(349, 1, -2153.797851 ,-258.257751 ,36.515625, -1);
    Pickup8 = CreatePickup(358, 1, -2183.368408 ,-247.095336 ,40.719501, -1);
    Pickup9 = CreatePickup(349, 1, -2142.567626 ,-243.596557 ,36.515625, -1);
    Pickup10 = CreatePickup(353, 1, -2165.224609 ,-248.300338 ,36.515625, -1);
    
	APickup0 = CreatePickup(1242, 1, -2154.622558 ,-219.495010 ,40.120769, -1);
 	APickup1 = CreatePickup(1242, 1, -2185.071777 ,-262.692932 ,40.719497, -1);

	HPickup0 = CreatePickup(1240, 1, -2138.712890 ,-205.596420 ,35.320312, -1);
	HPickup1 = CreatePickup(1240, 1, -2179.120361 ,-223.966430 ,36.515625, -1);
	HPickup2 = CreatePickup(1240, 1, -2170.398437 ,-239.464004 ,36.515625, -1);
	HPickup3 = CreatePickup(1240, 1, -2139.875488 ,-233.997177 ,36.515625, -1);
	HPickup4 = CreatePickup(1240, 1, -2162.370117 ,-256.677276 ,36.515625, -1);
	HPickup5 = CreatePickup(1240, 1, -2142.242431 ,-262.826171 ,40.719505, -1);
	HPickup6 = CreatePickup(1240, 1, -2165.731933 ,-242.004074 ,40.719501, -1);
    HPickup7 = CreatePickup(1240, 1, -2139.728515 ,-247.906814 ,36.515625, -1);
	return 1;
}

public OnGameModeExit()
{
	return 1;
}

public OnPlayerRequestClass(playerid, classid)
{
	SetPlayerVirtualWorld(playerid, 420);
	SetPlayerPos(playerid, -2145.815429 ,-241.956970 ,36.515625);
	SetPlayerFacingAngle(playerid, 229.458694);
	SetPlayerSpecialAction(playerid,SPECIAL_ACTION_SMOKE_CIGGY);
	ApplyAnimation(playerid, "GANGS", "smkcig_prtl", 4.1, 1, 1, 1, 1, 1, 1);
	SetPlayerCameraPos(playerid,-2142.532,-244.289,38.257);
	SetPlayerCameraLookAt(playerid,-2145.815,-241.956,36.515);
	return 1;
}

public OnPlayerConnect(playerid)
{
    RemoveBuildingForPlayer(playerid, 11088, -2166.8750, -236.5156, 40.8594, 0.25);
	RemoveBuildingForPlayer(playerid, 11271, -2127.5469, -269.9609, 41.0000, 0.25);
	RemoveBuildingForPlayer(playerid, 11282, -2166.8750, -236.5156, 40.8594, 0.25);
	RemoveBuildingForPlayer(playerid, 669, -2223.9766, -204.4297, 34.1328, 0.25);
	RemoveBuildingForPlayer(playerid, 11081, -2127.5469, -269.9609, 41.0000, 0.25);
	RemoveBuildingForPlayer(playerid, 11009, -2128.5391, -142.8438, 39.1406, 0.25);
	RemoveBuildingForPlayer(playerid, 11086, -2164.4531, -237.3906, 43.4219, 0.25);
	RemoveBuildingForPlayer(playerid, 1432, -2144.8281, -244.7656, 35.6250, 0.25);
	RemoveBuildingForPlayer(playerid, 1438, -2188.6953, -218.3828, 35.5078, 0.25);
	RemoveBuildingForPlayer(playerid, 1441, -2184.6484, -226.8750, 36.1641, 0.25);
	RemoveBuildingForPlayer(playerid, 1449, -2160.6406, -226.3516, 36.0234, 0.25);
	RemoveBuildingForPlayer(playerid, 1450, -2189.4375, -220.4922, 36.0859, 0.25);
	RemoveBuildingForPlayer(playerid, 1518, -2147.1797, -241.8750, 36.7422, 0.25);
	RemoveBuildingForPlayer(playerid, 918, -2182.4453, -237.6953, 35.8750, 0.25);
	RemoveBuildingForPlayer(playerid, 939, -2179.3359, -239.0859, 37.9609, 0.25);
	RemoveBuildingForPlayer(playerid, 941, -2175.0547, -248.0469, 35.9922, 0.25);
	RemoveBuildingForPlayer(playerid, 942, -2159.0625, -239.0625, 37.9609, 0.25);
	RemoveBuildingForPlayer(playerid, 941, -2171.5000, -248.0469, 35.9922, 0.25);
	RemoveBuildingForPlayer(playerid, 941, -2167.9688, -248.0469, 35.9922, 0.25);
	RemoveBuildingForPlayer(playerid, 941, -2164.3281, -248.0469, 35.9922, 0.25);
	RemoveBuildingForPlayer(playerid, 941, -2161.0156, -248.0469, 35.9922, 0.25);
	RemoveBuildingForPlayer(playerid, 941, -2157.4453, -248.0469, 35.9922, 0.25);
	RemoveBuildingForPlayer(playerid, 920, -2139.6172, -252.0859, 35.9922, 0.25);
	RemoveBuildingForPlayer(playerid, 943, -2156.0703, -227.7500, 36.2813, 0.25);
	RemoveBuildingForPlayer(playerid, 942, -2174.8281, -235.5625, 37.9609, 0.25);
	RemoveBuildingForPlayer(playerid, 944, -2153.7969, -229.0391, 36.3984, 0.25);
	RemoveBuildingForPlayer(playerid, 942, -2140.3359, -229.1484, 37.9609, 0.25);
	RemoveBuildingForPlayer(playerid, 939, -2140.2266, -237.5078, 37.9609, 0.25);
	RemoveBuildingForPlayer(playerid, 942, -2164.2031, -236.0234, 37.9609, 0.25);
	RemoveBuildingForPlayer(playerid, 918, -2153.0859, -256.2734, 35.8750, 0.25);
	RemoveBuildingForPlayer(playerid, 943, -2150.5078, -266.3594, 36.2813, 0.25);
	RemoveBuildingForPlayer(playerid, 945, -2157.1563, -248.0078, 45.1328, 0.25);
	RemoveBuildingForPlayer(playerid, 945, -2164.1016, -248.0078, 45.1328, 0.25);
	RemoveBuildingForPlayer(playerid, 945, -2167.7813, -248.0078, 45.1328, 0.25);
	RemoveBuildingForPlayer(playerid, 945, -2171.2266, -248.0078, 45.1328, 0.25);
	RemoveBuildingForPlayer(playerid, 945, -2174.7969, -248.0078, 45.1328, 0.25);
	RemoveBuildingForPlayer(playerid, 945, -2160.7031, -248.0078, 45.1328, 0.25);
	RemoveBuildingForPlayer(playerid, 1438, -2164.2188, -231.1563, 35.5078, 0.25);
	RemoveBuildingForPlayer(playerid, 918, -2173.5938, -268.0781, 40.0781, 0.25);
	RemoveBuildingForPlayer(playerid, 918, -2148.4922, -230.8047, 35.8750, 0.25);
	RemoveBuildingForPlayer(playerid, 918, -2143.4688, -230.3438, 35.8750, 0.25);
	RemoveBuildingForPlayer(playerid, 918, -2167.8281, -246.0859, 35.8750, 0.25);
	RemoveBuildingForPlayer(playerid, 11103, -2180.7031, -218.0391, 37.9766, 0.25);
	
	SetPlayerSkillLevel(playerid, 1, 999);
	SetPlayerSkillLevel(playerid, 3, 999);
	SetPlayerSkillLevel(playerid, 7, 999);
	SetPlayerSkillLevel(playerid, 9, 999);
	SetPlayerSkillLevel(playerid, 10, 999);
	
	return 1;
}

public OnPlayerDisconnect(playerid, reason)
{
	return 1;
}

public OnPlayerSpawn(playerid)
{

	SetPlayerVirtualWorld(playerid, 0);
	GivePlayerWeapon(playerid, 23, 99999); //SD Pistol
	
	return 1;
}

public OnPlayerDeath(playerid, killerid, reason)
{
	return 1;
}

public OnVehicleSpawn(vehicleid)
{
	return 1;
}

public OnVehicleDeath(vehicleid, killerid)
{
	return 1;
}

public OnPlayerText(playerid, text[])
{
	return 1;
}

public OnPlayerCommandText(playerid, cmdtext[])
{
	if (strcmp("/start", cmdtext, true, 10) == 0)
	{
		// Do something here
		return 1;
	}
	return 0;
}

public OnPlayerEnterVehicle(playerid, vehicleid, ispassenger)
{
	return 1;
}

public OnPlayerExitVehicle(playerid, vehicleid)
{
	return 1;
}

public OnPlayerStateChange(playerid, newstate, oldstate)
{
	return 1;
}

public OnPlayerEnterCheckpoint(playerid)
{
	return 1;
}

public OnPlayerLeaveCheckpoint(playerid)
{
	return 1;
}

public OnPlayerEnterRaceCheckpoint(playerid)
{
	return 1;
}

public OnPlayerLeaveRaceCheckpoint(playerid)
{
	return 1;
}

public OnRconCommand(cmd[])
{
	return 1;
}

public OnPlayerRequestSpawn(playerid)
{
	return 1;
}

public OnObjectMoved(objectid)
{
	return 1;
}

public OnPlayerObjectMoved(playerid, objectid)
{
	return 1;
}

public OnPlayerPickUpPickup(playerid, pickupid)
{
	new Float:phealth;
	GetPlayerHealth(playerid, phealth);
	if(pickupid == Pickup0)
	{
	    GivePlayerWeapon(playerid, 16, 2);
	    PlayerPlaySound(playerid, 1052, 0.0, 0.0, 25);
     	SetTimer("TimerPickup0", 25000, false);
	    DestroyPickup(Pickup0);
	    Pickup0 = 0;
	}
	if(pickupid == Pickup1)
	{
	    GivePlayerWeapon(playerid, 25, 14);
	    PlayerPlaySound(playerid, 1052, 0.0, 0.0, 25);
     	SetTimer("TimerPickup1", 15000, false);
	    DestroyPickup(Pickup1);
	    Pickup1 = 1;
	}
	if(pickupid == Pickup2)
	{
	    GivePlayerWeapon(playerid, 29, 60);
	    PlayerPlaySound(playerid, 1052, 0.0, 0.0, 25);
     	SetTimer("TimerPickup2", 15000, false);
	    DestroyPickup(Pickup2);
	    Pickup2 = 2;
	}
	if(pickupid == Pickup3)
	{
	    GivePlayerWeapon(playerid, 25, 14);
	    PlayerPlaySound(playerid, 1052, 0.0, 0.0, 25);
     	SetTimer("TimerPickup3", 15000, false);
	    DestroyPickup(Pickup3);
	    Pickup3 = 3;
	}
	if(pickupid == Pickup4)
	{
	    GivePlayerWeapon(playerid, 31, 60);
	    PlayerPlaySound(playerid, 1052, 0.0, 0.0, 25);
     	SetTimer("TimerPickup4", 15000, false);
	    DestroyPickup(Pickup4);
	    Pickup4 = 4;
	}
	if(pickupid == Pickup5)
	{
	    GivePlayerWeapon(playerid, 35, 2);
	    PlayerPlaySound(playerid, 1052, 0.0, 0.0, 25);
     	SetTimer("TimerPickup5", 25000, false);
	    DestroyPickup(Pickup5);
	    Pickup5 = 5;
	}
	if(pickupid == Pickup6)
	{
	    GivePlayerWeapon(playerid, 29, 60);
	    PlayerPlaySound(playerid, 1052, 0.0, 0.0, 25);
     	SetTimer("TimerPickup6", 15000, false);
	    DestroyPickup(Pickup6);
	    Pickup6 = 6;
	}
	if(pickupid == Pickup7)
	{
	    GivePlayerWeapon(playerid, 25, 14);
	    PlayerPlaySound(playerid, 1052, 0.0, 0.0, 25);
     	SetTimer("TimerPickup0", 15000, false);
	    DestroyPickup(Pickup7);
	    Pickup7 = 7;
	}
	if(pickupid == Pickup8)
	{
	    GivePlayerWeapon(playerid, 34, 10);
	    PlayerPlaySound(playerid, 1052, 0.0, 0.0, 25);
     	SetTimer("TimerPickup0", 15000, false);
	    DestroyPickup(Pickup8);
	    Pickup8 = 8;
	}
	if(pickupid == Pickup9)
	{
	    GivePlayerWeapon(playerid, 25, 14);
	    PlayerPlaySound(playerid, 1052, 0.0, 0.0, 25);
     	SetTimer("TimerPickup9", 15000, false);
	    DestroyPickup(Pickup9);
	    Pickup9 = 9;
	}
	if(pickupid == Pickup10)
	{
	    GivePlayerWeapon(playerid, 29, 60);
	    PlayerPlaySound(playerid, 1052, 0.0, 0.0, 25);
     	SetTimer("TimerPickup0", 15000, false);
	    DestroyPickup(Pickup10);
	    Pickup10 = 10;
	}
	if(pickupid == APickup0)
	{
		SetPlayerArmour(playerid, 100.00);
		PlayerPlaySound(playerid, 1150, 0.0, 0.0, 25);
		SetTimer("TimerAPickup0", 30000, false);
		DestroyPickup(APickup0);
		APickup0 = 11;
	}
	if(pickupid == APickup1)
	{
		SetPlayerArmour(playerid, 100.00);
		PlayerPlaySound(playerid, 1150, 0.0, 0.0, 25);
		SetTimer("TimerAPickup1", 30000, false);
		DestroyPickup(APickup1);
		APickup1 = 12;
	}
	if(pickupid == HPickup0 && phealth < 100)
	{
	    SetTimer("TimerHPickup0", 15000, false);
	    DestroyPickup(HPickup0);
	    HPickup0 = 13;
	}
	if(pickupid == HPickup1 && phealth < 100)
	{
	    SetTimer("TimerHPickup1", 15000, false);
	    DestroyPickup(HPickup1);
	    HPickup1 = 14;
	}
	if(pickupid == HPickup2 && phealth < 100)
	{
	    SetTimer("TimerHPickup2", 15000, false);
	    DestroyPickup(HPickup2);
	    HPickup2 = 15;
	}
	if(pickupid == HPickup3 && phealth < 100)
	{
	    SetTimer("TimerHPickup3", 15000, false);
	    DestroyPickup(HPickup3);
	    HPickup3 = 16;
	}
	if(pickupid == HPickup4 && phealth < 100)
	{
	    SetTimer("TimerHPickup4", 15000, false);
	    DestroyPickup(HPickup4);
	    HPickup4 = 17;
	}
	if(pickupid == HPickup5 && phealth < 100)
	{
	    SetTimer("TimerHPickup5", 15000, false);
	    DestroyPickup(HPickup5);
	    HPickup5 = 18;
	}
	if(pickupid == HPickup6 && phealth < 100)
	{
	    SetTimer("TimerHPickup6", 15000, false);
	    DestroyPickup(HPickup6);
	    HPickup6 = 19;
	}
	if(pickupid == HPickup7 && phealth < 100)
	{
	    SetTimer("TimerHPickup7", 15000, false);
	    DestroyPickup(HPickup7);
	    HPickup7 = 20;
	}
	if(pickupid >= 13)
	{
	    if(phealth <= 80)
	    {
			SetPlayerHealth(playerid, phealth+20);
            PlayerPlaySound(playerid, 1139, 0.0, 0.0, 25);
		}
		if(phealth > 80 && phealth < 100)
		{
		    SetPlayerHealth(playerid, 100.00);
		    PlayerPlaySound(playerid, 1139, 0.0, 0.0, 25);
		}
	}
	return 1;
}
forward TimerPickup0();
public TimerPickup0()
{
	Pickup0 = CreatePickup(342, 1, -2179.208496 ,-216.270904 ,42.046478, -1);
}
forward TimerPickup1();
public TimerPickup1()
{
    Pickup1 = CreatePickup(349, 1, -2144.203369 ,-219.548919 ,36.849582, -1);
}
forward TimerPickup2();
public TimerPickup2()
{
    Pickup2 = CreatePickup(353, 1, -2183.703125 ,-213.863220 ,36.515625, -1);
}
forward TimerPickup3();
public TimerPickup3()
{
   Pickup3 = CreatePickup(349, 1, -2181.651123 ,-228.884704 ,36.515625, -1);
}
forward TimerPickup4();
public TimerPickup4()
{
    Pickup4 = CreatePickup(356, 1, -2160.189208 ,-232.905181 ,39.476329, -1);
}
forward TimerPickup5();
public TimerPickup5()
{
   Pickup5 = CreatePickup(359, 1, -2162.397705 ,-268.719696 ,40.719501, -1);
}
forward TimerPickup6();
public TimerPickup6()
{
    Pickup6 = CreatePickup(353, 1, -2183.649414 ,-263.067108 ,36.515625, -1);
}
forward TimerPickup7();
public TimerPickup7()
{
    Pickup7 = CreatePickup(349, 1, -2153.797851 ,-258.257751 ,36.515625, -1);
}
forward TimerPickup8();
public TimerPickup8()
{
   Pickup8 = CreatePickup(358, 1, -2183.368408 ,-247.095336 ,40.719501, -1);
}
forward TimerPickup9();
public TimerPickup9()
{
    Pickup9 = CreatePickup(349, 1, -2142.567626 ,-243.596557 ,36.515625, -1);
}
forward TimerPickup10();
public TimerPickup10()
{
   Pickup10 = CreatePickup(353, 1, -2165.224609 ,-248.300338 ,36.515625, -1);
}
forward TimerAPickup0();
public TimerAPickup0()
{
 	APickup0 = CreatePickup(1242, 1, -2154.622558 ,-219.495010 ,40.120769, -1);
}
forward TimerAPickup1();
public TimerAPickup1()
{
	APickup1 = CreatePickup(1242, 1, -2185.071777 ,-262.692932 ,40.719497, -1);
}
forward TimerHPickup0();
public TimerHPickup0()
{
	HPickup0 = CreatePickup(1240, 1, -2138.712890 ,-205.596420 ,35.320312, -1);
}
forward TimerHPickup1();
public TimerHPickup1()
{
	HPickup1 = CreatePickup(1240, 1, -2179.120361 ,-223.966430 ,36.515625, -1);
}
forward TimerHPickup2();
public TimerHPickup2()
{
	HPickup2 = CreatePickup(1240, 1, -2170.398437 ,-239.464004 ,36.515625, -1);
}
forward TimerHPickup3();
public TimerHPickup3()
{
	HPickup3 = CreatePickup(1240, 1, -2139.875488 ,-233.997177 ,36.515625, -1);
}
forward TimerHPickup4();
public TimerHPickup4()
{
	HPickup4 = CreatePickup(1240, 1, -2162.370117 ,-256.677276 ,36.515625, -1);
}
forward TimerHPickup5();
public TimerHPickup5()
{
	HPickup5 = CreatePickup(1240, 1, -2142.242431 ,-262.826171 ,40.719505, -1);
}
forward TimerHPickup6();
public TimerHPickup6()
{
	HPickup6 = CreatePickup(1240, 1, -2165.731933 ,-242.004074 ,40.719501, -1);
}
forward TimerHPickup7();
public TimerHPickup7()
{
   HPickup7 = CreatePickup(1240, 1, -2139.728515 ,-247.906814 ,36.515625, -1);
}
public OnVehicleMod(playerid, vehicleid, componentid)
{
	return 1;
}

public OnVehiclePaintjob(playerid, vehicleid, paintjobid)
{
	return 1;
}

public OnVehicleRespray(playerid, vehicleid, color1, color2)
{
	return 1;
}

public OnPlayerSelectedMenuRow(playerid, row)
{
	return 1;
}

public OnPlayerExitedMenu(playerid)
{
	return 1;
}

public OnPlayerInteriorChange(playerid, newinteriorid, oldinteriorid)
{
	return 1;
}

public OnPlayerKeyStateChange(playerid, newkeys, oldkeys)
{
	return 1;
}

public OnRconLoginAttempt(ip[], password[], success)
{
	return 1;
}

public OnPlayerUpdate(playerid)
{
	return 1;
}

public OnPlayerStreamIn(playerid, forplayerid)
{
	return 1;
}

public OnPlayerStreamOut(playerid, forplayerid)
{
	return 1;
}

public OnVehicleStreamIn(vehicleid, forplayerid)
{
	return 1;
}

public OnVehicleStreamOut(vehicleid, forplayerid)
{
	return 1;
}

public OnDialogResponse(playerid, dialogid, response, listitem, inputtext[])
{
	return 1;
}

public OnPlayerClickPlayer(playerid, clickedplayerid, source)
{
	return 1;
}
