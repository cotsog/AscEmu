/*
Copyright (c) 2014-2016 AscEmu Team <http://www.ascemu.org/>
This file is released under the MIT license. See README-MIT for more information.
*/

#include "StdAfx.h"

//.mount
bool ChatHandler::HandleMountCommand(const char* args, WorldSession* m_session)
{
    Unit* unit_target = GetSelectedUnit(m_session, true);
    if (unit_target == nullptr)
        return true;

    if (!args)
    {
        RedSystemMessage(m_session, "No model specified!");
        return true;
    }

    uint32 modelid = atol(args);
    if (!modelid)
    {
        RedSystemMessage(m_session, "No model specified!");
        return true;
    }

    if (unit_target->GetMount() != 0)
    {
        RedSystemMessage(m_session, "Target is already mounted.");
        return true;
    }

    unit_target->SetUInt32Value(UNIT_FIELD_MOUNTDISPLAYID, modelid);

    BlueSystemMessage(m_session, "Now mounted with model %d.", modelid);
    sGMLog.writefromsession(m_session, "used mount command to model %u", modelid);

    return true;
}

//.dismount
bool ChatHandler::HandleDismountCommand(const char* /*args*/, WorldSession* m_session)
{
    Unit* unit_target = GetSelectedUnit(m_session, true);
    if (unit_target == nullptr)
        return true;

    if (unit_target->GetMount() == 0)
    {
        RedSystemMessage(m_session, "Target is not mounted.");
        return true;
    }

    if (unit_target->IsPlayer())
        static_cast<Player*>(unit_target)->Dismount();

    unit_target->SetUInt32Value(UNIT_FIELD_MOUNTDISPLAYID, 0);

    BlueSystemMessage(m_session, "Target is now unmounted.");
    return true;
}

//.gocreature
bool ChatHandler::HandleGoCreatureSpawnCommand(const char* args, WorldSession* m_session)
{
    uint32 spawn_id;
    if (sscanf(args, "%u", (unsigned int*)&spawn_id) != 1)
    {
        RedSystemMessage(m_session, "Command must be in format: .gocreature <creature_spawnid>.");
        return true;
    }

    QueryResult* query_result = WorldDatabase.Query("SELECT * FROM creature_spawns WHERE id=%u", spawn_id);
    if (!query_result)
    {
        RedSystemMessage(m_session, "No creature found in creature_spawns table with id %u.", spawn_id);
        return true;
    }

    uint32 spawn_map = query_result->Fetch()[2].GetUInt32();
    float spawn_x = query_result->Fetch()[3].GetFloat();
    float spawn_y = query_result->Fetch()[4].GetFloat();
    float spawn_z = query_result->Fetch()[5].GetFloat();

    LocationVector vec(spawn_x, spawn_y, spawn_z, 0);
    m_session->GetPlayer()->SafeTeleport(spawn_map, 0, vec);

    delete query_result;
    return true;
}

//.gogameobject
bool ChatHandler::HandleGoGameObjectSpawnCommand(const char* args, WorldSession* m_session)
{
    uint32 spawn_id;
    if (sscanf(args, "%u", (unsigned int*)&spawn_id) != 1)
    {
        RedSystemMessage(m_session, "Command must be in format: .gocreature <creature_spawnid>.");
        return true;
    }

    QueryResult* query_result = WorldDatabase.Query("SELECT * FROM gameobject_spawns WHERE id=%u", spawn_id);
    if (!query_result)
    {
        RedSystemMessage(m_session, "No gameobject found in gameobject_spawns table with id %u.", spawn_id);
        return true;
    }

    uint32 spawn_map = query_result->Fetch()[2].GetUInt32();
    float spawn_x = query_result->Fetch()[3].GetFloat();
    float spawn_y = query_result->Fetch()[4].GetFloat();
    float spawn_z = query_result->Fetch()[5].GetFloat();

    LocationVector vec(spawn_x, spawn_y, spawn_z, 0);
    m_session->GetPlayer()->SafeTeleport(spawn_map, 0, vec);

    delete query_result;
    return true;
}

