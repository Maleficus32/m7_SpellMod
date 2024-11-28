Scriptname aaa_FriendsSpellScript extends ActiveMagicEffect  

Float IllusionLevel
Float FortificationLevel
Actor Caster

Event OnEffectStart(Actor akTarget, Actor akCaster)
	Caster = akCaster
	IllusionLevel = Caster.GetActorValue("Illusion")
	FortificationLevel = (IllusionLevel/2)
	Caster.ModActorValue("Speechcraft", FortificationLevel)
EndEvent

Event OnEffectFinish(Actor akTarget, Actor akCaster)
	Caster.ModActorValue("Speechcraft", -FortificationLevel)
EndEvent
