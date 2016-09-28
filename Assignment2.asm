	processor 6502
	include vcs.h
	include macro.h
	org $F000

YPosFromBot = $80;
VisiblePlayerLine = $81;
YPosFromBot2 = $82;
VisiblePlayerLine2 = $83;

Start
	CLEAN_START

	lda #$00
	sta COLUBK
	lda #$1C
	sta COLUP0
	lda #$76
	sta COLUP1
	lda #80
	sta YPosFromBot
	lda #82
	sta YPosFromBot2

MainLoop
	lda #2
	sta VSYNC
	sta WSYNC
	sta WSYNC
	sta WSYNC
	lda #43
	sta TIM64T
	lda #0
	sta VSYNC


	lda #%00010000
	bit SWCHA
	bne SkipMoveDown
	inc YPosFromBot
SkipMoveDown

	lda #%00100000
	bit SWCHA
	bne SkipMoveUp
	dec YPosFromBot
SkipMoveUp

	ldx #0
	lda #%01000000
	bit SWCHA
	bne SkipMoveLeft
	ldx #$10
	lda #%00001000
	sta REFP0
SkipMoveLeft

	lda #%10000000
	bit SWCHA
	bne SkipMoveRight
	ldx #$F0
	lda #%00000000
	sta REFP0
SkipMoveRight
	stx HMP0

	
	lda #%00000001
	bit SWCHA
	bne SkipMoveDown2
	inc YPosFromBot2
SkipMoveDown2

	lda #%00000010
	bit SWCHA
	bne SkipMoveUp2
	dec YPosFromBot2
SkipMoveUp2

	ldx #0
	lda #%00000100
	bit SWCHA
	bne SkipMoveLeft2
	ldx #$10
	lda #%00001000
	sta REFP1
SkipMoveLeft2

	lda #%00001000
	bit SWCHA
	bne SkipMoveRight2
	ldx #$F0
	lda #%00000000
	sta REFP1
SkipMoveRight2
	stx HMP1


	lda #%10000000
	bit CXPPMM
	beq NoCollision
	lda YPosFromBot
	sta COLUBK
NoCollision
	sta CXCLR


WaitForVblankEnd
	lda INTIM
	bne WaitForVblankEnd
	ldy #191
	sta WSYNC
	sta HMOVE
	sta VBLANK


ScanLoop
	sta WSYNC

CheckActivatePlayer
	cpy YPosFromBot
	bne SkipActivatePlayer
	lda #8
	sta VisiblePlayerLine
SkipActivatePlayer

CheckActivatePlayer2
	cpy YPosFromBot2
	bne SkipActivatePlayer2
	lda #8
	sta VisiblePlayerLine2
SkipActivatePlayer2


	lda #0
	sta GRP0
	
	lda #0
	sta GRP1

	
	ldx VisiblePlayerLine
	beq FinishPlayer
IsPlayerOn
	lda BigHeadGraphic-1,X
	sta GRP0
	dec VisiblePlayerLine
FinishPlayer

	ldx VisiblePlayerLine2
	beq FinishPlayer2
IsPlayerOn2
	lda BigHeadGraphic-1,X
	sta GRP1
	dec VisiblePlayerLine2
FinishPlayer2


	dey
	bne ScanLoop

	lda #2
	sta WSYNC
	sta VBLANK
	ldx #30
OverScanWait
	sta WSYNC
	dex
	bne OverScanWait
	jmp  MainLoop


BigHeadGraphic
	.byte #%00111100
	.byte #%01111110
	.byte #%11000001
	.byte #%10111111
	.byte #%11111111
	.byte #%11101011
	.byte #%01111110
	.byte #%00111100

	org $FFFC
	.word Start
	.word Start