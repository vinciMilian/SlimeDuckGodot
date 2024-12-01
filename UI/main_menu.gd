extends Control


func _on_start_game_pressed():
	get_tree().change_scene_to_file("res://survivalGame.tscn")


func _on_options_game_2_pressed():
	get_tree().quit()


func _on_options_game_pressed():
	get_tree().change_scene_to_file("res://UI/settings.tscn")
