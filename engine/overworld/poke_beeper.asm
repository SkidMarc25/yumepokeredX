; marcelnote - new for PokéBeeper
GetPokeBeeperAlert::
	ld hl, wStatusFlags2
	res BIT_POKE_BEEPER_ALERT, [hl]
	ld b, POKE_BEEPER
	call IsItemInBag
	ret z
	ld a, [wBoxCount]
	cp 15
	ret c ; no message at 14 and below
	jr z, .displayAlert
	cp 19
	ret c ; no message for 16-18
.displayAlert
	ld c, a
	ld a, MONS_PER_BOX
	sub c
	ld [wStringBuffer], a ; store number of spots left
	ld c, 50
	call DelayFrames
	ld c, 3 ; code for itemfinder chime, could replace some frames delay
.loop
	ld a, SFX_HEALING_MACHINE
	call PlaySoundWaitForCurrent
	ld a, SFX_PURCHASE
	call PlaySoundWaitForCurrent
	dec c
	jr nz, .loop
	ld hl, wEmotionBubbleSpriteIndex
	xor a
	ld [hli], a ; player's sprite
	ld [hl], a  ; EXCLAMATION_BUBBLE
	predef EmotionBubble
	ld c, 10
	call DelayFrames
	xor a
	ld [wJoyIgnore], a
	call EnableAutoTextBoxDrawing
	ld a, TEXT_POKE_BEEPER_ALERT
	ldh [hTextID], a
	jp DisplayTextID
