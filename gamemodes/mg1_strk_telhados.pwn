// This is a comment
// uncomment the line below if you want to write a filterscript
//#define FILTERSCRIPT

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

#include <YSI\y_timers> // 2022: Possivel fix pros respawns de pickup bugados - OFFSETA TIMERS EXECUTANDO AO MESMO TEMPO 

new streak[MAX_PLAYERS];
new kills[MAX_PLAYERS];
new deaths[MAX_PLAYERS];

enum rankingEnum
{
	player_Score,
	player_ID
}

new	Pickup0;
new	Pickup1;
new	Pickup2;
new	Pickup3;
new	Pickup4;
new	Pickup5;
new	Pickup6;
new	Pickup7;
new	Pickup8;
new	Pickup9;
new	Pickup10;
new	Pickup11;
new	Pickup12;

new PlayerText:TDEditor_PTD[MAX_PLAYERS][3];
new Text:TDEditor_TD[MAX_PLAYERS];

new Float:RandomSpawns[][] =
{
	{1237.872802,  373.895538,  19.554687},
 	{1256.126953,  371.913421,  19.561403},
 	{1248.459960,  365.728302,  19.554687},
 	{1311.644897,  396.380615,  19.554687},
 	{1323.912475,  393.702545,  19.554687},
 	{1305.161254,  415.285034,  19.561342},
 	{1302.290405,  353.669097,  19.561704},
	{1292.847656,  351.497772,  19.554687},
 	{1308.728149,  356.190093,  19.554687},
 	{1302.841308,  362.419311,  19.688161}
};

#if defined FILTERSCRIPT

public OnFilterScriptInit()
{
	print("\n--------------------------------------");
	print(" mg1_strk_telhados by Letruta");
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
	print(" mg1_strk_telhados by Letruta");
	print("----------------------------------\n");
}

#endif

