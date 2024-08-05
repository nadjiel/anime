
class_name AnimeKeyframe
extends Resource

@export var active: bool = true:
	set = set_active,
	get = get_active

@export var timestamp: float = 0.0:
	set = set_timestamp,
	get = get_timestamp

var value: Variant = null:
	set = set_value,
	get = get_value

func set_active(new_value: bool) -> void:
	active = new_value

func get_active() -> bool:
	return active

func set_timestamp(new_timestamp: float) -> void:
	timestamp = new_timestamp

func get_timestamp() -> float:
	return timestamp

func set_value(new_value: Variant) -> void:
	value = new_value

func get_value() -> Variant:
	return value

func _init(
	value: Variant,
	timestamp: float,
) -> void:
	set_value(value)
	set_timestamp(timestamp)

func _to_string() -> String:
	return "%s: %.4f" % [ value, timestamp ]
