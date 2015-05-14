//Now we're at the JIPhandle scripts. This script takes each JIP player and 
//evaluates where the PublicVariable is at in global space, then executes the right mission for the JP player
//based on that info.

//let's let the player know he's being JIP handled:

hint "JIP Manager is working....";
sleep 3.0; 

//The evaluation begins... checking current PV value of missionStatus and figuring out which mission to run for JIPper.
//to add a mission, just copy my CASE format, and add a new number 
//(any number will work but 0 or 1 (interpreted by the machine as True of false ITC) 
 
switch (missionStatus) do 
{
	case 11: 
	{
		execVM "missions\mission1.sqf"
		};
		
	case 22: {
		execVM "missions\mission2.sqf"
		};
		
	case 33: {
		execVM "missions\mission3.sqf"
		};
	
	case 44: {
		execVM "missions\mission4.sqf"
		};
	
	case 55: {
		execVM "missions\mission5.sqf"
		};
		
	case 66: {
		execVM "missions\mission5.9.sqf"
		};
		
	case 77: {
		execVM "missions\mission6.sqf"
		};
		
	case 88: {
		execVM "missions\mission7.sqf"
		};
		
	default
	{
        hint "Something went horribly wrong. Could not assign JIP task";
    };
};