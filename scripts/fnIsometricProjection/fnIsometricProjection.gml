function ScreenToTileX(argument0, argument1) {
	var _screenX = argument0 - SCREEN_W_OFFSET;
	var _screenY = argument1 - SCREEN_H_OFFSET;
	return floor((_screenX / TILE_W_OFFSET + _screenY / TILE_H_OFFSET) * 0.5);
}

function ScreenToTileY(argument0, argument1) {
	var _screenX = argument0 - SCREEN_W_OFFSET;
	var _screenY = argument1 - SCREEN_H_OFFSET;
	return floor((_screenY / TILE_H_OFFSET - (_screenX / TILE_W_OFFSET)) * 0.5);
}

function TileToScreenX(argument0, argument1) {
	var _tX = argument0;
	var _tY = argument1;
	return ((_tX - _tY) * TILE_W_OFFSET) + SCREEN_W_OFFSET;
}

function TileToScreenY(argument0, argument1) {
	var _tX = argument0;
	var _tY = argument1;
	return ((_tX + _tY) * TILE_H_OFFSET) + SCREEN_H_OFFSET;
}
