
/* Job Factions

 - These are/will be used for spies, partisans, and squads.
 - They're like antagonist datums but much simpler. You can have many
 - different factions depending on your job

 - helper functions are at the bottom

*/

#define TEAM_EN 1
#define TEAM_PI 2
#define TEAM_SP 3
#define TEAM_PT 4
#define TEAM_FR 5
#define TEAM_IN 6
#define TEAM_NL 7
#define TEAM_CV 8
#define TEAM_RO 9
#define TEAM_GR 10
#define TEAM_AR 11
#define TEAM_JP 12
#define TEAM_RU 13
#define TEAM_GE 14
#define TEAM_US 15
#define TEAM_VI 16
#define TEAM_CH 17
#define TEAM_FP 18
#define TEAM_FI 19
#define TEAM_CC 20
#define TEAM_NO 21
#define TEAM_SE 22
#define TEAM_DK 23
#define TEAM_PO 24
#define TEAM_IT 25
#define TEAM_BLUE 26
#define TEAM_RED 27
#define TEAM_CAFR 28
#define TEAM_TSFSR 29

var/global/soldiers[27]

/datum/faction
	// redefine these since they don't exist in /datum
	var/icon = 'icons/mob/hud_1713.dmi'
	var/icon_state = ""
	var/mob/living/human/holder = null
	var/title = "Something that shouldn't exist"
	var/list/objectives = list()
	var/team = null
	var/image/last_returned_image = null
	var/obj/factionhud/last_returned_hud = null

/datum/faction/proc/base_type()
	return "/datum/faction"

/datum/faction/civilian
	icon_state = "civilian_basic"
	title = "Civilian"
	team = TEAM_CV

/datum/faction/pirates/base_type()
	return "/datum/faction/pirates"

/datum/faction/pirates
	icon_state = "pirate_basic"
	title = "Pirate"
	team = TEAM_PI

/datum/faction/pirates/base_type()
	return "/datum/faction/pirates"

/datum/faction/spanish
	icon_state = "spanish_basic"
	title = "Spanish"
	team = TEAM_SP

/datum/faction/spanish/base_type()
	return "/datum/faction/spanish"

/datum/faction/portuguese
	icon_state = "portuguese_basic"
	title = "Portuguese"
	team = TEAM_PT

/datum/faction/portuguese/base_type()
	return "/datum/faction/portuguese"

/datum/faction/french
	icon_state = "french_basic"
	title = "French"
	team = TEAM_FR

/datum/faction/french/base_type()
	return "/datum/faction/french"

/datum/faction/indians
	icon_state = "indian_basic"
	title = "Indian"
	team = TEAM_IN

/datum/faction/indians/base_type()
	return "/datum/faction/indians"

/datum/faction/british
	icon_state = "rn_basic"
	title = "Royal Navy Sailor"
	team = TEAM_EN

/datum/faction/british/base_type()
	return "/datum/faction/british"

/datum/faction/dutch
	icon_state = "nl_basic"
	title = "Dutch Sailor"
	team = TEAM_NL

/datum/faction/dutch/base_type()
	return "/datum/faction/dutch"

/datum/faction/italian
	icon_state = "it_basic"
	title = "Italian Soldier"
	team = TEAM_IT

/datum/faction/italian/base_type()
	return "/datum/faction/italian"

/datum/faction/japanese
	icon_state = ""
	title = "Japanese Soldier"
	team = TEAM_JP

/datum/faction/japanese/base_type()
	return "/datum/faction/japanese"

/datum/faction/russian
	icon_state = ""
	title = "Russian Soldier"
	team = TEAM_RU

/datum/faction/russian/base_type()
	return "/datum/faction/russian"

/datum/faction/chechen
	icon_state = ""
	title = "Chechen Soldier"
	team = TEAM_CC

/datum/faction/chechen/base_type()
	return "/datum/faction/chechen"

/datum/faction/finnish
	icon_state = ""
	title = "Finnish Soldier"
	team = TEAM_FI

/datum/faction/finnish/base_type()
	return "/datum/faction/finnish"

/datum/faction/norwegian
	icon_state = ""
	title = "Norwegian Soldier"
	team = TEAM_NO

/datum/faction/norwegian/base_type()
	return "/datum/faction/norwegian"

/datum/faction/swedish
	icon_state = ""
	title = "Swedish Soldier"
	team = TEAM_SE

/datum/faction/swedish/base_type()
	return "/datum/faction/swedish"

/datum/faction/danish
	icon_state = ""
	title = "Danish Soldier"
	team = TEAM_DK

/datum/faction/danish/base_type()
	return "/datum/faction/danish"

/datum/faction/german
	icon_state = ""
	title = "German Soldier"
	team = TEAM_GE

/datum/faction/vietnamese/base_type()
	return "/datum/faction/vietnamese"

/datum/faction/vietnamese
	icon_state = ""
	title = "Vietnamese Soldier"
	team = TEAM_VI

/datum/faction/chinese/base_type()
	return "/datum/faction/chinese"

/datum/faction/chinese
	icon_state = ""
	title = "Chinese Soldier"
	team = TEAM_CH

/datum/faction/filipino/base_type()
	return "/datum/faction/filipino"

/datum/faction/filipino
	icon_state = ""
	title = "Filipino Soldier"
	team = TEAM_FP

/datum/faction/american/base_type()
	return "/datum/faction/american"

