extends Button

export var cost = 0
export var unlock_population = 0

func _ready():  
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
