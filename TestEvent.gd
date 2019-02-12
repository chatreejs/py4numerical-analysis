extends Node2D

var frame = 0
func _process(delta):
	frame += 1

func _input(event):
	var event_text = event.as_text()

		  	# Mouse and Touch Screen Events
	if not event is InputEventKey: 
		print(frame, ": ", event_text)
				
	else: 	# Keyboard Event (InputEventKey)
		print(frame, ": ", event.get_class(), " : ", \
			"scancode = ", event.scancode, \
			"(", OS.get_scancode_string(event.scancode), ")", \
			", pressed = ", event.pressed, ", echo = ", event.echo)
		
			# Custom Event "move_up"
	if event.is_action("move_up"):
		print("Action(\"move_up\") : ", \
				"is_action_pressed = ", event.is_action_pressed("move_up"), ", ", \
				"is_action_released = ", event.is_action_released("move_up"))
