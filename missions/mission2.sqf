//this script gets activated via something in the map, like a trigger or an addAction [BIS_fnc_MP style]
//Make sure if you call via BIS_fnc_MP that you set isPersistant to FALSE or every time a player JIPS
//you will get your PublicVariable set back to the last mission that was executed via BIS_fnc_MP.

//since mission 11 was complete, we can now set PublicVariable to mission= 22
missionStatus= 22;
//Below is the line of code that actually send this out to other players.
publicVariable "missionStatus";

//and now we can deal with the tasks assignment. 
mil1 setTaskState "Succeeded";
deleteVehicle docs1;
sleep 2.0;
M3 = player createSimpleTask ["Mission 3 Title"];  
M3 setSimpleTaskDescription ["Mission 3 Description ","Mission 3 ","Mission Task Title"];  
M3 setSimpleTaskDestination (getMarkerPos "Mission3MK"); 
M3 setTaskState "Assigned";  
player setCurrentTask M3; 
sleep 20.0; 
hint "You may RTB to rearm and seek medical care at the infirmary.";
sleep 6.0;
hint "";