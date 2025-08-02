; Loads tile patterns for tiles used in the pokedex
LoadPokedexTilePatterns: ; marcelnote - gathered all dex tiles in same file
	ld de, PokedexTileGraphics
	ld hl, vChars2 tile $60
	lb bc, BANK(PokedexTileGraphics), (PokedexTileGraphicsEnd - PokedexTileGraphics) / $10
	call CopyVideoData
; marcelnote - new for displaying base stats bar in pokedex
	ld de, StatsBarGraphics
	ld hl, vChars2 tile $40
	lb bc, BANK(StatsBarGraphics), (StatsBarGraphicsEnd - StatsBarGraphics) / $10
	jp CopyVideoData
