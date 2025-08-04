SafariZoneCenterWildMons:
	def_grass_wildmons 30 ; encounter rate
IF DEF(_RED)
	db 22, NIDORAN_M
	db 25, RHYHORN
	;db 22, VENONAT ; marcelnote - removed
	db 24, EXEGGCUTE
	db 31, NIDORINO
	db 25, EXEGGCUTE
	db 31, NIDORINA
	db 30, PARASECT
	db 23, SCYTHER
	db 23, PINSIR ; marcelnote - added
ENDC
IF (DEF(_BLUE) || DEF(_GREEN)) ; marcelnote: Green has same encounters as Blue for now
	db 22, NIDORAN_F
	db 25, RHYHORN
	;db 22, VENONAT ; marcelnote - removed
	db 24, EXEGGCUTE
	db 31, NIDORINA
	db 25, EXEGGCUTE
	db 31, NIDORINO
	db 30, PARASECT
	db 23, PINSIR
	db 23, SCYTHER ; marcelnote - added
ENDC
	db 23, CHANSEY
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons
