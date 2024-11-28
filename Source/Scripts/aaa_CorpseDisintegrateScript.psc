Scriptname aaa_CorpseDisintegrateScript extends ActiveMagicEffect  

Activator Property AshPileObject  Auto  
EffectShader Property ShockDisintegrate01FXS  Auto  
Actor Target

Event OnEffectStart(Actor akTarget, Actor akCaster)
	Target = akTarget
	If Target.IsDead()
		Target.SetCriticalStage(Target.CritStage_DisintegrateStart)
		ShockDisintegrate01FXS.Play(Target)
		Utility.Wait(2.0)
		Target.AttachAshPile(AshPileObject)
		Target.SetCriticalStage(Target.CritStage_DisintegrateEnd)
	EndIf
EndEvent