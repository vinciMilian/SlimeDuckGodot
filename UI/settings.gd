extends Control


func _on_h_slider_value_changed(value):
	AudioServer.set_bus_volume_db(0, value)


func _on_resulotion_item_selected(index):
	match index:
		0:
			DisplayServer.window_set_size(Vector2i(1920,1080))
		1:
			DisplayServer.window_set_size(Vector2i(1600,900))
		2:
			DisplayServer.window_set_size(Vector2i(1280,720))
		3:
			DisplayServer.window_set_size(Vector2i(800,600))


func _on_check_box_toggled(toggled_on):
	AudioServer.set_bus_mute(0, toggled_on)


func _on_button_pressed():
	get_tree().change_scene_to_file("res://UI/main_menu.tscn")


func _on_check_box_2_toggled(toggled_on):
	if toggled_on == true:
		DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_FULLSCREEN)
	else:
		DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_WINDOWED)
