///@description						Position Debug Info display lines based on an anchor point.
///@param {str} debugDisplayLabel	What the line should be labeled.
///@param debugDisplayVar			(Optional) What variable should be displayed.
function debugInfoAdd(debugDisplayLabel, debugDisplayVar) {

	//ex: debugInfoAnchor(0, "Debug Info:")
	//ex: debugInfoAnchor(1, "pState: ", debugpState)

	var debugInfoLine = ds_list_find_index(debugInfoList, debugDisplayLabel)
	var customLineHeight = string_height(debugDisplayLabel) - 5;

	if (debugInfoLine < 0)
	{
		ds_list_add(debugInfoList, debugDisplayLabel);
		debugInfoLine = ds_list_find_index(debugInfoList, debugDisplayLabel)
	}

	draw_set_colour(c_yellow);

	var labelPosX = debugAnchorX;
	var labelPosY = debugAnchorY + (debugInfoLine * customLineHeight);
	var lastY = labelPosY + customLineHeight;
	if (lastY > debugInfoListLastY) debugInfoListLastY = lastY;
	if (labelPosX > debugInfoListMaxX) debugInfoListMaxX = labelPosX;

	draw_text(labelPosX, labelPosY, debugDisplayLabel);

	if (!debugDisplayVar) return;

	var varPosX = string_width(debugDisplayLabel);
	var varPosY = debugAnchorY + (debugInfoLine * customLineHeight);
	var fullPosX = string_width(debugDisplayLabel) + string_width(debugDisplayVar);
	if (fullPosX > debugInfoListMaxX) debugInfoListMaxX = fullPosX;

	draw_text(varPosX, varPosY, debugDisplayVar);
}