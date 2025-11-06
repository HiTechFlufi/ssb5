class_name Pokemon
extends Sprite2D

# Upon instantiation, we get the name of the Pokemon and use that to pull the
# rest of that Pokemon's static data, such as textures and stats.

# Other dynamic variables, such as the side they're on, and whether or not they're active,
# are class variables defined at the bottom of the file, and should be modified before instantiation.

# Example:
# var pokemon = Pokemon.new()
# pokemon.side = 1
# pokemon.is_active = false
# add_child(pokemon)

# Callable values and variables for pokemon:
# pokemon

func _init(char_name: String):
	if char_name not in ROSTER.ROSTER:
		printerr("Pokemon.new() call: '%s' is not a valid Pokemon to instantiate" % [char_name])
		return
	
	details = ROSTER.ROSTER[char_name]
	basestats = details["stats"]
	name = char_name
	texture = load(details["frontsprite"])

var details: Dictionary
var basestats: Array
var side: int
var is_active: bool
	
	
