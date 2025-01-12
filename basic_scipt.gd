extends Control

var number_of_coins: int = 0


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	%CoinLabel.text = str(number_of_coins)
	pass # Replace with function body.


func _on_basic_button_button_down() -> void:
	number_of_coins += 1
	%CoinLabel.text = str(number_of_coins)
	
	# This work
	#%BasicLabel.text = tr_n("single coin", "more coins", number_of_coins)
	
	# This does not
	%BasicLabel.text = tr_n("COIN_LABEL_SINGULAR", "COIN_LABEL_PLURAL", number_of_coins)
