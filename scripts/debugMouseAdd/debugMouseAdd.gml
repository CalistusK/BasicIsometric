///@param {str} debugMouseLabel		What the line should be labeled.
///@param debugMouseVar				(Optional) What variable should be displayed.

debugMouseLine = ds_list_find_index(debugMouseList, argument[0])
var listSize = ds_list_size(debugMouseList);
var currLabelX = string_width(argument[0]);
var customLineHeight = string_height(argument[0]) - 5;

if debugMouseLine < 0
{
	ds_list_insert(debugMouseList, 0, argument[0]);
	debugMouseLine = ds_list_find_index(debugMouseList, argument[0]);
}

draw_set_colour(c_yellow);

debugLabelPosX = mouse_x + debugMouseAnchorX;
debugLabelPosY = mouse_y + debugMouseAnchorY - (debugMouseLine * customLineHeight);
debugMouseBoxYleft = mouse_y - (listSize * customLineHeight);
if currLabelX > debugMouseLongest debugMouseLongest = currLabelX;
debugMouseBoxXright = mouse_x + debugMouseLongest;

draw_text(debugLabelPosX, debugLabelPosY, argument[0]);

if argument_count < 2 return;

var varPosX = mouse_x + string_width(argument[0]);
var varPosY = mouse_y + debugMouseAnchorY - (debugMouseLine * customLineHeight);
var currFullX = currLabelX + string_width(argument[1]);
if currFullX > debugMouseLongest debugMouseLongest = currFullX;
debugMouseBoxXright = mouse_x + debugMouseLongest;

draw_text(varPosX, varPosY, argument[1]);