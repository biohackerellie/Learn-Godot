extends Area2D


func _physics_process(delta: float):
	var enemies_in_range = get_overlapping_bodies()
	if enemies_in_range.size() > 0:
		var target_enemy:CharacterBody2D = enemies_in_range[0]
		look_at(target_enemy.global_position)


func shoot():
	const BULLET = preload("res://bullet.tscn")
	var new_bullet = BULLET.instantiate()
	new_bullet.global_position = %ShootingPoint.global_position
	%ShootingPoint.add_child(new_bullet)