extends Node

#dictionary values:
#id/npc_id:	combination of these two, makes an unique id (ie: [03]and [frontiersman_steeltrap] is the 3rd dialogue line for npc "frontiersman_steeltrap"
#
#Q:		question (also text selecion)
#A:		NPC answer if this question is picked
var dialogue = [
#		frontiersman_steeltrap lines

     {
     "id"         : 0,#									internal ID for frontiersman_steeltrap dialogues
     "npc"        : "frontiersman_steeltrap",#								npc who says this line
     "q"          : "Ugh. My head...",#				player dialogue
     "a"          : ["Huh? Holy Horseshoes! You're not Inspector Klein!"],#npc answer (multiple lines)
     "cinematic"  : [
          {"speaker":"frontiersman_steeltrap","text":"Who are ya? Some kinda Hamster Avenger?"}],

    
     "enabled"    : true,#								if the line is enabled from new game
     "activate"   : [1,4,5],#	picking this line enable other lines (relative to current npc)
     "disable"    : null,#other lines to be disable other lines (the picked one is always disabled)
     }
     ,{
     "id"         : 1,
     "npc"        : "frontiersman_steeltrap",
     "q"          : ["Who's Inspector Klein?"],
     "a"          : ["Ha! Ya hear that, Paul? Rodent girl here doesn t know about Klein."],
     "cinematic"  : [
          {"speaker":"frontiersman_steeltrap","text":"He's the worst! A pox on the face of wholesome family entertainment!"},
          {"speaker":"frontiersman_steeltrap","text":"Always tryin' to shut me down. It's a disgrace!"},
          {"speaker":"frontiersman_steeltrap","text":"Sure, I may have had to bend a few little health and safety laws to make ends meet."}],

     "enabled"    : false,
     "disable"    : [4,5],
	"activate"	  : 2,
     }
     ,{
     "id"         : 2,
     "npc"        : "frontiersman_steeltrap",
     "q"          : "Well...",
     "a"          : ["You know what's wrong with kids these days?"],
     "cinematic"  : [
          {"speaker":"frontiersman_steeltrap","text":"Always too busy playin' with their gatherin' magic cards an' pok-e-mans"},
          {"speaker":"frontiersman_steeltrap","text":"an' YouPages. They just don’t want to get up off their lazy butts and go"},
          {"speaker":"frontiersman_steeltrap","text":"see some REAL entertainment. It’s not like anyone’s died from fallin' off"},
            {"speaker":"frontiersman_steeltrap","text":"the narrow viewin platform above the Gopher Saloon and Terrarum."}],  
     "enabled"    : false,
     "disable"    : [4,5],
	"activate"   : 3,
     }
     ,{
     "id"         : 3,
     "npc"        : "frontiersman_steeltrap",
     "q"          : "Maybe...",
     "a"          : ["Why should I have to pay forty bucks to put up guard rails when I can put in a new"],
     "cinematic"  : [
          {"speaker":"frontiersman_steeltrap","text":"attraction, or start utilizin' the latest and greatest in advertisin' technology?"},
          {"speaker":"player","text":"..."},
          {"speaker":"frontiersman_steeltrap","text":"Anyway, ya better hope Klein doesn’t show his ugly mug for awhile,"},
            {"speaker":"frontiersman_steeltrap","text":"'cause I only got enough room in this trap for one interloper."}],  
     "enabled"    : false,
     "disable"    : [4,5],
	"activate"   : 6,
     }
     ,{
     "id"         : 4,
     "npc"        : "frontiersman_steeltrap",
     "q"          : "I'm not a hamster themed hero! I'm...",
     "a"          : ["A mouse, then?"],
     "cinematic"  : [
          {"speaker":"frontiersman_steeltrap","text":"Well, Ms. Mouse, you wandered right into my trap!"},
          {"speaker":"frontiersman_steeltrap","text":"And I didn't even set it for ya!"}],
    
     "enabled"    : false,
     "disable"    : [1,2,3],
	"activate"   : 6,
	} 
     ,{
     "id"         : 5,
     "npc"        : "frontiersman_steeltrap",
     "q"          : "I'm selling these fine superhero costumes.",
     "a"          : ["Ah, a salesperson. Excellent!"],
     "cinematic"  : [
          {"speaker":"frontiersman_steeltrap","text":"There's nothing worse than a door to door salesperson."},
          {"speaker":"frontiersman_steeltrap","text":"Except for a safety inspector, of course."},
          {"speaker":"frontiersman_steeltrap","text":"But since I can't get my nemesis, Inspector Klein,"},
          {"speaker":"frontiersman_steeltrap","text":"you'll be the perfect test subject for my steel trap."}],
    
     "enabled"    : false,
     "disable"    : [1,2,3],
	"activate"   : 6,
	} 
     ,{
     "id"         : 6,
     "npc"        : "frontiersman_steeltrap",
     "q"          : "room steeltrap",#	quick and dirty room change code is in dialogue_base.gd
    
     "enabled"    : false,
	} 


]





func newgame():
	get_node("/root/database").dialogue = dialogue
	queue_free()

func refreshdb():#refresh the database with this translation
	var database = get_node("/root/database")
	for i in range(dialogue.size()):
		database.dialogue[i]["q"] = dialogue[i]["q"]
		database.dialogue[i]["a"] = dialogue[i]["a"]
		database.dialogue[i]["newscene"] = dialogue[i]["newscene"]
	queue_free()
