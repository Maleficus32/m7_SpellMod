Scriptname aaa_EstateSpellScript extends ActiveMagicEffect  

ObjectReference Property EntranceAnchor  Auto  
ObjectReference Property ExitAnchor  Auto  
Actor Property PlayerRef  Auto  

Event OnEffectStart(Actor akTarget, Actor akCaster)
	If (PlayerRef.GetParentCell() != EntranceAnchor.GetParentCell())
		ExitAnchor.MoveTo(PlayerRef)
		ExitAnchor.Disable()
		ExitAnchor.Enable()
		PlayerRef.MoveTo(EntranceAnchor)
	Else
		PlayerRef.MoveTo(ExitAnchor)
	EndIf
EndEvent