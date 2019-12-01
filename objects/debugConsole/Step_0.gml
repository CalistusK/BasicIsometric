if (dConEnabled)
{
	//Toggle console on keypress
	if (keyboard_check_pressed(vk_f12)) dConDraw = !dConDraw;
	
	//Prune the oldest text in ds_list if it gets too big
	if (ds_list_size(dConLog) > 20)
	{
		while (ds_list_size(dConLog) > 20)
		{
			ds_list_delete(dConLog, 0);
		}
	}
	
	//Handle user typing
	if (dConDraw)
	{
		dConUserText = keyboard_string;
		
		if (dConUserText != "" && keyboard_check_pressed(vk_enter))
		{
			debugConsoleParse(dConUserText);
			dConUserText = "";
			keyboard_string = "";
		}
		
		if (keyboard_check_pressed(vk_up))
		{
			keyboard_string = ds_list_find_value(dConLog, ds_list_size(dConLog) - 1);
		}
		
		if (keyboard_check_pressed(vk_tab))
		{
			debugConsoleAutocomplete(keyboard_string);
		}
		
	} else {
		keyboard_string = "";
	}
}