extends CharacterBody2D

@onready var player = get_node("/root/Game/Player")

signal mob_death

var health = 16
func _physics_process(delta):
	var direction = global_position.direction_to(player.global_position)
	velocity = direction * 190
	
	move_and_slide()
	
	if health <= 0.0:
			emit_signal("mob_death")
	
func take_damage():
	health -= 8
	%Slime.play_hurt()
	
	if health == 0:
		queue_free()
		
		const SMOKE_SCENE = preload("res://smoke_explosion/smoke_explosion.tscn")
		var smoke = SMOKE_SCENE.instantiate()
		get_parent().add_child(smoke)
		
		smoke.global_position = global_position
