class TabUnits: RscButtonUPM_Tools
{
	idc = D_C_TABUNITS;
	text = "<img image='\u\upm\addons\tools\data\icons_menu\unit.paa' align='center' size='0.8' />";
	x = 5.44616e-005 * safezoneW + safezoneX;
	y = (0.1 * safezoneH + safezoneY) + (1.6 * 2) * ((((safezoneW / safezoneH) min 1.2) / 1.2) / 25);
	w = "1.4 * 			(			((safezoneW / safezoneH) min 1.2) / 40)";
	h = "1.4 * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
	tooltip = "UNITS";
	class TextPos
	{
		left = 0;
		top = 0.01;
		right = 0;
		bottom = 0;
	};
	action = QUOTE(if !(GVAR(unitsWindow)) then {['OPEN'] call FUNC(debugUnitsHandle);} else {['CLOSE'] call FUNC(debugUnitsHandle);});
};

class TabGroups: RscButtonUPM_Tools
{
	idc = D_C_TABGROUPS;
	text = "<img image='\u\upm\addons\tools\data\icons_menu\group.paa' align='center' size='0.8' />";
	x = 5.44616e-005 * safezoneW + safezoneX;
	y = (0.1 * safezoneH + safezoneY) + (1.6 * 3) * ((((safezoneW / safezoneH) min 1.2) / 1.2) / 25);
	w = "1.4 * 			(			((safezoneW / safezoneH) min 1.2) / 40)";
	h = "1.4 * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
	tooltip = "GROUPS";
	class TextPos
	{
		left = 0;
		top = 0.01;
		right = 0;
		bottom = 0;
	};
	action = QUOTE(if !(GVAR(groupsWindow)) then {['OPEN'] call FUNC(debugGroupsHandle);} else {['CLOSE'] call FUNC(debugGroupsHandle);});
	//action = QUOTE(if !(GVAR(markerGroups)) then {[true] call FUNC(debugAllMarkersGroups); GVAR(markerGroups) = true;} else {[false] call FUNC(debugAllMarkersGroups);GVAR(markerGroups) = false;});
};

class TabLightVehicles: RscButtonUPM_Tools
{
	idc = D_C_TABLIGHTVEHICLES;
	text = "<img image='\u\upm\addons\tools\data\icons_menu\car.paa' align='center' size='0.5' />";
	x = 5.44616e-005 * safezoneW + safezoneX;
	y = (0.1 * safezoneH + safezoneY) + (1.6 * 4) * ((((safezoneW / safezoneH) min 1.2) / 1.2) / 25);
	w = "1.4 * 			(			((safezoneW / safezoneH) min 1.2) / 40)";
	h = "1.4 * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
	tooltip = "LIGHT VEHICLES";
	class TextPos
	{
		left = 0;
		top = 0.017;
		right = 0;
		bottom = 0;
	};
	action = QUOTE(if !(GVAR(lightVehiclesWindow)) then {['OPEN'] call FUNC(debugLightVehiclesHandle);} else {['CLOSE'] call FUNC(debugLightVehiclesHandle);});
};

class TabHeavyVehicles: RscButtonUPM_Tools
{
	idc = D_C_TABHEAVYVEHICLES;
	text = "<img image='\u\upm\addons\tools\data\icons_menu\tank.paa' align='center' size='0.5' />";
	x = 5.44616e-005 * safezoneW + safezoneX;
	y = (0.1 * safezoneH + safezoneY) + (1.6 * 5) * ((((safezoneW / safezoneH) min 1.2) / 1.2) / 25);
	w = "1.4 * 			(			((safezoneW / safezoneH) min 1.2) / 40)";
	h = "1.4 * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
	tooltip = "HEAVY VEHICLES";
	class TextPos
	{
		left = 0;
		top = 0.017;
		right = 0;
		bottom = 0;
	};
	action = QUOTE(if !(GVAR(heavyVehiclesWindow)) then {['OPEN'] call FUNC(debugHeavyVehiclesHandle);} else {['CLOSE'] call FUNC(debugHeavyVehiclesHandle);});
};

class TabHelis: RscButtonUPM_Tools
{
	idc = D_C_TABHELIS;
	text = "<img image='\u\upm\addons\tools\data\icons_menu\helicopter.paa' align='center' size='0.5' />";
	x = 5.44616e-005 * safezoneW + safezoneX;
	y = (0.1 * safezoneH + safezoneY) + (1.6 * 6) * ((((safezoneW / safezoneH) min 1.2) / 1.2) / 25);
	w = "1.4 * 			(			((safezoneW / safezoneH) min 1.2) / 40)";
	h = "1.4 * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
	tooltip = "HELICOPTERS";
	class TextPos
	{
		left = 0;
		top = 0.018;
		right = 0;
		bottom = 0;
	};
	action = QUOTE(if !(GVAR(helisWindow)) then {['OPEN'] call FUNC(debugHelisHandle);} else {['CLOSE'] call FUNC(debugHelisHandle);});
};

