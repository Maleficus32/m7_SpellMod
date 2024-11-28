Scriptname aaa_HadroksBrillianceScript extends ActiveMagicEffect  

SPELL Property BrillianceSpell  Auto  

 Event OnEffectStart(Actor akTarget, Actor akCaster)
   If !akCaster.HasSpell(BrillianceSpell)
     akCaster.AddSpell(BrillianceSpell, false)
   else
     akCaster.RemoveSpell(BrillianceSpell)
   EndIf
 EndEvent