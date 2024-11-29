Scriptname aaa_BanishCoprseScript extends ActiveMagicEffect  

Event OnEffectStart(Actor akTarget, Actor akCaster)
	Utility.Wait(2.1)
	akTarget.SetAlpha(0.1, true)
	Utility.Wait(0.6)
	akTarget.Disable()
EndEvent