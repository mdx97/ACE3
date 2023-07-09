#include "script_component.hpp"

/*
 * Gets the PositionASL of a waypoint target.
 *
 * This script exists so that 3rd party mods can patch over ace_microdagr_fnc_deviceGetWaypoints and return targets
 * that are not necessarily PositionASL.
 *
 * Arguments:
 * 0: Waypoint Target <ANY>
 *
 * Return Value:
 * Target Position <ARRAY>
 *
 * Example:
 * [((call ace_microdagr_fnc_deviceGetWaypoints) select 0) select 1] call ace_microdagr_fnc_getWaypointTargetPosASL
 *
 * Public: No
 */

params ["_waypointTarget"];

// In standard ACE, all waypoint targets are in PositionASL.
_waypointTarget