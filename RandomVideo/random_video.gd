extends VideoStreamPlayer

@export var videos : Array[VideoStreamTheora]

var playlist : Array[VideoStreamTheora]

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	playlist = videos.duplicate()
	playlist.shuffle()
	stream = playlist.pop_back()
	play()


func _on_finished() -> void:
	if playlist.size() <= 0:
		playlist = videos.duplicate()
		playlist.shuffle()
	stream = playlist.pop_back()
	play()
	
