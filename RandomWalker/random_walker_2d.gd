extends Control

var circles : Array[Circle] = []

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	RenderingServer.viewport_set_clear_mode(get_viewport().get_viewport_rid(), RenderingServer.VIEWPORT_CLEAR_ONLY_NEXT_FRAME)
	
	for i in 100:
		var c : Circle = Circle.new()
		c.position = Vector2(randf()*size.x, randf()*size.y)
		c.radius = randf()*100
		c.h = randf()
		c.s = randf()
		c.v = randf()
		c.a = randf()
		c.color = Color.from_hsv(c.h,c.s,c.v,c.a)
		circles.append(c)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	
	for c in circles:
		var x : int = randi_range(-1, 1)
		var y : int = randi_range(-1, 1)
		c.position += Vector2(x,y)
	
	queue_redraw()


func _draw() -> void:
	for c in circles:
		draw_circle(c.position, c.radius, c.color)
	