public OnGameModeInit()
{
	SetGameModeText("mg1_strk_telhados");
	AddPlayerClass(33, 1275.224975 ,365.154602 ,23.002370, 0, 0, 0, 0, 0,0, 0);
	AddPlayerClass(34, 1275.224975 ,365.154602 ,23.002370, 0, 0, 0, 0, 0,0, 0);
	AddPlayerClass(158, 1275.224975 ,365.154602 ,23.002370, 0, 0, 0, 0, 0,0, 0);
	AddPlayerClass(161, 1275.224975 ,365.154602 ,23.002370, 0, 0, 0, 0, 0,0, 0);
	UsePlayerPedAnims();
	ShowPlayerMarkers(0);
	SetWorldTime(2);

	Pickup0 = CreatePickup(1240, 1, 1235.864990, 372.699951, 27.555509, -1);
	Pickup1 = CreatePickup(1240, 1, 1252.302001, 353.785614, 24.839622, -1);
	Pickup2 = CreatePickup(1240, 1, 1272.098144, 363.819915, 23.879259, -1);
	Pickup3 = CreatePickup(1240, 1, 1272.489990, 380.333618, 22.555513, -1);
	Pickup4 = CreatePickup(1240, 1, 1284.967895, 415.777221, 24.282896, -1);
	Pickup5 = CreatePickup(1240, 1, 1310.936889, 392.920654, 25.055511, -1);
	Pickup6 = CreatePickup(1240, 1, 1332.123535, 391.295715, 25.055511, -1);
	Pickup7 = CreatePickup(1240, 1, 1319.900756, 384.170410, 28.055511, -1);
	Pickup8 = CreatePickup(1240, 1, 1313.467285, 403.924835, 29.475900, -1);
	Pickup9 = CreatePickup(1240, 1, 1320.010986, 351.693725, 23.555511, -1);
	Pickup10 = CreatePickup(1240, 1, 1298.544677, 358.254821, 23.708992, -1);
	Pickup11 = CreatePickup(1240, 1, 1312.078857, 333.980499, 25.694610, -1);
	Pickup12 = CreatePickup(1240, 1, 1292.368652, 336.282440, 25.694610, -1);
	

	CreateObject(19913, 1232.60486, 368.32108, 34.53522,   0.00000, 0.00000, 65.70014);
	CreateObject(19913, 1250.15063, 348.67249, 34.64564,   0.00000, 0.00000, -23.88000);
	CreateObject(19913, 1295.91479, 328.41772, 34.75712,   0.00000, 0.00000, -23.88000);
	CreateObject(19913, 1325.29590, 342.30411, 34.21054,   0.00000, 0.00000, -113.93996);
	CreateObject(19913, 1345.66077, 388.08755, 33.99942,   0.00000, 0.00000, -113.93996);
	CreateObject(19913, 1330.61560, 406.08267, 34.10447,   0.00000, 0.00000, -23.87997);
	CreateObject(19913, 1285.02502, 426.30984, 34.31771,   0.00000, 0.00000, -23.87997);
	CreateObject(19913, 1253.17944, 413.73264, 34.42594,   0.00000, 0.00000, 65.34004);
	CreateObject(19913, 1345.62354, 388.09872, 23.49557,   0.00000, 0.00000, -113.93996);
	CreateObject(19913, 1330.61560, 406.08267, 23.49557,   0.00000, 0.00000, -23.87997);
	CreateObject(19913, 1325.18567, 342.33783, 23.49557,   0.00000, 0.00000, -113.93996);
	CreateObject(19913, 1285.02502, 426.30984, 23.49557,   0.00000, 0.00000, -23.87997);
	CreateObject(19913, 1253.17944, 413.73264, 23.49557,   0.00000, 0.00000, 65.34004);
	CreateObject(19913, 1232.60486, 368.32108, 23.49557,   0.00000, 0.00000, 65.70014);
	CreateObject(19913, 1250.15063, 348.67249, 23.49557,   0.00000, 0.00000, -23.88000);
	CreateObject(19913, 1295.91479, 328.41772, 23.49557,   0.00000, 0.00000, -23.88000);
	CreateObject(17011, 1256.90588, 398.30875, 18.11175,   0.00000, 0.00000, 245.09927);
	CreateObject(1454, 1262.11743, 413.10464, 18.95009,   0.00000, 0.00000, -87.06003);
	CreateObject(1453, 1265.91870, 414.16840, 18.92275,   0.00000, 0.00000, 0.00000);
	CreateObject(1453, 1264.46924, 413.37369, 18.92275,   0.00000, 0.00000, 0.00000);
	CreateObject(1453, 1265.18872, 413.27203, 18.92275,   0.00000, 0.00000, 0.00000);
	CreateObject(3286, 1313.43518, 403.84714, 23.00002,   0.00000, 0.00000, 64.56000);
	CreateObject(5817, 1324.54858, 393.73349, 20.39386,   0.00000, 0.00000, 154.38005);
	CreateObject(18609, 1262.90881, 375.03989, 19.66505,   0.00000, 0.00000, 65.76004);
	CreateObject(18609, 1246.03564, 379.96719, 19.46914,   0.00000, 0.00000, 65.76004);
	CreateObject(18451, 1272.73962, 398.41452, 18.90394,   0.00000, 0.00000, -202.07994);
	CreateObject(1245, 1292.84058, 361.76782, 19.77402,   0.00000, 0.00000, 424.49890);
	CreateObject(1245, 1259.41614, 369.52347, 19.77402,   0.00000, 0.00000, 157.97972);
	CreateObject(1245, 1266.80823, 360.49808, 19.70291,   0.00000, 0.00000, 338.00684);
	CreateObject(8302, 1248.35889, 377.27762, 19.44626,   0.00000, 0.00000, 175.31985);
	CreateObject(944, 1273.50122, 395.12805, 19.42643,   0.00000, 0.00000, 336.52768);
	CreateObject(944, 1273.57056, 386.65549, 27.27691,   0.00000, 0.00000, 103.97997);
	CreateObject(5153, 1273.73621, 369.78577, 23.18454,   0.00000, 0.00000, 335.33359);
	CreateObject(5153, 1241.06409, 361.18890, 24.26093,   0.00000, 0.00000, 155.76138);
	CreateObject(1245, 1292.65869, 356.60855, 19.77402,   0.00000, 0.00000, 247.37936);
	CreateObject(3576, 1298.51526, 336.80801, 26.09277,   0.00000, 0.00000, 201.38261);
	CreateObject(3576, 1253.10583, 355.06201, 24.93126,   0.00000, 0.00000, 65.75551);
	CreateObject(1503, 1276.67944, 378.24176, 23.23616,   0.00000, 0.00000, 335.14047);
	CreateObject(3576, 1268.04346, 355.14194, 23.89630,   0.00000, 0.00000, 156.33548);
	CreateObject(5817, 1299.81067, 399.49963, 20.27854,   0.00000, 0.00000, 154.38005);
	CreateObject(18609, 1269.39795, 427.46530, 19.26305,   0.00000, 0.00000, 65.76004);
	CreateObject(944, 1270.64172, 396.31708, 19.42643,   0.00000, 0.00000, 337.06766);
	CreateObject(944, 1270.74182, 393.25626, 19.42643,   0.00000, 0.00000, 247.24870);
	CreateObject(17011, 1284.62183, 413.69815, 18.00874,   0.00000, 0.00000, 153.71982);
	CreateObject(18609, 1265.58838, 381.93826, 19.56405,   0.00000, 0.00000, 65.76004);
	CreateObject(18609, 1264.75903, 417.57007, 19.26305,   0.00000, 0.00000, 65.76004);
	CreateObject(18609, 1266.97620, 422.41473, 19.26305,   0.00000, 0.00000, 65.76004);
	CreateObject(1454, 1280.76489, 403.47354, 18.95009,   0.00000, 0.00000, 0.00000);
	CreateObject(1453, 1279.51404, 403.90628, 18.92275,   0.00000, 0.00000, 0.00000);
	CreateObject(1453, 1278.99597, 404.51511, 18.92275,   0.00000, 0.00000, 0.00000);
	CreateObject(1453, 1279.80042, 404.57224, 18.92275,   0.00000, 0.00000, 0.00000);
	CreateObject(1454, 1280.84216, 401.66559, 18.95009,   0.00000, 0.00000, -87.06003);
	CreateObject(18609, 1264.12488, 378.46606, 19.66305,   0.00000, 0.00000, 65.76004);
	CreateObject(18609, 1244.08484, 375.79898, 19.56504,   0.00000, 0.00000, 65.76004);
	CreateObject(5817, 1278.81152, 392.93091, 22.82185,   0.00000, 0.00000, 64.62020);
	CreateObject(944, 1320.07251, 354.34677, 23.45795,   0.00000, 0.00000, -24.53999);
	CreateObject(935, 1333.78528, 384.86539, 27.60677,   0.00000, 0.00000, 0.00000);
	CreateObject(935, 1311.37354, 406.36505, 19.13554,   0.00000, 0.00000, 0.00000);
	CreateObject(935, 1311.48547, 405.54391, 19.13554,   0.00000, 0.00000, 0.00000);
	CreateObject(935, 1334.83667, 383.77762, 27.57502,   0.00000, 0.00000, 0.00000);
	CreateObject(935, 1333.73193, 382.57501, 27.69352,   0.00000, 0.00000, 0.00000);
	CreateObject(1503, 1298.62646, 362.16068, 24.28319,   0.00000, 0.00000, 67.38001);
	CreateObject(944, 1299.21448, 389.30676, 27.91694,   0.00000, 0.00000, -24.42000);
	CreateObject(935, 1313.22339, 406.30130, 19.13554,   0.00000, 0.00000, 0.00000);
	CreateObject(935, 1312.15381, 406.69080, 19.13554,   0.00000, 0.00000, 0.00000);
	CreateObject(935, 1269.99866, 394.84970, 19.13554,   0.00000, 0.00000, 0.00000);
	CreateObject(935, 1332.88000, 383.48947, 27.60677,   0.00000, 0.00000, 0.00000);
	CreateObject(935, 1305.61182, 386.28552, 27.60677,   0.00000, 0.00000, 0.00000);
	CreateObject(935, 1333.73315, 383.87259, 27.57502,   0.00000, 0.00000, 0.00000);
	CreateObject(944, 1302.74292, 387.80835, 27.91694,   0.00000, 0.00000, -24.42000);
	CreateObject(935, 1332.62805, 384.51270, 27.60677,   0.00000, 0.00000, 0.00000);
	CreateObject(935, 1304.45618, 386.31558, 27.60677,   0.00000, 0.00000, 0.00000);
	CreateObject(935, 1304.65845, 387.25333, 27.60677,   0.00000, 0.00000, 0.00000);
	CreateObject(944, 1304.50049, 353.18408, 19.42432,   0.00000, 0.00000, -24.83999);
	CreateObject(935, 1312.56079, 407.48633, 19.13554,   0.00000, 0.00000, 0.00000);
	CreateObject(935, 1269.10803, 394.32776, 19.13554,   0.00000, 0.00000, 0.00000);
	CreateObject(935, 1269.08411, 395.33990, 19.13554,   0.00000, 0.00000, 0.00000);
	CreateObject(935, 1269.65039, 393.75815, 19.13554,   0.00000, 0.00000, 0.00000);
	CreateObject(944, 1317.11743, 355.63651, 23.45795,   0.00000, 0.00000, -24.53999);
	CreateObject(5153, 1272.48450, 367.03754, 23.18454,   0.00000, 0.00000, 334.52045);
	CreateObject(1466, 1310.76575, 355.01642, 20.74730,   0.00000, 0.00000, 155.69182);
	CreateObject(1466, 1310.09326, 353.48013, 20.74730,   0.00000, 0.00000, 155.75185);
	CreateObject(1466, 1311.55078, 356.61395, 20.74730,   0.00000, 0.00000, 154.91185);

	SetTimer("MatchTimer1", 300000, false);

	return 1;
}

