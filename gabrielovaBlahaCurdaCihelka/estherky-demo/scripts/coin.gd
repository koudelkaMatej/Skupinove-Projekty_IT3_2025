extends Area2D

@onready var game_manager: Node = %GameManager #this works only in this exact scene
@onready var animation_player: AnimationPlayer = $AnimationPlayer


func _on_body_entered(body: Node2D) -> void:
	game_manager.add_point()
	print(game_manager.score)
	animation_player.play("pickup")
