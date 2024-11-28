Scriptname aaa_ForceBoltScript extends activemagiceffect  

Int Property StaggChance  Auto  
SPELL Property Stagger  Auto  

Event OnEffectStart(Actor akTarget, Actor akCaster)
	int DiceRoll = Utility.RandomInt(1, 100)
	If DiceRoll <= StaggChance
		akCaster.DoCombatSpellApply(Stagger, akTarget)
	EndIf
EndEvent
