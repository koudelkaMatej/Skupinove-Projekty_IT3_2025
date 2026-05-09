extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_video_stream_player_finished():
	# Tady zadej cestu ke svému prvnímu levelu
	get_tree().change_scene_to_file("res://scenes/game.tscn")

func _input(event):
	# Pokud hráč klikne nebo zmáčkne klávesu, video se přeskočí
	if event is InputEventKey or event is InputEventMouseButton:
		if event.is_pressed():
			get_tree().change_scene_to_file("res://scenes/game.tscn")
