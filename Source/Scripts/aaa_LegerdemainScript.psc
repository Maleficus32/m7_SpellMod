Scriptname aaa_LegerdemainScript extends ActiveMagicEffect  

Actor Caster
Actor Target

Event OnEffectStart(Actor akTarget, Actor akCaster)
	Caster = akCaster
	Target = GetTargetActor()
	If Caster.IsDetectedBy(Target) == 0
		Target.OpenInventory(True)
	EndIf
EndEvent