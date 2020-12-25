extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
signal retry

# Called when the node enters the scene tree for the first time.
#func _ready():
#	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

onready var time : = $CenterContainer/Column/Time

func timetaken(totaltime : float) -> void:
	var minutes : String = str(int(totaltime / 60.0))
	var seconds : String = str(int(fmod(totaltime, 60.0)))
	
	var timetext = "Total Time Taken is: %s min and %s sec" % [minutes, seconds]
	time.text = timetext
	
	show()

func _on_Try_Again_pressed():
	emit_signal("retry")


func _on_Exit_pressed():
	get_tree().quit()
