/// @description Display variable values
if (debug_mode && debugDraw) {
	//Display list of variables and values
	//Labels must be unique!!!
	debugInfoAdd("Debug Info:");
	debugInfoAdd("FPS: ", string(fps));
	debugInfoAdd("mouse_x: ", mouse_x);
	debugInfoAdd("mouse_y: ", mouse_y);
	debugInfoAdd("Tile: ", debugTileCoords);
}

//Draw object info at mouse position
if (debug_mode && debugMouseDraw)
{
	debugMouseDrawInst = instance_position(mouse_x, mouse_y, all);
	if (debugMouseDrawInst != noone)
	{
		//Labels must be unique!!!
		debugMouseAdd("Obj Name: ", object_get_name(debugMouseDrawInst.object_index));
		debugMouseAdd("bbox_top: ", debugMouseDrawInst.bbox_top);
		debugMouseAdd("bbox_bottom: ", debugMouseDrawInst.bbox_bottom);
		debugMouseAdd("bbox_left: ", debugMouseDrawInst.bbox_left);
		debugMouseAdd("bbox_right: ", debugMouseDrawInst.bbox_right);
	}
	else
	{
		ds_list_clear(debugMouseList);
		debugMouseLongest = 0;
	}
}