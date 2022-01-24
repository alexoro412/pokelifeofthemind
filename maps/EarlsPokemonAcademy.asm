	object_const_def
	const EARLSPOKEMONACADEMY_EARL
	const EARLSPOKEMONACADEMY_YOUNGSTER1
	const EARLSPOKEMONACADEMY_GAMEBOY_KID1
	const EARLSPOKEMONACADEMY_GAMEBOY_KID2
	const EARLSPOKEMONACADEMY_YOUNGSTER2
	const EARLSPOKEMONACADEMY_POKEDEX

EarlsPokemonAcademy_MapScripts:
	def_scene_scripts

	def_callbacks

AcademyEarl:
	applymovement EARLSPOKEMONACADEMY_EARL, AcademyEarlSpinMovement
	faceplayer
	opentext
	writetext AcademyEarlIntroText
	yesorno
	iffalse .Part1
	writetext AcademyEarlTeachHowToWinText
	yesorno
	iffalse .Done
.Part1:
	writetext AcademyEarlTeachMoreText
	yesorno
	iffalse .Done
	writetext AcademyEarlTeachHowToRaiseWellText
	waitbutton
	closetext
	end

.Done:
	writetext AcademyEarlNoMoreToTeachText
	waitbutton
	closetext
	end

EarlsPokemonAcademyYoungster1Script:
	jumptextfaceplayer EarlsPokemonAcademyYoungster1Text

EarlsPokemonAcademyGameboyKid1Script:
	faceplayer
	opentext
	writetext EarlsPokemonAcademyGameboyKid1Text
	waitbutton
	closetext
	turnobject EARLSPOKEMONACADEMY_GAMEBOY_KID1, DOWN
	end

EarlsPokemonAcademyGameboyKid2Script:
	faceplayer
	opentext
	writetext EarlsPokemonAcademyGameboyKid2Text
	waitbutton
	closetext
	turnobject EARLSPOKEMONACADEMY_GAMEBOY_KID2, DOWN
	end

EarlsPokemonAcademyYoungster2Script:
	jumptextfaceplayer EarlsPokemonAcademyYoungster2Text

AcademyBlackboard:
	opentext
	writetext AcademyBlackboardText
.Loop:
	loadmenu .BlackboardMenuHeader
	_2dmenu
	closewindow
	ifequal 1, .Poison
	ifequal 2, .Paralysis
	ifequal 3, .Sleep
	ifequal 4, .Burn
	ifequal 5, .Freeze
	closetext
	end

.Poison:
	writetext AcademyPoisonText
	waitbutton
	sjump .Loop

.Paralysis:
	writetext AcademyParalysisText
	waitbutton
	sjump .Loop

.Sleep:
	writetext AcademySleepText
	waitbutton
	sjump .Loop

.Burn:
	writetext AcademyBurnText
	waitbutton
	sjump .Loop

.Freeze:
	writetext AcademyFreezeText
	waitbutton
	sjump .Loop

.BlackboardMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 0, 11, 8
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR ; flags
	dn 3, 2 ; rows, columns
	db 5 ; spacing
	dba .Text
	dbw BANK(@), NULL

.Text:
	db "INC@"
	db "EMB@"
	db "SLP@"
	db "DIS@"
	db "SFT@"
	db "QUIT@"

AcademyNotebook:
	opentext
	writetext AcademyNotebookText
	yesorno
	iffalse .Done
	writetext AcademyNotebookText1
	yesorno
	iffalse .Done
	writetext AcademyNotebookText2
	yesorno
	iffalse .Done
	writetext AcademyNotebookText3
	waitbutton
.Done:
	closetext
	end

AcademyStickerMachine: ; unreferenced
	jumptext AcademyStickerMachineText

AcademyBookshelf:
	jumpstd DifficultBookshelfScript

AcademyEarlSpinMovement:
	turn_head DOWN
	turn_head LEFT
	turn_head UP
	turn_head RIGHT
	turn_head DOWN
	turn_head LEFT
	turn_head UP
	turn_head RIGHT
	turn_head DOWN
	turn_head LEFT
	turn_head UP
	turn_head RIGHT
	turn_head DOWN
	step_end

AcademyEarlIntroText:
	text "EARL, I am!"

	para "Wonderful are"
	line "#MON, yes!"

	para "Teach you I will"
	line "to be a better"
	cont "teacher!"

	para "What do you want"
	line "to know?"
	done

AcademyEarlTeachHowToWinText:
	text "Good! Teach you,"
	line "I will!"

	para "In debate, #MON"
	line "top on list speak"
	cont "first!"

	para "Change order in"
	line "list, make debate"
	cont "easy, maybe!"

	para "More from me you"
	line "want to hear?"
	done

AcademyEarlTeachMoreText:
	text "So, want to know"
	line "how to teach"
	cont "#MON well?"
	done

AcademyEarlTeachHowToRaiseWellText:
	text "Fine! Teach you,"
	line "I will!"

	para "If #MON come"
	line "out in debate even"

	para "briefly, some EXP."
	line "Points it gets."

	para "At top of list put"
	line "uneducated"
    cont "#MON."

	para "Switch in debate"
	line "quick!"

	para "This way, dumb"
	line "#MON smart"
	cont "become!"
	done

