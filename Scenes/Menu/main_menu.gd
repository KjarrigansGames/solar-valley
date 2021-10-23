extends MarginContainer

func _on_new_pressed():
    var _return = get_tree().change_scene("res://Scenes/main.tscn")

func _on_tutorial_pressed():
    var _return = get_tree().change_scene("res://Scenes/Menu/menu_tutorial.tscn")

func _on_controls_pressed():
  var _return = get_tree().change_scene("res://Scenes/Menu/menu_control.tscn")

func _on_exit_pressed():
  get_tree().quit()
