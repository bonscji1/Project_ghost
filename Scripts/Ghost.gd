extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # get ghost positions from stack, move to first position and delete it


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(_delta):
	pass# move to position 
	
func move_ghost():
	print("test")
