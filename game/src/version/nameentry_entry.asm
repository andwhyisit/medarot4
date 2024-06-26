SECTION "Naming Screen Entry Functions 1", ROMX[$5AE2+cNSOFFSET], BANK[$03]
NamingEntryCursorRepositioningTable::
  dw .pointers, .pointers, .pointersABC

.pointers
  dw .moveUpTable
  dw .moveDownTable
  dw .moveLeftTable
  dw .moveRightTable

.pointersABC
  dw .moveUpABCTable
  dw .moveDownABCTable
  dw .moveLeftTable
  dw .moveRightTable

.moveUpTable
  db $FD, $FD, $FD, $FD, $FD, $FE, $FE, $FE, $FE, $FE, $FF, $FF, $FF, $FF, $FF
  db $00, $01, $02, $03, $04, $05, $06, $07, $08, $09, $0A, $0B, $0C, $0D, $0E
  db $0F, $10, $11, $12, $13, $14, $15, $16, $17, $18, $19, $1A, $1B, $1C, $1D
  db $1E, $1F, $20, $21, $22, $23, $24, $25, $26, $27, $28, $29, $2A, $2B, $2C
  db $2D, $2E, $2F, $30, $31, $32, $33, $34, $35, $36, $37, $38, $39, $3A, $3B

.moveDownTable
  db $0F, $10, $11, $12, $13, $14, $15, $16, $17, $18, $19, $1A, $1B, $1C, $1D
  db $1E, $1F, $20, $21, $22, $23, $24, $25, $26, $27, $28, $29, $2A, $2B, $2C
  db $2D, $2E, $2F, $30, $31, $32, $33, $34, $35, $36, $37, $38, $39, $3A, $3B
  db $3C, $3D, $3E, $3F, $40, $41, $42, $43, $44, $45, $46, $47, $48, $49, $4A
  db $FD, $FD, $FD, $FD, $FD, $FE, $FE, $FE, $FE, $FE, $FF, $FF, $FF, $FF, $FF

.moveLeftTable
  db $0E, $00, $01, $02, $03, $04, $05, $06, $07, $08, $09, $0A, $0B, $0C, $0D
  db $1D, $0F, $10, $11, $12, $13, $14, $15, $16, $17, $18, $19, $1A, $1B, $1C
  db $2C, $1E, $1F, $20, $21, $22, $23, $24, $25, $26, $27, $28, $29, $2A, $2B
  db $3B, $2D, $2E, $2F, $30, $31, $32, $33, $34, $35, $36, $37, $38, $39, $3A
  db $4A, $3C, $3D, $3E, $3F, $40, $41, $42, $43, $44, $45, $46, $47, $48, $49

.moveRightTable
  db $01, $02, $03, $04, $05, $06, $07, $08, $09, $0A, $0B, $0C, $0D, $0E, $00
  db $10, $11, $12, $13, $14, $15, $16, $17, $18, $19, $1A, $1B, $1C, $1D, $0F
  db $1F, $20, $21, $22, $23, $24, $25, $26, $27, $28, $29, $2A, $2B, $2C, $1E
  db $2E, $2F, $30, $31, $32, $33, $34, $35, $36, $37, $38, $39, $3A, $3B, $2D
  db $3D, $3E, $3F, $40, $41, $42, $43, $44, $45, $46, $47, $48, $49, $4A, $3C

.moveUpABCTable
  db $FD, $FD, $FD, $FD, $FD, $FE, $FE, $FE, $FE, $FE, $FF, $FF, $FF, $FF, $FF
  db $00, $01, $02, $03, $04, $05, $06, $07, $08, $09, $0A, $0B, $0C, $0D, $0E
  db $0F, $10, $11, $12, $13, $14, $15, $16, $17, $18, $19, $1A, $1B, $1C, $1D
  db $1E, $1F, $20, $21, $22, $23, $24, $25, $26, $27, $28, $29, $2A, $2B, $2C
  db $1E, $1F, $20, $21, $22, $23, $24, $25, $26, $27, $28, $29, $2A, $2B, $2C

