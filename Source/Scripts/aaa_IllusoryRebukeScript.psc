Scriptname aaa_IllusoryRebukeScript extends ActiveMagicEffect  

EffectShader Property IllusionShader  Auto  
Actor Caster

Event OnEffectStart(Actor akTarget, Actor akCaster)
	Caster = akCaster
	Caster.ModActorValue("ReflectDamage", 100)
EndEvent

Event OnHit(ObjectReference akAggressor, Form akSource, Projectile akProjectile, bool abPowerAttack, bool abSneakAttack, \
  bool abBashAttack, bool abHitBlocked)
	IllusionShader.Play(akAggressor, 1)
EndEvent

Event OnEffectFinish(Actor akTarget, Actor akCaster)
	Caster.ModActorValue("ReflectDamage", -100)
EndEvent