Scriptname aaa_ExpulsionScript extends ActiveMagicEffect  

 Event OnEffectStart(Actor akTarget, Actor akCaster)
   akCaster.PushActorAway(akTarget, 20)
   akTarget.DamageActorValue("Health", 60.0)
 EndEvent