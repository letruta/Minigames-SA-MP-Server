// This is a comment
// uncomment the line below if you want to write a filterscript
#define FILTERSCRIPT

#include <a_samp>
#include <a_samp>
#include <a_actor>
#include <a_http>
#include <a_npc>
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

#if defined FILTERSCRIPT

public OnFilterScriptInit()
{
	print("\n--------------------------------------");
	print(" Dev Tools by Letruta");
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
	print(" Dev Tools by Letruta");
	print("----------------------------------\n");
}

#endif

public OnGameModeInit()
{
	return 1;
}

public OnGameModeExit()
{
	return 1;
}

public OnPlayerRequestClass(playerid, classid)
{
	return 1;
}

public OnPlayerConnect(playerid)
{
	return 1;
}

public OnPlayerDisconnect(playerid, reason)
{
	return 1;
}

public OnPlayerSpawn(playerid)
{
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
// DEV COMMANDS
	if (strcmp("/pos", cmdtext, true, 128) == 0)
	{
	    if(IsPlayerAdmin(playerid))
	    {
	    	new Float:x, Float:y, Float:z;
	    	new Float:angle;
	    	new string[128];
	    	GetPlayerPos(playerid, x, y, z);
	    	GetPlayerFacingAngle(playerid, angle);
	    	format(string, sizeof(string), "%f ,%f ,%f, %f", x, y, z, angle);
			SendClientMessage(playerid, 0x00FF00FF, string);
			print(string);
			return 1;
		}
		else
		{
		    SendClientMessage(playerid, 0xFF4B4BFF, "Voc� precisa ser admin para usar este comando");
		    return 1;
		}
	}
	if(strcmp("/lv", cmdtext, true, 128) == 0)
	{
	    if(IsPlayerAdmin(playerid))
	    {
	    	SetPlayerInterior(playerid, 0);
			SetPlayerPos(playerid, 2078, 1286, 15);
			return 1;
		}
		else
		{
		    SendClientMessage(playerid, 0xFF4B4BFF, "Voc� precisa ser admin para usar este comando");
		    return 1;
		}
	}
	if(strcmp("/jetpack", cmdtext, true, 128) == 0)
	{
	    if(IsPlayerAdmin(playerid))
	    {
			SetPlayerSpecialAction( playerid, 2);
			return 1;
		}
		else
		{
		    SendClientMessage(playerid, 0xFF4B4BFF, "Voc� precisa ser admin para usar este comando");
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
	return 1;
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
