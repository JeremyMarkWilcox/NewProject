extends Area3D

var tick := 0.0
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	# just makes the cube/prisms move a bit
	tick += delta
	if(tick > 1):
		tick = 0
	position.x += pow(sin(tick), 2) * .1
	position.z += smoothstep(0, tick * -1, delta * 10)
	pass
