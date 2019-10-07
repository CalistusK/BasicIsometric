#macro MAP_W 32
#macro MAP_H 24
#macro TILE_W 16
#macro TILE_H 8
#macro TILE_W_OFFSET (TILE_W * 0.5)
#macro TILE_H_OFFSET (TILE_H * 0.5)
#macro SCREEN_W 512
#macro SCREEN_H 384
#macro SCREEN_W_OFFSET (SCREEN_W * 0.5)
#macro SCREEN_H_OFFSET (SCREEN_H * 0.25)

enum TILE
{
	SPRITE = 0,
	Z = 1
}