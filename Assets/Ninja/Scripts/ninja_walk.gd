extends State
@onready var ninja: Ninja = $"../.."
@onready var idle_state: Node = $"../Idle"
@onready var animation_player: AnimationPlayer = $"../../AnimationPlayer"
@onready var attack_state: Node = $"../Attack"

func enter() -> void:
	pass

func exit() -> void:
	pass

func process(delta: float) -> State:
	return null

func physics_process(delta: float) -> State:
	ninja.velocity = ninja.direction * ninja.speed
	ninja.update_animation("walk")
	if ninja.direction == Vector2.ZERO:
		return idle_state
	return null

func handle_input(event: InputEvent) -> State:
	
	return null
