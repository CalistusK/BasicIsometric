/// @description Draw text
if (debug_mode && dConEnabled && dConDraw)
{
	var cursortext = dConUserText + dConCursor;
	debugConsoleDrawText(dConLog);
	draw_text(2, SCREEN_H - string_height(cursortext), cursortext);
}