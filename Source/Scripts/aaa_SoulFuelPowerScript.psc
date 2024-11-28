Scriptname aaa_SoulFuelPowerScript extends ActiveMagicEffect  

GlobalVariable Property SoulsConsumed  Auto  
Actor Caster
Float CurrentSouls
Float MagickaBuff
Sound Property BlackBookSound  Auto  

Event OnEffectStart(Actor akTarget, Actor akCaster)
	Caster = akCaster
	BlackBookSound.Play(Caster)
	CurrentSouls = SoulsConsumed.GetValue()
	MagickaBuff = (CurrentSouls * 10)
	Caster.ModActorValue("Magicka", MagickaBuff)
EndEvent

Event OnEffectFinish(Actor akTarget, Actor akCaster)
	Caster.ModActorValue("Magicka", -MagickaBuff)
EndEvent
