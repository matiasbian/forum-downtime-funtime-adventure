
extends Node2D
var database

func _enter_tree():
	database = get_node("/root/database")
	var array = [1,1,1]
	array.resize(5)
	print(array[4])
	new_game()

func new_game():
	var newgame = Node.new()
	newgame.set_script(load("res://locales/dialogs/en_EN.gd"))
	add_child(newgame)
	newgame.newgame()


func _on_Button_pressed():
	if database.dialog_node == null:#there's no dialog node going on
		var dialog_node = load("res://dialogue/dialogue_base.tscn").instance()
		database.dialog_node = dialog_node
		dialog_node.npc = "frontiersman_steeltrap"
		add_child(dialog_node)

	pass # replace with function body


func _on_Button1_pressed():
	if database.dialog_node == null:#there's no dialog node going on
		var dialog_node = load("res://dialogue/dialogue_base.tscn").instance()
		database.dialog_node = dialog_node
		dialog_node.npc = "frontiersman_steeltrap"
		add_child(dialog_node)

	pass # replace with function body


func _on_Button_2_pressed():
	if database.dialog_node != null:#there's no dialog node going on
		database.dialog_node.queue_free()
		database.dialog_node = null
		pass # replace with function body


func _on_translate_pressed():#
#0-determine current langauge
#1-check if it's the last one: if so, reset the count to 0
#2-							otherwise, just make +1
#3-set this language
#4-now check the next language if it's the last one:  if so, reset the count to 0
#5-							otherwise, just make +1
#6-now, set this language as text label
	var size = database.aviable_language.size()
	print("last is : " + str(database.aviable_language[size-1]))
	for i in range(size):#0-start
		print("i is : " + str(i) + "size is :" +str(size))
		if typeof(database.aviable_language[i]) == typeof(database.current_language):
			if database.aviable_language[i] == database.current_language:#0-done
				var current_lang = i
				if current_lang >= (size-1):#1
					print("reset current lang!")
					current_lang = 0
				else:#2
					current_lang += 1
				database.translate(database.aviable_language[current_lang])#3
				var next_lang = current_lang
				print("next is: " +str(next_lang))
				print("size is: " +str(size))
				if next_lang >= (size-1):#4
					print("reset next lang!")
					next_lang = 0
				else:#5
					next_lang += 1

				print("next will be : " +str(database.aviable_language[next_lang]))
				if typeof(database.aviable_language[current_lang]) == 21:
					current_lang = database.aviable_language[current_lang][0]
				else:
					current_lang = database.aviable_language[current_lang]
				if typeof(database.aviable_language[next_lang]) == 21:
					next_lang = database.aviable_language[next_lang][0]
				else:
					next_lang = database.aviable_language[next_lang]

				get_node("translate").set_text("translate " + str(current_lang) + " in " + str(next_lang))
				return

	return

	var lang_size = database.aviable_language.size()
	for i in range(lang_size):
		print(database.aviable_language[i])
		if typeof(database.aviable_language[i]) == typeof(database.current_language):
			if database.aviable_language[i] == database.current_language:
				i += 1
				if i > lang_size:
					i = 0
				database.translate(database.aviable_language[i])
	
				if i >= lang_size:
					i = 0
				else:
					i += 1
				if typeof(database.aviable_language[i]) == 21:
					get_node("translate").set_text("translate to " +str(database.aviable_language[i][0]))
				else:
					get_node("translate").set_text("translate to " +str(database.aviable_language[i]))
	
				return
#	database.translate("fr_FR")
	
	pass # replace with function body
