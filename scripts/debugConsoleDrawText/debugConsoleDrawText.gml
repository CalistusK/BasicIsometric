///@description					Position Debug Console text lines.
///@param {ds_list} dConList	A ds_list containing text to be displayed.

//todo: Only display lines x through y at a time based on debugConsole background size

var listsize = ds_list_size(argument[0]);
if (listsize > 5)
{
	var startfrom = listsize - 5;
} else {
	var startfrom = 0;
}

var textline = 0;
for (var i = startfrom; i < listsize; i++)
{
	var thisText = ds_list_find_value(argument[0], i);
	draw_text(2, dConTopAnchor + (textline * string_height(thisText)), thisText);
	textline++;
}