public OnGameModeExit()
{
	return 1;
}

public OnPlayerRequestClass(playerid, classid)
{
	SetPlayerVirtualWorld(playerid, 420);
	SetPlayerCameraPos(playerid,1279.333,358.286,26.256);
	SetPlayerCameraLookAt(playerid,1275.603,364.583,23.002);
	SetPlayerPos(playerid, 1275.224975 ,365.154602 ,23.002370);
	SetPlayerFacingAngle(playerid, 242);
	SetPlayerSpecialAction(playerid,SPECIAL_ACTION_SMOKE_CIGGY);
	ApplyAnimation(playerid, "GANGS", "smkcig_prtl", 4.1, 1, 1, 1, 1, 1, 1);
	
	TDEditor_PTD[playerid][0] = CreatePlayerTextDraw(playerid, 499.207885, 101.893371, "Kills:_00");
	
	PlayerTextDrawLetterSize(playerid, TDEditor_PTD[playerid][0], 0.400000, 1.500000);
	PlayerTextDrawTextSize(playerid, TDEditor_PTD[playerid][0], 585.800048, 0.000000);
	PlayerTextDrawAlignment(playerid, TDEditor_PTD[playerid][0], 1);
	PlayerTextDrawColor(playerid, TDEditor_PTD[playerid][0], -1);
	PlayerTextDrawSetShadow(playerid, TDEditor_PTD[playerid][0], 0);
	PlayerTextDrawSetOutline(playerid, TDEditor_PTD[playerid][0], 1);
	PlayerTextDrawBackgroundColor(playerid, TDEditor_PTD[playerid][0], 255);
	PlayerTextDrawFont(playerid, TDEditor_PTD[playerid][0], 3);
	PlayerTextDrawSetProportional(playerid, TDEditor_PTD[playerid][0], 1);

	TDEditor_PTD[playerid][1] = CreatePlayerTextDraw(playerid, 499.096893, 118.522201, "Deaths:_00");
	PlayerTextDrawLetterSize(playerid, TDEditor_PTD[playerid][1], 0.400000, 1.500000);
	PlayerTextDrawTextSize(playerid, TDEditor_PTD[playerid][1], 585.800048, 0.000000);
	PlayerTextDrawAlignment(playerid, TDEditor_PTD[playerid][1], 1);
	PlayerTextDrawColor(playerid, TDEditor_PTD[playerid][1], -1);
	PlayerTextDrawSetShadow(playerid, TDEditor_PTD[playerid][1], 0);
	PlayerTextDrawSetOutline(playerid, TDEditor_PTD[playerid][1], 1);
	PlayerTextDrawBackgroundColor(playerid, TDEditor_PTD[playerid][1], 255);
	PlayerTextDrawFont(playerid, TDEditor_PTD[playerid][1], 3);
	PlayerTextDrawSetProportional(playerid, TDEditor_PTD[playerid][1], 1);

	TDEditor_PTD[playerid][2] = CreatePlayerTextDraw(playerid, 498.896881, 133.822418, "Streak:_00");
	PlayerTextDrawLetterSize(playerid, TDEditor_PTD[playerid][2], 0.400000, 1.500000);
	PlayerTextDrawTextSize(playerid, TDEditor_PTD[playerid][2], 585.800048, 0.000000);
	PlayerTextDrawAlignment(playerid, TDEditor_PTD[playerid][2], 1);
	PlayerTextDrawColor(playerid, TDEditor_PTD[playerid][2], -1);
	PlayerTextDrawSetShadow(playerid, TDEditor_PTD[playerid][2], 1);
	PlayerTextDrawSetOutline(playerid, TDEditor_PTD[playerid][2], 1);
	PlayerTextDrawBackgroundColor(playerid, TDEditor_PTD[playerid][2], 255);
	PlayerTextDrawFont(playerid, TDEditor_PTD[playerid][2], 3);
	PlayerTextDrawSetProportional(playerid, TDEditor_PTD[playerid][2], 1);
	return 1;
}

