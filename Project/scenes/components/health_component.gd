extends Node

signal died

var health: int = 10
var max_health: int = 10

func damage(amount: int) -> void:
	health = health - amount
	
	if health <= 0:
		on_died()

func on_died() -> void:
	died.emit()
	print("This thing has died")
