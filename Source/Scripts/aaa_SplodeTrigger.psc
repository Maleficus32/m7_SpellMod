Scriptname aaa_SplodeTrigger extends ActiveMagicEffect  

SPELL Property Splode  Auto  
Actor Target

 Event OnEffectStart(Actor akTarget, Actor akCaster)
   Target = GetTargetActor()
 EndEvent

 Event OnDeath(Actor akKiller)
   Splode.Cast(Target, Target)
 EndEvent