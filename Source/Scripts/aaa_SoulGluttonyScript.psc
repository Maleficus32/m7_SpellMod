Scriptname aaa_SoulGluttonyScript extends ActiveMagicEffect  

GlobalVariable Property SoulsConsumed  Auto  
Actor Caster
Float CurrentSouls
Float MagickaBuff
Sound Property BlackBookSound  Auto  

Event OnEffectStart(Actor akTarget, Actor akCaster)
	Caster = akCaster
	BlackBookSound.Play(Caster)
	CurrentSouls = SoulsConsumed.GetValue()
	MagickaBuff = (CurrentSouls * 50)
	Caster.ModActorValue("Magicka", MagickaBuff)
	SoulsConsumed.Mod(-CurrentSouls)
EndEvent

Event OnEffectFinish(Actor akTarget, Actor akCaster)
	Caster.ModActorValue("Magicka", -MagickaBuff)
EndEvent
