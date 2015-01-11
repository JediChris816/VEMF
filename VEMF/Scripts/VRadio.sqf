/*
	VEMF Radio by Vampire

	Description:
	 - Sets up Radio Stuff (Very Descriptive)
*/
private ["_grp"];

// Create HQ
_grp = createGroup CIVILIAN;
VEMFCivHQ = _grp createUnit ["Logic",[0,0,0],[],0,"NONE"];
[VEMFCivHQ] joinSilent _grp;
VEMFCivHQ enableSimulation false;
VEMFCivHQ setGroupId ["Civilian"];

// Join Channels
{
	_x radioChannelAdd [VEMFCivHQ];
} forEach EPOCH_customChannels;

// Log
diag_log text format ["[VEMF]: VEMFCivHQ Successfully Created and Joined."];