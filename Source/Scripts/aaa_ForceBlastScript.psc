Scriptname aaa_ForceBlastScript extends activemagiceffect  

Int Property StaggChance  Auto  
Int Property StaggForce  Auto  

Event OnEffectStart(Actor akTarget, Actor akCaster)
	int DiceRoll = Utility.RandomInt(1, 100)
	If DiceRoll <= StaggChance
		akTarget.PushActorAway(akTarget, StaggForce)
	EndIf
EndEvent