public OnPlayerConnect(playerid)
{

    RemoveBuildingForPlayer(playerid, 1412, 1291.7422, 352.8516, 19.7500, 0.25);
	RemoveBuildingForPlayer(playerid, 1412, 1293.0938, 349.2109, 19.6875, 0.25);
	RemoveBuildingForPlayer(playerid, 769, 1288.9063, 392.2969, 18.2422, 0.25);
	RemoveBuildingForPlayer(playerid, 1691, 1311.7344, 341.7344, 24.9141, 0.25);
	RemoveBuildingForPlayer(playerid, 1691, 1312.5938, 354.3047, 22.3125, 0.25);
	RemoveBuildingForPlayer(playerid, 1687, 1317.7188, 352.8906, 23.3047, 0.25);
	RemoveBuildingForPlayer(playerid, 1345, 1315.2500, 349.5625, 19.2578, 0.25);
	RemoveBuildingForPlayer(playerid, 1687, 1319.4219, 383.1328, 27.8047, 0.25);

    SetPlayerSkillLevel(playerid, 3, 999);
    SetPlayerSkillLevel(playerid, 7, 999);
    SetPlayerSkillLevel(playerid, 8, 999);
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
	//streak[playerid]= 0;
	new RandRoll = random(sizeof(RandomSpawns));
	SetPlayerPos(playerid, RandomSpawns[RandRoll][0], RandomSpawns[RandRoll][1], RandomSpawns[RandRoll][2]);
	GivePlayerWeapon(playerid, 25, 99999);
	GivePlayerWeapon(playerid, 29, 99999);
	PlayerTextDrawShow(playerid, TDEditor_PTD[playerid][0]);
	PlayerTextDrawShow(playerid, TDEditor_PTD[playerid][1]);
	PlayerTextDrawShow(playerid, TDEditor_PTD[playerid][2]);
	return 1;
}

