Scriptname aaa_BlinkSpellSplosionScript extends ObjectReference  

Actor Property PlayerRef  Auto  
SPELL Property BlinkFF  Auto  
SPELL Property BlinkInvis  Auto  
SPELL Property BlinkMuffle  Auto  

Event OnLoad()
	BlinkFF.Cast(PlayerRef, PlayerRef)
	BlinkInvis.Cast(PlayerRef, PlayerRef)
	BlinkMuffle.Cast(PlayerRef, PlayerRef)
	PlayerRef.TranslateToRef(Self, 5000)
	Self.Disable()
	Self.Delete()
EndEvent
