extends Node2D

func init_battle(p1, p2):
	var dsb = false
	if !p1:
		printerr("init_battle() call: p1 argument input is invalid")
		dsb = true
	if !p2:
		printerr("init_battle() call: p2 argument input is invalid")
		dsb = true
	if dsb: return

func set_active(player):
	pass

func _init():
	init_battle(false, false)
	print(ROSTER.ROSTER["Aeri"]["frontsprite"])
	
	
