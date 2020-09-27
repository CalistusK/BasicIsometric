var tileData, screenX, screenY, tileIndex, tileZ;

for (var tX = 0; tX < MAP_W; tX++)
{
	for (var tY = 0; tY < MAP_H; tY++)
	{
		tileData = global.theMap[# tX, tY];
		screenX = TileToScreenX(tX, tY);
		screenY = TileToScreenY(tX, tY);
		
		tileIndex = tileData[TILE.SPRITE];
		tileZ = tileData[TILE.Z];

		//Draw tile highlight on mouseover
		if (ScreenToTileX(mouse_x,mouse_y) == tX) && ((ScreenToTileY(mouse_x,mouse_y) == tY) && (mouse_button = mb_left))
		{
			draw_sprite(sTileSelect, -1, screenX, screenY + tileZ);
		}
	}
}