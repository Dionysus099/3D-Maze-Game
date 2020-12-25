extends Node


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
onready var menu : = $Menu
onready var player : = $Player

var time : = 0.0

func _process(delta : float) -> void:
	time += delta

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Level_level_completed():
	var total_play_time = time
	player.queue_free()
	menu.initialize(total_play_time)

func _on_Menu_retry():
	get_tree().reload_current_scene()
