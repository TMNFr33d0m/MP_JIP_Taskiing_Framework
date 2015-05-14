//since JIP at this point would already have the PV being 11, no eed to set it again til next mission. 
//everyone who joins after the first ppl who didnt have a PV set will get the prologue mission.
// every jipper jumps in right here. 

mil1 = player createSimpleTask ["Mission 1"]; 
mil1 setSimpleTaskDescription ["1st task mission description.","1st Mission","Go to first objective."];
mil1 setSimpleTaskDestination (getMarkerPos "Mission1MK");
mil1 setTaskState "Assigned";
player setCurrentTask mil1; 
M1 setTaskState "succeeded";