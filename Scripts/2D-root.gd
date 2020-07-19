extends Node2D

func _ready():
	#load my grup of ghosts, 
	var scene = load("res://Objects/Ghost.tscn")
	var ghost = scene.instance()
	ghost.set_name("Ghost")
	get_node("YSort").add_child(ghost)
	add_to_group("Ghosts") #add it to group of gost, may be easier for moving them
	
func _physics_process(delta):
	#for some reason, it dows not call my method but id does call _ready when i input it
	get_tree().call_group("Ghosts", "move_ghost")
