extends Sprite2D

var player  # Declare player but don't assign it yet
func end_game():
	print("You Lost!")
func _ready():
	var parent = get_parent()
	player = parent.get_node("Yellowfish")
		

func _process(delta):
	#making the enemy fish follow the player fish
		if player.position.x > position.x: #player fish moves right
			translate(Vector2(4,0))
			set_scale(Vector2(0.1,0.1))
		if player.position.x < position.x: # #player fish moves left
			translate(Vector2(-4,0))
			set_scale(Vector2(-0.1,0.1))
		if player.position.y > position.y:  #player fish moves up
			translate(Vector2(0,4))
		if player.position.y < position.y:
			translate(Vector2(0,-4))
		if position.distance_to(player.position) <= 50:  #player fish moves down
			end_game()
			get_tree().change_scene_to_file("res://Restart.tscn")
			
