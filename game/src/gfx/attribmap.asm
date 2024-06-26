INCLUDE "game/src/common/constants.asm"

DEF W_AttribmapWritingBaseLocationIndex EQU $C4E0 ; 0 for $9800, 1 for $9C00, I suck at naming things.
DEF W_AttribmapPointerTableIndex EQU $C4E1

SECTION "Attribmap Loading Variables 1", WRAM0[$C499]
W_DecompressAttribmapCurrentValue:: ds 1

SECTION "Load Attribmaps", ROM0[$088F]
DecompressAttribmapWTF::
  push af
  ld hl, $9800
  ld a, 1
  ld [W_AttribmapWritingBaseLocationIndex], a
  jr DecompressAttribmapCommon

DecompressAttribmap0::
  push af
  ld hl, $9800
  xor a
  ld [W_AttribmapWritingBaseLocationIndex], a
  jr DecompressAttribmapCommon

DecompressAttribmap1::
  push af
  ld hl, $9C00
  ld a, 1
  ld [W_AttribmapWritingBaseLocationIndex], a

DecompressAttribmapCommon::
  ld a, 1
  ld [W_CurrentVRAMBank], a
  ldh [H_RegVBK], a
  pop af
  ld [W_AttribmapPointerTableIndex], a
  push hl
  push de
  ld hl, AttribmapBankTable
  ld d, 0
  ld e, a
  add hl, de
  ld a, [hl]
  rst $10
  pop de
  pop hl
  push de
  ld a, b
  and $1F
  ld b, a
  ld a, c
  and $1F
  ld c, a
  ld d, 0
  ld e, c
  sla e
  rl d
  sla e
  rl d
  sla e
  rl d
  sla e
  rl d
  sla e
  rl d
  ld c, b
  ld b, 0
  add hl, bc
  add hl, de
  pop de
  push hl
  ld hl, AttribmapAddressTable
  ld a, [W_AttribmapPointerTableIndex]
  rst $30
  ld d, 0
  sla e
  rl d
  add hl, de
  ld a, [hli]
  ld d, [hl]
  ld e, a
  pop hl
  ld b, h
  ld c, l
  ld a, [de]
  cp $FF
  jp z, .cleanUpAndExit
  and $F8
  ld [W_DecompressAttribmapCurrentValue], a
  ld a, [de]
  and 3
  jr nz, .decompressMode

.copyLinesMode
  inc de
  ld a, [de]
  cp $FF
  jp z, .cleanUpAndExit
  cp $FE
  jr z, .newLine
  cp $FD
  jr z, .jpA
  cp $FC
  jr z, .jpB
  call AttribmapRecallValue
  di
  push af
  rst $20
  pop af
  ld [hli], a
  ei
  ld a, [W_AttribmapWritingBaseLocationIndex]
  or a
  call z, Tilemap0WrapToLine
  jr .copyLinesMode

.newLine
  push de
  ld de, $20
  ld h, b
  ld l, c
  add hl, de
  ld a, [W_AttribmapWritingBaseLocationIndex]
  or a
  call z, ConfineAddressToTilemap0
  ld b, h
  ld c, l
  pop de
  jr .copyLinesMode

.jpA
  inc hl
  ld a, [W_AttribmapWritingBaseLocationIndex]
  or a
  call z, Tilemap0WrapToLine
  jr .copyLinesMode

.jpB
  inc de
  ld a, [de]
  ld [$C4EE], a
  inc de
  ld a, [de]
  ld [$C4F0], a

.jpC
  ld a, [$C4EE]
  call AttribmapRecallValue
  di
  push af
  rst $20
  pop af
  ld [hli], a
  ei
  ld a, [W_AttribmapWritingBaseLocationIndex]
  or a
  call z, Tilemap0WrapToLine
  ld a, [$C4F0]
  dec a
  ld [$C4F0], a
  jr nz, .jpC
  jr .copyLinesMode

