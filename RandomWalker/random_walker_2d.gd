extends Control

func _ready()->void:
	RenderingServer.viewport_set_clear_mode(get_viewport().get_viewport_rid(), RenderingServer.VIEWPORT_CLEAR_NEVER)
	
	for i in 1000:
		var circle = Circle.new()
		circle.radius = 1.0
		circle.position = Vector2(randf(), randf())*size  #size/2.0
		circle.color = Color(0.863, randf(), 0.0, 1.0)
		add_child(circle)
	
func _process(_delta: float) -> void:
	
	for circle in get_children():
		var x : float = randi_range(-1, 1)
		var y : float = randi_range(-1, 1)
	
		var g : float = randf_range(-.001,0.001)
		var a : float = randf_range(-.001,0.001)
		var radius : float = randf_range(-1.0,1.0)
		circle.position += Vector2(x,y)
		circle.position.x = wrapf(circle.position.x, 0, size.x)
		circle.position.y = wrapf(circle.position.y, 0, size.y)
		
		circle.color.g += g
		circle.color.a += a
		
		circle.radius += radius
		circle.queue_redraw()
#exercises:
#	1. Change color over time
#	2. change size over time
#	3. make multiple walkers
	
	