//.gostartlocation
bool ChatHandler::HandleGoStartLocationCommand(const char* args, WorldSession* m_session)
{
    auto player_target = GetSelectedPlayer(m_session, true, true);
    if (player_target == nullptr)
        return true;

    std::string race;
    uint8 raceid = 0;
    uint8 classid = 0;

    if (strlen(args) > 0)
    {
        race = args;
        if (race == "human")
            raceid = 1;
        else if (race == "orc")
            raceid = 2;
        else if (race == "dwarf")
            raceid = 3;
        else if (race == "nightelf")
            raceid = 4;
        else if (race == "undead")
            raceid = 5;
        else if (race == "tauren")
            raceid = 6;
        else if (race == "gnome")
            raceid = 7;
        else if (race == "troll")
            raceid = 8;
        else if (race == "bloodelf")
            raceid = 10;
        else if (race == "draenei")
            raceid = 11;
        else if (race == "deathknight")
            classid = 6;
        else
        {
            RedSystemMessage(m_session, "Invalid start location! Valid locations are: human, dwarf, gnome, nightelf, draenei, orc, troll, tauren, undead, bloodelf, deathknight");
            return true;
        }
    }
    else
    {
        raceid = player_target->getRace();
        classid = player_target->getClass();
        race = "own";
    }

    PlayerCreateInfo const* player_info = nullptr;
    for (uint8 i = 1; i <= 11; ++i)
    {
        player_info = sMySQLStore.GetPlayerCreateInfo((raceid ? raceid : i), (classid ? classid : i));
        if (player_info != nullptr)
            break;
    }

    if (player_info == nullptr)
    {
        RedSystemMessage(m_session, "Internal error: Could not find create info for race %u and class %u.", raceid, classid);
        return false;
    }

    GreenSystemMessage(m_session, "Teleporting %s to %s starting location.", player_target->GetName(), race.c_str());

    player_target->SafeTeleport(player_info->mapId, 0, LocationVector(player_info->positionX, player_info->positionY, player_info->positionZ));
    return true;
}

//.gotrig
bool ChatHandler::HandleGoTriggerCommand(const char* args, WorldSession* m_session)
{
    uint32 trigger_id;
    int32 instance_id = 0;

    if (sscanf(args, "%u %d", (unsigned int*)&trigger_id, (int*)&instance_id) < 1)
    {
        RedSystemMessage(m_session, "Command must be at least in format: .gotrig <trigger_id>.");
        RedSystemMessage(m_session, "You can use: .gotrig <trigger_id> <instance_id>");
        return true;
    }

    auto area_trigger_entry = sAreaTriggerStore.LookupEntry(trigger_id);
    if (area_trigger_entry == nullptr)
    {
        RedSystemMessage(m_session, "Could not find trigger %s", args);
        return true;
    }

    m_session->GetPlayer()->SafeTeleport(area_trigger_entry->mapid, instance_id, LocationVector(area_trigger_entry->x, area_trigger_entry->y, area_trigger_entry->z, area_trigger_entry->o));
    BlueSystemMessage(m_session, "Teleported to trigger %u on [%u][%.2f][%.2f][%.2f]", area_trigger_entry->id, area_trigger_entry->mapid, area_trigger_entry->x, area_trigger_entry->y, area_trigger_entry->z);
    return true;
}

