Scriptname aaa_Teleportation extends ActiveMagicEffect  

Actor PlayerRef
ObjectReference Property Winterhold  Auto  
ObjectReference Property Dawnstar  Auto  
ObjectReference Property Falkreath  Auto  
ObjectReference Property Markarth  Auto  
ObjectReference Property Morthal  Auto  
ObjectReference Property Riften  Auto  
ObjectReference Property Solitude  Auto  
ObjectReference Property Whiterun  Auto  
ObjectReference Property Windhelm  Auto  
Message Property TeleportationMessage  Auto  
Message Property TeleportationMessage2  Auto  
Quest Property MG01  Auto  
Quest Property MG05  Auto  
Quest Property MG08  Auto  
ObjectReference Property RavenRock  Auto  
ObjectReference Property CastleVolkihar  Auto  
ObjectReference Property Dawnguard  Auto  

Event OnEffectStart(Actor akTarget, Actor akCaster)
   PlayerRef = Game.GetPlayer()
	If akCaster == PlayerRef ; Only the player can open the menu
		Menu()
	EndIf
EndEvent
 
Function Menu(Int aiMessage = 0, Int aiButton = 0, Bool abMenu = True)
	While abMenu
    If aiButton == -1
    ElseIf aiMessage == 0
			aiButton = TeleportationMessage.Show()
      If aiButton == 0
        PlayerRef.MoveTo(Dawnstar)
        abMenu = False
      ElseIf aiButton == 1
        PlayerRef.MoveTo(Falkreath)
        abMenu = False
      ElseIf aiButton == 2
        PlayerRef.MoveTo(Markarth)
        abMenu = False
      ElseIf aiButton == 3
        PlayerRef.MoveTo(Morthal)
        abMenu = False
      ElseIf aiButton == 4
        PlayerRef.MoveTo(Riften)
        abMenu = False
      ElseIf aiButton == 5
        PlayerRef.MoveTo(Solitude)
        abMenu = False
      ElseIf aiButton == 6
        PlayerRef.MoveTo(Whiterun)
        abMenu = False
      ElseIf aiButton == 7
        PlayerRef.MoveTo(Windhelm)
        abMenu = False
			ElseIf aiButton == 8 ; More
				aiMessage = 1
			ElseIf aiButton == 9 ; Done
				abMenu = False
			EndIf
		ElseIf aiMessage == 1
			aiButton = TeleportationMessage2.Show()
      If aiButton == 0
        aiMessage = 0
      ElseIf aiButton == 1 && MG01.GetStage() < 30
        Debug.MessageBox("Only members of the College of Winterhold are permitted to utilize this anchor")
        abMenu = False
      ElseIf aiButton == 1 && MG05.GetStage() >= 10 && MG08.GetStage() < 200
        Debug.MessageBox("Unable to reach this teleportation anchor due to unforeseen arcane interference")
        abMenu = False
      ElseIf aiButton == 1
        PlayerRef.MoveTo(Winterhold)
        abMenu = False
      ElseIf aiButton == 2
        PlayerRef.MoveTo(RavenRock)
        abMenu = False
      ElseIf aiButton == 3
        PlayerRef.MoveTo(CastleVolkihar)
        abMenu = False
      ElseIf aiButton == 4
        PlayerRef.MoveTo(Dawnguard)
        abMenu = False
		  ElseIf aiButton == 5
        abMenu = False
			EndIf
		EndIf
	EndWhile
EndFunction

; Function Menu(Int aiButton = 0) ; The menu will exit on its own after a selection is made.
; 	aiButton = TeleportationMessage.Show()
	; If aiButton == 0
	; 	PlayerRef.MoveTo(Dawnstar)
	; ElseIf aiButton == 1
	; 	PlayerRef.MoveTo(Falkreath)
	; ElseIf aiButton == 2
	; 	PlayerRef.MoveTo(Markarth)
  ;      ElseIf aiButton == 3
  ;            PlayerRef.MoveTo(Morthal)
  ;      ElseIf aiButton == 4
  ;            PlayerRef.MoveTo(Riften)
  ;      ElseIf aiButton == 5
  ;            PlayerRef.MoveTo(Solitude)
  ;      ElseIf aiButton == 6
  ;            PlayerRef.MoveTo(Whiterun)
  ;      ElseIf aiButton == 7
  ;            PlayerRef.MoveTo(Windhelm)
;        ElseIf aiButton == 8
;              Int iButton = TeleportationMessage2.Show()
;              If iButton == 0
;                 TeleportationMessage.Show()
                ; ElseIf iButton == 1 && MG01.GetStage() < 30
                ;   Debug.MessageBox("Only members of the College of Winterhold are permitted to utilize this anchor")
                ; ElseIf iButton == 1 && MG05.GetStage() >= 10 && MG08.GetStage() < 200
                ;   Debug.MessageBox("Unable to reach this teleportation anchor due to unforeseen arcane interference")
                ; ElseIf iButton == 1
                ;   PlayerRef.MoveTo(Winterhold)
                ; ElseIf iButton == 2
                ;   PlayerRef.MoveTo(RavenRock)
                ; ElseIf iButton == 3
                ;   PlayerRef.MoveTo(CastleVolkihar)
                ; ElseIf iButton == 4
                ;   PlayerRef.MoveTo(Dawnguard)
; 	    EndIf
;        EndIf
; EndFunction

