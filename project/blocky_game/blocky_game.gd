extends Node

var _light = null


func _ready():
	_light = $DirectionalLight


func _unhandled_input(event):
	# TODO Make a pause menu with options?
	if event is InputEventKey:
		if event.pressed:
			if event.scancode == KEY_L:
				# Toggle shadows
				_light.shadow_enabled = not _light.shadow_enabled

