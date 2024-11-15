extends CanvasLayer
class_name GameManager

var score : int = 0
signal atualizouScore(valor : int)
@onready var label: Label = $Panel/Label

func addScore():
	score += 1
	label.text = str(score)
