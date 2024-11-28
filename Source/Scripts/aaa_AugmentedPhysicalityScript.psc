Scriptname aaa_AugmentedPhysicalityScript extends ActiveMagicEffect  

Message Property MyMenu  Auto  
Actor PlayerRef
SPELL Property HealthSpell  Auto  
MagicEffect Property HealthMGEF  Auto  
MagicEffect Property MagickaMGEF  Auto  
SPELL Property AugmentMagicka  Auto  
MagicEffect Property StaminaMGEF  Auto  
SPELL Property StaminaSpell  Auto  
MagicEffect Property CarryMGEF  Auto  
SPELL Property CarrySpell  Auto  

Event OnEffectStart(Actor akTarget, Actor akCaster)
	PlayerRef = Game.GetPlayer()
	If PlayerRef.HasMagicEffect(HealthMGEF) && akCaster == PlayerRef
		PlayerRef.DispelSpell(HealthSpell)
		Menu()
	ElseIf PlayerRef.HasMagicEffect(MagickaMGEF) && akCaster == PlayerRef
		PlayerRef.DispelSpell(AugmentMagicka)
		Menu()
	ElseIf PlayerRef.HasMagicEffect(StaminaMGEF) && akCaster == PlayerRef
		PlayerRef.DispelSpell(StaminaSpell)
		Menu()
	ElseIf PlayerRef.HasMagicEffect(CarryMGEF) && akCaster == PlayerRef
		PlayerRef.DispelSpell(CarrySpell)
		Menu()
	ElseIf akCaster == PlayerRef
		Menu()
	EndIf
EndEvent

Function Menu(Int aiButton = 0)
	aiButton = MyMenu.Show()
	If aiButton == 0
		HealthSpell.Cast(PlayerRef, PlayerRef)
	ElseIf aiButton == 1
		AugmentMagicka.Cast(PlayerRef, PlayerRef)
	ElseIf aiButton == 2
		StaminaSpell.Cast(PlayerRef, PlayerRef)
	ElseIf aiButton == 3
		CarrySpell.Cast(PlayerRef, PlayerRef)
	EndIf
EndFunction