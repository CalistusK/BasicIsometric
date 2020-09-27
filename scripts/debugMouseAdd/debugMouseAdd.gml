///@param {str} debugMouseLabel		What the line should be labeled.
///@param debugMouseVar				(Optional) What variable should be displayed.
function debugMouseAdd(debugMouseLabel, debugMouseVar) {

	debugMouseLine = ds_list_find_index(debugMouseList, debugMouseLabel)
	var listSize = ds_list_size(debugMouseList);
	var currLabelX = string_width(debugMouseLabel);
	var customLineHeight = string_height(debugMouseLabel) - 5;

	if (debugMouseLine < 0)
	{
		ds_list_insert(debugMouseList, 0, debugMouseLabel);
		debugMouseLine = ds_list_find_index(debugMouseList, debugMouseLabel);
	}

	draw_set_colour(c_yellow);

	debugLabelPosX = mouse_x + debugMouseAnchorX;
	debugLabelPosY = mouse_y + debugMouseAnchorY - (debugMouseLine * customLineHeight);
	debugMouseBoxYleft = mouse_y - (listSize * customLineHeight);
	if (currLabelX > debugMouseLongest) debugMouseLongest = currLabelX;
	debugMouseBoxXright = mouse_x + debugMouseLongest;

	draw_text(debugLabelPosX, debugLabelPosY, debugMouseLabel);

	if (!debugMouseVar) return;

	var varPosX = mouse_x + string_width(debugMouseLabel);
	var varPosY = mouse_y + debugMouseAnchorY - (debugMouseLine * customLineHeight);
	var currFullX = currLabelX + string_width(debugMouseVar);
	if (currFullX > debugMouseLongest) debugMouseLongest = currFullX;
	debugMouseBoxXright = mouse_x + debugMouseLongest;

	draw_text(varPosX, varPosY, debugMouseVar);
}
