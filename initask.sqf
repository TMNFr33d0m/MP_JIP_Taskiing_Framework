// We're going to make the script wait until the player has actually joined the map. This prevents the tasks not being issued cuz no1 to issue them to (Player hadn't loaded)
waitUntil {!isNull player}; 

//If our PublicVariable called "missionStatus" hasn't been created, 
//we'll send the players to the initask1, otherwise, if the PubVar already exists,
// it's time to go straight to JIP module.

if (isNil "missionStatus") then {execVM "initask1.sqf";}else{hint "Welcome, JIP Player...TMN JIP Module is locating the progression of the Game In Progress. Standby."; execVM "scripts\JIPhandle.sqf";};