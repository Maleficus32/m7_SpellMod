Scriptname aaa_ConjureHeartScript extends ActiveMagicEffect  

Ingredient Property human  Auto  
Ingredient Property elf  Auto  
Ingredient Property Khajiit  Auto  
Ingredient Property Argonian  Auto  
Ingredient Property Generic  Auto  
Race Property ArgonianRace  Auto  
Race Property BretonRace  Auto  
Race Property DarkElfRace  Auto  
Race Property HighElfRace  Auto  
Race Property ImperialRace  Auto  
Race Property KhajiitRace  Auto  
Race Property NordRace  Auto  
Race Property OrcRace  Auto  
Race Property RedguardRace  Auto  
Race Property WoodElfRace  Auto  
Race Property DremoraRace  Auto  
Ingredient Property dremora  Auto  
Ingredient Property BriarHeart  Auto  
Armor Property BriarHeartFull  Auto  
Armor Property BriarHeartEmpty  Auto  
Race Property ElderRace  Auto  
Race Property FalmerRace  Auto  
Faction Property ForswornFaction  Auto  
Actor Target
Actor Caster

Event OnEffectStart(Actor akTarget, Actor akCaster)
	Target = akTarget
	Caster = akCaster
	If Target.GetActorValue("health") <= 300 && Target.IsInFaction(ForswornFaction) && Target.GetItemCount(BriarHeart) == 1
		Target.Kill(Caster)
		Caster.AddItem(BriarHeart, 1)
		Utility.Wait(0.25)
		Target.RemoveItem(BriarHeart, 1)
		Target.RemoveItem(BriarHeartFull)
		Target.AddItem(BriarHeartEmpty)
		Target.EquipItem(BriarHeartEmpty)
	ElseIf Target.GetActorValue("health") <= 300 && Target.GetRace() == ArgonianRace
		Target.Kill(Caster)
		Caster.AddItem(Argonian, 1)
	ElseIf Target.GetActorValue("health") <= 300 && Target.GetRace() == BretonRace
		Target.Kill(Caster)
		Caster.AddItem(Human, 1)
	ElseIf Target.GetActorValue("health") <= 300 && Target.GetRace() == DarkElfRace
		Target.Kill(Caster)
		Caster.AddItem(Elf, 1)
	ElseIf Target.GetActorValue("health") <= 300 && Target.GetRace() == HighElfRace
		Target.Kill(Caster)
		Caster.AddItem(Elf, 1)
	ElseIf Target.GetActorValue("health") <= 300 && Target.GetRace() == ImperialRace
		Target.Kill(Caster)
		Caster.AddItem(Human, 1)
	ElseIf Target.GetActorValue("health") <= 300 && Target.GetRace() == KhajiitRace
		Target.Kill(Caster)
		Caster.AddItem(Khajiit, 1)
	ElseIf Target.GetActorValue("health") <= 300 && Target.GetRace() == NordRace
		Target.Kill(Caster)
		Caster.AddItem(Human, 1)
	ElseIf Target.GetActorValue("health") <= 300 && Target.GetRace() == OrcRace
		Target.Kill(Caster)
		Caster.AddItem(Elf, 1)
	ElseIf Target.GetActorValue("health") <= 300 && Target.GetRace() == RedguardRace
		Target.Kill(Caster)
		Caster.AddItem(Human, 1)
	ElseIf Target.GetActorValue("health") <= 300 && Target.GetRace() == WoodElfRace
		Target.Kill(Caster)
		Caster.AddItem(Elf, 1)
	ElseIf Target.GetActorValue("health") <= 300 && Target.GetRace() == DremoraRace
		Target.Kill(Caster)
		Caster.AddItem(Dremora, 1)
		Utility.Wait(0.25)
		Target.RemoveItem(Dremora, 1)
	ElseIf Target.GetActorValue("health") <= 300 && Target.GetRace() == ElderRace
		Target.Kill(Caster)
		Caster.AddItem(Human, 1)
	ElseIf Target.GetActorValue("health") <= 300 && Target.GetRace() == FalmerRace
		Target.Kill(Caster)
		Caster.AddItem(Elf, 1)
	ElseIf Target.GetActorValue("health") <= 300
		Target.Kill(Caster)
		Caster.AddItem(Generic, 1)
	EndIf
EndEvent