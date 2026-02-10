extends MeshInstance3D


func _process(delta: float) -> void:
	scale =  Vector3(0.16, 0.64, 0.58) *sin(Time.get_ticks_msec()/1000.0)
