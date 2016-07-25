extends Node

#dictionary values:
#id/npc_id:	combination of these two, makes an unique id (ie: [03]and [frontiersman_steeltrap] is the 3rd dialogue line for npc "frontiersman_steeltrap"
#
#Q:		question (also text selecion)
#A:		NPC answer if this question is picked
var dialogue = [
#		frontiersman_steeltrap lines

     {
     "id"         : 0,#internal ID for frontiersman_steeltrap dialogues
     "npc"        : "frontiersman_steeltrap",#npc who says this line
     "q"          : "Ugh. My head...",#player dialogue
     "a"          : ["Huh? Holy Horseshoes! You're not Inspector Klein!"],#npc answer (multiple lines)
     "cinematic"  : [
          {"speaker":"frontiersman_steeltrap","text":"Who are ya? Some kinda Hamster Avenger?"}],

    
     "enabled"    : true,#if the line is enabled from the beginning of a new game
     "activate"   : [1,2,3],#picking this line will enable other lines (relative to current npc)
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
          {"speaker":"frontiersman_steeltrap","text":"Sure, I may have had to bend a few little health and safety laws to make ends meet."},
          {"speaker":"frontiersman_steeltrap","text":"You know what's wrong with kids these days?"},  
          {"speaker":"player","text":"Well..."},  
          {"speaker":"frontiersman_steeltrap","text":"Always too busy playin' with their gatherin' magic cards an' pok-e-mans"},
          {"speaker":"frontiersman_steeltrap","text":"an' YouPages. They just don’t want to get up off their lazy butts and go"},
          {"speaker":"frontiersman_steeltrap","text":"see some REAL entertainment. It’s not like anyone’s died from fallin' off"},
          {"speaker":"frontiersman_steeltrap","text":"the narrow viewin' platform above the Gopher Saloon and Terrarium."},  
          {"speaker":"frontiersman_steeltrap","text":"Why should I have to pay forty bucks to put up guard rails when I can put in a new"},  
          {"speaker":"frontiersman_steeltrap","text":"attraction, or get ta utilizin' the latest and greatest in advertisin' technology?"},
          {"speaker":"player","text":"..."},
          {"speaker":"frontiersman_steeltrap","text":"Anyway, ya better hope Klein doesn’t show his ugly mug for a while,"},
          {"speaker":"frontiersman_steeltrap","text":"'cause I only got enough room in this trap for one interloper."}],  

     "enabled"    : false,
     "disable"    : [2,3],
	"activate"	  : [4,6,7],
     }
     ,{
     "id"         : 2,
     "npc"        : "frontiersman_steeltrap",
     "q"          : "I'm not a hamster themed hero! I'm...",
     "a"          : ["A mouse, then?"],
     "cinematic"  : [
          {"speaker":"frontiersman_steeltrap","text":"Well, Ms. Mouse, you wandered right into my trap!"},
          {"speaker":"frontiersman_steeltrap","text":"And I didn't even set it for ya!"},
          {"speaker":"frontiersman_steeltrap","text":"Ha!"}],
    
     "enabled"    : false,
     "disable"    : [1,3],
	"activate"   : 4,
	} 
     ,{
     "id"         : 3,
     "npc"        : "frontiersman_steeltrap",
     "q"          : "I'm selling these fine superhero costumes.",
     "a"          : ["Ah, a salesperson. Excellent!"],
     "cinematic"  : [
          {"speaker":"frontiersman_steeltrap","text":"There's nothing worse than a door to door salesperson."},
          {"speaker":"frontiersman_steeltrap","text":"Except for a safety inspector, of course."},
          {"speaker":"frontiersman_steeltrap","text":"But since I can't get my nemesis, Inspector Klein,"},
          {"speaker":"frontiersman_steeltrap","text":"you'll be the perfect test subject for my steel trap."},
          {"speaker":"player","text":"Steel trap?"},
          {"speaker":"frontiersman_steeltrap","text":" What did ya expect? It's a room full of steel an' a big robot!"},   
          {"speaker":"frontiersman_steeltrap","text":"I'd like to see you come up with a better name."}],   
     "enabled"    : false,
     "disable"    : [1,2],
	"activate"   : [4,5],#trap, robot
	} 
	     ,{
     "id"         : 4,
     "npc"        : "frontiersman_steeltrap",
     "q"          : "I’ve been locked in supply closets before.",
     "a"          : ["But I betcha've never been locked in a supply closet with a state of the art"],
     "cinematic"  : [
          {"speaker":"frontiersman_steeltrap","text":"MECHA PAUL BUNION!"},
          {"speaker":"frontiersman_steeltrap","text":"I figured I might as well let Paul here do the honors of finishing"},
          {"speaker":"frontiersman_steeltrap","text":"Klein off, on account of the good inspector deciding to close down"},
          {"speaker":"frontiersman_steeltrap","text":"Paul Bunion’s Authentic Clear Cuttin' and log Spittin' show"},
          {"speaker":"frontiersman_steeltrap","text":"because of a few splinters."},
          {"speaker":"player","text":"A tree branch is not a splinter."},
          {"speaker":"frontiersman_steeltrap","text":"Details."}],   
     "enabled"    : false,
     "disable"    : [1,2,3],
	"activate"   : 5,
	} 
	     ,{
     "id"         : 5,
     "npc"        : "frontiersman_steeltrap",
     "q"          : "That's an interesting robot.",
     "a"          : ["Paul Bunion here is only the latest and greatest in robot lumberjack technology."],
     "cinematic"  : [
          {"speaker":"frontiersman_steeltrap","text":"Cost me a fortune to build, and I had to evict a few termites"},
          {"speaker":"frontiersman_steeltrap","text":"from the old ghost town to get enough wood to finish the"},
          {"speaker":"frontiersman_steeltrap","text":"Loopy Llama Log Flume, but it was worth it."},
          {"speaker":"frontiersman_steeltrap","text":"First, he's gonna chop you into chipmunk chunks."},
          {"speaker":"frontiersman_steeltrap","text":"Then he'll move onto bigger prey when I trap that"},
          {"speaker":"frontiersman_steeltrap","text":"no good, interfering safety inspector."}],
     "enabled"    : false,
     "disable"    : [1,2,3,4],
	"activate"   : 6,
		 }
	     ,{
     "id"         : 6,
     "npc"        : "frontiersman_steeltrap",
     "q"          : "Your park seems a bit, uh, dangerous.",
     "a"          : ["So?"],
     "cinematic"  : [
          {"speaker":"player","text":"''So?'' Your park is a deathtrap! There’s a log"},
          {"speaker":"player","text":"flume running through an active saw mill, the"},
          {"speaker":"player","text":"hall of giant spherical objects is dangerously"},
          {"speaker":"player","text":"unsecured and full of ramps, and the gophers"},
          {"speaker":"player","text":"are able to freely leave their enclosure to"},
          {"speaker":"player","text":"rob banks and hold people for ransom!"},
          {"speaker":"player","text":"Are you trying to kill your customers?"},
          {"speaker":"frontiersman_steeltrap","text":"If they can’t leave, they can’t spend their money elsewhere."},
          {"speaker":"frontiersman_steeltrap","text":"It’s just good business sense little lady. The only hard part"},
          {"speaker":"frontiersman_steeltrap","text":"is getting a steady supply of new customers. But I’ve got"},
          {"speaker":"frontiersman_steeltrap","text":"some new ads going that are workin' just fine on that front."}],
     "enabled"    : false,
     "disable"    : [1,2,3,4],
	"activate"   : 7,
	} 	 	
	     ,{
     "id"         : 7,
     "npc"        : "frontiersman_steeltrap",
     "q"          : "Let me guess, you’re the one behind the hypno ads that’ve been showing up around here.",
     "a"          : ["So?"],
     "cinematic"  : [
          {"speaker":"player","text":"''So?'' Your park is a deathtrap! There’s a log"},
          {"speaker":"player","text":"flume running through an active saw mill, the"},
          {"speaker":"player","text":"hall of giant spherical objects is dangerously"},
          {"speaker":"player","text":"unsecured and full of ramps, and the gophers"},
          {"speaker":"player","text":"are able to freely leave their enclosure to"},
          {"speaker":"player","text":"rob banks and hold people for ransom!"},
          {"speaker":"player","text":"Are you trying to kill your customers?"},
          {"speaker":"frontiersman_steeltrap","text":"If they can’t leave, they can’t spend their money elsewhere."},
          {"speaker":"frontiersman_steeltrap","text":"It’s just good business sense little lady. The only hard part"},
          {"speaker":"frontiersman_steeltrap","text":"is getting a steady supply of new customers. But I’ve got"},
          {"speaker":"frontiersman_steeltrap","text":"some new ads going that are workin' just fine on that front."}],
     "enabled"    : false,
     "disable"    : [1,2,3,4],
	"activate"   : 7,
	} 	 	
	     ,{
     "id"         : 42,
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
