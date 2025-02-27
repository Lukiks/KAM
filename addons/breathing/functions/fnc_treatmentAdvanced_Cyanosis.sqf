#include "script_component.hpp"
/*
 * Author: MiszczuZPolski
 * Checks the cyanosis level of the patient.
 *
 * Arguments:
 * 0: Medic <OBJECT>
 * 1: Patient <OBJECT>
 * 2: Body Part <NUMBER>
 *
 * Return Value:
 * None
 *
 * Example:
 * call kat_breathing_fnc_checkCyanosis
 *
 * Public: No
 */

params ["_medic", "_patient", "_bodyPart"];

[QGVAR(cyanosisLocal), [_medic, _patient, _bodyPart], _patient] call CBA_fnc_targetEvent;
