extends Control



#called once at the beginning of the program.
func _ready() -> void:
	queue_redraw()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta)->void:
	
	#right arrow refreshes new random
	if Input.is_action_pressed("ui_right"):
		queue_redraw()
	
	#This will save a picture to the desktop when you press space bar
	if Input.is_action_just_pressed("ui_accept"):
		var image : Image = get_viewport().get_texture().get_image()
		image.flip_y()
		image.save_jpg(OS.get_system_dir(OS.SYSTEM_DIR_DESKTOP)+"/godot_screenshot.jpg")
		
		

func _draw() -> void:
	
	for i in 100:
		#random position within the size of the screen
		var pos_x : float = randf_range(0, size.x)
		var pos_y : float = randf_range(0, size.y)
		var pos : Vector2 = Vector2(pos_x,pos_y)
		
		#random circle radius, min max
		var radius : float = randf_range(0,100)
		
		#random color
		var hue : float = randf_range(0,1)
		var saturation : float = randf_range(0,1)
		var value : float = randf_range(0,1)
		var alpha : float = randf_range(0,1) #1 is fully opaque!
		#var color : Color = Color(red,green,blue,alpha)
		var color : Color = Color.from_hsv(hue,saturation,value, alpha)
		
		draw_circle(pos,radius,color)
		
		
		#Exercises:
		#1.  Try to limit the rgb values to create an analogous color composition
		#2.  Try to create two layers of circles using 2 different for loops.
		#3.  Try to create a complementary color composition (using two different for loops)
		#4.  Try to limit the positions and radii on the two different layers. 
			#you might try large analogous circles in the back, then small contrasting
			#colors along a rule of thirds line.
		#5.  Advanced:  try to draw different shapes!
			#this is the best way to learn: https://docs.godotengine.org/en/stable/tutorials/2d/custom_drawing_in_2d.html
			#you might also try youtube, or asking an ai chat.
