extends Control

onready var hexagon_label = $Screen/Right/HSplitContainer/VSplitContainer/MarginContainer/NinePatchRect

func _ready():
  Statistics.selected_type = "plant"

func _process(_delta):
  $Screen/Right/TopBar/MoneyLabel.text = "%05d" % Statistics.money
  $Screen/Right/TopBar/PeopleLabel.text = "%03d" % Statistics.people
  $Screen/Right/TopBar/ClockLabel.text = "%d o'clock" % Statistics.clock
  $Screen/Right/TopBar/DayLabel.text = "Day %d" % Statistics.day
  hexagon_label.visible = Statistics.show_desciption
  if hexagon_label.visible:
    hexagon_label.rect_min_size.y = Statistics.description_height
    hexagon_label.get_node("RichTextLabel").text = Statistics.description_text
