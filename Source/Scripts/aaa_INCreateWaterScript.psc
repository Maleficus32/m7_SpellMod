Scriptname aaa_INCreateWaterScript extends ActiveMagicEffect  

Int EmptyCount
Int Count1
Int Count2

Event OnEffectStart(Actor akTarget, Actor akCaster)
	MiscObject WaterskinEmpt = Game.GetFormFromFile(0x0500438c, "iNeed.esp") As MiscObject
	Potion Waterskin1 = Game.GetFormFromFile(0x0500437f, "iNeed.esp") As Potion
	Potion Waterskin2 = Game.GetFormFromFile(0x0500437d, "iNeed.esp") As Potion
	Potion WaterskinFull = Game.GetFormFromFile(0x05004376, "iNeed.esp") As Potion
	EmptyCount = akCaster.GetItemCount(WaterskinEmpt)
	Count1 = akCaster.GetItemCount(Waterskin1)
	Count2 = akCaster.GetItemCount(Waterskin2)
	akCaster.Removeitem(WaterskinEmpt, EmptyCount, True)
	akCaster.Removeitem(Waterskin1, Count1, True)
	akCaster.Removeitem(Waterskin2, Count2, True)
	akCaster.Additem(Waterskinfull, (EmptyCount + Count1 + Count2))
EndEvent