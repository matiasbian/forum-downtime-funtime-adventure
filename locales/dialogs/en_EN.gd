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
     "a"          : ["Finally, you're awake."],#npc answer (multiple lines)
     "cinematic"  : [
          {"speaker":"frontiersman_steeltrap","text":"Wait a minute... I was expecting my arch nemesis!"},
          {"speaker":"frontiersman_steeltrap","text":"You're not the safety inspector."},
          {"speaker":"frontiersman_steeltrap","text":"What the heck are you supposed to be?"},
          {"speaker":"frontiersman_steeltrap","text":"Some kind of... hamster girl?"}],

    
     "enabled"    : true,#								if the line is enabled from new game
     "activate"   : [1,2],#	picking this line enable other lines (relative to current npc)
     "disable"    : null,#other lines to be disable other lines (the picked one is always disabled)
     }
     ,{
     "id"         : 1,
     "npc"        : "frontiersman_steeltrap",
     "q"          : ["I'm Lemming Woman."],
     "a"          : ["Good for you."],
     "cinematic"  : [
          {"speaker":"frontiersman_steeltrap","text":"Since my plans were ruined anyway,"},
          {"speaker":"frontiersman_steeltrap","text":"I guess I can use you to test my steel trap!"},
          {"speaker":"player","text":"Gulp."}],

     "enabled"    : false,
     "activate"   : 3,
     "disable"    : 2,
     }
     ,{
     "id"         : 2,
     "npc"        : "frontiersman_steeltrap",
     "q"          : "I'm selling these fine leather jackets.",#				player dialogue
     "a"          : ["Ah, a salesperson. Excellent!"],
     "cinematic"  : [
          {"speaker":"frontiersman_steeltrap","text":"You'll be a perfect test for my steel trap!"},
          {"speaker":"player","text":"Gulp."}],
    
     "enabled"    : false,#								if the line is enabled from new game
     "disable"    : 1,#other lines to be disable other lines (the picked one is always disabled)
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