AcademyEarlNoMoreToTeachText:
	text "Oh! Smart student"
	line "you are! Nothing"
	cont "more do I teach!"

	para "Good to #MON"
	line "you must be!"
	done

EarlsPokemonAcademyYoungster1Text:
	text "I'm taking notes"
	line "of the teacher's"
	cont "lecture."

	para "I'd better copy"
	line "the stuff on the"
	cont "blackboard too."
	done

EarlsPokemonAcademyGameboyKid1Text:
	text "I traded my best"
	line "#MON to the"
	cont "guy beside me."
	done

EarlsPokemonAcademyGameboyKid2Text:
	text "Huh? The #MON I"
	line "just got is hold-"
	cont "ing something!"
	done

EarlsPokemonAcademyYoungster2Text:
	text "A #MON holding"
	line "a SNACK will feed"
	cont "itself in debate."

	para "Many other items"
	line "can be held by"
	cont "#MON…"

	para "It sure is tough"
	line "taking notes…"
	done

AcademyBlackboardText:
	text "The blackboard"
	line "describes #MON"

	para "status changes in"
	line "battle."
	done

AcademyBlackboardText2: ; unreferenced
	text "Read which topic?"
	done

AcademyPoisonText:
	text "If incepted, a"
	line "#MON steadily"
	cont "gets persuaded."

	para "The idea lingers"
	line "after the debate,"

	para "and P increases"
	line "as you walk."

	para "To fix it, use a"
	line "DECEPT."
	done

AcademyParalysisText:
	text "Embarassment "
	line "reduces WIT and"
	cont "prevent movement."

	para "It remains after"
	line "battle, so use"
	cont "a CONF.BOOST."
	done

AcademySleepText:
	text "If asleep, your"
	line "#MON can't make"
	cont "any arguments."

	para "A sleeping #MON"
	line "can't wake up"
	cont "on its own."

	para "Wake it up with"
	line "an AWAKENING."
	done

AcademyBurnText:
	text "A dis lingers"
	line "in the mind,"

    para "and P slowly"
    line "grows with it"

	para "It also reduces"
	line "PERSUADE power."

	para "A dis lingers"
	line "after debate."

	para "Use some ALOE to"
	line "cure it."
	done

AcademyFreezeText:
	text "If your #MON"
	line "has stage fright,"
	cont "it can't act."

	para "It remains scared"
	line "after the initial"
    cont "argument."

	para "Get it to snap"
    line "out of it with a"
	cont "SLAP!"
	done

AcademyNotebookText:
	text "It's this kid's"
	line "notebook…"

	para "Catch #MON"
	line "using # BALLS."

	para "Up to six can be"
	line "in your party."

	para "Keep reading?"
	done

AcademyNotebookText1:
	text "Before throwing a"
	line "# BALL, argue "
	cont "with the target."

    para "If you convince it"
    line "enough, it may be"
    cont "willing to join "
    cont "your team."

    para "Careful though, if"
    line "you argue too much"
    cont "it may catch on to"
    cont "your plan and flee" 

	para "An incepted or"
	line "dissed #MON is"
	cont "easier to catch."

	para "Keep reading?"
	done

AcademyNotebookText2:
	text "Some points may"
	line "cause confusion."

	para "Confusion may make"
	line "a #MON argue"
	cont "with itself."

	para "Leaving debate"
	line "clears up any"
	cont "confusion."

	para "Keep reading?"
	done

AcademyNotebookText3:
	text "People who catch"
	line "and use #MON"

	para "in debate are"
	line "#MON teachers."

	para "They are expected"
	line "to visit #MON"

	para "COLLEGES and earn"
	line "DEGREES."

	para "The next page"
	line "is… Blank!"

	para "Boy: E-he-he…"

	para "I haven't written"
	line "anymore…"
	done

AcademyStickerMachineText:
	text "This super machine"
	line "prints data out as"

	para "stickers!"
	done

EarlsPokemonAcademy_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3, 15, VIOLET_CITY, 3
	warp_event  4, 15, VIOLET_CITY, 3

	def_coord_events

	def_bg_events
	bg_event  0,  1, BGEVENT_READ, AcademyBookshelf
	bg_event  1,  1, BGEVENT_READ, AcademyBookshelf
	bg_event  3,  0, BGEVENT_READ, AcademyBlackboard
	bg_event  4,  0, BGEVENT_READ, AcademyBlackboard

	def_object_events
	object_event  4,  2, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, AcademyEarl, EVENT_EARLS_ACADEMY_EARL
	object_event  2,  5, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, EarlsPokemonAcademyYoungster1Script, -1
	object_event  3, 11, SPRITE_GAMEBOY_KID, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, EarlsPokemonAcademyGameboyKid1Script, -1
	object_event  4, 11, SPRITE_GAMEBOY_KID, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, EarlsPokemonAcademyGameboyKid2Script, -1
	object_event  4,  7, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, EarlsPokemonAcademyYoungster2Script, -1
	object_event  2,  4, SPRITE_POKEDEX, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AcademyNotebook, -1
