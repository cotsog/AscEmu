/*
 Copyright (c) 2014-2016 AscEmu Team <http://www.ascemu.org/>
 This file is released under the MIT license. See README-MIT for more information.
 */

#include "Setup.h"

//////////////////////////////////////////////////////////////////////////////////////////
///\details <b>Winter Veil</b>\n
/// event_properties entry: 2 \n
/// event_properties holiday: 141 \n
///\todo Check Winter Veil \n

class PX238WinterWondervolt : public GameObjectAIScript
{
    public:

        PX238WinterWondervolt(GameObject* goinstance) : GameObjectAIScript(goinstance) {}
        static GameObjectAIScript* Create(GameObject* GO) { return new PX238WinterWondervolt(GO); }

        void OnSpawn()
        {
            RegisterAIUpdateEvent(1);
        }

        void AIUpdate()
        {
            Player* plr = _gameobject->GetMapMgr()->GetInterface()->GetPlayerNearestCoords(_gameobject->GetPositionX(), _gameobject->GetPositionY(), _gameobject->GetPositionZ());
            if (!plr)
                return;

            if (_gameobject->CalcDistance(_gameobject, plr) <= 1.050000f && !plr->HasAura(26273))       /// aura given by the PX-238 Winter Wondervolt
            {
                plr->CastSpell(plr, 26275, true);   /// Spell that change into random gnome dispalyid (respect male & female)
            }
        }
};

void WinterReveler(Player* pPlayer, Unit* pUnit)
{
    if (pUnit->GetEntry() == 15760)
    {
        uint32 Winteritem = 0;
        SlotResult slotresult;

        uint32 chance = RandomUInt(2);
        switch (chance)
        {
            case 0:
            {
                ItemProperties const* proto = sMySQLStore.GetItemProperties(21212);
                if (!proto)
                    return;

                slotresult = pPlayer->GetItemInterface()->FindFreeInventorySlot(proto);
                Winteritem = 21212;
            }
            break;
            case 1:
            {
                ItemProperties const* proto = sMySQLStore.GetItemProperties(21519);
                if (!proto)
                    return;

                slotresult = pPlayer->GetItemInterface()->FindFreeInventorySlot(proto);
                Winteritem = 21519;
            }
            break;
            case 2:
            {
                ItemProperties const* proto = sMySQLStore.GetItemProperties(34191);
                if (!proto)
                    return;

                slotresult = pPlayer->GetItemInterface()->FindFreeInventorySlot(proto);
                Winteritem = 34191;
            }
            break;

        }

        if (!slotresult.Result)
        {
            pPlayer->GetItemInterface()->BuildInventoryChangeError(NULL, NULL, INV_ERR_INVENTORY_FULL);
            return;
        }
        else
        {
            Item* item = objmgr.CreateItem(Winteritem, pPlayer);
            if (item == nullptr)
                return;

            item->SetStackCount(5);
            auto item_add_result = pPlayer->GetItemInterface()->SafeAddItem(item, slotresult.ContainerSlot, slotresult.Slot);
            if (!item_add_result)
            {
                Log.Error("Event_WinterVeil", "Error while adding item %u to player %s", item->GetEntry(), pPlayer->GetNameString());
                item->DeleteMe();
            }
            else
            {
                pUnit->CastSpell(pPlayer, 26218, true);
            }
        }
    }
}

void WinterVeilEmote(Player* pPlayer, uint32 Emote, Unit* pUnit)
{
    pUnit = pPlayer->GetMapMgr()->GetUnit(pPlayer->GetSelection());
    if (!pUnit || !pUnit->isAlive() || pUnit->GetAIInterface()->getNextTarget())
        return;

    if (Emote == EMOTE_ONESHOT_KISS)
    {
        if (!pPlayer->HasAura(26218))
            WinterReveler(pPlayer, pUnit);
    }
}

//////////////////////////////////////////////////////////////////////////////////////////
///\details <b>Winter Veil: Gifts</b>\n
/// event_properties entry: 52 \n
/// event_properties holiday: NA \n
///\todo Check if gifts need a extra script \n

void SetupWinterVeil(ScriptMgr* mgr)
{
    mgr->register_gameobject_script(180796, &PX238WinterWondervolt::Create);
    mgr->register_hook(SERVER_HOOK_EVENT_ON_EMOTE, (void*)&WinterVeilEmote);
}