public OnPlayerDeath(playerid, killerid, reason)
{
	SendDeathMessage(killerid, playerid, reason);
	streak[killerid] ++;
	deaths[playerid] ++;
	kills[killerid] ++;
	streak[playerid]= 0;
	SetPlayerScore(killerid, streak[killerid]);
	SetPlayerScore(playerid, streak[playerid]);
	new pname[128];
	new str[128];
	GetPlayerName(killerid, pname, sizeof(pname));
	new strtd1[128];
	new strtd2[128];
	new strtd3[128];
	new strtd4[128];
	format(strtd1, sizeof(strtd1), "Kills:_%i", kills[killerid]);
	PlayerTextDrawSetString(killerid, TDEditor_PTD[killerid][0], strtd1);
	format(strtd2, sizeof(strtd2), "Streak:_%i", streak[killerid]);
	PlayerTextDrawSetString(killerid, TDEditor_PTD[killerid][2], strtd2);
	format(strtd3, sizeof(strtd3), "Deaths:_%i", deaths[playerid]);
	PlayerTextDrawSetString(playerid, TDEditor_PTD[playerid][1], strtd3);
	format(strtd4, sizeof(strtd4), "Streak:_%i", streak[playerid]);
	PlayerTextDrawSetString(playerid, TDEditor_PTD[playerid][2], strtd4);
	if(streak[killerid] == 1)
	{
	    GivePlayerWeapon(killerid, 30, 99999);
	    return 1;
	}
	if(streak[killerid] == 2)
	{
	    format(str, sizeof(str), "%s pegou Double-Kill (2)", pname);
		SendClientMessageToAll(0xFFFF4BFF, str);
	    GivePlayerWeapon(killerid, 33, 99999);
	    return 1;
	}
	if(streak[killerid] == 3)
	{
 		format(str, sizeof(str), "%s pegou Triple-Kill (3)", pname);
		SendClientMessageToAll(0xFFFF4BFF, str);
	    GivePlayerWeapon(killerid, 31, 99999);
	    GivePlayerWeapon(killerid, 16, 2);
	    return 1;
	}
	if(streak[killerid] == 4)
	{
	    format(str, sizeof(str), "%s pegou Multi-Kill (4)", pname);
		SendClientMessageToAll(0xFFFF4BFF, str);
	    GivePlayerWeapon(killerid, 34, 99999);
	    SetPlayerArmour(killerid, 50);
	    return 1;
	}
	if(streak[killerid] == 5)
	{
	    format(str, sizeof(str), "%s pegou Monster-Kill (5)", pname);
		SendClientMessageToAll(0xFFFF4BFF, str);
	    GivePlayerWeapon(killerid, 35, 1);
	    return 1;
	}
	if(streak[killerid] >= 6)
	{
	    format(str, sizeof(str), "%s pegou GODLIKE (%i)", pname, streak[killerid]);
		SendClientMessageToAll(0xFFFF4BFF, str);
	    GivePlayerWeapon(killerid, 35, 1);
	    return 1;
	}
	if(killerid == playerid || killerid == INVALID_PLAYER_ID)
	{
	    deaths[playerid] ++;
	}
	return 1;
}
forward StrkDebug(playerid);
public StrkDebug(playerid)
{
	if(streak[playerid] == 1)
	{
	    GivePlayerWeapon(playerid, 30, 99999);
	    return 1;
	}
	if(streak[playerid] == 2)
	{
	    GivePlayerWeapon(playerid, 33, 99999);
	    return 1;
	}
	if(streak[playerid] == 3)
	{
	    GivePlayerWeapon(playerid, 31, 99999);
	    GivePlayerWeapon(playerid, 16, 2);
	    return 1;
	}
	if(streak[playerid] == 4)
	{
	    GivePlayerWeapon(playerid, 34, 99999);
	    SetPlayerArmour(playerid, 50);
	    return 1;
	}
	if(streak[playerid] >= 5)
	{
	    GivePlayerWeapon(playerid, 35, 1);
	    return 1;
	}
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
	if (strcmp("/strkdebug", cmdtext, true, 128) == 0)
	{
	    if(IsPlayerAdmin(playerid))
	    {
	    	new str[128];
			streak[playerid] ++;
        	format(str, sizeof(str), "Current Streak: %i", streak[playerid]);
			SendClientMessage(playerid, -1, str);
			new strtd[128];
			format(strtd, sizeof(strtd), "Streak:_%i", streak[playerid]);
			PlayerTextDrawSetString(playerid, TDEditor_PTD[playerid][2], strtd);
			StrkDebug(playerid);
			return 1;
		}
	}
	if (strcmp("/timerdebug1", cmdtext, true, 128) == 0)
	{
	    if(IsPlayerAdmin(playerid))
	    {
			MatchTimer1();
			return 1;
		}
	}
	if (strcmp("/timerdebug2", cmdtext, true, 128) == 0)
	{
	    if(IsPlayerAdmin(playerid))
	    {
			MatchTimer2();
			return 1;
		}
	}
	if (strcmp("/timerdebug3", cmdtext, true, 128) == 0)
	{
	    if(IsPlayerAdmin(playerid))
	    {
			MatchTimer3(playerid);
			return 1;
		}
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
	if(pickupid >= 0)
	{
	    if(phealth <= 80)
	    {
			SetPlayerHealth(playerid, phealth+20);
			PlayerPlaySound(playerid, 1139, 0.0, 0.0, 25);
		}
  		if(phealth > 80 && phealth < 100)
	    {
			SetPlayerHealth(playerid, 100);
			PlayerPlaySound(playerid, 1139, 0.0, 0.0, 25);
		}
	}
	if(pickupid == Pickup0 && phealth < 100)
	{
	    SetTimer("PickupTimer0", 15000, false);
	    DestroyPickup(Pickup0);
	    Pickup0 = 0;
	}
	if(pickupid == Pickup1 && phealth < 100)
	{
	    SetTimer("PickupTimer1", 15000, false);
 	    DestroyPickup(Pickup1);
	    Pickup1 = 1;
	}
	if(pickupid == Pickup2 && phealth < 100)
	{
	    SetTimer("PickupTimer2", 15000, false);
	    DestroyPickup(Pickup2);
	    Pickup2 = 2;
	}
	if(pickupid == Pickup3 && phealth < 100)
	{
	    SetTimer("PickupTimer3", 15000, false);
 	    DestroyPickup(Pickup3);
	    Pickup3 = 3;
	}
	if(pickupid == Pickup4 && phealth < 100)
	{
	    SetTimer("PickupTimer4", 15000, false);
 	    DestroyPickup(Pickup4);
	    Pickup4 = 4;
	}
	if(pickupid == Pickup5 && phealth < 100)
	{
	    SetTimer("PickupTimer5", 15000, false);
	    DestroyPickup(Pickup5);
	    Pickup5 = 5;
	}
	if(pickupid == Pickup6 && phealth < 100)
	{
	    SetTimer("PickupTimer6", 15000, false);
 	    DestroyPickup(Pickup6);
	    Pickup6 = 6;
	}
	if(pickupid == Pickup7 && phealth < 100)
	{
	    SetTimer("PickupTimer7", 15000, false);
	    DestroyPickup(Pickup7);
	    Pickup7 = 7;
	}
	if(pickupid == Pickup8 && phealth < 100)
	{
	    SetTimer("PickupTimer8", 15000, false);
 	    DestroyPickup(Pickup8);
	    Pickup8 = 8;
	}
	if(pickupid == Pickup9 && phealth < 100)
	{
	    SetTimer("PickupTimer9", 15000, false);
	    DestroyPickup(Pickup9);
	    Pickup9 = 9;
	}
	if(pickupid == Pickup10 && phealth < 100)
	{
	    SetTimer("PickupTimer10", 15000, false);
 	    DestroyPickup(Pickup10);
	    Pickup10 = 10;
	}
	if(pickupid == Pickup11 && phealth < 100)
	{
	    SetTimer("PickupTimer11", 15000, false);
 	    DestroyPickup(Pickup11);
	    Pickup11 = 11;
	}
	if(pickupid == Pickup12 && phealth < 100)
	{
	    SetTimer("PickupTimer12", 15000, false);
 	    DestroyPickup(Pickup12);
	    Pickup12 = 12;
	}
	return 1;
}
forward PickupTimer0();
public PickupTimer0()
{
	Pickup0 = CreatePickup(1240, 1, 1235.864990, 372.699951, 27.555509, -1);
}
forward PickupTimer1();
public PickupTimer1()
{
	Pickup1 = CreatePickup(1240, 1, 1252.302001, 353.785614, 24.839622, -1);
}
forward PickupTimer2();
public PickupTimer2()
{
	Pickup2 = CreatePickup(1240, 1, 1272.098144, 363.819915, 23.879259, -1);
}
forward PickupTimer3();
public PickupTimer3()
{
	Pickup3 = CreatePickup(1240, 1, 1272.489990, 380.333618, 22.555513, -1);
}
forward PickupTimer4();
public PickupTimer4()
{
	Pickup4 = CreatePickup(1240, 1, 1284.967895, 415.777221, 24.282896, -1);
}
forward PickupTimer5();
public PickupTimer5()
{
	Pickup5 = CreatePickup(1240, 1, 1310.936889, 392.920654, 25.055511, -1);
}
forward PickupTimer6();
public PickupTimer6()
{
	Pickup6 = CreatePickup(1240, 1, 1332.123535, 391.295715, 25.055511, -1);
}
forward PickupTimer7();
public PickupTimer7()
{
	Pickup7 = CreatePickup(1240, 1, 1319.900756, 384.170410, 28.055511, -1);
}
forward PickupTimer8();
public PickupTimer8()
{
	Pickup8 = CreatePickup(1240, 1, 1313.467285, 403.924835, 29.475900, -1);
}
forward PickupTimer9();
public PickupTimer9()
{
	Pickup9 = CreatePickup(1240, 1, 1320.010986, 351.693725, 23.555511, -1);
}
forward PickupTimer10();
public PickupTimer10()
{
	Pickup10 = CreatePickup(1240, 1, 1298.544677, 358.254821, 23.708992, -1);
}
forward PickupTimer11();
public PickupTimer11()
{
	Pickup11 = CreatePickup(1240, 1, 1312.078857, 333.980499, 25.694610, -1);
}
forward PickupTimer12();
public PickupTimer12()
{
	Pickup12 = CreatePickup(1240, 1, 1292.368652, 336.282440, 25.694610, -1);
}
forward MatchTimer1();
public MatchTimer1()
{
	SetTimer("MatchTimer2", 240000, false);
    GameTextForAll("5 Min restantes", 4200, 1);
}
forward MatchTimer2();
public MatchTimer2()
{
	SetTimerEx("MatchTimer3", 60000, false, "i");
	GameTextForAll("1 Min restante", 4200, 1);
}
forward MatchTimer3(playerid);
public MatchTimer3(playerid)
{
	SetTimer("gmxTimer", 15000, false);
	TogglePlayerControllable(playerid, 0);
	//SetPlayerCameraPos(playerid,1295.160,331.967,31.068);
	//SetPlayerCameraLookAt(playerid,1278.091,369.099,23.002);
	SetPlayerCamera(playerid, 1295.160, 331.967, 31.068, 1278.091, 369.099, 23.022, false);
	TogglePlayerSpectating(playerid, 1);
	/*new str[128];
	format (str, sizeof(str), "Kills: %d Deaths: %d", kills[playerid], deaths[playerid]);
	SendClientMessage(playerid, -1, str);*/
	
	/*TDEditor_TD[1] = TextDrawCreate(290.000000, 170.498809, "TOP_3_KILLERS");
	TextDrawLetterSize(TDEditor_TD[1], 0.400000, 1.600000);
	TextDrawTextSize(TDEditor_TD[1], 295.000000, 0.000000);
	TextDrawAlignment(TDEditor_TD[1], 1);
	TextDrawColor(TDEditor_TD[1], -5963521);
	TextDrawSetShadow(TDEditor_TD[1], 0);
	TextDrawSetOutline(TDEditor_TD[1], 1);
	TextDrawBackgroundColor(TDEditor_TD[1], 255);
	TextDrawFont(TDEditor_TD[1], 3);
	TextDrawSetProportional(TDEditor_TD[1], 1);
	TextDrawShowForAll(TDEditor_TD[1]);*/
	
	new
	playerScores[MAX_PLAYERS][rankingEnum],
	index
	;
	for(new i; i != MAX_PLAYERS; ++i)
	{
		if(IsPlayerConnected(i) && !IsPlayerNPC(i))
		{
			playerScores[index][player_Score] = kills[i];
			playerScores[index][player_ID] = i;
			++index;
		}
	}
	for(new i; i != 3; ++i)
	{
		new pname[128];
		new strrank[128];
		GetPlayerName(i, pname, sizeof(pname));
		
		TDEditor_TD[i] = TextDrawCreate(290.000000, 190.000000 +(i * 10), "1|:_pname_-_00_Kills");
		TextDrawSetString(TDEditor_TD[i], strrank);
		format(strrank, sizeof(strrank), "%d|:_%s_-_%d_Kills", i, pname, playerScores[i][player_Score]);
		TextDrawLetterSize(TDEditor_TD[i], 0.400000, 1.600000);
		TextDrawTextSize(TDEditor_TD[i], 295.000000, 0.000000);
		TextDrawAlignment(TDEditor_TD[i], 1);
		TextDrawColor(TDEditor_TD[i], -5963521);
		TextDrawSetShadow(TDEditor_TD[i], 0);
		TextDrawSetOutline(TDEditor_TD[i], 1);
		TextDrawBackgroundColor(TDEditor_TD[i], 255);
		TextDrawFont(TDEditor_TD[i], 3);
		TextDrawSetProportional(TDEditor_TD[i], 1);
		TextDrawShowForAll(TDEditor_TD[i]);
		
		//SendClientMessageToAll(-1, strrank);
		//printf("Player %d with %d score points on row %d", pname, playerScores[i][player_Score], i);
		
		
		
	}
	//GetPlayerHighestScores(playerScores, 0, index);
}
forward gmxTimer();
public gmxTimer()
{
	SendRconCommand("gmx");
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
stock GetPlayerHighestScores(array[][rankingEnum], left, right)
{
	new
	    tempLeft = left,
	    tempRight = right,
	    pivot = array[(left + right) / 2][player_Score],
	    tempVar
	;
 	while(tempLeft <= tempRight)
	{
	    while(array[tempLeft][player_Score] > pivot) tempLeft++;
	    while(array[tempRight][player_Score] < pivot) tempRight--;

	    if(tempLeft <= tempRight)
	    {
	        tempVar = array[tempLeft][player_Score], array[tempLeft][player_Score] = array[tempRight][player_Score], array[tempRight][player_Score] = tempVar;
			tempVar = array[tempLeft][player_ID], array[tempLeft][player_ID] = array[tempRight][player_ID], array[tempRight][player_ID] = tempVar;
			tempLeft++, tempRight--;
	    }
	}
	if(left < tempRight) GetPlayerHighestScores(array, left, tempRight);
	if(tempLeft < right) GetPlayerHighestScores(array, tempLeft, right);
}
