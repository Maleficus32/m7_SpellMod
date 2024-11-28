Scriptname aaa_ArcaneFistScript extends ActiveMagicEffect  

Float FortifyValue	
Actor Property PlayerRef  Auto  

Event OnEffectStart(Actor akTarget, Actor akCaster)
	FortifyValue = (PlayerRef.GetActorValue("Alteration")/2)
	PlayerRef.ModActorValue("UnarmedDamage", FortifyValue)
EndEvent

Event OnEffectFinish(Actor akTarget, Actor akCaster)
	PlayerRef.ModActorValue("UnarmedDamage", -FortifyValue)
EndEvent