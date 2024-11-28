Scriptname aaa_PlaytestSpellAdderScript extends Quest  

SPELL Property Updater  Auto  
Actor Property PlayerRef  Auto  

Event OnInit()
	Utility.Wait(1.0)
	PlayerRef.AddSpell(Updater, False)
EndEvent
