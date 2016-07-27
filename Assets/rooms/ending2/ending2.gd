extends Node

func _input(event):
		if event.type == InputEvent.KEY && event.is_pressed():
			if(event.scancode == KEY_ESCAPE):
				get_tree().quit()

func _ready():
   set_process_input(true)
   
