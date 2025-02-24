extends Sprite2D


func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_pressed("Restart"):
		get_tree().change_scene_to_file("res://node_2d.tscn")
		#to restart press R, to quit press esc
	if Input.is_action_pressed("Quit"):
		get_tree().quit()
	
