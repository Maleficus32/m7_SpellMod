Scriptname aaa_ModifyMemoryScript extends ActiveMagicEffect  

Message Property MM1  Auto  
Message Property MM2  Auto  
Actor Property PlayerRef  Auto 
Actor Target 
EffectShader Property IllusPos  Auto  
EffectShader Property IllusNeg  Auto  

Event OnEffectStart(Actor akTarget, Actor akCaster)
	Target = akTarget
	If akCaster == PlayerRef && PlayerRef.IsDetectedBy(Target) == 0
		Menu()
	EndIf
EndEvent

Function Menu(Bool abMenu = True, Int aiButton = 0)
	While abMenu
		If aiButton != -1 ; Wait for input (this can prevent problems if recycling the aiButton argument in submenus)
			aiButton = MM1.Show() ; Main Menu
			abMenu = False ; End the function
			If aiButton == 0
				Target.SetRelationshipRank(PlayerRef, 4)
				IllusPos.Play(Target, 2)
			ElseIf aiButton == 1
				Target.SetRelationshipRank(PlayerRef, 3)
				IllusPos.Play(Target, 2)
			ElseIf aiButton == 2
				Target.SetRelationshipRank(PlayerRef, 2)
				IllusPos.Play(Target, 2)
			ElseIf aiButton == 3
				Target.SetRelationshipRank(PlayerRef, 1)
				IllusPos.Play(Target, 2)
			ElseIf aiButton == 4
				Target.SetRelationshipRank(PlayerRef, 0)
				IllusPos.Play(Target, 2)
			ElseIf aiButton == 5
				aiButton = MM2.Show()
					If aiButton == 0
						aiButton = MM1.Show()
					ElseIf aiButton == 1
						Target.SetRelationshipRank(PlayerRef, -1)
						IllusNeg.Play(Target, 2)
					ElseIf aiButton == 2
						Target.SetRelationshipRank(PlayerRef, -2)
						IllusNeg.Play(Target, 2)
					ElseIf aiButton == 3
						Target.SetRelationshipRank(PlayerRef, -3)
						IllusNeg.Play(Target, 2)
					ElseIf aiButton == 4
						Target.SetRelationshipRank(PlayerRef, -4)
						IllusNeg.Play(Target, 2)
					EndIf
			EndIf
		EndIf
	EndWhile
EndFunction