Scriptname aaa_CheeseSpellScript extends ActiveMagicEffect  

Potion Property Cheese  Auto  
Actor Target
Float TargetCurrentHealth
Activator Property AshPileObject  Auto  
EffectShader Property ShockDisintegrate01FXS  Auto  

Event OnEffectStart(Actor akTarget, Actor akCaster)
	Target = akTarget
	If Target.IsDead()
		Target.SetCriticalStage(Target.CritStage_DisintegrateStart)
		ShockDisintegrate01FXS.Play(Target)
		Utility.Wait(2.0)
		Target.AttachAshPile(AshPileObject)
		Target.SetCriticalStage(Target.CritStage_DisintegrateEnd)
		Utility.Wait(1.0)
		Target.PlaceAtMe(Cheese, 5)
	Else
		Target.Kill(akCaster)
		Utility.Wait(2)
		Target.PlaceAtMe(Cheese, 5)
	EndIf
EndEvent

