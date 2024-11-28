Scriptname aaa_MarkAndRecallScript extends ActiveMagicEffect  

ObjectReference Property AnchorMark  Auto  
Actor Player
Message Property AnchorMessage  Auto  
GlobalVariable Property AnchorSet  Auto  

 Event OnEffectStart(Actor akTarget, Actor akCaster)
       Player = Game.GetPlayer()
	If akCaster == Player ; Only the player can open the menu
		Menu()
	EndIf
EndEvent
 
Function Menu(Int aiButton = 0) ; The menu will exit on its own after a selection is made.
	aiButton = AnchorMessage.Show() ; Shows your menu.
	If aiButton == 0
		AnchorSet.SetValue(1)
             AnchorMark.MoveTo(Player)
             AnchorMark.Disable()
             AnchorMark.Enable()
	ElseIf aiButton == 1
		Player.MoveTo(AnchorMark)
	EndIf
EndFunction
