Scriptname aaa_BloodMagicScript extends ActiveMagicEffect  

Actor Target
Float HealthHalf
Float StaminaHalf

 Event OnEffectStart(Actor akTarget, Actor akCaster)
   Target = GetTargetActor()
   HealthHalf = (Target.GetActorValueMax("health") / 2)
   StaminaHalf = (Target.GetActorValueMax("stamina") / 2)
   Target.ModActorValue("health", -HealthHalf)
   Target.ModActorValue("stamina", -StaminaHalf)
   Target.ModActorValue("magicka", (HealthHalf + StaminaHalf))
 EndEvent

 Event OnEffectFinish(Actor akTarget, Actor akCaster)
   Target.ModActorValue("health", HealthHalf)
   Target.ModActorValue("stamina", StaminaHalf)
   Target.ModActorValue("magicka", -(HealthHalf + StaminaHalf))
 EndEvent