.moveDownABCTable
  db $0F, $10, $11, $12, $13, $14, $15, $16, $17, $18, $19, $1A, $1B, $1C, $1D
  db $1E, $1F, $20, $21, $22, $23, $24, $25, $26, $27, $28, $29, $2A, $2B, $2C
  db $FD, $FD, $FD, $FD, $FD, $FE, $FE, $FE, $FE, $FE, $FF, $FF, $FF, $FF, $FF
  db $FD, $FD, $FD, $FD, $FD, $FE, $FE, $FE, $FE, $FE, $FF, $FF, $FF, $FF, $FF
  db $FD, $FD, $FD, $FD, $FD, $FE, $FE, $FE, $FE, $FE, $FF, $FF, $FF, $FF, $FF

NamingEntryCursorIndexInformationTable::
  dw .table, .table, .table

.table
  db $10,$28,0,0
  db $18,$28,1,0
  db $20,$28,2,0
  db $28,$28,3,0
  db $30,$28,4,0
  db $40,$28,0,0
  db $48,$28,1,0
  db $50,$28,2,0
  db $58,$28,3,0
  db $60,$28,4,0
  db $70,$28,0,0
  db $78,$28,1,0
  db $80,$28,2,0
  db $88,$28,3,0
  db $90,$28,4,0
  db $10,$38,0,1
  db $18,$38,1,1
  db $20,$38,2,1
  db $28,$38,3,1
  db $30,$38,4,1
  db $40,$38,0,1
  db $48,$38,1,1
  db $50,$38,2,1
  db $58,$38,3,1
  db $60,$38,4,1
  db $70,$38,0,1
  db $78,$38,1,1
  db $80,$38,2,1
  db $88,$38,3,1
  db $90,$38,4,1
  db $10,$48,0,2
  db $18,$48,1,2
  db $20,$48,2,2
  db $28,$48,3,2
  db $30,$48,4,2
  db $40,$48,0,2
  db $48,$48,1,2
  db $50,$48,2,2
  db $58,$48,3,2
  db $60,$48,4,2
  db $70,$48,0,2
  db $78,$48,1,2
  db $80,$48,2,2
  db $88,$48,3,2
  db $90,$48,4,2
  db $10,$58,0,3
  db $18,$58,1,3
  db $20,$58,2,3
  db $28,$58,3,3
  db $30,$58,4,3
  db $40,$58,0,3
  db $48,$58,1,3
  db $50,$58,2,3
  db $58,$58,3,3
  db $60,$58,4,3
  db $70,$58,0,3
  db $78,$58,1,3
  db $80,$58,2,3
  db $88,$58,3,3
  db $90,$58,4,3
  db $10,$68,0,4
  db $18,$68,1,4
  db $20,$68,2,4
  db $28,$68,3,4
  db $30,$68,4,4
  db $40,$68,0,4
  db $48,$68,1,4
  db $50,$68,2,4
  db $58,$68,3,4
  db $60,$68,4,4
  db $70,$68,0,4
  db $78,$68,1,4
  db $80,$68,2,4
  db $88,$68,3,4
  db $90,$68,4,4