.decompressMode
  inc de
  ld a, [de]
  cp $FF
  jp z, .cleanUpAndExit
  ld a, [de]
  and $C0
  cp $C0
  jp z, .cmd3
  cp $80
  jp z, .cmd2
  cp $40
  jp z, .cmd1

.cmd0
  push bc
  ld a, [de]
  inc a
  ld b, a

.cmd0Loop
  inc de
  ld a, [de]
  call AttribmapRecallValue
  di
  push af
  rst $20
  pop af
  ld [hli], a
  ei
  dec b
  jp nz, .cmd0Loop
  pop bc
  jp .decompressMode

.cmd1
  push bc
  ld a, [de]
  and $3F
  add 2
  ld b, a
  inc de
  ld a, [de]

.cmd1Repeat
  call AttribmapRecallValue
  di
  push af
  rst $20
  pop af
  ld [hli], a
  ei
  dec b
  jp nz, .cmd1Repeat
  pop bc
  jp .decompressMode

.cmd2
  push bc
  ld a, [de]
  and $3F
  add 2
  ld b, a
  inc de
  ld a, [de]

.cmd2RepeatAndIncrement
  call AttribmapRecallValue
  di
  push af
  rst $20
  pop af
  ld [hli], a
  ei
  inc a
  dec b
  jp nz, .cmd2RepeatAndIncrement
  pop bc
  jp .decompressMode

.cmd3
  push bc
  ld a, [de]
  and $3F
  add 2
  ld b, a
  inc de
  ld a, [de]

.cmd3RepeatAndDecrement
  call AttribmapRecallValue
  di
  push af
  rst $20
  pop af
  ld [hli], a
  ei
  dec a
  dec b
  jp nz, .cmd3RepeatAndDecrement
  pop bc
  jp .decompressMode

.cleanUpAndExit
  ld a, 0
  ld [W_CurrentVRAMBank], a
  ldh [H_RegVBK], a
  ret

AttribmapBankTable::
  db BANK(AttribmapTable00)
  db BANK(AttribmapTable01)
  db BANK(AttribmapTable02)
  db BANK(AttribmapTable03)
  db BANK(AttribmapTable04)
  db BANK(AttribmapTable05)
  db BANK(AttribmapTable06)
  db BANK(AttribmapTable07)
  db BANK(AttribmapTable08)

AttribmapAddressTable::
  dw AttribmapTable00
  dw AttribmapTable01
  dw AttribmapTable02
  dw AttribmapTable03
  dw AttribmapTable04
  dw AttribmapTable05
  dw AttribmapTable06
  dw AttribmapTable07
  dw AttribmapTable08

SECTION "Load Attribmaps 2", ROM0[$0A1D]
AttribmapRecallValue::
  push bc
  ld b, a
  ld a, [W_DecompressAttribmapCurrentValue]
  or b
  pop bc
  ret

SECTION "Load Attribmaps 3", ROM0[$13AC]
DecompressAttribmap0ScrollAdjusted::
  push af
  call GetOverworldScrollTileOffset
  pop af
  jp DecompressAttribmap0

SECTION "Map Attribute Rect", ROM0[$2950]
MapAttributeRect::
; Maps attribute index A to a rectangle mapped at HL (top-left corner) that is B tiles wide and C tiles high.

  ld [$C4EF], a
  ld a, 1
  ld [W_CurrentVRAMBank], a
  ldh [H_RegVBK], a
  ld a, b
  ld [$C4EE], a

.rowLoop
  push hl
  ld a, [$C4EE]
  ld b, a

.colLoop
  di
  rst $20
  ld a, [$C4EF]
  ld [hli], a
  ei
  dec b
  jr nz, .colLoop

  pop hl
  ld de, $20
  add hl, de
  dec c
  jr nz, .rowLoop

  ld a, 0
  ld [W_CurrentVRAMBank], a
  ldh [H_RegVBK], a
  ret
