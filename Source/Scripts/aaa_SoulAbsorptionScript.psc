Scriptname aaa_SoulAbsorptionScript extends ActiveMagicEffect  

GlobalVariable Property SoulsConsumed  Auto  
EffectShader Property SoulTrap  Auto  
Float OldValue
Actor Target
Actor Caster
SPELL Property SoulFuel  Auto 

Event OnEffectStart(Actor akTarget, Actor akCaster)
	Target = akTarget
	Caster = akCaster
	If Caster.HasSpell(SoulFuel) == 0
		Caster.AddSpell(SoulFuel)
		OldValue = SoulsConsumed.GetValue()
		SoulsConsumed.SetValue(OldValue + 1)
		Debug.Notification("Soul Consumed")
	Else
		OldValue = SoulsConsumed.GetValue()
		SoulsConsumed.SetValue(OldValue + 1)
		Debug.Notification("Soul Consumed")
	EndIf
EndEvent 
