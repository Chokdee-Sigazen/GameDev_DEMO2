extends State
@onready var ninja: Ninja = $"../.."
@onready var animation_player: AnimationPlayer = $"../../AnimationPlayer"
@onready var idle_state: Node = $"../Idle"
@onready var audio_stream_player_attack: AudioStreamPlayer2D = $"../../AudioStreamPlayer2D"
@onready var audio_stream_player_2d: AudioStreamPlayer2D = $"../../AudioStreamPlayer2D"
const HIT = preload("res://Assets/Ninja/Hit.wav")


var is_attack_finish = false

func enter() -> void:
	ninja.update_animation("attack")
	is_attack_finish = false
	audio_stream_player_2d.stream = HIT
	audio_stream_player_2d.play()
	audio_stream_player_attack.play()
	await animation_player.animation_finished
	is_attack_finish = true
	
	pass

func exit() -> void:
	pass

func process(delta: float) -> State:
	print("animation_finish:",is_attack_finish)
	if is_attack_finish == true:
		return idle_state
	return null

func physics_process(delta: float) -> State:
	return null

func handle_input(event: InputEvent) -> State:
	return null
