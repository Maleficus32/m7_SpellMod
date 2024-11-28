Scriptname aaa_ChaosSlamScript extends activemagiceffect  

SPELL Property Splosion  Auto  

Event OnEffectStart(Actor akTarget, Actor akCaster)
	akTarget.PushActorAway(akTarget, 20)
	Utility.Wait(1.5)
	Splosion.Cast(akTarget, akTarget)
	akTarget.PushActorAway(akTarget, 100)
	Utility.Wait(0.2)
	akTarget.DamageActorValue("Health", 25)
EndEvent