DiacriticConversionTable::
  db $00, $00 ; 00
  db $00, $00 ; 01
  db $00, $00 ; 02
  db $86, $00 ; 03
  db $00, $00 ; 04
  db $00, $00 ; 05
  db $6D, $00 ; 06
  db $6E, $00 ; 07
  db $6F, $00 ; 08
  db $70, $00 ; 09
  db $71, $00 ; 0A
  db $72, $00 ; 0B
  db $73, $00 ; 0C
  db $74, $00 ; 0D
  db $75, $00 ; 0E
  db $76, $00 ; 0F
  db $77, $00 ; 10
  db $78, $00 ; 11
  db $79, $00 ; 12
  db $7A, $00 ; 13
  db $7B, $00 ; 14
  db $00, $00 ; 15
  db $00, $00 ; 16
  db $00, $00 ; 17
  db $00, $00 ; 18
  db $00, $00 ; 19
  db $7C, $81 ; 1A
  db $7D, $82 ; 1B
  db $7E, $83 ; 1C
  db $7F, $84 ; 1D
  db $80, $85 ; 1E
  db $00, $00 ; 1F
  db $00, $00 ; 20
  db $00, $00 ; 21
  db $00, $00 ; 22
  db $00, $00 ; 23
  db $00, $00 ; 24
  db $00, $00 ; 25
  db $00, $00 ; 26
  db $00, $00 ; 27
  db $00, $00 ; 28
  db $00, $00 ; 29
  db $00, $00 ; 2A
  db $00, $00 ; 2B
  db $00, $00 ; 2C
  db $00, $00 ; 2D
  db $00, $00 ; 2E
  db $00, $00 ; 2F
  db $00, $00 ; 30
  db $00, $00 ; 31
  db $00, $00 ; 32
  db $00, $00 ; 33
  db $00, $00 ; 34
  db $00, $00 ; 35
  db $00, $00 ; 36
  db $00, $00 ; 37
  db $00, $00 ; 38
  db $00, $00 ; 39
  db $00, $00 ; 3A
  db $00, $00 ; 3B
  db $00, $00 ; 3C
  db $87, $00 ; 3D
  db $88, $00 ; 3E
  db $89, $00 ; 3F
  db $8A, $00 ; 40
  db $8B, $00 ; 41
  db $8C, $00 ; 42
  db $8D, $00 ; 43
  db $8E, $00 ; 44
  db $8F, $00 ; 45
  db $90, $00 ; 46
  db $91, $00 ; 47
  db $92, $00 ; 48
  db $93, $00 ; 49
  db $94, $00 ; 4A
  db $95, $00 ; 4B
  db $00, $00 ; 4C
  db $00, $00 ; 4D
  db $00, $00 ; 4E
  db $00, $00 ; 4F
  db $00, $00 ; 50
  db $96, $9A ; 51
  db $97, $9B ; 52
  db $98, $9C ; 53
  db $99, $9D ; 54
  db $00, $00 ; 55
  db $00, $00 ; 56
  db $00, $00 ; 57
  db $00, $00 ; 58
  db $00, $00 ; 59
  db $00, $00 ; 5A
  db $00, $00 ; 5B
  db $00, $00 ; 5C
  db $00, $00 ; 5D
  db $00, $00 ; 5E
  db $00, $00 ; 5F
  db $00, $00 ; 60
  db $00, $00 ; 61
  db $00, $00 ; 62
  db $00, $00 ; 63
  db $00, $00 ; 64
  db $00, $00 ; 65
  db $00, $00 ; 66
  db $00, $00 ; 67
  db $00, $00 ; 68
  db $00, $00 ; 69
  db $00, $00 ; 6A
  db $00, $00 ; 6B
  db $00, $00 ; 6C
  db $00, $00 ; 6D
  db $00, $00 ; 6E
  db $00, $00 ; 6F
  db $00, $00 ; 70
  db $00, $00 ; 71
  db $00, $00 ; 72
  db $00, $00 ; 73
  db $00, $00 ; 74
  db $00, $00 ; 75
  db $00, $00 ; 76
  db $00, $00 ; 77
  db $00, $00 ; 78
  db $00, $00 ; 79
  db $00, $00 ; 7A
  db $00, $00 ; 7B
  db $00, $00 ; 7C
  db $00, $00 ; 7D
  db $00, $00 ; 7E
  db $00, $00 ; 7F
  db $00, $00 ; 80
  db $00, $00 ; 81
  db $00, $00 ; 82
  db $00, $00 ; 83
  db $00, $00 ; 84
  db $00, $00 ; 85
  db $00, $00 ; 86
  db $00, $00 ; 87
  db $00, $00 ; 88
  db $00, $00 ; 89
  db $00, $00 ; 8A
  db $00, $00 ; 8B
  db $00, $00 ; 8C
  db $00, $00 ; 8D
  db $00, $00 ; 8E
  db $00, $00 ; 8F
  db $00, $00 ; 90
  db $00, $00 ; 91
  db $00, $00 ; 92
  db $00, $00 ; 93
  db $00, $00 ; 94
  db $00, $00 ; 95
  db $00, $00 ; 96
  db $00, $00 ; 97
  db $00, $00 ; 98
  db $00, $00 ; 99
  db $00, $00 ; 9A
  db $00, $00 ; 9B
  db $00, $00 ; 9C
  db $00, $00 ; 9D
  db $00, $00 ; 9E
  db $00, $00 ; 9F
  db $00, $00 ; A0
  db $00, $00 ; A1
  db $00, $00 ; A2
  db $00, $00 ; A3
  db $00, $00 ; A4
  db $00, $00 ; A5
  db $00, $00 ; A6
  db $00, $00 ; A7
  db $00, $00 ; A8
  db $00, $00 ; A9
  db $00, $00 ; AA
  db $00, $00 ; AB
  db $00, $00 ; AC
  db $00, $00 ; AD
  db $00, $00 ; AE
  db $00, $00 ; AF
  db $00, $00 ; B0
  db $00, $00 ; B1
  db $00, $00 ; B2
  db $00, $00 ; B3
  db $00, $00 ; B4
  db $00, $00 ; B5
  db $00, $00 ; B6
  db $00, $00 ; B7
  db $00, $00 ; B8
  db $00, $00 ; B9
  db $00, $00 ; BA
  db $00, $00 ; BB
  db $00, $00 ; BC
  db $00, $00 ; BD
  db $00, $00 ; BE
  db $00, $00 ; BF
  db $00, $00 ; C0
  db $00, $00 ; C1
  db $00, $00 ; C2
  db $00, $00 ; C3
  db $00, $00 ; C4
  db $00, $00 ; C5
  db $00, $00 ; C6
  db $00, $00 ; C7
  db $00, $00 ; C8
  db $00, $00 ; C9
  db $00, $00 ; CA
  db $00, $00 ; CB
  db $00, $00 ; CC
  db $00, $00 ; CD
  db $00, $00 ; CE
  db $00, $00 ; CF
  db $00, $00 ; D0
  db $00, $00 ; D1
  db $00, $00 ; D2
  db $00, $00 ; D3
  db $00, $00 ; D4
  db $00, $00 ; D5
  db $00, $00 ; D6
  db $00, $00 ; D7
  db $00, $00 ; D8
  db $00, $00 ; D9
  db $00, $00 ; DA
  db $00, $00 ; DB
  db $00, $00 ; DC
  db $00, $00 ; DD
  db $00, $00 ; DE
  db $00, $00 ; DF
  db $00, $00 ; E0
  db $00, $00 ; E1
  db $00, $00 ; E2
  db $00, $00 ; E3
  db $00, $00 ; E4
  db $00, $00 ; E5
  db $00, $00 ; E6
  db $00, $00 ; E7
  db $00, $00 ; E8
  db $00, $00 ; E9
  db $00, $00 ; EA
  db $00, $00 ; EB
  db $00, $00 ; EC
  db $00, $00 ; ED
  db $00, $00 ; EE
  db $00, $00 ; EF
  db $00, $00 ; F0
  db $00, $00 ; F1
  db $00, $00 ; F2
  db $00, $00 ; F3
  db $00, $00 ; F4
  db $00, $00 ; F5
  db $00, $00 ; F6

