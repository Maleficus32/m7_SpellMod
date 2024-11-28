Scriptname aaa_AugmentHealthScript extends ActiveMagicEffect  

Actor Caster

Event OnEffectStart(Actor akTarget, Actor akCaster)
	Caster = akCaster
	Caster.ModActorValue("Health", 100)
EndEvent

Event OnEffectFinish(Actor akTarget, Actor akCaster)
	Caster.ModActorValue("Health", -100)
EndEvent