Scriptname aaa_ArcaneLockPickScript extends ActiveMagicEffect  

ObjectReference Target
Actor Player
EffectShader Property LockpickShader  Auto  

Event OnEffectStart(Actor akTarget, Actor akCaster)
	Player = Game.GetPlayer()
	Target = Game.GetCurrentCrosshairRef()
	If Target.IsLocked() && Target.GetLockLevel() <= 1 && Player.GetActorValue("Alteration") >= 0 && Player.GetActorValue("Alteration") < 25 
		Target.Lock(False)
		LockpickShader.Play(Target, 5.0)
	ElseIf Target.IsLocked() && Target.GetLockLevel() <= 25 && Player.GetActorValue("Alteration") >= 25 && Player.GetActorValue("Alteration") < 50
		Target.Lock(False)
		LockpickShader.Play(Target, 5.0)
	ElseIf Target.IsLocked() && Target.GetLockLevel() <= 50 && Player.GetActorValue("Alteration") >= 50 && Player.GetActorValue("Alteration") < 75
		Target.Lock(False)
		LockpickShader.Play(Target, 5.0)
	ElseIf Target.IsLocked() && Target.GetLockLevel() <= 75 && Player.GetActorValue("Alteration") >= 75 && Player.GetActorValue("Alteration") < 100
		Target.Lock(False)
		LockpickShader.Play(Target, 5.0)
	ElseIf Target.IsLocked() && Target.GetLockLevel() <= 100 && Player.GetActorValue("Alteration") >= 100
		Target.Lock(False)
		LockpickShader.Play(Target, 5.0)
	ElseIf Target.IsLocked()
		Debug.Notification("This lock is too advanced")
	Else
		Debug.Notification("Invalid Target")
	EndIf
EndEvent