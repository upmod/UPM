class EnvironmentWindow: RscControlsGroup
{
	idc = D_C_WENVIRONMENT;
	text = "";
	x = 5.44616e-005 * safezoneW + safezoneX + 0.05;
	y = (0.1 * safezoneH + safezoneY) + (1.6 * 1) * ((((safezoneW / safezoneH) min 1.2) / 1.2) / 25);
	w = 0.738 * safezoneW;
	h = 0.736 * safezoneH;
	class controls
	{
		// WINDOW
		class EnvironmentHeader: RscHeaderUPM_Window
		{
			idc = D_C_WHENVIRONMENT;
			x = 0;
			y = 0;
			w = 0.738 * safezoneW;
			h = "1.4 * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
			text = "ENVIRONMENT";
		};
		class EnvironmentBackground: RscBackgroundUPM_Window
		{
			idc = -1;
			x = 0;
			y = 0.035 * safezoneH;
			w = 0.738 * safezoneW;
			h = 0.7 * safezoneH;
		};
		// MENU
		#include <CtrlsUPM_EnvironmentMenu.hpp>
		// CONTENT
		#include <CtrlsUPM_EnvironmentGeneral.hpp>
	};
};