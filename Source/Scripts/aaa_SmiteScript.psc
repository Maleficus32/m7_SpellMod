Scriptname aaa_SmiteScript extends ActiveMagicEffect  

 Actor Target
 Actor Caster

 Event OnEffectStart(Actor akTarget, Actor akCaster)
 Target = GetTargetActor()
 Caster = akCaster
   Caster.PushActorAway(Target, 10.0)
   DeathCounter.Cast(Target, Target)
 EndEvent


SPELL Property DeathCounter  Auto  
