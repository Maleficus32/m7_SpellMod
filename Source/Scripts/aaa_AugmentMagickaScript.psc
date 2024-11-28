Scriptname aaa_AugmentMagickaScript extends ActiveMagicEffect  

Actor Caster

Event OnEffectStart(Actor akTarget, Actor akCaster)
	Caster = akCaster
	Caster.ModActorValue("Magicka", 100)
EndEvent

Event OnEffectFinish(Actor akTarget, Actor akCaster)
	Caster.ModActorValue("Magicka", -100)
EndEvent