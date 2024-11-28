Scriptname aaa_DisintegrateSelfDamageScript extends ActiveMagicEffect  

 Event OnEffectStart(Actor akTarget, Actor akCaster)
   akCaster.DamageActorValue("Health", 50.0)
 EndEvent