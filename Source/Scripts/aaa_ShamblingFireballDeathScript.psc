Scriptname aaa_ShamblingFireballDeathScript extends ActiveMagicEffect  

SPELL Property FireStorm  Auto  

actor Victim

Event OnEffectStart(Actor Target, Actor Caster)
	victim = target
EndEvent


Event OnDying(Actor Killer)
		FireStorm.Cast(Victim, Victim)
EndEvent