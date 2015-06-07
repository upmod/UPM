/****************************************************************

Author(s):
	oscarmolinadev

File:
	fnc_debugLists.sqf

Description:
	Get all list, units, vehicles etc by side.

Performance:
	0 ms

Parameter(s):


Returns:


****************************************************************/

#include "script_component.hpp"

PARAMS_2(_args,_pfh);

private [
	"_unit","_grp","_rank",
	"_vehicle",
	"_type",
	"_tmpUnits", "_tmpLightVehicles","_tmpHeavyVehicles","_tmpHelis","_tmpPlanes","_tmpNaval","_tmpStatics","_tmpGroups"
];

_tmpUnits = [];
_tmpLightVehicles = [];
_tmpHeavyVehicles = [];
_tmpHelis = [];
_tmpPlanes = [];
_tmpNaval = [];
_tmpStatics = [];
_tmpGroups = [];

{

	_unit = _x;
	_grp = group _unit;
	_vehicle = vehicle _unit;

	// Save temporary arrays
	if (_unit == _vehicle && !(_unit in _tmpUnits)) then {
		if(GETVAR(_unit,GVAR(debugMarker),-1) == -1) then {
			SETVAR(_unit,GVAR(debugMarker),0);
		};
		// Soldiers
		_tmpUnits pushBack _unit;
	} else {

		// Vehicles
		switch (true) do {
		    case (_vehicle isKindOf "Car" && !(_vehicle isKindOf "Tank")): {
		    	if(!(_vehicle in _tmpLightVehicles)) then {
		    		if(GETVAR(_vehicle,GVAR(debugMarker),-1) == -1) then {
		    			SETVAR(_vehicle,GVAR(debugMarker),0);
		    		};
		    		_tmpLightVehicles pushBack _vehicle;
		    	};
		    };
		    case (_vehicle isKindOf "Tank"): {
		    	if(!(_vehicle in _tmpHeavyVehicles)) then {
		    		if(GETVAR(_vehicle,GVAR(debugMarker),-1) == -1) then {
		    			SETVAR(_vehicle,GVAR(debugMarker),0);
		    		};
		    		_tmpHeavyVehicles pushBack _vehicle;
		    	};
		    };
		    case (_vehicle isKindOf "Helicopter"): {
		    	if(!(_vehicle in _tmpHelis)) then {
		    		if(GETVAR(_vehicle,GVAR(debugMarker),-1) == -1) then {
		    			SETVAR(_vehicle,GVAR(debugMarker),0);
		    		};
		    		_tmpHelis pushBack _vehicle;
		    	};
		    };
		    case (_vehicle isKindOf "Plane"): {
		    	if(!(_vehicle in _tmpPlanes)) then {
		    		if(GETVAR(_vehicle,GVAR(debugMarker),-1) == -1) then {
		    			SETVAR(_vehicle,GVAR(debugMarker),0);
		    		};
		    		_tmpPlanes pushBack _vehicle;
		    	};
		    };
		    case (_vehicle isKindOf "Ship"): {
		    	if(!(_vehicle in _tmpNaval)) then {
		    		if(GETVAR(_vehicle,GVAR(debugMarker),-1) == -1) then {
		    			SETVAR(_vehicle,GVAR(debugMarker),0);
		    		};
		    		_tmpNaval pushBack _vehicle;
		    	};
		    };
		    case (_vehicle isKindOf "StaticWeapon"): {
		    	if(!(_vehicle in _tmpStatics)) then {
		    		if(GETVAR(_vehicle,GVAR(debugMarker),-1) == -1) then {
		    			SETVAR(_vehicle,GVAR(debugMarker),0);
		    		};
		    		_tmpStatics pushBack _vehicle;
		    	};
		    };
		};

	};

	if (!(_grp in _tmpGroups)) then {
		_tmpGroups pushBack _grp;
	};

} forEach allUnits;

GVAR(listUnits) = _tmpUnits;
GVAR(listLightVehicles) = _tmpLightVehicles;
GVAR(listHeavyVehicles) = _tmpHeavyVehicles;
GVAR(listHelis) = _tmpHelis;
GVAR(listPlanes) = _tmpPlanes;
GVAR(listNaval) = _tmpNaval;
GVAR(listStatics) = _tmpStatics;
GVAR(listGroups) = _tmpGroups;

if !(GVAR(state)) then {
	[_pfh] call CBA_fnc_removePerFrameHandler;
};