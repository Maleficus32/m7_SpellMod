Scriptname aaa_FeeblemindScript extends ActiveMagicEffect  

 Float MaxMagicka
 Actor Target

 Event OnEffectStart(Actor akTarget, Actor akCaster)
   Target = GetTargetActor()
   MaxMagicka = Target.GetActorValueMax("Magicka")
   Target.DamageActorValue("Magicka", MaxMagicka)
   Target.SetActorValue("Magicka", 0)
 EndEvent

 Event OnEffectFinish(Actor akTarget, Actor akCaster)
   Target.SetActorValue("Magicka", MaxMagicka)
   Target.DamageActorValue("Magicka", MaxMagicka)
 EndEvent