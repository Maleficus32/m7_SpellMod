Scriptname aaa_DeathWardScript extends ActiveMagicEffect  

SPELL Property HealyEffect  Auto  
SPELL Property DeathWard  Auto
Actor Target
Float HealthMax
Float HealThreshold

 Event OnHit(ObjectReference akAggressor, Form akSource, Projectile akProjectile, bool abPowerAttack, bool abSneakAttack, \
  bool abBashAttack, bool abHitBlocked)
   Target = GetTargetActor()
   HealthMax = Target.GetActorValueMax("health")
   HealThreshold = (30 * HealthMax) / 100
   If Target.GetActorValue("health") <= HealThreshold
     HealyEffect.Cast(Target, Target)
     Target.DispelSpell(DeathWard)
   EndIf
 EndEvent