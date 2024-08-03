@tool
extends EditorPlugin

var DOCK_SCENE: PackedScene = preload("res://addons/anime/dock.tscn")
var dock: Control

func _enter_tree():
	# Initialization of the plugin goes here.
	dock = DOCK_SCENE.instantiate()
	add_control_to_dock(EditorPlugin.DOCK_SLOT_LEFT_BL, dock)
	
	pass

func _exit_tree():
	# Clean-up of the plugin goes here.
	remove_control_from_docks(dock)
	dock.free()
	pass
