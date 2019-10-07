///@description						Position Debug Info display lines based on an anchor point.
///@param {str} debugDisplayLabel	What the line should be labeled.
///@param debugDisplayVar			(Optional) What variable should be displayed.

//ex: debugInfoAnchor(0, "Debug Info:")
//ex: debugInfoAnchor(1, "pState: ", debugpState)

var debugInfoLine = ds_list_find_index(debugInfoList, argument[0])
var customLineHeight = string_height(argument[0]) - 5;

if debugInfoLine < 0
{
	ds_list_add(debugInfoList, argument[0]);
	debugInfoLine = ds_list_find_index(debugInfoList, argument[0])
}

draw_set_colour(c_yellow);

var labelPosX = debugAnchorX;
var labelPosY = debugAnchorY + (debugInfoLine * customLineHeight);
var lastY = labelPosY + customLineHeight;
if lastY > debugInfoListLastY debugInfoListLastY = lastY;
if labelPosX > debugInfoListMaxX debugInfoListMaxX = labelPosX;

draw_text(labelPosX, labelPosY, argument[0]);

if argument_count < 2 return;

var varPosX = string_width(argument[0]);
var varPosY = debugAnchorY + (debugInfoLine * customLineHeight);
var fullPosX = string_width(argument[0]) + string_width(argument[1]);
if fullPosX > debugInfoListMaxX debugInfoListMaxX = fullPosX;

draw_text(varPosX, varPosY, argument[1]);