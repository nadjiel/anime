
class_name AnimeTrack
extends Resource

@export var property_path: String = "":
	set = set_property_path,
	get = get_property_path

@export var keyframes: Array[AnimeKeyframe] = []:
	set = set_keyframes,
	get = get_keyframes

@export var active: bool = true:
	set = set_active,
	get = get_active

@export var duration: float = 0.0:
	set = set_duration,
	get = get_duration

@export var track_name: String = "":
	set = set_track_name,
	get = get_track_name

@export var icon: Texture2D = null:
	set = set_icon,
	get = get_icon

@export var looping: AnimeAnimation.Looping = AnimeAnimation.Looping.NONE:
	set = set_looping,
	get = get_looping

@export var interpolation: AnimeAnimation.Interpolation = AnimeAnimation.Interpolation.LINEAR:
	set = set_interpolation,
	get = get_interpolation

func set_property_path(new_property_path: String) -> void:
	property_path = new_property_path

func get_property_path() -> String:
	return property_path

func set_keyframes(new_keyframes: Array[AnimeKeyframe]) -> void:
	keyframes = sort_keyframes(new_keyframes)

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

func set_looping(new_looping: AnimeAnimation.Looping) -> void:
	looping = new_looping

func get_looping() -> AnimeAnimation.Looping:
	return looping

func set_interpolation(new_interpolation: AnimeAnimation.Interpolation) -> void:
	interpolation = new_interpolation

func get_interpolation() -> AnimeAnimation.Interpolation:
	return interpolation

func sort_keyframes(keyframes: Array[AnimeKeyframe]) -> Array[AnimeKeyframe]:
	keyframes.sort_custom(
		func(a: AnimeKeyframe, b: AnimeKeyframe) -> bool:
			return a.get_timestamp() < b.get_timestamp()
	)
	
	return keyframes
