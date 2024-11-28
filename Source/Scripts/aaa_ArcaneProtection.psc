Scriptname aaa_ArcaneProtection extends activemagiceffect  

Float FortifyAmount

Event OnEffectStart(Actor akTarget, Actor akCaster)
	FortifyAmount = (akCaster.GetActorValue("Alteration")/4)
	akCaster.ModActorValue("MagicResist", FortifyAmount)
EndEvent

Event OnEffectFinish(Actor akTarget, Actor akCaster)
	akCaster.ModActorValue("MagicResist", -FortifyAmount)
EndEvent