NamingEntryMapCurrentPage::
  ld a, [W_NamingEntryCurrentPage]
  ld hl, .pageTilemaps
  rst $28
  ld a, [hl]
  ld bc, 4
  ld e, a
  ld a, 1
  cbcall DecompressTilemap0
  ld a, [W_NamingEntryCurrentPage]
  ld hl, .pageAttribmaps
  rst $28
  ld a, [hl]
  ld bc, $1209
  ld e, a
  ld a, 1
  cbcall DecompressAttribmap0
  ret

.pageTilemaps
  db $1F, $20, $F0

.pageAttribmaps
  db $B0, $B1, $B2

GetNameEntryFirstCharacterTileAddress::
  push bc
  ld a, [W_NamingScreenTypeIndex]
  ld hl, .table
  rst $30
  pop bc
  ret

.table
  dw $982B
  dw $982A

RenderNameEntryTextInputUnderlines::
; Draws dashes for input.
  ld a, [W_NamingScreenTypeIndex]
  ld hl, .table
  ld d, 0
  ld e, a
  add hl, de
  ld b, [hl]
  ld c, 2
  ld e, $23
  ld a, 1
  cbcall DecompressTilemap0
  call GetNameEntryFirstCharacterTileAddress
  ld de, $20
  add hl, de
  ld a, [W_NamingScreenEnteredTextLength]
  ld b, 0
  ld c, a
  add hl, bc
  ld d, 0
  ld a, [W_NamingScreenEnteredTextLength]
  cp 8
  jp nz, .nameEntryNotFull
  push hl
  ld hl, .boundaryTileTable
  ld a, [W_NamingScreenTypeIndex]
  ld d, 0
  ld e, a
  add hl, de
  ld d, [hl]
  pop hl

