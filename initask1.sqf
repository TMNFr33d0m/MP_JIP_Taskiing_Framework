//so, players that join at mission start should have this task. This task can be used to make a player see a CO or do something small prior to mission kick off, giving all players time to join before you have an icon to go somewhere.
// use your imagination, you can assign any kind of task.

//For the first time, we are defining the publicVariable "missionStatus. From now on, every player who joins after this script is ran will do the JIPhandle script, not this one. 
missionStatus= 11; 
publicVariable "missionStatus"; 

//creating the "prologue" mission tasks

M1 = player createSimpleTask ["Prologue"]; 
M1 setSimpleTaskDescription ["This is the initial mission for players who didn.t JIP.","Mission 1","Map Text Mission 1"]; 
M1 setSimpleTaskDestination (getMarkerPos "M1");
M1 setTaskState "Assigned";
player setCurrentTask M1;