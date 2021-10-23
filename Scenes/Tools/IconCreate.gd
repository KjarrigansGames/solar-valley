extends Spatial

export var icon_size = 300

var current_tile = 0
onready var tiles = $Tiles.get_children()

func _ready():
  # Prepare Background an Resolution
  OS.window_size = Vector2(icon_size,icon_size)
  get_viewport().transparent_bg = true
  
  # Hide all Tiles
  for t in tiles:
    t.hide()
  yield(get_tree(), "idle_frame")    
    
  # Create a screenshot per tile
  for t in tiles:
    t.show()
    yield(get_tree(), "idle_frame")
    make_screenshot(t)
    t.hide()
    
  get_tree().quit()
    
func make_screenshot(t):
  var img = get_viewport().get_texture().get_data()
  img.flip_y()
  img.convert(Image.FORMAT_RGBA8)
  img.save_png("res://Objects/Icons/%s.png" % t.name)
