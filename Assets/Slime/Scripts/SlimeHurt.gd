extends State

@onready var slime: Slime = $"../.."
@onready var idle_state: Node = $"../SlimeIdle"


var KNOCK_BACK_SPEED: int = 60
var DECELERATION: int = 100
var direction: Vector2

func enter() -> void:
	print("Silme Helth:",slime.health)
	direction = Vector2(slime.global_position - get_tree().get_first_node_in_group("Ninja").global_position).normalized()
	slime.velocity = direction * KNOCK_BACK_SPEED
	slime.update_animation("hurt")

func exit() -> void:
	pass

func process(delta: float) -> State:
	return null

func physics_process(delta: float) -> State:
	slime.velocity -= direction * DECELERATION * delta
	if Vector2(slime.velocity - Vector2.ZERO).length() < 0.05:
		return idle_state
	return null

func handle_input(event: InputEvent) -> State:
	return null
