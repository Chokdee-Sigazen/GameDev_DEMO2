extends State

@onready var ninja: Ninja = $"../.."
@onready var idle_state: Node = $"../Idle"

var SPEED: float = 80

func enter() -> void:
	print(ninja.hp)
	ninja.invisible = true
	ninja.invisible = false

func exit() -> void:
	pass

func process(delta: float) -> State:
	if ninja.invisible == false:
		return idle_state
	return null

func physics_process(delta: float) -> State:
	ninja.update_animation("walk")
	ninja.velocity = ninja.direction * SPEED
	return null

func handle_input(event: InputEvent) -> State:
	return null