//.kill - kills target or player with <name>
bool ChatHandler::HandleKillCommand(const char* args, WorldSession* m_session)
{
    bool is_name_set = false;
    auto unit_target = GetSelectedUnit(m_session);

    if (*args)
        is_name_set = true;

    if (is_name_set)
    {
        auto named_player = objmgr.GetPlayer(args, false);
        if (named_player == nullptr)
        {
            RedSystemMessage(m_session, "Player %s is not online or does not exist!", args);
            return true;
        }
        else
        {
            named_player->SetHealth(0);
            named_player->KillPlayer();
            RedSystemMessage(named_player->GetSession(), "You were killed by %s with a GM command.", m_session->GetPlayer()->GetName());
            GreenSystemMessage(m_session, "Killed player %s.", args);
            sGMLog.writefromsession(m_session, "used kill command on Player Name: %s Guid:  " I64FMT " ", m_session->GetPlayer()->GetName(), named_player->GetGUID(), named_player->GetNameString());
        }
    }
    else
    {
        if (unit_target != nullptr)
        {
            switch (unit_target->GetTypeId())
            {
                case TYPEID_UNIT:
                {
                    auto creature = static_cast<Creature*>(unit_target);
                    auto kill_spell = dbcSpell.LookupEntryForced(5);
                    if (kill_spell == nullptr)
                        return true;

                    SpellCastTargets targets(unit_target->GetGUID());
                    Spell* spell = sSpellFactoryMgr.NewSpell(m_session->GetPlayer(), kill_spell, true, 0);
                    spell->prepare(&targets);

                    GreenSystemMessage(m_session, "Killed Creature %s.", creature->GetCreatureProperties()->Name.c_str());
                    sGMLog.writefromsession(m_session, "used kill command on Creature %u [%s], spawn ID: %u", creature->GetEntry(), creature->GetCreatureProperties()->Name.c_str(), creature->spawnid);
                    break;
                }
                case TYPEID_PLAYER:
                {
                    auto player = static_cast<Player*>(unit_target);

                    player->SetHealth(0);
                    player->KillPlayer();
                    RedSystemMessage(player->GetSession(), "You were killed by %s with a GM command.", m_session->GetPlayer()->GetName());
                    GreenSystemMessage(m_session, "Killed player %s.", player->GetName());
                    sGMLog.writefromsession(m_session, "used kill command on Player Name: %s Guid:  " I64FMT " ", m_session->GetPlayer()->GetName(), player->GetGUID());
                    break;
                }
                default:
                    RedSystemMessage(m_session, "Something went wrong while killing a unit with this command!");
                    break;

            }
        }
        else
        {
            RedSystemMessage(m_session, "No selected target or player name set.");
            RedSystemMessage(m_session, "Use .kill on an selected unit (player/creature)");
            RedSystemMessage(m_session, "Use .kill <playername> to kill players");
            return true;
        }

    }

    return true;
}

//.revive - revives selfe or player with <name>
bool ChatHandler::HandleReviveCommand(const char* args, WorldSession* m_session)
{
    bool is_name_set = false;

    if (*args)
        is_name_set = true;

    if (is_name_set)
    {
        auto named_player = objmgr.GetPlayer(args, false);
        if (named_player != nullptr)
        {
            if (named_player->IsDead())
            {
                named_player->RemoteRevive();
                GreenSystemMessage(m_session, "Player %s revived.", args);
                sGMLog.writefromsession(m_session, "revived player %s.", args);
            }
            else
            {
                SystemMessage(m_session, "Player %s is not dead.", args);
                return true;
            }
        }
        else
        {
            RedSystemMessage(m_session, "Player %s is not online or does not exist!", args);
            return true;
        }
    }
    else
    {
        auto player_target = GetSelectedPlayer(m_session, false, true);
        if (player_target == nullptr)
        {
            RedSystemMessage(m_session, "Something went wrong while reviving a player with this command!");
            return true;
        }

        if (player_target->IsDead())
        {
            player_target->SetMovement(MOVE_UNROOT, 1);
            player_target->ResurrectPlayer();
            player_target->SetHealth(player_target->GetMaxHealth());
            player_target->SetPower(POWER_TYPE_MANA, player_target->GetMaxPower(POWER_TYPE_MANA));
            player_target->SetPower(POWER_TYPE_ENERGY, player_target->GetMaxPower(POWER_TYPE_ENERGY));

            if (player_target == m_session->GetPlayer())
            {
                sGMLog.writefromsession(m_session, "revived himself");
            }
            else
            {
                GreenSystemMessage(m_session, "Player %s revived.", player_target->GetName());
                sGMLog.writefromsession(m_session, "revived player %s", player_target->GetName());
            }
        }
        else
        {
            if (player_target == m_session->GetPlayer())
                RedSystemMessage(m_session, "You are not dead!");
            else
                RedSystemMessage(m_session, "Player %s is not dead!", player_target->GetName());

            return true;
        }
    }

    return true;
}

