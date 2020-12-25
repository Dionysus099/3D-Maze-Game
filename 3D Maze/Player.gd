extends KinematicBody

class_name Player
# Declare member variables here. Examples:
# var a = 2
# var b = "text"
export var movingSpeed : float = 10.0
export var rotatingSpeed : float = 4.0

# Called when the node enters the scene tree for the first time.
# func _ready():
#	pass # Replace with function body.
func _physics_process(delta : float) -> void:
	var z_move : float = Input.get_action_strength("backward") - Input.get_action_strength("forward")
	var y_rotate : float = Input.get_action_strength("left") - Input.get_action_strength("right")	
	
	rotation.y += y_rotate * rotatingSpeed * delta
	
	var direction : Vector3 = Vector3(0, 0, 1).rotated(Vector3(0, 1, 0), rotation.y)
	var motion : Vector3 = direction * z_move * movingSpeed * delta
	
	move_and_collide(motion)


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
