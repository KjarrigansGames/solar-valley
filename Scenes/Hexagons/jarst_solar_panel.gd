extends Spatial

var active = true

func enable_light():
  active = true
  $SpotLight.light_color = Color(0, 255, 0)

func disable_light():
  active = false
  $SpotLight.light_color = Color(255, 0, 0)

func _process(_delta):
  if Statistics.night == true and active == true:
    disable_light()
  elif Statistics.night == false and active == false:
    enable_light()
