var _screenX = argument0 - SCREEN_W_OFFSET;
var _screenY = argument1 - SCREEN_H_OFFSET;
return floor((_screenY / TILE_H_OFFSET - (_screenX / TILE_W_OFFSET)) * 0.5);