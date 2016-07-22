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
     "npc"        : "frontiersman_steeltrap",#								npc who belong this line
     "q"          : "Ugh.",#				player dialogue
     "a"          : ["Finally, you're awake."],#npc answer (multiple lines)
     "cinematic"  : [
          {"speaker":"frontiersman_steeltrap","text":"Hold on. I was expecting my arch nemesis!"},
          {"speaker":"frontiersman_steeltrap","text":"You're not the safety inspector."},
          {"speaker":"frontiersman_steeltrap","text":"What the heck are you supposed to be?"}],

    
     "enabled"    : true,#								if the line is enabled from new game
     "activate"   : [1,2],#	picking this line enable other lines (relative to current npc)
     "disable"    : null,#other lines to be disable other lines (the picked one is always disabled)
     }
     ,{
     "id"         : 1,
     "npc"        : "frontiersman_steeltrap",
     "q"          : ["I'm Lemming Woman."],
     "a"          : ["I guess I can test my steel trap on you."],
     "enabled"    : false,
     "activate"   : 3,
     "disable"    : 2,
     }
     ,{
     "id"         : 2,
     "npc"        : "frontiersman_steeltrap",
     "q"          : ["I'm selling these fine leather jackets."],
     "a"          : "Ah, excellent. A salesperson is the perfect test for my steel trap.",
     "enabled"    : false,
     "disable"    : 1,
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
	queue_free()