//.root
bool ChatHandler::HandleRootCommand(const char* /*args*/, WorldSession* m_session)
{
    Unit* unit = GetSelectedUnit(m_session, true);
    if (unit == nullptr)
        return true;

    unit->Root();

    if (unit->IsPlayer())
    {
        SystemMessage(m_session, "Rooting Player %s.", static_cast<Player*>(unit)->GetName());
        BlueSystemMessage(static_cast<Player*>(unit)->GetSession(), "You have been rooted by %s.", m_session->GetPlayer()->GetName());
        sGMLog.writefromsession(m_session, "rooted player %s", static_cast<Player*>(unit)->GetName());
    }
    else
    {
        BlueSystemMessage(m_session, "Rooting Creature %s.", static_cast<Creature*>(unit)->GetCreatureProperties()->Name.c_str());
        sGMLog.writefromsession(m_session, "rooted creature %s", static_cast<Creature*>(unit)->GetCreatureProperties()->Name.c_str());
    }

    return true;
}

//.unroot
bool ChatHandler::HandleUnrootCommand(const char* /*args*/, WorldSession* m_session)
{
    auto unit = GetSelectedUnit(m_session, true);
    if (unit == nullptr)
        return true;

    unit->Unroot();

    if (unit->IsPlayer())
    {
        SystemMessage(m_session, "Unrooting Player %s.", static_cast<Player*>(unit)->GetName());
        BlueSystemMessage(static_cast<Player*>(unit)->GetSession(), "You have been unrooted by %s.", m_session->GetPlayer()->GetName());
        sGMLog.writefromsession(m_session, "unrooted player %s", static_cast<Player*>(unit)->GetName());
    }
    else
    {
        BlueSystemMessage(m_session, "Unrooting Creature %s.", static_cast<Creature*>(unit)->GetCreatureProperties()->Name.c_str());
        sGMLog.writefromsession(m_session, "unrooted creature %s", static_cast<Creature*>(unit)->GetCreatureProperties()->Name.c_str());
    }

    return true;
}

//.autosavechanges
bool ChatHandler::HandleAutoSaveChangesCommand(const char* /*args*/, WorldSession* m_session)
{
    if (m_session->GetPlayer()->SaveAllChangesCommand == false)
    {
        GreenSystemMessage(m_session, "SaveAllChanges activated! All commands will be executed as 'save to db = true");
        m_session->GetPlayer()->SaveAllChangesCommand = true;
    }
    else
    {
        GreenSystemMessage(m_session, "SaveAllChanges deactivated! All commands will be executed as 'save to db = false");
        m_session->GetPlayer()->SaveAllChangesCommand = false;
    }

    return true;
}

//////////////////////////////////////////////////////////////////////////////////////////
// .kick commands
//.kick player
bool ChatHandler::HandleKickByNameCommand(const char* args, WorldSession* m_session)
{
    if (!args)
    {
        RedSystemMessage(m_session, "A player name is required!");
        RedSystemMessage(m_session, "Usage: .kick player <player_name>");
        RedSystemMessage(m_session, "Optional: .kick player <player_name> <reason>");
        return true;
    }

    char* player_name = strtok((char*)args, " ");
    auto player_target = objmgr.GetPlayer((const char*)player_name, false);
    if (player_target != nullptr)
    {
        char* reason = strtok(NULL, "\n");
        std::string kickreason = "No reason";

        if (reason)
            kickreason = reason;

        BlueSystemMessage(m_session, "Attempting to kick %s from the server for \'%s\'.", player_target->GetName(), kickreason.c_str());
        sGMLog.writefromsession(m_session, "Kicked player %s from the server for %s", player_target->GetName(), kickreason.c_str());

        if (!m_session->CanUseCommand('z') && player_target->GetSession()->CanUseCommand('z'))
        {
            RedSystemMessage(m_session, "You cannot kick %s, a GM whose permissions outrank yours.", player_target->GetName());
            return true;
        }

        if (sWorld.gamemaster_announceKick)
        {
            char msg[200];
            snprintf(msg, 200, "%sGM: %s was kicked from the server by %s. Reason: %s", MSG_COLOR_RED, player_target->GetName(), m_session->GetPlayer()->GetName(), kickreason.c_str());
            sWorld.SendWorldText(msg, NULL);
        }

        SystemMessage(player_target->GetSession(), "You are being kicked from the server by %s. Reason: %s", m_session->GetPlayer()->GetName(), kickreason.c_str());
        player_target->Kick(6000);
        return true;
    }
    else
    {
        RedSystemMessage(m_session, "Player is not online at the moment.");
    }

    return true;
}

