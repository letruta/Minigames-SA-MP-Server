// clear death message after x seconds
#define 	CLEAR_AFTER		6

// end of settings

#include <a_samp>
#include <foreach>
#include <YSI\y_hooks>

new clear_time[MAX_PLAYERS];

hook OnGameModeInit()
{
	new repeat_timer = floatround(CLEAR_AFTER / 3) * 1000;
	SetTimer("cdm_timer", repeat_timer < 1000 ? 1000 : repeat_timer, true);
    return 1;
}

hook OnPlayerConnect(playerid)
{
	clear_time[playerid] = 0;
	//return 1;
}

stock cdm_SendDeathMessage(killer, killee, weapon)
{
	foreach(new playerid : Player)
	{
		clear_time[playerid] = GetTickCount();
		//SendDeathMessage(killer, killee, weapon);
	}
    return 1;
}

#if defined _ALS_SendDeathMessage
    #undef SendDeathMessage
#else
    #define _ALS_SendDeathMessage
#endif
#define SendDeathMessage cdm_SendDeathMessage

stock cdm_SendDeathMessageToPlayer(playerid, killer, killee, weapon)
{
	clear_time[playerid] = GetTickCount();
	SendDeathMessageToPlayer(playerid, killer, killee, weapon);

    return 1;
}

#if defined _ALS_SendDeathMessageToPlayer
    #undef SendDeathMessageToPlayer
#else
    #define _ALS_SendDeathMessageToPlayer
#endif
#define SendDeathMessageToPlayer cdm_SendDeathMessageToPlayer



forward cdm_timer();
public cdm_timer()
{
	foreach(new playerid : Player)
	{
		if(clear_time[playerid] != 0 && floatround((GetTickCount() - clear_time[playerid])/1000) > CLEAR_AFTER )
		{
			for(new i = 0; i < 5; i++)
			{
				SendDeathMessageToPlayer(playerid, 1001, 1001, 200);
			}
		}
	}
}