//README:
Multiplayer JIP Framework by TMN Fr33d0m:

briefing.sqf is for example only of static objectives assigned to every player on JIP.

In Your /documents/Mission Folder (Where your mission.sqm file is located for the mission you are editing)
init.sqf: Add line as shown to your init.sqf. IF you dont have one, copy and pase this one. 

leave initask.sqf and initask1.sqf in your root mission folder with the init.sqf file. 

the missions folder is where all of your individual tasks will be, script by script.

You will need to call each script in the 2D editor via:
1) A trigger using the line:  M1= execVM "missions\mission2.sqf"; 
		Explanations: M1= this is a variable name, and is required to execute a VM from the trigger. Syntax rules. 
						execVM "missions\mission2.sqf"; executes the mission2.sqf script inside of the missions folder 
														as seen in your mission root folder (Where your mission.sqm is) 
2) From within a script executed with the BIS_fnc_MP function. 
Example: ["missions\mission4.sqf","BIS_fnc_execVM",true,false] spawn BIS_fnc_MP; 
Explanation: This BIS_fnc_MP method executes the script on every client computer. 

3) From an addAction executed with the BIS_fnc_MP function.
Example: this addAction ["Collect Intel",{["missions\mission2.sqf","BIS_fnc_execVM",true,false] spawn BIS_fnc_MP;}]; 
Explanation: Normally ANYTHING executed via an AddAction is CLIENT SIDE ONLY, but executing the script like THIS makes is MP compatible! YAY BOHEMIA!

That's all for now! Get creative and do something less clunky. I'll give you a cookie and a big pat on the head!! 

XOXOXOXOXOXOXO, 
Fr33d0m  					