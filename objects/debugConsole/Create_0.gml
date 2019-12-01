//bools
if (debug_mode) dConEnabled = true;
dConDraw = false;

//others
dConWelcome = "Hey it's the debug console!"
dConCursor = "|";
dConCursorDelay = 20;
alarm[0] = dConCursorDelay;

dConLog = ds_list_create();
ds_list_add(dConLog, dConWelcome);

dConCommands = ds_map_create();
ds_map_add(dConCommands, "drawtile", "Draw highlights over all tiles in the isometric grid.");