class TabPlanes: RscButtonUPM_Tools
{
	idc = D_C_TABPLANES;
	text = "<img image='\u\upm\addons\tools\data\icons_menu\plane.paa' align='center' size='0.5' />";
	x = 5.44616e-005 * safezoneW + safezoneX;
	y = (0.1 * safezoneH + safezoneY) + (1.6 * 7) * ((((safezoneW / safezoneH) min 1.2) / 1.2) / 25);
	w = "1.4 * 			(			((safezoneW / safezoneH) min 1.2) / 40)";
	h = "1.4 * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
	tooltip = "PLANES";
	class TextPos
	{
		left = 0;
		top = 0.017;
		right = 0;
		bottom = 0;
	};
	action = QUOTE(if !(GVAR(planesWindow)) then {['OPEN'] call FUNC(debugPlanesHandle);} else {['CLOSE'] call FUNC(debugPlanesHandle);});
};

class TabNaval: RscButtonUPM_Tools
{
	idc = D_C_TABNAVAL;
	text = "<img image='\u\upm\addons\tools\data\icons_menu\naval.paa' align='center' size='0.5' />";
	x = 5.44616e-005 * safezoneW + safezoneX;
	y = (0.1 * safezoneH + safezoneY) + (1.6 * 8) * ((((safezoneW / safezoneH) min 1.2) / 1.2) / 25);
	w = "1.4 * 			(			((safezoneW / safezoneH) min 1.2) / 40)";
	h = "1.4 * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
	tooltip = "NAVAL";
	class TextPos
	{
		left = 0;
		top = 0.017;
		right = 0;
		bottom = 0;
	};
	action = QUOTE(if !(GVAR(navalWindow)) then {['OPEN'] call FUNC(debugNavalHandle);} else {['CLOSE'] call FUNC(debugNavalHandle);});
};

class TabStatics: RscButtonUPM_Tools
{
	idc = D_C_TABSTATICS;
	text = "<img image='\u\upm\addons\tools\data\icons_menu\static.paa' align='center' size='0.9' />";
	x = 5.44616e-005 * safezoneW + safezoneX;
	y = (0.1 * safezoneH + safezoneY) + (1.6 * 9) * ((((safezoneW / safezoneH) min 1.2) / 1.2) / 25);
	w = "1.4 * 			(			((safezoneW / safezoneH) min 1.2) / 40)";
	h = "1.4 * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
	tooltip = "STATICS";
	class TextPos
	{
		left = 0;
		top = -0.033;
		right = 0;
		bottom = 0;
	};
	action = QUOTE(if !(GVAR(staticsWindow)) then {['OPEN'] call FUNC(debugStaticsHandle);} else {['CLOSE'] call FUNC(debugStaticsHandle);});
};

class TabEnvironment: RscButtonUPM_Tools
{
	idc = D_C_TABENVIRONMENT;
	text = "<img image='\u\upm\addons\tools\data\icons_menu\environment.paa' align='center' size='0.8' />";
	x = 5.44616e-005 * safezoneW + safezoneX;
	y = (0.1 * safezoneH + safezoneY) + (1.6 * 10) * ((((safezoneW / safezoneH) min 1.2) / 1.2) / 25);
	w = "1.4 * 			(			((safezoneW / safezoneH) min 1.2) / 40)";
	h = "1.4 * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
	tooltip = "ENVIRONMENT";
	class TextPos
	{
		left = 0;
		top = 0.01;
		right = 0;
		bottom = 0;
	};
	action = QUOTE(if !(GVAR(environmentWindow)) then {['OPEN'] call FUNC(debugEnvironmentHandle);} else {['CLOSE'] call FUNC(debugEnvironmentHandle);});
};

class TabPerformance: RscButtonUPM_Tools
{
	idc = D_C_TABPERFORMANCE;
	text = "<img image='\u\upm\addons\tools\data\icons_menu\performance.paa' align='center' size='0.8' />";
	x = 5.44616e-005 * safezoneW + safezoneX;
	y = (0.1 * safezoneH + safezoneY) + (1.6 * 11) * ((((safezoneW / safezoneH) min 1.2) / 1.2) / 25);
	w = "1.4 * 			(			((safezoneW / safezoneH) min 1.2) / 40)";
	h = "1.4 * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
	tooltip = "PERFORMANCE";
	class TextPos
	{
		left = 0;
		top = 0.01;
		right = 0;
		bottom = 0;
	};
	action = QUOTE(if !(GVAR(performanceWindow)) then {['OPEN'] call FUNC(debugPerformanceHandle);} else {['CLOSE'] call FUNC(debugPerformanceHandle);});
};

class TabSettings: RscButtonUPM_Tools
{
	idc = D_C_TABSETTINGS;
	text = "<img image='\u\upm\addons\tools\data\icons_menu\settings.paa' align='center' size='0.8' />";
	x = 5.44616e-005 * safezoneW + safezoneX;
	y = (0.1 * safezoneH + safezoneY) + (1.6 * 12) * ((((safezoneW / safezoneH) min 1.2) / 1.2) / 25);
	w = "1.4 * 			(			((safezoneW / safezoneH) min 1.2) / 40)";
	h = "1.4 * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
	tooltip = "SETTINGS";
	class TextPos
	{
		left = 0;
		top = 0.01;
		right = 0;
		bottom = 0;
	};
	action = QUOTE(if !(GVAR(settingsWindow)) then {['OPEN'] call FUNC(debugSettingsHandle);} else {['CLOSE'] call FUNC(debugSettingsHandle);});
};