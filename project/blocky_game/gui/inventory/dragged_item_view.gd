extends Control


var _display = $TextureRect


func _ready():
	set_process(false)


func start(item_data):
	_display.set_item(item_data)
	set_process(true)
	show()


func stop():
	set_process(false)
	hide()


func _process(_delta):
	var mpos = get_parent().get_local_mouse_position()
	rect_position = mpos - rect_size / 2.0

