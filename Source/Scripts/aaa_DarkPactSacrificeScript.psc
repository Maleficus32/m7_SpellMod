Scriptname aaa_DarkPactSacrificeScript extends ActiveMagicEffect  

Actor Caster
Float ConjLevel
Float HealthToSacrifice
Float CasterHealth

Event OnEffectStart(Actor akTarget, Actor akCaster)
	Caster = akCaster
	ConjLevel = Caster.GetActorValue("Conjuration")
	CasterHealth = Caster.GetActorValueMax("Health")
	HealthToSacrifice = ((CasterHealth/ConjLevel) * 20)
	Caster.ModActorValue("Health", -HealthToSacrifice)
EndEvent

Event OnEffectFinish(Actor akTarget, Actor akCaster)
	Caster.ModActorValue("Health", HealthToSacrifice)
EndEvent