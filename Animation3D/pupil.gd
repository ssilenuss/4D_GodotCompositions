@tool
extends MeshInstance3D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	scale =  Vector3(0.16, 0.64, 0.58) *sin(Time.get_ticks_msec()/1000.0)
