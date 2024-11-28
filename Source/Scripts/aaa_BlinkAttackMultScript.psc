Scriptname aaa_BlinkAttackMultScript extends ActiveMagicEffect  

Actor Caster

Event OnEffectStart(Actor akTarget, Actor akCaster)
	Caster = akCaster
	Caster.ModActorValue("AttackDamageMult", 1)
EndEvent

Event OnEffectFinish(Actor akTarget, Actor akCaster)
	Caster.ModActorValue("AttackDamageMult", -1)
EndEvent