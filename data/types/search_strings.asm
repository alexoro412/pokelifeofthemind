PokedexTypeSearchStrings:
; entries correspond with PokedexTypeSearchConversionTable (see data/types/search_types.asm)
	table_width POKEDEX_TYPE_STRING_LENGTH, PokedexTypeSearchStrings
	db "  ----  @"
	db "  ISFJ  @"
	db "  ENFP  @"
	db "  ISTJ  @"
	db "  INFJ  @"
	db "  ESTJ  @"
	db "  ISFP  @"
	db "  ENFJ  @"
	db "  ENTJ  @"
	db "  ENTP  @"
	db "  ISTP  @"
	db "  INTP  @"
	db "  ESFP  @"
	db "  ESTP  @"
	db "  ENTP  @"
	db "  INTJ  @"
	db "  EMO   @"
	db "  ESFJ  @"
	assert_table_length NUM_TYPES + 1
