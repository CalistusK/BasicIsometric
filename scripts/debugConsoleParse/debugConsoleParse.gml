///@description		Parse a user command entered into the in-game debug console.
///@param {str}		dConParseThis

//Add to dConLog so it gets drawn in the log by debugConsoleDrawText
ds_list_add(dConLog, argument[0]);

//Check if it's a valid command and proceed accordingly
switch (argument[0])
{
	case "drawtile":
		oRenderTileSelect.drawIsoGrid = !oRenderTileSelect.drawIsoGrid;
		break;
	default: ds_list_add(dConLog, "Command '" + argument[0] + "' not found.");
}