//.kick account
bool ChatHandler::HandleKKickBySessionCommand(const char* args, WorldSession* m_session)
{
    if (!args)
    {
        RedSystemMessage(m_session, "A account name is required!");
        RedSystemMessage(m_session, "Usage: .kick account <account_name>");
        return true;
    }

    char* player_name = strtok((char*)args, " ");
    auto player_target = objmgr.GetPlayer((const char*)player_name, false);
    if (player_target != nullptr)
    {
        if (!m_session->CanUseCommand('z') && player_target->GetSession()->CanUseCommand('z'))
        {
            RedSystemMessage(m_session, "You cannot kick %s, a GM whose permissions outrank yours.", player_target->GetName());
            return true;
        }

        sWorld.DisconnectUsersWithAccount(args, m_session);
        sGMLog.writefromsession(m_session, "kicked player with account %s", args);
    }
    else
    {
        RedSystemMessage(m_session, "Player is not online at the moment.");
    }

    return true;
}

//.kick ip
bool ChatHandler::HandleKickByIPCommand(const char* args, WorldSession* m_session)
{
    if (!args || strlen(args) < 8)
    {
        RedSystemMessage(m_session, "An IP is required!");
        RedSystemMessage(m_session, "Usage: .kick ip <AN.IP.ADD.RES>");
        return true;
    }

    sWorld.DisconnectUsersWithIP(args, m_session);
    sGMLog.writefromsession(m_session, "kicked players with IP %s", args);

    return true;
}

//.worldport
bool ChatHandler::HandleWorldPortCommand(const char* args, WorldSession* m_session)
{
    float x, y, z, o = 0.0f;
    uint32 mapid;

    if (sscanf(args, "%u %f %f %f %f", (unsigned int*)&mapid, &x, &y, &z, &o) < 4)
    {
        RedSystemMessage(m_session, "You have to use at least .worldport <mapid> <x> <y> <z>");
        return true;
    }

    if (x >= _maxX || x <= _minX || y <= _minY || y >= _maxY)
    {
        RedSystemMessage(m_session, "<x> <y> value is out of range!");
        return true;
    }

    LocationVector vec(x, y, z, o);
    m_session->GetPlayer()->SafeTeleport(mapid, 0, vec);

    return true;
}

//.gps
bool ChatHandler::HandleGPSCommand(const char* args, WorldSession* m_session)
{
    Object* obj;
    uint64 guid = m_session->GetPlayer()->GetSelection();
    if (guid != 0)
    {
        if ((obj = m_session->GetPlayer()->GetMapMgr()->GetUnit(guid)) == 0)
        {
            SystemMessage(m_session, "You should select a character or a creature.");
            return true;
        }
    }
    else
        obj = m_session->GetPlayer();

    char buf[400];
    auto at = obj->GetArea();
    if (!at)
    {
        snprintf((char*)buf, 400, "|cff00ff00Current Position: |cffffffffMap: |cff00ff00%d |cffffffffX: |cff00ff00%f |cffffffffY: |cff00ff00%f |cffffffffZ: |cff00ff00%f |cffffffffOrientation: |cff00ff00%f|r",
            (unsigned int)obj->GetMapId(), obj->GetPositionX(), obj->GetPositionY(), obj->GetPositionZ(), obj->GetOrientation());
        SystemMessage(m_session, buf);
        return true;
    }

    auto out_map_id = obj->GetMapId();
    auto out_zone_id = at->zone; // uint32 at_old->ZoneId
    auto out_area_id = at->id; // uint32 at_old->AreaId
    auto out_phase = obj->GetPhase();
    auto out_x = obj->GetPositionX();
    auto out_y = obj->GetPositionY();
    auto out_z = obj->GetPositionZ();
    auto out_o = obj->GetOrientation();
    auto out_area_name = at->area_name[0]; // enUS, hardcoded until locale is implemented properly

    snprintf((char*)buf, 400, "|cff00ff00Current Position: |cffffffffMap: |cff00ff00%d |cffffffffZone: |cff00ff00%u |cffffffffArea: |cff00ff00%u |cffffffffPhase: |cff00ff00%u |cffffffffX: |cff00ff00%f |cffffffffY: |cff00ff00%f |cffffffffZ: |cff00ff00%f |cffffffffOrientation: |cff00ff00%f |cffffffffArea Name: |cff00ff00%s |r",
        out_map_id, out_zone_id, out_area_id, out_phase, out_x, out_y, out_z, out_o, out_area_name);
    SystemMessage(m_session, buf);

    if (obj->obj_movement_info.IsOnTransport())
    {
        SystemMessage(m_session, "Position on Transport:");
        SystemMessage(m_session, "  tX: %f  tY: %f  tZ: %f  tO: %f", obj->GetTransPositionX(), obj->GetTransPositionY(), obj->GetTransPositionZ(), obj->GetTransPositionO());
    }

    // ".gps 1" will save gps info to file logs/gps.log - This probably isn't very multithread safe so don't have many gms spamming it!
    if (args != NULL && *args == '1')
    {
        FILE* gpslog = fopen(FormatOutputString("logs", "gps", false).c_str(), "at");
        if (gpslog)
        {
            fprintf(gpslog, "%d, %u, %u, %f, %f, %f, %f, \'%s\'", out_map_id, out_zone_id, out_area_id, out_x, out_y, out_z, out_o, out_area_name);
            // ".gps 1 comment" will save comment after the gps data
            if (*(args + 1) == ' ')
                fprintf(gpslog, ",%s\n", args + 2);
            else
                fprintf(gpslog, "\n");
            fclose(gpslog);
        }
    }
    return true;
}

