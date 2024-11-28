Scriptname aaa_ReduceScript extends ActiveMagicEffect  

 Objectreference Target

   Event OnEffectStart(Actor akTarget, Actor akCaster)
   Target = GetTargetActor()
      Target.Setscale(0.2)
   EndEvent

 Event OnEffectFinish(Actor akTarget, Actor akCaster)
   Target.SetScale(1.0)
 EndEvent