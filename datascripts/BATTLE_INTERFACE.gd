extends Node2D

var side1
var side2

func init_battle(p1, p2):
	if !p1:
		printerr("init_battle() call: ArgInput 'p1' is invalid")
		return
	if !p2:
		printerr("init_battle() call: ArgInput 'p2' is invalid")
		return
	
	side1 = Side.new()
	side2 = Side.new()

func set_active(side, pkmn):
	if !side or side != 1:
		printerr("set_active() call: ArgInput 'side' is invalid")
		return
	if (side == 1 and side1.active == pkmn) or (side == 2 and side2.active == pkmn):
		print_debug(pkmn + " is already active on side" + str(side) + ". Exiting function to avoid redundancy...")
	
	var pokemon = Pokemon.new(pkmn)
	pokemon.side = side
	pokemon.is_active = true
	
	if side == 1:
		side1.active = pokemon
	else:
		side2.active = pokemon
	
	add_child(pokemon)

func _init():
	init_battle(true, true)
	set_active(1, "Aeri")
	print(side1.active.basestats[0])
