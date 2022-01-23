TypeNames:
; entries correspond to types (see constants/type_constants.asm)
	table_width 2, TypeNames
	dw Normal
	dw Fighting
	dw Flying
	dw Poison
	dw Ground
	dw Rock
	dw Bird
	dw Bug
	dw Ghost
	dw Steel
	assert_table_length UNUSED_TYPES
	dw Normal
	dw Normal
	dw Normal
	dw Normal
	dw Normal
	dw Normal
	dw Normal
	dw Normal
	dw Normal
	dw CurseType
	assert_table_length UNUSED_TYPES_END
	dw Fire
	dw Water
	dw Grass
	dw Electric
	dw Psychic
	dw Ice
	dw Dragon
	dw Dark
	assert_table_length TYPES_END

Normal:    db "ISFJ@"
Fighting:  db "ENFJ@"
Flying:    db "ISTP@"
Poison:    db "ENTJ@"
CurseType: db "???@"
Fire:      db "ENFP@"
Water:     db "ISTJ@"
Grass:     db "INFJ@"
Electric:  db "ESTJ@"
Psychic:   db "INTP@"
Ice:       db "ISFP@"
Ground:    db "ENTP@"
Rock:      db "ESTP@"
Bird:      db "INFP@"
Bug:       db "ESFP@"
Ghost:     db "ENTP@"
Steel:     db "ESFJ@"
Dragon:    db "INTJ@"
Dark:      db "EMO@"
