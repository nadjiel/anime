@tool
class_name AnimeKeyframe
extends Resource

@export var active: bool = true:
	set = set_active,
	get = get_active

@export var timestamp: float = 0.0:
	set = set_timestamp,
	get = get_timestamp

@export var type: Variant.Type = TYPE_NIL:
	set = set_type,
	get = get_type

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

func set_type(new_type: Variant.Type) -> void:
	type = new_type
	notify_property_list_changed()

func get_type():
	return type

func set_value(new_value: Variant) -> void:
	value = new_value

func get_value() -> Variant:
	return value

static func create(value: Variant, timestamp: float) -> AnimeKeyframe:
	var new_keyframe: AnimeKeyframe = AnimeKeyframe.new()
	
	new_keyframe.set_value(value)
	new_keyframe.set_timestamp(timestamp)
	
	return new_keyframe

func _to_string() -> String:
	return "%s: %.4f" % [ value, timestamp ]

func _get_property_list() -> Array[Dictionary]:
	var properties: Array[Dictionary] = []
	var value_property_usage: PropertyUsageFlags = PROPERTY_USAGE_DEFAULT
	
	if type == TYPE_NIL: value_property_usage = PROPERTY_USAGE_NO_EDITOR
	
	properties.append({
		"name": "value",
		"type": type,
		"usage": value_property_usage,
	})
	
	return properties
