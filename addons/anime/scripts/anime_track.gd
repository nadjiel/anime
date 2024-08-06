
class_name AnimeTrack
extends Node

@export var target_node: Node = null:
	set = set_target_node,
	get = get_target_node

@export var property_path: String = "":
	set = set_property_path,
	get = get_property_path

@export var active: bool = true:
	set = set_active,
	get = get_active

@export var data: AnimeTrackData = null:
	set = set_track_data,
	get = get_track_data 

func set_target_node(new_target: Node) -> void:
	target_node = new_target

func get_target_node() -> Node:
	return target_node

func set_property_path(new_property_path: String) -> void:
	property_path = new_property_path

func get_property_path() -> String:
	return property_path

func set_active(new_value: bool) -> void:
	active = new_value

func get_active() -> bool:
	return active

func set_track_data(new_data: AnimeTrackData) -> void:
	data = new_data

func get_track_data() -> AnimeTrackData:
	return data

func set_keyframes(new_keyframes: Array[AnimeKeyframe]) -> void:
	if data == null: data = AnimeTrackData.new()
	
	data.set_keyframes(new_keyframes)

func get_keyframes() -> Array[AnimeKeyframe]:
	return data.get_keyframes() if data else []

func set_duration(new_duration: float) -> void:
	if data == null: data = AnimeTrackData.new()
	
	data.set_duration(new_duration)

func get_duration() -> float:
	return data.get_duration() if data else 0.0

func set_looping(new_looping: AnimeAnimation.Looping) -> void:
	if data == null: data = AnimeTrackData.new()
	
	data.set_looping(new_looping)

func get_looping() -> AnimeAnimation.Looping:
	return data.get_looping() if data else AnimeAnimation.Looping.NONE

func set_interpolation(new_interpolation: AnimeAnimation.Interpolation) -> void:
	if data == null: data = AnimeTrackData.new()
	
	data.set_interpolation(new_interpolation)

func get_interpolation() -> AnimeAnimation.Interpolation:
	return data.get_interpolation() if data else AnimeAnimation.Interpolation.LINEAR

func apply(timestamp: float) -> Variant:
	#var target: Node = null
	print(^"/root")
	#if target_obj == null: return null
	#if keyframes.size() == 0: return null
	#
	#var keyframe_pair: Array[AnimeKeyframe] = get_keyframe_pair(keyframes, timestamp)
	#
	#var from_value: Variant = keyframe_pair[0].get_value()
	#var to_value: Variant = keyframe_pair[1].get_value()
	#
	#var from_time: float = keyframe_pair[0].get_timestamp()
	#var to_time: float = keyframe_pair[1].get_timestamp()
	#var time_interval: float = to_time - from_time
	#
	#var weight: float = (timestamp - from_time) / time_interval
	
	#target_obj.set(property_path, AnimeAnimation.interpolate(from_value, to_value, weight, interpolation))
	
	#return target_obj.get(property_path)
	return null
