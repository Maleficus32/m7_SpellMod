Scriptname aaa_GreaterInvisScript extends activemagiceffect  

SPELL Property GreaterInvis  Auto  
Actor Target
GlobalVariable Property InvisGlobal  Auto  
Int InvisCounter
MagicEffect Property InvisEffect  Auto  

Event OnEffectStart(Actor akTarget, Actor akCaster)
	InvisCounter = InvisGlobal.GetValue() as Int
	Target = akTarget
EndEvent

Event OnEffectFinish(Actor akTarget, Actor akCaster)
	If InvisCounter < 5
		Target.DoCombatSpellApply(GreaterInvis, Target)
		InvisGlobal.Mod(1)
		Utility.Wait(2.0)
		If !Target.HasMagicEffect(InvisEffect)
			InvisGlobal.SetValue(0)
		EndIf
	Else
		InvisGlobal.SetValue(0)
	EndIf
EndEvent
