
class_name AnimeAnimation
extends Resource

enum Looping {
	NONE, LOOP, PING_PONG
}

enum Interpolation {
	NEAREST, LINEAR
}

@export var tracks: Array[AnimeTrack] = []:
	set(value): set_tracks(value)
	get: return get_tracks()

@export var duration: float = 0.0:
	set(value): set_duration(value)
	get: return get_duration()

@export var animation_name: String = "":
	set(value): set_animation_name(value)
	get: return get_animation_name()

@export var looping: Looping = Looping.NONE:
	set(value): set_looping(value)
	get: return get_looping()

@export var interpolation: Interpolation = Interpolation.LINEAR:
	set(value): set_interpolation(value)
	get: return get_interpolation()

static func interpolate_linear(from: Variant, to: Variant, weight: float) -> Variant:
	return lerp(from, to, weight)

static func interpolate_nearest(from: Variant, to: Variant, weight: float) -> Variant:
	if weight < 0.5: return from
	else: return to

static func interpolate(from: Variant, to: Variant, weight: float, mode: Interpolation) -> Variant:
	match mode:
		Interpolation.NEAREST: return interpolate_nearest(from, to, weight)
		_: return null

func set_tracks(new_tracks: Array[AnimeTrack]) -> void:
	tracks = new_tracks

func get_tracks() -> Array[AnimeTrack]:
	return tracks

func set_duration(new_duration: float) -> void:
	duration = new_duration

func get_duration() -> float:
	return duration

func set_looping(new_looping: Looping) -> void:
	looping = new_looping

func get_looping() -> Looping:
	return looping

func set_animation_name(new_animation_name: String) -> void:
	animation_name = new_animation_name

func get_animation_name() -> String:
	return animation_name

func set_interpolation(new_interpolation: Interpolation) -> void:
	interpolation = new_interpolation

func get_interpolation() -> Interpolation:
	return interpolation
