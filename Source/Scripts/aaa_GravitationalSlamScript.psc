Scriptname aaa_GravitationalSlamScript extends ActiveMagicEffect  

Actor Target
SPELL Property Splosion  Auto  
Activator Property VoidMarker  Auto  
ObjectReference SpawnedMarker

Event OnEffectStart(Actor akTarget, Actor akCaster)
	Target = akTarget
	SpawnedMarker = Target.PlaceAtMe(VoidMarker, 1)
	Target.PushActorAway(Target, 20)
	Utility.Wait(1.5)
	Splosion.Cast(Target, Target)
	SpawnedMarker.PushActorAway(Target, -100)
	Utility.Wait(0.2)
	Target.DamageActorValue("Health", 25)
	SpawnedMarker.Disable()
	SpawnedMarker = None
EndEvent
