extends Node2D

func spawn_mob():
	var new_mob = preload("res://characters/mob/mob.tscn").instantiate()
	
	%PathFollow2D.progress_ratio = randf()
	new_mob.global_position = %PathFollow2D.global_position
	add_child(new_mob)


func _on_timer_timeout():
	spawn_mob()


func _on_player_health_depleted():
	%GameOver.visible = true
	get_tree().set_pause(true)
	%DeathTimer.start()




func _on_death_timer_timeout():
	get_tree().change_scene_to_file("res://UI/main_menu.tscn")
