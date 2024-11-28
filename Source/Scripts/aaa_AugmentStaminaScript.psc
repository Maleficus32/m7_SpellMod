Scriptname aaa_AugmentStaminaScript extends ActiveMagicEffect  

Actor Caster

Event OnEffectStart(Actor akTarget, Actor akCaster)
	Caster = akCaster
	Caster.ModActorValue("Stamina", 100)
EndEvent

Event OnEffectFinish(Actor akTarget, Actor akCaster)
	Caster.ModActorValue("Stamina", -100)
EndEvent