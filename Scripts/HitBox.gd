extends Area2D

var entity: CharacterBody2D

func _ready() -> void:
	entity = get_parent()
	area_entered.connect(take_damage)

func take_damage(area: Area2D) -> void:
	if area is NinjaHitSource:
		entity.health -= area.damage
		entity.damaged.emit()