.nameEntryNotFull
  ld a, d
  di 
  push af
  rst $20
  pop af
  ld [hli], a
  ei 
  ret

.table
db $B,$A

.boundaryTileTable
db $F1,0

PositionNameEntryBottomRowCursor::
  ld a, [W_NamingEntryBottomRowSelection]
  ld hl, .table
  ld d, 0
  ld e, a
  sla e
  rl d
  add hl, de
  ld a, [hli]
  ld [$C223], a
  ld a, [hl]
  ld [$C222], a
  ld a, 1
  ld [W_OAM_SpritesReady], a
  ret

.table
  db $08, $87
  db $40, $88
  db $70, $88

NameEntryAdvanceToNextPage::
  ld a, 4
  call ScheduleSoundEffect
  ld a, [W_NamingEntryCurrentPage]
  inc a
  cp 3
  jr nz, .dontLoopToStart
  xor a

.dontLoopToStart
  ld [W_NamingEntryCurrentPage], a
  call NamingEntryMapCurrentPage

; The third page is only 3 rows instead of 5, so we need to shift the cursor upwards if it is on rows 4 or 5.
  ld a, [W_NamingEntryCurrentPage]
  cp 2
  ret nz
  ld a, [W_NamingScreenSubSubSubStateIndex]
  cp $11
  ret z
  cp $12
  ret z

.repositionCursorLoop
  ld a, [W_NamingScreenCursorPositionIndex]
  cp $2D
  ret c
  ld a, [W_NamingScreenCursorPositionIndex]
  sub $F
  ld [W_NamingScreenCursorPositionIndex], a
  call NameEntryGetCursorPositionIndexDetailsAndPositionCursor
  ld a, 1
  ld [W_OAM_SpritesReady], a
  jr .repositionCursorLoop

NameEntryDoBackspace::
  ld a, [W_NamingScreenEnteredTextLength]
  cp 8
  jp nz, .skipCursorRestore
  ld a, 1
  ld [$C1E0], a

.skipCursorRestore
  ld a, [W_NamingScreenEnteredTextLength]
  dec a
  ld [W_NamingScreenEnteredTextLength], a
  ld hl, W_NamingScreenEnteredTextBuffer
  ld b, 0
  ld c, a
  add hl, bc
  ld [hl], 0
  ld b, 0
  ld c, a
  call GetNameEntryFirstCharacterTileAddress
  add hl, bc
  xor a
  di
  push af
  rst $20
  pop af
  ld [hli], a
  ei
  ld a, [$C1E3]
  sub 8
  ld [$C1E3], a
  ld a, 1
  ld [W_OAM_SpritesReady], a
  call RenderNameEntryTextInputUnderlines
  ret

NameEntryNavigateAwayFromBottomRow::
  push af
  ld hl, .table
  ld a, [W_NamingEntryCurrentPage]
  rst $30
  pop af
  rst $30
  push hl
  ld a, [W_NamingEntryBottomRowSelection]
  ld d, 0
  ld e, a
  ld h, 0
  ld l, a
  sla e
  rl d
  sla e
  rl d
  add hl, de
  pop de
  add hl, de
  ld a, [W_NamingEntryCursorPositionIndexWithinGroup]
  ld d, 0
  ld e, a
  add hl, de
  ld a, [hl]
  ld [W_NamingScreenCursorPositionIndex], a
  call NameEntryGetCursorPositionIndexDetailsAndPositionCursor
  ld a, $83
  ld [$C222], a
  ld a, 1
  ld [W_OAM_SpritesReady], a
  call NameEntryRemoveBottomRowOptionHighlight
  ld a, 1
  ld [W_NamingScreenSubSubSubStateIndex], a
  ret

.table
  dw .pageABTable, .pageABTable, .pageCTable

