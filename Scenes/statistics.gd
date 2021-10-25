extends Node

export var money = 0.0
export var people = 0
export var day = 1
export var night  = true

var show_desciption = true
var description_text = "Hello World"
var description_height = 192

var clock = 0

export var selected_type = "plant"

func _ready():
  money     = 200 # change to 200 before submitting game
  people    = 0


func update_clock(degree):
  # the circle has 360 degrees
  # the day has 24 hours
  # --> one hour is 15 degrees
  clock = floor(fposmod((degree-150), 360) / 15)


func _process(delta):
  money += people * delta


func update_people(amount):
  people += amount
