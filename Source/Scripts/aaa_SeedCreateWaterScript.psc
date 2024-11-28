Scriptname aaa_SeedCreateWaterScript extends ActiveMagicEffect  

Actor Property PlayerRef  Auto  
Int PlayerCount
Potion WaterskinEmpty
Potion Waterskin1Dirt
Potion Waterskin2Dirt
Potion Waterskin3Dirt
Potion Waterskin1Clean
Potion Waterskin2Clean
Potion Waterskin3Clean
Potion WaterskinSea
Potion WaterskinSnow
Int PlayerEmptyCount
Int PlayerDirt1Count
Int PlayerDirt2Count
Int PlayerDirt3Count
Int PlayerClean1Count
Int PlayerClean2Count
Int PlayerSeaCount
Int PlayerSnowCount

Event OnEffectStart(Actor akTarget, Actor akCaster)
	WaterskinEmpty = Game.GetFormFromFile(0x06010895, "LastSeed.esp") as Potion
	Waterskin1Dirt = Game.GetFormFromFile(0x0601088e, "LastSeed.esp") as Potion
	Waterskin2Dirt = Game.GetFormFromFile(0x06010890, "LastSeed.esp") as Potion
	Waterskin3Dirt = Game.GetFormFromFile(0x06010892, "LastSeed.esp") as Potion
	Waterskin1Clean = Game.GetFormFromFile(0x0601088f, "LastSeed.esp") as Potion
	Waterskin2Clean = Game.GetFormFromFile(0x06010891, "LastSeed.esp") as Potion
	Waterskin3Clean = Game.GetFormFromFile(0x06010893, "LastSeed.esp") as Potion
	WaterskinSea = Game.GetFormFromFile(0x06010894, "LastSeed.esp") as Potion
	WaterskinSnow = Game.GetFormFromFile(0x062fcda9, "LastSeed.esp") as Potion
	PlayerEmptyCount = PlayerRef.GetItemCount(WaterskinEmpty)
	PlayerDirt1Count = PlayerRef.GetItemCount(Waterskin1Dirt)
	PlayerDirt2Count = PlayerRef.GetItemCount(Waterskin2Dirt)
	PlayerDirt3Count = PlayerRef.GetItemCount(Waterskin3Dirt)
	PlayerClean1Count = PlayerRef.GetItemCount(Waterskin1Clean)
	PlayerClean2Count = PlayerRef.GetItemCount(Waterskin2Clean)
	PlayerSeaCount = PlayerRef.GetItemCount(WaterskinSea)
	PlayerSnowCount = PlayerRef.GetItemCount(WaterskinSnow)
	PlayerCount = (PlayerEmptyCount + PlayerDirt1Count + PlayerDirt2Count + PlayerDirt3Count + PlayerClean1Count + PlayerClean2Count + PlayerSeaCount + PlayerSnowCount)
	PlayerRef.RemoveItem(WaterskinEmpty, PlayerEmptyCount, True)
	PlayerRef.RemoveItem(Waterskin1Dirt, PlayerDirt1Count, True)
	PlayerRef.RemoveItem(Waterskin2Dirt, PlayerDirt2Count, True)
	PlayerRef.RemoveItem(Waterskin3Dirt, PlayerDirt3Count, True)
	PlayerRef.RemoveItem(Waterskin1Clean, PlayerClean1Count, True)
	PlayerRef.RemoveItem(Waterskin2Clean, PlayerClean2Count, True)
	PlayerRef.RemoveItem(WaterskinSea, PlayerSeaCount, True)
	PlayerRef.RemoveItem(WaterskinSnow, PlayerSnowCount, True)
	PlayerRef.AddItem(Waterskin3Clean, PlayerCount)
EndEvent