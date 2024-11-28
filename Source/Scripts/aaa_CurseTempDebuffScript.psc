Scriptname aaa_CurseTempDebuffScript extends activemagiceffect  

SPELL Property Debuff  Auto  

Event OnEffectStart(Actor akTarget, Actor akCaster)
	akCaster.AddSpell(Debuff)
EndEvent

