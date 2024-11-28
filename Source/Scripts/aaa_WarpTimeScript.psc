Scriptname aaa_WarpTimeScript extends ActiveMagicEffect  

MagicEffect Property DistortTimeMGEF  Auto  
SPELL Property WarpTimeSpell  Auto  

Event OnEffectStart(Actor akTarget, Actor akCaster)
	If akCaster.HasMagicEffect(DistortTimeMGEF) != 1
		WarpTimeSpell.Cast(akCaster)
	Else
		akCaster.DispelSpell(WarpTimeSpell)
	EndIf
EndEvent