/// @description Draw background for debug display
if (debug_mode && debugDraw)
{
	if ds_list_size(debugInfoList) != 0
	{
		draw_set_alpha(0.5);
		draw_rectangle_colour(debugAnchorX, debugAnchorY, debugInfoListMaxX, debugInfoListLastY, c_black, c_black, c_black, c_black, false);
		draw_set_alpha(1);
	}
}