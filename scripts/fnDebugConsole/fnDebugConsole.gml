///@description		Try to autocomplete a debug console command.
///@param {str}		dConIncomplete
function debugConsoleAutocomplete(dConIncomplete) {
	for (var i = 0; i < array_length_1d(dConCommands); i++)
	{
		if (string_copy(dConCommands[i], 1, string_length(dConIncomplete)) == dConIncomplete)
		{
			keyboard_string = dConCommands[i];
		}
	}
}

///@description					Position Debug Console text lines.
///@param {ds_list} dConList	A ds_list containing text to be displayed.
function debugConsoleDrawText(dConList) {
	//todo: Only display lines x through y at a time based on debugConsole background size
	var listsize = ds_list_size(dConList);
	if (listsize > 5)
	{
		var startfrom = listsize - 5;
	} else {
		var startfrom = 0;
	}

	var textline = 0;
	for (var i = startfrom; i < listsize; i++)
	{
		var thisText = ds_list_find_value(dConList, i);
		draw_text(2, dConTopAnchor + (textline * string_height(thisText)), thisText);
		textline++;
	}
}

///@description		Parse a user command entered into the in-game debug console.
///@param {str}		dConParseThis
function debugConsoleParse(dConParseThis) {
	//Add to dConLog so it gets drawn in the log by debugConsoleDrawText
	ds_list_add(dConLog, dConParseThis);

	//Check if it's a valid command and proceed accordingly
	switch (dConParseThis)
	{
		case "drawtile":
			oRenderTileSelect.drawIsoGrid = !oRenderTileSelect.drawIsoGrid;
			break;
		default:
			ds_list_add(dConLog, "Command '" + dConParseThis + "' not found.");
			break;
	}
}