.pageABTable
  dw .pageABUpTable, .downTable

.pageCTable
  dw .pageCUpTable, .downTable

.pageABUpTable
  db $3C, $3D, $3E, $3F, $40, $41, $42, $43, $44, $45, $46, $47, $48, $49, $4A

.pageCUpTable
  db $1E, $1F, $20, $21, $22, $23, $24, $25, $26, $27, $28, $29, $2A, $2B, $2C

.downTable
  db $00, $01, $02, $03, $04, $05, $06, $07, $08, $09, $0A, $0B, $0C, $0D, $0E

NameEntryGetCursorPositionIndexDetailsAndPositionCursor::
  ld hl, NamingEntryCursorIndexInformationTable
  ld b, 0
  ld a, [W_NamingEntryCurrentPage]
  ld c, a
  sla c
  rl b
  add hl, bc
  ld a, [hli]
  ld h, [hl]
  ld l, a
  ld b, 0
  ld a, [W_NamingScreenCursorPositionIndex]
  ld c, a
  sla c
  rl b
  sla c
  rl b
  add hl, bc
  ld a, [hli]
  ld [$C223], a
  ld a, [hli]
  ld [$C224], a
  ld a, [hli]
  ld [W_NamingEntryCursorPositionIndexWithinGroup], a
  ld a, [hl]
  ld [W_NamingEntryCursorRowIndex], a
  ret

AutofillImagineerAsEnteredName::
  ld hl, W_NamingScreenEnteredTextBuffer
  ld a, 2
  ld [hli], a
  ld a, $1F
  ld [hli], a
  ld a, $73
  ld [hli], a
  ld a, $16
  ld [hli], a
  ld a, 1
  ld [hli], a
  xor a
  ld [hli], a
  ld [hli], a
  ld [hli], a
  ld [hli], a
  ld a, 5
  ld [W_NamingScreenEnteredTextLength], a
  call RenderNameEntryTextInputUnderlines
  call GetNameEntryFirstCharacterTileAddress
  ld a, 2 ; イ
  di
  push af
  rst $20
  pop af
  ld [hli], a
  ei
  ld a, $1F ; マ
  di
  push af
  rst $20
  pop af
  ld [hli], a
  ei
  ld a, $73 ; ジ
  di
  push af
  rst $20
  pop af
  ld [hli], a
  ei
  ld a, $16 ; ニ
  di
  push af
  rst $20
  pop af
  ld [hli], a
  ei
  ld a, 1 ; ア
  di
  push af
  rst $20
  pop af
  ld [hli], a
  ei
  ld a, 1
  ld [$C1E0], a
  ld a, [W_NamingScreenTypeIndex]
  ld hl, .table
  ld d, 0
  ld e, a
  add hl, de
  ld a, [hl]
  ld [$C1E3], a
  ld a, 1
  ld [W_OAM_SpritesReady], a
  ld a, 8
  call ScheduleSoundEffect
  ret

.table
  db $80, $78

NameEntryDiacriticCheck::
  ld [$C4EE], a
  cp 1
  jr z, .diacriticMaybe
  cp 2
  jr z, .diacriticMaybe
  cp 3
  jr z, .diacriticMaybe
  jr .notDiacritic

.diacriticMaybe
  ld a, 1
  ld [W_CurrentVRAMBank], a
  ldh [H_RegVBK], a
  di
  rst $20
  ld a, [hl]
  ei
  and 8
  push af
  ld a, 0
  ld [W_CurrentVRAMBank], a
  ldh [H_RegVBK], a
  pop af
  or a
  jr z, .isDiacritic

.notDiacritic
  xor a
  ret

.isDiacritic
  ld a, [$C4EE]
  ret

NameEntryDiacriticCharacterIndexToDiacriticCharacterIndex::
; Yes, as the name imples this function is 100% redundant. This takes the value in $C4EE and replaces it with that exact same value, but via a table.
  push hl
  push bc
  xor a
  ld [$C4EF], a
  ld a, [$C4EE]
  cp $6D
  jr c, .notDiacritic
  cp $9E
  jr nc, .notDiacritic
  sub $6D
  ld hl, .table
  ld c, a
  ld b, 0
  add hl, bc
  ld a, [hl]
  ld [$C4EE], a

