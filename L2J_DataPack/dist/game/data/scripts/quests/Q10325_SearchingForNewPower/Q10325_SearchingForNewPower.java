/*
 * Copyright (C) 2004-2015 L2J DataPack
 * 
 * This file is part of L2J DataPack.
 * 
 * L2J DataPack is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 * 
 * L2J DataPack is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
 * General Public License for more details.
 * 
 * You should have received a copy of the GNU General Public License
 * along with this program. If not, see <http://www.gnu.org/licenses/>.
 */
package quests.Q10325_SearchingForNewPower;

import quests.Q10324_FindingMagisterGallint.Q10324_FindingMagisterGallint;

import com.l2jserver.gameserver.enums.Race;
import com.l2jserver.gameserver.model.actor.L2Npc;
import com.l2jserver.gameserver.model.actor.instance.L2PcInstance;
import com.l2jserver.gameserver.model.holders.ItemHolder;
import com.l2jserver.gameserver.model.quest.Quest;
import com.l2jserver.gameserver.model.quest.QuestState;

/**
 * @author Neanrakyr
 */
public class Q10325_SearchingForNewPower extends Quest
{
	// Npcs
	private static final int GALLINT = 32980;
	
	// Npcs (Depend of your race)
	private static final int TALBOT = 32156; // 2 - Human
	private static final int CIDNET = 32148; // 3 - Elven
	private static final int BLACK = 32161; // 4 - Dark Elven
	private static final int HERTZ = 32151;// 5 - Orc
	private static final int KINCAID = 32159; // 6 - Dwarf
	private static final int XONIA = 32144; // 7 - Kamael
	
	// Items
	private static final ItemHolder SOULSHOTS = new ItemHolder(1835, 1000);
	private static final ItemHolder SPIRITSHOTS = new ItemHolder(2509, 1000);
	
	// Level Condition
	private static final int MIN_LEVEL = 1;
	private static final int MAX_LEVEL = 20;
	
	public Q10325_SearchingForNewPower()
	{
		super(10325, Q10325_SearchingForNewPower.class.getSimpleName(), "Searching For New Power");
		addStartNpc(GALLINT);
		addTalkId(GALLINT, TALBOT, CIDNET, BLACK, HERTZ, KINCAID, XONIA);
		addCondLevel(MIN_LEVEL, MAX_LEVEL, "32980-noLevel");
		addCondNotRace(Race.ERTHEIA, "32980-noErtheia.htm");
	}
	
	@Override
	public String onAdvEvent(String event, L2Npc npc, L2PcInstance player)
	{
		final QuestState qs = getQuestState(player, false);
		if (qs == null)
		{
			return null;
		}
		
		String htmltext = null;
		switch (event)
		{
			case "quest_accept":
			{
				if (player.getRace() == Race.HUMAN)
				{
					qs.startQuest();
					htmltext = "32980-human.htm";
					qs.setCond(2, true);
				}
				if (player.getRace() == Race.ELF)
				{
					qs.startQuest();
					htmltext = "32980-elves.htm";
					qs.setCond(3, true);
				}
				if (player.getRace() == Race.DARK_ELF)
				{
					qs.startQuest();
					htmltext = "32980-darkelves.htm";
					qs.setCond(4, true);
				}
				if (player.getRace() == Race.ORC)
				{
					qs.startQuest();
					htmltext = "32980-orcs.htm";
					qs.setCond(5, true);
				}
				if (player.getRace() == Race.DWARF)
				{
					qs.startQuest();
					htmltext = "32980-dwarves.htm";
					qs.setCond(6, true);
				}
				if (player.getRace() == Race.KAMAEL)
				{
					qs.startQuest();
					htmltext = "32980-kamael.htm";
					qs.setCond(7, true);
				}
				break;
			}
			
			case "32980-02.htm":
			{
				htmltext = event;
				break;	
			}
		}
		return htmltext;
	}
	
	@Override
	public String onTalk(L2Npc npc, L2PcInstance player)
	{
		final QuestState qs = getQuestState(player, true);
		String htmltext = getNoQuestMsg(player);
		
		if (qs.isCompleted())
		{
			htmltext = getAlreadyCompletedMsg(player);
		}
		
		final QuestState quest = player.getQuestState(Q10324_FindingMagisterGallint.class.getSimpleName());
		if (!quest.isCompleted())
		{
			return "32980-noQuestComplete.htm";
		}
		
		switch (npc.getId())
		{
			case GALLINT:
				if (qs.isCreated())
				{
					htmltext = "32980-01.htm";
				}
				else if (qs.isCond(2))
				{	
					htmltext = "32980-03.htm";
				}
				if (qs.isCond(8))
				{
					if (player.isMageClass())
					{
						giveItems(player, SPIRITSHOTS);
					}
					else
					{
						giveItems(player, SOULSHOTS);
					}
					addExpAndSp(player, 4654, 5);
					giveAdena(player, 120, true);
					
					htmltext = "32980-04.htm";
					qs.exitQuest(false, true);
				}
				break;	
		
			case TALBOT:
				if (qs.isCond(2) && player.getRace() == Race.HUMAN)
				{
					htmltext = "32156-01.htm";
					qs.setCond(8, true);
				}
				else
				{
					htmltext = "32156-03.htm";
				}
				if (qs.isCond(8) && player.getRace() == Race.HUMAN)
				{
					htmltext = "32156-02.htm";
				}
				break;
			
			case CIDNET:
				if (qs.isCond(3) && player.getRace() == Race.ELF)
				{
					htmltext = "32156-01.htm";
					qs.setCond(8, true);
				}
				else
				{
					htmltext = "32156-03.htm";
				}
				if (qs.isCond(8) && player.getRace() == Race.ELF)
				{
					htmltext = "32156-02.htm";
				}
				break;

			case BLACK:
				if (qs.isCond(4) && player.getRace() == Race.DARK_ELF)
				{
					htmltext = "32156-01.htm";
					qs.setCond(8, true);
				}
				else
				{
					htmltext = "32156-03.htm";
				}
				if (qs.isCond(8) && player.getRace() == Race.DARK_ELF)
				{
					htmltext = "32156-02.htm";
				}
				break;

			case HERTZ:
				if (qs.isCond(5) && player.getRace() == Race.ORC)
				{
					htmltext = "32161-01.htm";
					qs.setCond(8, true);
				}
				else
				{
					htmltext = "32161-03.htm";
				}
				if (qs.isCond(8) && player.getRace() == Race.ORC)
				{
					htmltext = "32161-02.htm";
				}
				break;
				
			case KINCAID:
				if (qs.isCond(6) && player.getRace() == Race.DWARF)
				{
					htmltext = "32159-01.htm";
					qs.setCond(8, true);
				}
				else
				{
					htmltext = "32159-03.htm";
				}
				if (qs.isCond(8) && player.getRace() == Race.DWARF)
				{
					htmltext = "32159-02.htm";
				}
				break;
				
			case XONIA:
				if (qs.isCond(7) && player.getRace() == Race.KAMAEL)
				{
					htmltext = "32144-01.htm";
					qs.setCond(8, true);
				}
				else
				{
					htmltext = "32144-03.htm";
				}
				if (qs.isCond(8) && player.getRace() == Race.KAMAEL)
				{
					htmltext = "32144-02.htm";
				}
				break;
		}
		return htmltext;
	}
}
