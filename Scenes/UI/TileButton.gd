extends Button

export(Statistics.TILE) var tile_type = Statistics.TILE.GRAS
export var cost = 0
export var unlock_population = 0

func _ready():  
  Statistics.connect("update_people", self, "check_unlock")
  disabled = false
  show_cost()
  if unlock_population > 0:
    $Unlock/Label/Text.text = str(unlock_population)
    $Unlock.show()
    $Cost.hide()
    disabled = true
  else:
    $Unlock.hide()
    
func show_cost():
  if cost > 0:
    $Cost/Label/Text.text = str(cost)
    $Cost.show()
  else:
    $Cost.hide()  
  
func unlock():
  $Unlock.hide()
  show_cost()
  disabled = false

func check_unlock(people):
  if people >= unlock_population:
    unlock()
    Statistics.disconnect("update_people", self, "check_unlock")

func _on_TileButton_pressed():
  Statistics.selected_type = tile_type
