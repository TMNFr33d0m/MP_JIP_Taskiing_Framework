waitUntil { !isNil {player} };
waitUntil { player == player };

switch (side player) do
{

case WEST: // BLUFOR briefing goes here
{
};


case EAST: // OPFOR briefing goes here
{
};


case RESISTANCE: // RESISTANCE/INDEPENDENT briefing goes here
{

// YOU CAN SET CONSTANT OBJECTIVES FOR ALL PLAYERS THAT DONT GET COMPLETED (INFORMATIONAL OBJECTIVES FOR EXAMPLE RIGHT HERE!
player createDiaryRecord ["Diary", ["Mission", "You are part of the Special Narcotics Operations Battalion (SNOB) and your team, small and outnumbered, must battle the guerilla forces on the island of Altis in an attempt to stop the drug narcotrafficantes from destroying Altis one addict and casualty at a time. Eduardo Rillito, A major drug kingpin in Altis, is enjoying the fair climate to grow and harvest coca plants. He manufactures the cocaine on the island and then ships it across the sea, to the South American Continent, where it joins in with the rest of the narcotics, firearms and assorted contraband on its way North. Your objective is to thin his private militia's presence on the island, find him, and take him out. You are also implored to deal with the narcotics if and when you encounter them. Remember to stay professional."]];

gunobj = player createSimpleTask ["Visit one of the Requisition Officers for equipment"];
gunobj setSimpleTaskDescription ["Our unit's Requisition Officer can be found standing around SNOB Barracks. Speak to him to requisition some gear!","Armament","Get yourself some gear, soldier!"];
gunobj setTaskState "Created";

mainobj = player createSimpleTask ["Liberate Altis Island"];
mainobj setSimpleTaskDescription ["Liberate the island of Altis. ","Primary Objective","Secure Altis Island"];
mainobj setSimpleTaskDestination (getMarkerPos "mainobj");
mainobj setTaskState "Created";
};


case CIVILIAN: // CIVILIAN briefing goes here
{
};
}; 