# lpGodot_tr_n_issue

Project created to show off an issue in Godot Game Engine
[Godot 4.3 tr_n() issue](github.com)

When an int change : I want Godot to change the translation.

With hard_coded string it work just fine...
But not with with Translation Key


# Issue description
This project use imported translation from a csv
`tr_n()` only use singular Translation Key even when `number_of_coins` is superior to 1

```gdscript
# This work
#%BasicLabel.text = tr_n("single coin", "more coins", number_of_coins)
	
# This does not
%BasicLabel.text = tr_n("COIN_LABEL_SINGULAR", "COIN_LABEL_PLURAL", number_of_coins)
```