.notDiacritic
  pop bc
  pop hl
  ret

.table
  db $6D, $6E, $6F, $70, $71, $72, $73, $74, $75, $76, $77, $78, $79, $7A, $7B, $7C, $7D, $7E, $7F, $80, $81, $82, $83, $84, $85, $86, $87, $88, $89, $8A, $8B, $8C, $8D, $8E, $8F, $90, $91, $92, $93, $94, $95, $96, $97, $98, $99, $9A, $9B, $9C, $9D

GetTileMappingAddressFromCoordinatesForNameEntry::
  ldh a, [$FF8E]
  sub $10
  srl a
  srl a
  srl a
  ld de, 0
  ld e, a
  ld hl, $9800
  ld b, $20

.mappingRowMathLoop
  add hl, de
  dec b
  jr nz, .mappingRowMathLoop

  ldh a, [$FF8F]
  sub 8
  srl a
  srl a
  srl a
  ld de, 0
  ld e, a
  add hl, de
  ld a, h
  ldh [$FF90], a
  ld a, l
  ldh [$FF91], a
  ret

SECTION "Naming Screen Entry Functions 2", ROMX[$697C+cNSOFFSET], BANK[$03]
BufferDefaultMedalName::
  push hl
  push hl
  call MedalNameEntryCountNameLength
  pop hl
  ld de, W_NamingScreenEnteredTextBuffer
  ld b, 0
  ld c, a
  call memcpy
  pop hl
  push de
  call MedalNameEntryCountNameLength
  ld b, a
  ld a, 9
  sub b
  ld b, a
  pop de

.clearLoop
  xor a
  ld [de], a
  inc de
  dec b
  jr nz, .clearLoop
  ret

GetDefaultMedalName::
  ld a, [W_NamingEntryMedalIndex]
  ld [W_ListItemIndexForBuffering], a
  ld b, $1A
  ld c, 9
  ld a, 0
  ld [W_ListItemInitialOffsetForBuffering], a
  cbcall BufferTextFromList
  ld hl, W_ListItemBufferArea
  ret

SECTION "Naming Screen Entry Functions 3", ROMX[$69C8+cNSOFFSET], BANK[$03]
MedalNameEntryCountNameLength::
  ld b, 0

.loop
  ld a, [hli]
  cp $CB
  jr z, .exitLoop
  inc b
  jr .loop

.exitLoop
  ld a, b
  ret

SECTION "Naming Screen Entry Functions 4", ROMX[$69D9+cNSOFFSET], BANK[$03]
NameEntryRemoveBottomRowOptionHighlight::
  ld hl, $9A02
  ld bc, $401
  ld a, $B
  call MapAttributeRect
  ld hl, $9A09
  ld bc, $401
  ld a, $B
  call MapAttributeRect
  ld hl, $9A0F
  ld bc, $401
  ld a, $B
  call MapAttributeRect
  ret

NameEntryHighlightBottomRowOption::
  ld a, [W_NamingEntryBottomRowSelection]
  cp 0
  jr z, .highlightFirstOption
  cp 1
  jr z, .highlightSecondOption
  cp 2
  jr z, .highlightThirdOption
  ret

.highlightFirstOption
  ld hl, $9A02
  ld bc, $401
  ld a, $A
  call MapAttributeRect
  ld hl, $9A09
  ld bc, $401
  ld a, $B
  call MapAttributeRect
  ld hl, $9A0F
  ld bc, $401
  ld a, $B
  call MapAttributeRect
  ret

.highlightSecondOption
  ld hl, $9A02
  ld bc, $401
  ld a, $B
  call MapAttributeRect
  ld hl, $9A09
  ld bc, $401
  ld a, $A
  call MapAttributeRect
  ld hl, $9A0F
  ld bc, $401
  ld a, $B
  call MapAttributeRect
  ret

.highlightThirdOption
  ld hl, $9A02
  ld bc, $401
  ld a, $B
  call MapAttributeRect
  ld hl, $9A09
  ld bc, $401
  ld a, $B
  call MapAttributeRect
  ld hl, $9A0F
  ld bc, $401
  ld a, $A
  call MapAttributeRect
  ret
