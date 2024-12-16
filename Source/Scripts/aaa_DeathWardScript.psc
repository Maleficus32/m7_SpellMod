Scriptname aaa_DeathWardScript extends ActiveMagicEffect  

SPELL Property DeathWard  Auto

Event OnEffectStart(Actor akTarget, Actor akCaster)
	akTarget.DispelSpell(DeathWard)
EndEvent