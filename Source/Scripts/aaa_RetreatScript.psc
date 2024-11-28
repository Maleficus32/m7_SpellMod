Scriptname aaa_RetreatScript extends ActiveMagicEffect  

Actor Target

 Event OnEffectStart(Actor akTarget, Actor akCaster)
 Target = GetTargetActor()
     Target.ModActorValue("SpeedMult", 50)
 EndEvent

 Event OnEffectFinish(Actor akTarget, Actor akCaster)
   Target.ModActorValue("SpeedMult", -50)
 EndEvent