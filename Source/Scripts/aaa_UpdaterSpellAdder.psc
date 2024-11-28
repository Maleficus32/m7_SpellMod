Scriptname aaa_UpdaterSpellAdder extends Quest  

SPELL Property Updater  Auto  
Actor Property PlayerRef  Auto  

Event OnInit()
	Utility.Wait(5.0)
		PlayerRef.AddSpell(Updater, False)
EndEvent
