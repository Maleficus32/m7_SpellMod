Scriptname aaa_AegisBreakerScript extends activemagiceffect  

Event OnEffectStart(Actor akTarget, Actor akCaster)
	akTarget.RemoveItem(akTarget.GetEquippedShield())
EndEvent