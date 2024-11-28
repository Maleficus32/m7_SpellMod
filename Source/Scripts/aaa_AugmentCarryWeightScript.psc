Scriptname aaa_AugmentCarryWeightScript extends ActiveMagicEffect  

Actor Caster

Event OnEffectStart(Actor akTarget, Actor akCaster)
	Caster = akCaster
	Caster.ModActorValue("CarryWeight", 100)
EndEvent

Event OnEffectFinish(Actor akTarget, Actor akCaster)
	Caster.ModActorValue("CarryWeight", -100)
EndEvent