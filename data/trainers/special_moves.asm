; marcelnote - imported file from pokeyellow to deal with Special Moves
; Yellow entry format:
;	db trainerclass, trainerid
;	repeat { db partymon location, partymon move, move id }
;	db 0 ; marcelnote - changed terminator 0 to $ff to avoid bugs with NO_MOVE (=0) entries

; TO DO: other special trainers
; e.g. Otoshi (Marowak), Anthony (Hitmonchan), Melvin (Exeggcute), Giselle (Academy)

SpecialTrainerMoves:
	db YOUNGSTER, 14  ; based on A.J.
	; Sandshrew
	db 1, 4, FISSURE
	db $ff

	db BROCK, 1
	; Omanyte
	db 1, 1, BIDE
	db 1, 2, CONSTRICT
	db 1, 3, WATER_GUN
	; Kabuto
	db 2, 1, BIDE
	db 2, 2, SCRATCH
	db 2, 3, ABSORB
	; Onix
	db 3, 1, ROCK_THROW
	db 3, 2, BIND
	db 3, 3, BIDE
	db $ff

	db BROCK, 2  ; rematch
	; Aerodactyl - FLY, ROCK_SLIDE, SCREECH, HYPER_BEAM
	db 1, 1, FLY
	; Rhydon - DOUBLE_EDGE, ROCK_SLIDE, HORN_DRILL, EARTHQUAKE
	db 2, 1, DOUBLE_EDGE
	; Omastar - BLIZZARD, TOXIC, CLAMP, SURF
	db 3, 1, BLIZZARD
	db 3, 2, TOXIC
	db 3, 4, SURF
	; Golem - FOCUS_ENERGY, ROCK_SLIDE, EARTHQUAKE, EXPLOSION
	; no change
	; Kabutops - SLASH, SWORDS_DANCE, ROCK_SLIDE, HYDRO_PUMP
	; no change
	; Onix - BIND, FISSURE, ROCK_SLIDE, AGILITY
	db 6, 2, FISSURE
	db $ff

	db MISTY, 1
	; Psyduck
	db 1, 1, CONFUSION
	db 1, 2, BUBBLEBEAM
	; Horsea
	db 2, 1, SMOKESCREEN
	db 2, 2, BUBBLEBEAM
	; Starmie
	db 3, 1, SWIFT
	db 3, 3, BUBBLEBEAM
	db $ff

	db MISTY, 2  ; rematch
	; Seaking
	db 1, 1, AGILITY
	db 1, 4, NO_MOVE
	; Golduck
	db 2, 1, HYPER_BEAM
	db 2, 2, PSYCHIC_M
	; Dragonair
	db 3, 1, SURF
	db 3, 3, BLIZZARD
	; Seadra
	db 4, 3, SMOKESCREEN
	; Clefable
	db 5, 1, REST
	db 5, 2, DOUBLE_EDGE
	db 5, 4, BUBBLEBEAM
	; Starmie
	db 6, 1, PSYCHIC_M
	db 6, 2, RECOVER
	db 6, 4, SURF
	db $ff

	db LT_SURGE, 1
	; Voltorb
	db 1, 4, THUNDERSHOCK
	; Magnemite
	db 2, 4, THUNDERSHOCK
	; Porygon
	db 3, 4, THUNDERSHOCK
	; Raichu
	db 4, 2, THUNDERBOLT
	db 4, 3, BODY_SLAM ; if too strong, MEGA_PUNCH
	db 4, 4, GROWL
	db $ff

	db LT_SURGE, 2  ; rematch
	; Magneton
	db 1, 1, THUNDER_WAVE
	db 1, 2, REFLECT
	; Electabuzz
	db 2, 1, THUNDERBOLT
	db 2, 2, PSYCHIC_M
	; Porygon
	db 3, 1, THUNDERBOLT
	db 3, 2, ICE_BEAM
	; Electrode
	db 4, 2, THUNDER_WAVE
	; Jolteon
	db 5, 2, REFLECT
	db 5, 3, THUNDERBOLT
	; Raichu
	db 6, 2, THUNDER_WAVE
	db 6, 4, SURF
	db $ff

	db ERIKA, 1
	; Tangela
	db 1, 1, MEGA_DRAIN
	db 1, 3, STUN_SPORE
	; Weepinbell
	db 2, 1, RAZOR_LEAF
	; Butterfree
	db 3, 1, MEGA_DRAIN
	; Vileplume
	db 4, 1, MEGA_DRAIN
	db 4, 4, PETAL_DANCE
	db $ff

	db ERIKA, 2  ; rematch
	; Victreebel
	db 1, 3, TOXIC
	; Butterfree
	db 2, 1, MEGA_DRAIN
	db 2, 4, SLEEP_POWDER
	; Exeggutor
	db 3, 1, SUBSTITUTE
	db 3, 2, PSYCHIC_M
	db 3, 3, MEGA_DRAIN
	; Tangela
	db 4, 2, BIND
	db 4, 3, MEGA_DRAIN
	; Venusaur
	db 5, 3, ACID
	db 5, 4, LEECH_SEED
	; Vileplume
	db 6, 2, SLEEP_POWDER
	db $ff

	db KOGA, 1
	; Weezing
	db 1, 2, TOXIC
	db 1, 3, EXPLOSION
	; Golbat
	db 2, 3, HYPER_FANG
	; Scyther
	db 3, 1, CUT
	db 3, 2, TOXIC
	; Muk
	db 4, 1, SLUDGE
	db 4, 2, MINIMIZE
	db 4, 4, TOXIC
	db $ff

	db KOGA, 2  ; rematch
	; Weezing
	db 1, 1, TOXIC
	db 1, 3, FIRE_BLAST
	; Golbat
	db 2, 1, MEGA_DRAIN
	db 2, 2, HEX
	db 2, 3, TOXIC
	; Muk
	db 3, 4, BIND
	; Scyther - TOXIC, PIN_MISSILE, SUBMISSION, SWORDS_DANCE
	db 4, 1, TOXIC
	db 4, 2, CUT
	db 4, 3, WING_ATTACK
	; Tentacruel
	db 5, 2, TOXIC
	db 5, 3, REFLECT
	; Muk
	db 6, 1, SLUDGE
	db 6, 2, MINIMIZE
	db $ff

	db SABRINA, 1
	; Exeggutor - DISABLE, PSYWAVE, RECOVER, PSYCHIC_M
	db 1, 2, REFLECT
	; Mr. Mime -  SUBSTITUTE, LIGHT_SCREEN, PSYBEAM, MIMIC
	db 2, 1, SUBSTITUTE
	db 2, 2, LIGHT_SCREEN
	db 2, 4, MIMIC
	; Venomoth - SLEEP_POWDER, PSYCHIC_M, RAZOR_WIND, PSYWAVE
	db 3, 1, SLEEP_POWDER
	db 3, 2, PSYCHIC_M
	db 3, 4, PSYWAVE
	; Alakazam - REFLECT, PSYWAVE, RECOVER, PSYCHIC_M
	db 4, 1, REFLECT
	db 4, 2, PSYWAVE
	db $ff

	db SABRINA, 2  ; rematch
	; Exeggutor
	db 1, 1, SOLARBEAM
	; Wigglytuff
	db 2, 1, PSYCHIC_M
	db 2, 2, ICE_BEAM
	; Mr. Mime
	db 3, 1, LIGHT_SCREEN
	db 3, 2, PSYCHIC_M
	; Gengar
	db 4, 1, CONFUSE_RAY
	db 4, 2, PSYCHIC_M
	db 4, 4, THUNDERBOLT
	; Venomoth
	db 5, 1, MEGA_DRAIN
	db 5, 2, PSYCHIC_M
	db 5, 4, SLEEP_POWDER
	; Alakazam
	db 6, 1, HYPER_BEAM
	db $ff

	db BLAINE, 1
	; Ninetales
	db 1, 2, FIRE_BLAST
	; Rapidash
	db 2, 2, FIRE_BLAST
	; Magmar
	db 3, 2, FIRE_BLAST
	; Arcanine
	db 4, 1, REFLECT
	db 4, 2, DOUBLE_EDGE
	db 4, 4, FIRE_BLAST
	db $ff

	db BLAINE, 2  ; rematch
	; Flareon
	db 1, 2, REFLECT
	db 1, 3, DOUBLE_EDGE
	; Ninetales
	db 2, 1, WILL_O_WISP
	db 2, 2, FIRE_BLAST
	; Rapidash
	db 3, 1, FIRE_BLAST
	db 3, 2, DOUBLE_EDGE
	; Gyarados
	db 4, 1, FIRE_BLAST
	db 4, 2, THUNDERBOLT
	db 4, 3, SURF
	; Magmar
	db 5, 1, SMOKESCREEN
	db 5, 3, PSYCHIC_M
	; Arcanine
	db 6, 1, SOLARBEAM
	db 6, 2, DOUBLE_EDGE
	db 6, 4, FIRE_BLAST
	db $ff

	db GIOVANNI, 1  ; Rocket hideout battle
	; Onix
	db 1, 2, TAKE_DOWN
	db 1, 3, SCREECH
	; Rhyhorn
	db 2, 3, TAKE_DOWN
	; Kangaskhan
	; no change
	; Nidorino
	db 4, 2, HORN_DRILL
	db $ff

	db GIOVANNI, 2  ; Silph Co battle
	; Nidorino
	db 1, 3, TAKE_DOWN
	db 1, 4, BUBBLEBEAM
	; Rhyhorn
	db 2, 1, STOMP
	db 2, 2, DIG
	; Kangaskhan
	db 3, 1, SUBMISSION
	db 3, 2, THUNDERBOLT
	; Nidoqueen
	db 4, 1, THUNDERBOLT
	db 4, 3, TOXIC
	db 4, 4, DIG
	; Tauros
	db 5, 1, BUBBLEBEAM
	db 5, 2, TAIL_WHIP
	db 5, 3, TAKE_DOWN
	db $ff

	db GIOVANNI, 3  ; gym battle
	; Dugtrio
	db 1, 1, FISSURE
	; Nidoqueen
	db 2, 1, BODY_SLAM
	db 2, 2, ICE_BEAM
	db 2, 3, THUNDERBOLT
	; Tauros
	db 3, 3, FISSURE
	db 3, 4, DOUBLE_EDGE
	; Nidoking
	db 4, 2, THUNDER
	; Rhydon
	db 5, 1, FIRE_BLAST
	db 5, 2, SURF
	db 5, 4, EARTHQUAKE
	db $ff

	db LORELEI, 1  ; first battle
	; Dewgong - REST, SURF, ICE_BEAM, HYDRO_PUMP
	db 1, 1, REST
	db 1, 2, SURF
	; Cloyster - BLIZZARD, SPIKE_CANNON, CLAMP, ICE_BEAM
	db 2, 1, BLIZZARD
	; Slowbro - ICE_BEAM, SURF, AMNESIA, PSYCHIC_M
	db 3, 1, ICE_BEAM
	db 3, 2, AMNESIA
	db 3, 3, SURF
	db 3, 3, PSYCHIC_M
	; Jynx - LOVELY_KISS, BODY_SLAM, PSYCHIC_M, BLIZZARD
	db 4, 1, LOVELY_KISS
	db 4, 3, PSYCHIC_M
	; Lapras - CONFUSE_RAY, BODY_SLAM, HYDRO_PUMP, BLIZZARD
	db 5, 2, BODY_SLAM
	db $ff

	db LORELEI, 2  ; rematches
	; Dewgong - REST, SURF, ICE_BEAM, BLIZZARD
	db 1, 1, REST
	db 1, 2, SURF
	db 1, 4, BLIZZARD
	; Jynx - LOVELY_KISS, BLIZZARD, PSYCHIC_M
	db 2, 1, LOVELY_KISS
	db 2, 2, BLIZZARD
	db 2, 3, PSYCHIC_M
	db 2, 4, NO_MOVE
	; Slowbro - BLIZZARD, SURF, ICE_BEAM, HYDRO_PUMP
	db 3, 1, ICE_BEAM
	db 3, 2, AMNESIA
	db 3, 3, SURF
	db 3, 3, PSYCHIC_M
	; Cloyster - TOXIC, CLAMP, BLIZZARD, HYDRO_PUMP
	db 4, 1, TOXIC
	db 4, 3, BLIZZARD
	; Nidoqueen - BLIZZARD, BODY_SLAM, LIGHT_SCREEN, LOVELY_KISS	; PSYCHIC_M?
	db 5, 1, BLIZZARD
	db 5, 3, EARTHQUAKE
	; Lapras - CONFUSE_RAY, THUNDERBOLT, SURF, BLIZZARD
	db 6, 2, THUNDERBOLT
	db 6, 3, SURF
	db $ff

	db BRUNO, 1  ; first battle
	; Hitmonchan - BIND, SLAM, ROCK_SLIDE, DIG
	; no change
	; Hitmonlee - ICE_PUNCH, THUNDERPUNCH, DIZZY_PUNCH, COUNTER
	db 2, 1, MEDITATE
	db 2, 2, FOCUS_ENERGY
	; Poliwrath - MEDITATE, FOCUS_ENERGY, HI_JUMP_KICK, MEGA_KICK
	db 3, 1, HYDRO_PUMP
	db 3, 2, HYPNOSIS
	; Golem - BIND, SLAM, ROCK_SLIDE, EARTHQUAKE
	db 4, 1, TAKE_DOWN
	db 4, 2, SUBMISSION
	db 4, 3, ROCK_SLIDE
	db 4, 4, EARTHQUAKE
	; Machamp - KARATE_CHOP, ROCK_SLIDE, THRASH, EARTHQUAKE
	db 5, 2, ROCK_SLIDE
	db 5, 4, EARTHQUAKE
	db $ff

	db BRUNO, 2  ; rematches
	; Hitmonchan - SUBMISSION, THUNDERPUNCH, DIZZY_PUNCH, COUNTER
	db 1, 1, SUBMISSION
	; Pinsir - BIND, EARTHQUAKE, ROCK_SLIDE, AGILITY
	db 2, 1, PIN_MISSILE
	db 2, 2, SUBMISSION
	db 2, 3, SWORDS_DANCE
	db 2, 4, EARTHQUAKE
	; Hitmonlee - MEDITATE, FOCUS_ENERGY, HI_JUMP_KICK, MEGA_KICK
	db 3, 1, MEDITATE
	db 3, 2, FOCUS_ENERGY
	; Poliwrath - ICE_BEAM, BODY_SLAM, KARATE_CHOP, HYDRO_PUMP
	db 4, 1, ICE_BEAM
	; Golem - FOCUS_ENERGY, ROCK_SLIDE, EARTHQUAKE, EXPLOSION
	; no change
	; Machamp - KARATE_CHOP, ROCK_SLIDE, EARTHQUAKE, FOCUS_ENERGY
	db 6, 2, ROCK_SLIDE
	db 6, 3, EARTHQUAKE
	db 6, 4, FOCUS_ENERGY
	db $ff

	db AGATHA, 1  ; first battle
	; Arbok - SLUDGE, DIG, HEX, GLARE
	db 1, 1, SLUDGE
	db 1, 2, DIG
	db 1, 3, HEX
	db 1, 4, GLARE
	; Ninetales - CONFUSE_RAY, FLAMETHROWER, WILL_O_WISP, HEX
	db 2, 1, CONFUSE_RAY
	db 2, 2, WILL_O_WISP
	db 2, 3, FLAMETHROWER
	db 2, 4, HEX
	; Parasect - SPORE, MEGA_DRAIN, HEX, CUT
	db 3, 1, SPORE
	db 3, 2, MEGA_DRAIN
	db 3, 3, HEX
	db 3, 4, CUT
	; Marowak - BONEMERANG, BLIZZARD, THRASH, SWORDS_DANCE
	db 4, 1, BONEMERANG
	db 4, 2, BLIZZARD
	db 4, 3, THRASH
	db 4, 4, SWORDS_DANCE
	; Gengar - HYPNOSIS, PSYCHIC_M, HEX, TOXIC
	db 5, 2, PSYCHIC_M
	db 5, 4, TOXIC
	db $ff

	db AGATHA, 2  ; rematches
	; Arbok - CONFUSE_RAY, MEGA_DRAIN, HEX, TOXIC
	db 1, 1, SLUDGE
	db 1, 2, DIG
	db 1, 3, HEX
	db 1, 4, GLARE
	; Parasect - CONFUSE_RAY, ACID, TOXIC, HEX
	db 2, 1, SPORE
	db 2, 2, MEGA_DRAIN
	db 2, 3, HEX
	db 2, 4, CUT
	; Marowak - HEX, BODY_SLAM, DOUBLE_TEAM, BONEMERANG
	db 3, 1, HEX
	db 3, 2, BODY_SLAM
	db 3, 3, DOUBLE_TEAM
	; Arbok - ACID, WRAP, HYPER_FANG, GLARE
	db 4, 2, WRAP
	db 4, 4, GLARE
	; Ninetales - HEX, FIRE_BLAST, WILL_O_WISP, FIRE_SPIN
	db 5, 1, HEX
	db 5, 2, FIRE_BLAST
	db 5, 3, WILL_O_WISP
	; Gengar - PSYCHIC_M, THUNDERBOLT, HEX, TOXIC
	db 6, 1, PSYCHIC_M
	db 6, 2, THUNDERBOLT
	db 6, 4, TOXIC
	db $ff

	db LANCE, 1  ; first battle
	; Gyarados - THRASH, HYDRO_PUMP, SLAM, HYPER_BEAM
	; no change
	; Seadra - THUNDERBOLT, SLAM, THUNDER_WAVE, HYPER_BEAM
	db 2, 1, ICE_BEAM
	db 2, 3, BUBBLEBEAM
	; Arcanine - ICE_BEAM, SLAM, BUBBLEBEAM, HYPER_BEAM
	db 3, 1, FIRE_BLAST
	db 3, 3, DRAGON_RAGE
	; Aerodactyl - WING_ATTACK, ROCK_SLIDE, SCREECH, HYPER_BEAM
	db 4, 1, WING_ATTACK
	; Dragonite - SLAM, FIRE_BLAST, THUNDER, HYPER_BEAM
	db 5, 2, FIRE_BLAST
	db 5, 3, THUNDER
	db $ff

	db LANCE, 2  ; rematches
	; Dragonite - SLAM, ICE_BEAM, THUNDERBOLT, HYPER_BEAM
	db 1, 2, ICE_BEAM
	db 1, 3, THUNDERBOLT
	; Gyarados - EARTHQUAKE, HYDRO_PUMP, THUNDERBOLT, HYPER_BEAM
	db 2, 1, EARTHQUAKE
	db 2, 3, THUNDERBOLT
	; Kangaskhan - DIZZY_PUNCH, HYPER_BEAM, SLAM, ROCK_SLIDE
	db 3, 2, HYPER_BEAM
	db 3, 4, ROCK_SLIDE
	; Arcanine - HYPER_BEAM, FIRE_BLAST, SLAM, EARTHQUAKE
	db 4, 1, HYPER_BEAM
	db 4, 2, FIRE_BLAST
	db 4, 4, DRAGON_RAGE
	; Aerodactyl - FIRE_BLAST, ROCK_SLIDE, SKY_ATTACK, HYPER_BEAM
	db 5, 1, FIRE_BLAST
	db 5, 3, SKY_ATTACK
	; Dragonite - SLAM, FIRE_BLAST, THUNDER, HYPER_BEAM
	db 6, 2, FIRE_BLAST
	db 6, 3, THUNDER
	db $ff

	db RIVAL3, 1  ; first battle
	; Dodrio - DOUBLE_EDGE, DOUBLE_KICK, DRILL_PECK, AGILITY
	db 1, 1, DOUBLE_EDGE
	db 1, 2, DOUBLE_KICK
	db 1, 3, DRILL_PECK
	db 1, 4, AGILITY
	; Alakazam - KINESIS, RECOVER, PSYCHIC_M, REFLECT
	db 2, 1, KINESIS
	; Rhydon - SURF, ROCK_SLIDE, HORN_DRILL, EARTHQUAKE
	db 3, 1, SURF
	; Rapidash - FIRE_BLAST, DOUBLE_EDGE, AGILITY, DOUBLE_KICK
	db 4, 1, FIRE_BLAST
	db 4, 2, DOUBLE_EDGE
	db 4, 4, DOUBLE_KICK
	; Jolteon - THUNDER_WAVE, AGILITY, THUNDER, PIN_MISSILE
	db 5, 1, THUNDER_WAVE
	db 5, 2, AGILITY
	db 5, 3, THUNDER
	db 5, 4, PIN_MISSILE
	; Blastoise - EARTHQUAKE, THRASH, BLIZZARD, HYDRO_PUMP
	db 6, 1, EARTHQUAKE
	db 6, 3, BLIZZARD
	db $ff

	db RIVAL3, 2  ; first battle
	; Dodrio - DOUBLE_EDGE, DOUBLE_KICK, DRILL_PECK, AGILITY
	db 1, 1, DOUBLE_EDGE
	db 1, 2, DOUBLE_KICK
	db 1, 3, DRILL_PECK
	db 1, 4, AGILITY
	; Alakazam - KINESIS, RECOVER, PSYCHIC_M, REFLECT
	db 2, 1, KINESIS
	; Rhydon - SURF, ROCK_SLIDE, HORN_DRILL, EARTHQUAKE
	db 3, 1, SURF
	; Tentacruel - SLUDGE, SURF, BARRIER, ICE_BEAM
	db 4, 1, SLUDGE
	db 4, 2, SURF
	db 4, 3, BARRIER
	db 4, 4, ICE_BEAM
	; Flareon - FIRE_BLAST, DOUBLE_EDGE, DOUBLE_KICK, FLAMETHROWER
	db 5, 1, FIRE_BLAST
	db 5, 2, DOUBLE_EDGE
	db 5, 3, DOUBLE_KICK
	; Venusaur -
	db 6, 4, GROWTH
	db $ff

	db RIVAL3, 3  ; first battle
	; Dodrio - DOUBLE_EDGE, DOUBLE_KICK, DRILL_PECK, AGILITY
	db 1, 1, DOUBLE_EDGE
	db 1, 2, DOUBLE_KICK
	db 1, 3, DRILL_PECK
	db 1, 4, AGILITY
	; Alakazam - KINESIS, RECOVER, PSYCHIC_M, REFLECT
	db 2, 1, KINESIS
	; Rhydon - SURF, ROCK_SLIDE, HORN_DRILL, EARTHQUAKE
	db 3, 1, SURF
	; Exeggutor - EGG_BOMB, PSYCHIC_M, SOLARBEAM, SLEEP_POWDER
	db 4, 2, PSYCHIC_M
	; Vaporeon - ACID_ARMOR, QUICK_ATTACK, BLIZZARD, SURF
	db 5, 1, ACID_ARMOR
	db 5, 2, QUICK_ATTACK
	db 5, 3, BLIZZARD
	db 5, 4, SURF
	; Charizard -
	db 6, 2, FIRE_BLAST
	db $ff

	db RIVAL3, 4  ; rematches
	; Dodrio
	db 1, 1, DOUBLE_EDGE
	db 1, 2, DOUBLE_KICK
	db 1, 3, DRILL_PECK
	db 1, 4, HYPER_BEAM
	; Alakazam
	db 2, 1, THUNDER_WAVE
	; Rhydon
	db 3, 1, FIRE_BLAST
	db 3, 3, THUNDER
	; Rapidash
	db 4, 1, JUMP_KICK
	db 4, 2, FIRE_BLAST
	db 4, 3, AGILITY
	db 4, 4, HORN_DRILL
	; Jolteon
	db 5, 1, THUNDER
	db 5, 2, THUNDER_WAVE
	db 5, 3, HYPER_BEAM
	db 5, 4, PIN_MISSILE
	; Blastoise
	db 6, 1, RAZOR_LEAF
	db 6, 2, SLEEP_POWDER
	db 6, 3, HYPER_BEAM
	db 6, 4, CUT
	db $ff

	db RIVAL3, 5  ; rematches
	; Dodrio
	db 1, 1, DOUBLE_EDGE
	db 1, 2, DOUBLE_KICK
	db 1, 3, DRILL_PECK
	db 1, 4, HYPER_BEAM
	; Alakazam
	db 2, 1, THUNDER_WAVE
	; Rhydon
	db 3, 1, FIRE_BLAST
	db 3, 3, THUNDER
	; Tentacruel
	db 4, 1, HYDRO_PUMP
	db 4, 2, SLUDGE
	db 4, 3, BLIZZARD
	db 4, 4, RECOVER
	; Flareon
	db 5, 1, FIRE_BLAST
	db 5, 2, FIRE_SPIN
	db 5, 3, HYPER_BEAM
	db 5, 4, DOUBLE_KICK
	; Venusaur
	db 6, 1, RAZOR_LEAF
	db 6, 2, SLEEP_POWDER
	db 6, 3, HYPER_BEAM
	db 6, 4, CUT
	db $ff

	db RIVAL3, 6  ; rematches
	; Dodrio
	db 1, 1, DOUBLE_EDGE
	db 1, 2, DOUBLE_KICK
	db 1, 3, DRILL_PECK
	db 1, 4, HYPER_BEAM
	; Alakazam
	db 2, 1, THUNDER_WAVE
	; Rhydon
	db 3, 1, FIRE_BLAST
	db 3, 3, THUNDER
	; Exeggutor
	db 4, 1, PSYCHIC_M
	db 4, 2, RAZOR_LEAF
	db 4, 3, REFLECT
	db 4, 4, HYPNOSIS
	; Vaporeon
	db 5, 1, HYDRO_PUMP
	db 5, 2, BLIZZARD
	db 5, 3, ACID_ARMOR
	db 5, 4, QUICK_ATTACK
	; Charizard
	db 6, 1, FIRE_BLAST
	db 6, 2, SLAM
	db 6, 3, SWORDS_DANCE
	db 6, 4, EARTHQUAKE
	db $ff

	db WILL, 1  ; postgame Will
	; Slowbro
	db 1, 1, EARTHQUAKE
	db 1, 2, SURF
	; Mr. Mime
	db 2, 2, PSYCHIC_M
	; Jynx
	db 3, 1, PSYCHIC_M
	db 3, 2, LOVELY_KISS
	; Hypno
	db 4, 1, TOXIC
	db 4, 2, HEX
	db 4, 3, BODY_SLAM
	; Exeggutor
	db 5, 2, PSYCHIC_M
	db 5, 3, MEGA_DRAIN
	db $ff

	db PROF_OAK, 1
	; Tauros
	db 1, 1, HYPER_BEAM
	db 1, 3, EARTHQUAKE
	; Electrode
	db 2, 2, THUNDER_WAVE
	; Chansey
	db 3, 2, BLIZZARD
	db 3, 4, PSYCHIC_M
	; Snorlax
	db 4, 2, AMNESIA
	; Venusaur
	db 5, 1, RAZOR_LEAF
	db 5, 3, HYPER_BEAM
	db 5, 4, CUT
	; Nidoking
	db 6, 1, SURF
	db 6, 2, HYPER_BEAM
	db 6, 3, BLIZZARD
	db $ff

	db PROF_OAK, 2
	; Tauros
	db 1, 1, HYPER_BEAM
	db 1, 3, EARTHQUAKE
	; Electrode
	db 2, 2, THUNDER_WAVE
	; Chansey
	db 3, 2, BLIZZARD
	db 3, 4, PSYCHIC_M
	; Snorlax
	db 4, 2, AMNESIA
	; Charizard
	db 5, 1, HYPER_BEAM
	db 5, 2, FIRE_BLAST
	db 5, 3, EARTHQUAKE
	; Nidoking
	db 6, 1, ICE_BEAM
	db 6, 2, HYPER_BEAM
	db 6, 3, THUNDER
	db $ff

	db PROF_OAK, 3
	; Tauros
	db 1, 1, HYPER_BEAM
	db 1, 3, EARTHQUAKE
	; Electrode
	db 2, 2, THUNDER_WAVE
	; Chansey
	db 3, 2, BLIZZARD
	db 3, 4, PSYCHIC_M
	; Snorlax
	db 4, 2, AMNESIA
	; Blastoise
	db 5, 1, EARTHQUAKE
	db 5, 2, HYPER_BEAM
	db 5, 3, BLIZZARD
	; Nidoking
	db 6, 1, THUNDERBOLT
	db 6, 2, HYPER_BEAM
	db 6, 3, FIRE_BLAST
	db $ff

	db YELLOW, 1
	; Dodrio - JUMP_KICK, DRILL_PECK, DOUBLE_TEAM, MEGA_KICK
	db 1, 2, DRILL_PECK
	db 1, 3, DOUBLE_TEAM
	; Chansey - SOFTBOILED, MINIMIZE, PSYCHIC_M, DOUBLE_EDGE
	db 2, 1, SOFTBOILED
	db 2, 2, MINIMIZE
	db 2, 3, PSYCHIC_M
	; Butterfree - MEGA_DRAIN, PSYCHIC_M, RAZOR_WIND, SLEEP_POWDER
	db 3, 1, MEGA_DRAIN
	db 3, 2, PSYCHIC_M
	db 3, 4, SLEEP_POWDER
	; Omastar - TOXIC, ROCK_SLIDE, CLAMP, SURF
	db 4, 1, TOXIC
	db 4, 2, ROCK_SLIDE
	db 4, 4, SURF
	; Ninetales - WILL_O_WISP, CONFUSE_RAY, HEX, FIRE_SPIN
	db 5, 1, WILL_O_WISP
	db 5, 2, CONFUSE_RAY
	db 5, 3, HEX
	; Pikachu - THUNDERBOLT, SURF, THUNDER, THUNDER_WAVE
	db 6, 2, SURF
	db 6, 4, THUNDER_WAVE
	db $ff

	db -1 ; end
