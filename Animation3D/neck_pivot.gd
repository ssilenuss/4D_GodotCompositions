@tool
extends Node3D

@export var duck_root : Duck 


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	rotation.y = sin(Time.get_ticks_msec()/1000.0) 

		
		
