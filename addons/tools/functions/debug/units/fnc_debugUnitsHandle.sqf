/****************************************************************

Author(s):
	oscarmolinadev

File:
	fnc_debugUnitsHandle.sqf

Description:


Performance:
	0 ms

Parameter(s):
	0: STRING - Action

Returns:
	NOTHING

****************************************************************/

#include "script_component.hpp"

PARAMS_1(_action);

private [
	"_display",
	"_window"
];

_display = GETUVAR(upm_RscTools,displayNull);

switch (_action) do {
    case "OPEN": {

		// CLOSE ALL
		['CLOSE'] call FUNC(debugEnvironmentHandle);
		['CLOSE'] call FUNC(debugGroupsHandle);
		['CLOSE'] call FUNC(debugHeavyVehiclesHandle);
		['CLOSE'] call FUNC(debugHelisHandle);
		['CLOSE'] call FUNC(debugLightVehiclesHandle);
		['CLOSE'] call FUNC(debugNavalHandle);
		['CLOSE'] call FUNC(debugPerformanceHandle);
		['CLOSE'] call FUNC(debugPlanesHandle);
		['CLOSE'] call FUNC(debugSettingsHandle);
		['CLOSE'] call FUNC(debugStaticsHandle);

    	// OPEN MAIN WINDOW UNITS
		_window = _display displayCtrl D_C_WUNITS;
		_window ctrlShow true;
		_window ctrlCommit 0;
		ctrlEnable [D_C_WUNITS, true];

		GVAR(unitsWindow) = true;

    	// CLOSE ALL
    	['CLOSE_GENERAL'] call FUNC(debugUnitsHandle);
		['CLOSE_SPECTATOR'] call FUNC(debugUnitsHandle);
		['CLOSE_MARKERS2D'] call FUNC(debugUnitsHandle);
		['CLOSE_MARKERS3D'] call FUNC(debugUnitsHandle);
		['CLOSE_UPMINFO'] call FUNC(debugUnitsHandle);

		// START
		['OPEN_GENERAL'] call FUNC(debugUnitsHandle);

    };
    case "CLOSE": {

		// CLOSE MAIN WINDOW UNITS
		_window = _display displayCtrl D_C_WUNITS;
		_window ctrlShow false;
		_window ctrlCommit 0;
		ctrlEnable [D_C_WUNITS, false];

		GVAR(unitsWindow) = false;

	};
	case "OPEN_GENERAL": {

    	_ctrlText = _display displayCtrl D_C_WHUNITS;
		ctrlSetText [D_C_WHUNITS, "UNITS -  GENERAL"];

    	// OPEN CONTENT GENERAL
		_window = _display displayCtrl D_C_CUNITSGENERAL;
		_window ctrlShow true;
		_window ctrlCommit 0;
		ctrlEnable [D_C_CUNITSGENERAL, true];

		GVAR(unitsGeneral) = true;

    	// CLEAN CONTENT
		['CLOSE_SPECTATOR'] call FUNC(debugUnitsHandle);
		['CLOSE_MARKERS2D'] call FUNC(debugUnitsHandle);
		['CLOSE_MARKERS3D'] call FUNC(debugUnitsHandle);
		['CLOSE_UPMINFO'] call FUNC(debugUnitsHandle);

	};
	case "CLOSE_GENERAL": {

		// CLOSE CONTENT GENERAL
		_window = _display displayCtrl D_C_CUNITSGENERAL;
		_window ctrlShow false;
		_window ctrlCommit 0;
		ctrlEnable [D_C_CUNITSGENERAL, false];

		GVAR(unitsGeneral) = false;
	};
	case "OPEN_SPECTATOR": {

    	_ctrlText = _display displayCtrl D_C_WHUNITS;
		ctrlSetText [D_C_WHUNITS, "UNITS -  SPECTATOR"];

    	// OPEN CONTENT SPECTATOR
		_window = _display displayCtrl D_C_CUNITSSPECTATOR;
		_window ctrlShow true;
		_window ctrlCommit 0;
		ctrlEnable [D_C_CUNITSSPECTATOR, true];
		ctrlSetFocus _window;

		GVAR(unitsSpectator) = true;

		// CLEAN CONTENT
		['CLOSE_GENERAL'] call FUNC(debugUnitsHandle);
		['CLOSE_MARKERS2D'] call FUNC(debugUnitsHandle);
		['CLOSE_MARKERS3D'] call FUNC(debugUnitsHandle);
		['CLOSE_UPMINFO'] call FUNC(debugUnitsHandle);

		GVAR(selectedList) = 'BLUFOR';
		[] call FUNC(debugUnitsSelectList);

	};
	case "CLOSE_SPECTATOR": {

		// CLOSE CONTENT SPECTATOR
		_window = _display displayCtrl D_C_CUNITSSPECTATOR;
		_window ctrlShow false;
		_window ctrlCommit 0;
		ctrlEnable [D_C_CUNITSSPECTATOR, false];

		GVAR(unitsSpectator) = false;
	};
	case "OPEN_MARKERS2D": {

    	_ctrlText = _display displayCtrl D_C_WHUNITS;
		ctrlSetText [D_C_WHUNITS, "UNITS -  MARKERS 2D"];

    	// OPEN CONTENT MARKERS2D
		_window = _display displayCtrl D_C_CUNITSMARKERS2D;
		_window ctrlShow true;
		_window ctrlCommit 0;
		ctrlEnable [D_C_CUNITSMARKERS2D, true];
		ctrlSetFocus _window;

		GVAR(unitsMarkers2d) = true;

		// CLEAN CONTENT
    	['CLOSE_GENERAL'] call FUNC(debugUnitsHandle);
		['CLOSE_SPECTATOR'] call FUNC(debugUnitsHandle);
		['CLOSE_MARKERS3D'] call FUNC(debugUnitsHandle);
		['CLOSE_UPMINFO'] call FUNC(debugUnitsHandle);

	};
	case "CLOSE_MARKERS2D": {

		// CLOSE CONTENT MARKERS2D
		_window = _display displayCtrl D_C_CUNITSMARKERS2D;
		_window ctrlShow false;
		_window ctrlCommit 0;
		ctrlEnable [D_C_CUNITSMARKERS2D, false];

		GVAR(unitsMarkers2d) = false;
	};
	case "OPEN_MARKERS3D": {

    	_ctrlText = _display displayCtrl D_C_WHUNITS;
		ctrlSetText [D_C_WHUNITS, "UNITS -  MARKERS 3D"];

    	// OPEN CONTENT MARKERS3D
		_window = _display displayCtrl D_C_CUNITSMARKERS3D;
		_window ctrlShow true;
		_window ctrlCommit 0;
		ctrlEnable [D_C_CUNITSMARKERS3D, true];
		ctrlSetFocus _window;

		GVAR(unitsMarkers3d) = true;

		// CLEAN CONTENT
    	['CLOSE_GENERAL'] call FUNC(debugUnitsHandle);
		['CLOSE_SPECTATOR'] call FUNC(debugUnitsHandle);
		['CLOSE_MARKERS2D'] call FUNC(debugUnitsHandle);
		['CLOSE_UPMINFO'] call FUNC(debugUnitsHandle);

	};
	case "CLOSE_MARKERS3D": {

		// CLOSE CONTENT MARKERS3D
		_window = _display displayCtrl D_C_CUNITSMARKERS3D;
		_window ctrlShow false;
		_window ctrlCommit 0;
		ctrlEnable [D_C_CUNITSMARKERS3D, false];

		GVAR(unitsMarkers3d) = false;
	};
	case "OPEN_UPMINFO": {

    	_ctrlText = _display displayCtrl D_C_WHUNITS;
		ctrlSetText [D_C_WHUNITS, "UNITS -  UPM INFO"];

    	// OPEN CONTENT UPMINFO
		_window = _display displayCtrl D_C_CUNITSUPMINFO;
		_window ctrlShow true;
		_window ctrlCommit 0;
		ctrlEnable [D_C_CUNITSUPMINFO, true];
		ctrlSetFocus _window;

		GVAR(unitsUPMInfo) = true;

		// CLEAN CONTENT
    	['CLOSE_GENERAL'] call FUNC(debugUnitsHandle);
		['CLOSE_SPECTATOR'] call FUNC(debugUnitsHandle);
		['CLOSE_MARKERS2D'] call FUNC(debugUnitsHandle);
		['CLOSE_MARKERS3D'] call FUNC(debugUnitsHandle);

	};
	case "CLOSE_UPMINFO": {

		// CLOSE CONTENT UPMINFO
		_window = _display displayCtrl D_C_CUNITSUPMINFO;
		_window ctrlShow false;
		_window ctrlCommit 0;
		ctrlEnable [D_C_CUNITSUPMINFO, false];

		GVAR(unitsUPMInfo) = false;
	};
};