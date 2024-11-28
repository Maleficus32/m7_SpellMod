Scriptname aaa_ShadowHiss extends ActiveMagicEffect  

SPELL Property ParaSpell  Auto  
SPELL Property FearSpell  Auto  
Actor Target

 Event OnEffectStart(Actor akTarget, Actor akCaster)
   Target = GetTargetActor()
   If Target.GetActorValue("Health") <= 300
      ParaSpell.Cast(Target, Target)
   else
     FearSpell.Cast(Target, Target)
   EndIf
 EndEvent