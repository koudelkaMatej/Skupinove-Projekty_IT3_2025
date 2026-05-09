extends Area2D

@export_file("*.tscn") var next_scene_path: String

func _on_body_entered(body: Node2D) -> void:
	# Toto se vypíše vždycky, když se do dveří něco dotkne
	print("Dveře detekovaly objekt: ", body.name)
	
	if body.name == "Player":
		print("Hráč potvrzen! Přepínám scénu...")
		if next_scene_path != "":
			get_tree().change_scene_to_file(next_scene_path)
		else:
			print("CHYBA: Zapomněla jsi v Inspektoru vybrat mapu!")
