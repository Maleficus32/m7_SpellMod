Scriptname aaa_WebScript extends ActiveMagicEffect  

SPELL Property Poison  Auto  
Actor Target

 Event OnEffectStart(Actor akTarget, Actor akCaster)
   Target = GetTargetActor()
   Poison.Cast(Target, Target)
 EndEvent

 Event OnEffectFinish(Actor akTarget, Actor akCaster)
   Target.DispelSpell(Poison)
 EndEvent