/datum/faction/american
	icon_state = ""
	title = "US Soldier"
	team = TEAM_US

/datum/faction/german/base_type()
	return "/datum/faction/german"

/datum/faction/roman
	icon_state = ""
	title = "Roman Soldier"
	team = TEAM_RO

/datum/faction/roman/base_type()
	return "/datum/faction/roman"


/datum/faction/greek
	icon_state = ""
	title = "Greek Soldier"
	team = TEAM_GR

/datum/faction/greek/base_type()
	return "/datum/faction/greek"

/datum/faction/arab
	icon_state = ""
	title = "Arab Soldier"
	team = TEAM_AR

/datum/faction/arab/base_type()
	return "/datum/faction/arab"

/datum/faction/polish
	icon_state = ""
	title = "Polish Soldier"
	team = TEAM_PO

/datum/faction/polish/base_type()
	return "/datum/faction/polish"

/datum/faction/bluefaction
	icon_state = "blugoslavia"
	title = "Blugoslavian Soldier"
	team = TEAM_BLUE

/datum/faction/bluefaction/base_type()
	return "/datum/faction/bluefaction"

/datum/faction/cafr
	icon_state = ""
	title = "CAFR Soldier"
	team = TEAM_CAFR

/datum/faction/cafr/base_type()
	return "/datum/faction/cafr"

/datum/faction/redfaction
	icon_state = "redmenia"
	title = "Redmenian Soldier"
	team = TEAM_RED

/datum/faction/redfaction/base_type()
	return "/datum/faction/redfaction"

/datum/faction/tsfsr
	icon_state = "sov_basic"
	title = "TSFSR Soldier"
	team = TEAM_TSFSR

/datum/faction/tsfsr/base_type()
	return "/datum/faction/tsfsr"

// CODE
/datum/faction/New(var/mob/living/human/H, var/datum/job/J)

	if (!H || !istype(H))
		return

	holder = H
	if (istype(J, /datum/job/pirates))
		if ("[type]" == "/datum/faction/pirates")
			soldiers[PIRATES]++
	else if (istype(J, /datum/job/british))
		if ("[type]" == "/datum/faction/british")
			soldiers[BRITISH]++
	else if (istype(J, /datum/job/spanish))
		if ("[type]" == "/datum/faction/spanish")
			soldiers[SPANISH]++
	else if (istype(J, /datum/job/portuguese))
		if ("[type]" == "/datum/faction/portuguese")
			soldiers[PORTUGUESE]++
	else if (istype(J, /datum/job/french))
		if ("[type]" == "/datum/faction/french")
			soldiers[FRENCH]++
	else if (istype(J, /datum/job/dutch))
		if ("[type]" == "/datum/faction/dutch")
			soldiers[DUTCH]++
	else if (istype(J, /datum/job/italian))
		if ("[type]" == "/datum/faction/italian")
			soldiers[ITALIAN]++
	else if (istype(J, /datum/job/indians))
		if ("[type]" == "/datum/faction/indians")
			soldiers[INDIANS]++
	else if (istype(J, /datum/job/civilian))
		if ("[type]" == "/datum/faction/civilian")
			soldiers[CIVILIAN]++
	else if (istype(J, /datum/job/roman))
		if ("[type]" == "/datum/faction/roman")
			soldiers[ROMAN]++
	else if (istype(J, /datum/job/greek))
		if ("[type]" == "/datum/faction/greek")
			soldiers[GREEK]++
	else if (istype(J, /datum/job/arab))
		if ("[type]" == "/datum/faction/arab")
			soldiers[ARAB]++
	else if (istype(J, /datum/job/japanese))
		if ("[type]" == "/datum/faction/japanese")
			soldiers[JAPANESE]++
	else if (istype(J, /datum/job/chinese))
		if ("[type]" == "/datum/faction/chinese")
			soldiers[CHINESE]++
	else if (istype(J, /datum/job/russian))
		if ("[type]" == "/datum/faction/russian")
			soldiers[RUSSIAN]++
	else if (istype(J, /datum/job/arab/civilian/chechen))
		if ("[type]" == "/datum/faction/chechen")
			soldiers[CHECHEN]++
	else if (istype(J, /datum/job/finnish))
		if ("[type]" == "/datum/faction/finnish")
			soldiers[FINNISH]++
	else if (istype(J, /datum/job/norwegian))
		if ("[type]" == "/datum/faction/norwegian")
			soldiers[NORWEGIAN]++
	else if (istype(J, /datum/job/swedish))
		if ("[type]" == "/datum/faction/swedish")
			soldiers[SWEDISH]++
	else if (istype(J, /datum/job/danish))
		if ("[type]" == "/datum/faction/danish")
			soldiers[DANISH]++
	else if (istype(J, /datum/job/polish))
		if ("[type]" == "/datum/faction/polish")
			soldiers[POLISH]++
	else if (istype(J, /datum/job/bluefaction))
		if ("[type]" == "/datum/faction/bluefaction")
			soldiers[BLUEFACTION]++
	else if (istype(J, /datum/job/redfaction))
		if ("[type]" == "/datum/faction/redfaction")
			soldiers[REDFACTION]++
	else if (istype(J, /datum/job/cafr))
		if ("[type]" == "/datum/faction/cafr")
			soldiers[CAFR]++
	else if (istype(J, /datum/job/tsfsr))
		if ("[type]" == "/datum/faction/tsfsr")
			soldiers[TSFSR]++
	H.all_factions += src
	..()