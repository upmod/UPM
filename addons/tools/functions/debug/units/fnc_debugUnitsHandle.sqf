/****************************************************************

Author(s):
	oscarmolinadev

File:
	fnc_toolsHandle.sqf

Description:


Performance:
	0 ms

Parameter(s):


Returns:


****************************************************************/

#include "script_component.hpp"

PARAMS_1(_action);

switch (_action) do {
    case "OPEN": {
    	["OPEN UNITS",2] call FUNC(debug);
		GVAR(unitsWindow) = true;
    };
    case "CLOSE": {
		["CLOSE UNITS",2] call FUNC(debug);
		GVAR(unitsWindow) = false;
	};
};