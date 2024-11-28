Scriptname aaa_GravitationalSingularityScript extends ActiveMagicEffect  

Actor Target
SPELL Property Splosion  Auto  
Activator Property VoidMarker  Auto  
ObjectReference SpawnedMarker
Actor Caster

Event OnEffectStart(Actor akTarget, Actor akCaster)
	Target = akTarget
	Caster = akCaster
	SpawnedMarker = Target.PlaceAtMe(VoidMarker, 1)
	SpawnedMarker.MoveTo(Caster, 120.0 * Math.Sin(Caster.GetAngleZ()), 120.0 * Math.Cos(Caster.GetAngleZ()), Caster.GetHeight() - 35.0)
	Target.PushActorAway(Target, 30)
	Utility.Wait(1.5)
	Splosion.Cast(Target, Target)
	SpawnedMarker.PushActorAway(Target, -100)
	Utility.Wait(0.2)
	Target.DamageActorValue("Health", 100)
	SpawnedMarker.Disable()
	SpawnedMarker = None
EndEvent
