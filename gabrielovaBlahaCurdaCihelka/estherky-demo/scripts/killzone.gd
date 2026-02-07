extends Area2D
#svarta je ti neco? no to mu je teda, je mu hodne

@onready var timer: Timer = $Timer

func _on_body_entered(body: Node2D) -> void:
	timer.start() #start of timer after falling somewhere you weren't supposed to -_-


func _on_timer_timeout() -> void:
	get_tree().reload_current_scene() #!restart! (yep, exactly. enjoy) current scene after falling somewhere you weren't supposed to -_-
