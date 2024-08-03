
class_name AnimeTrack
extends Resource

enum Looping {
	NONE, LOOP, PING_PONG
}

@export var property_path: String = "":
	set(value): set_property_path(value)
	get: return get_property_path()

@export var keyframes: Array[AnimeKeyframe] = []:
	set(value): set_keyframes(value)
	get: return get_keyframes()

@export var active: bool = true:
	set(value): set_active(value)
	get: return get_active()

@export var duration: float = 0.0:
	set(value): set_duration(value)
	get: return get_duration()

@export var track_name: String = "":
	set(value): set_track_name(value)
	get: return get_track_name()

@export var icon: Texture2D = null:
	set(value): set_icon(value)
	get: return get_icon()

@export var looping: Looping = Looping.NONE

func set_property_path(new_property_path: String) -> void:
	property_path = new_property_path

func get_property_path() -> String:
	return property_path

func set_keyframes(new_keyframes: Array[AnimeKeyframe]) -> void:
	keyframes = new_keyframes

func get_keyframes() -> Array[AnimeKeyframe]:
	return keyframes

func set_active(new_value: bool) -> void:
	active = new_value

func get_active() -> bool:
	return active

func set_duration(new_duration: float) -> void:
	duration = new_duration

func get_duration() -> float:
	return duration

func set_track_name(new_track_name: String) -> void:
	track_name = new_track_name

func get_track_name() -> String:
	return track_name

func set_icon(new_icon: Texture2D) -> void:
	icon = new_icon

func get_icon() -> Texture2D:
	return icon

func set_looping(new_looping: Looping) -> void:
	looping = new_looping

func get_looping() -> Looping:
	return looping