//.invincible
bool ChatHandler::HandleInvincibleCommand(const char* /*args*/, WorldSession* m_session)
{
    Player* selected_player = GetSelectedPlayer(m_session, true, true);
    if (selected_player == nullptr)
        return true;

    if (selected_player->bInvincible)
    {
        selected_player->bInvincible = false;

        if (selected_player != m_session->GetPlayer())
        {
            GreenSystemMessage(selected_player->GetSession(), "%s turns your invincibility off", m_session->GetPlayer()->GetName());
            sGMLog.writefromsession(m_session, "turns invincibility off for %s", selected_player->GetName());
        }
        else
        {
            GreenSystemMessage(m_session, "Invincibility is now off");
        }
    }
    else
    {
        selected_player->bInvincible = true;

        if (selected_player != m_session->GetPlayer())
        {
            GreenSystemMessage(selected_player->GetSession(), "%s turns your invincibility on", m_session->GetPlayer()->GetName());
            sGMLog.writefromsession(m_session, "turns invincibility on for %s", selected_player->GetName());
        }
        else
        {
            GreenSystemMessage(m_session, "Invincibility is now on");
        }
    }

    return true;
}

//.invisible
bool ChatHandler::HandleInvisibleCommand(const char* /*args*/, WorldSession* m_session)
{
    Player* selected_player = GetSelectedPlayer(m_session, true, true);
    if (selected_player == nullptr)
        return true;

    if (selected_player->m_isGmInvisible)
    {
        selected_player->m_isGmInvisible = false;
        selected_player->m_invisible = false;
        selected_player->bInvincible = false;

        selected_player->Social_TellFriendsOnline();

        if (selected_player->m_bg)
            selected_player->m_bg->RemoveInvisGM();

        if (selected_player != m_session->GetPlayer())
        {
            GreenSystemMessage(selected_player->GetSession(), "%s turns your invisibility and invincibility off", m_session->GetPlayer()->GetName());
            sGMLog.writefromsession(m_session, "turns invisibility and invincibility off for %s", selected_player->GetName());
        }
        else
        {
            GreenSystemMessage(m_session, "Invisibility and Invincibility are now off");
        }
    }
    else
    {
        selected_player->m_isGmInvisible = true;
        selected_player->m_invisible = true;
        selected_player->bInvincible = true;

        selected_player->Social_TellFriendsOffline();

        if (selected_player->m_bg)
            selected_player->m_bg->AddInvisGM();

        if (selected_player != m_session->GetPlayer())
        {
            GreenSystemMessage(selected_player->GetSession(), "%s turns your invisibility and invincibility on", m_session->GetPlayer()->GetName());
            sGMLog.writefromsession(m_session, "turns invisibility and invincibility on for %s", selected_player->GetName());
        }
        else
        {
            GreenSystemMessage(m_session, "Invisibility and Invincibility are now on");
        }
    }

    selected_player->UpdateVisibility();

    return true;
}
