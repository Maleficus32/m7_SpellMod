Scriptname aaa_ElementalProtectionScript extends ActiveMagicEffect  

Message Property ProtMenu  Auto  
EffectShader Property FireShader  Auto  
EffectShader Property FrostShader  Auto  
EffectShader Property ShockShader  Auto  
EffectShader Property PoisonShader  Auto  
Bool IsFireResist
Bool IsFrostResist
Bool IsShockResist
Bool IsPoisonResist
Actor Caster
Float AlterationLevel
SPELL Property ElementalProt  Auto  

Event OnEffectStart(Actor akTarget, Actor akCaster)
	Caster = akCaster
	AlterationLevel = Caster.GetActorValue("Alteration")
	If akCaster == Game.GetPlayer()
		Menu()
	EndIf
EndEvent

Function Menu(Int aiButton = 0)
	aiButton = ProtMenu.Show()
	If aiButton == 0
		IsFireResist = True
		Caster.ModActorValue("FireResist", AlterationLevel)
		FireShader.Play(Caster)
	ElseIf aiButton == 1
		IsFrostResist = True
		Caster.ModActorValue("FrostResist", AlterationLevel)
		FrostShader.Play(Caster)
	ElseIf aiButton == 2
		IsShockResist = True
		Caster.ModActorValue("ElectricResist", AlterationLevel)
		ShockShader.Play(Caster)
	ElseIf aiButton == 3
		IsPoisonResist = True
		Caster.ModActorValue("PoisonResist", AlterationLevel)
		PoisonShader.Play(Caster)
	ElseIf aiButton == 4
		Caster.DispelSpell(ElementalProt)
	EndIf
EndFunction

Event OnEffectFinish(Actor akTarget, Actor akCaster)
	If IsFireResist == True
		IsFireResist = False
		Caster.ModActorValue("FireResist", -AlterationLevel)
		FireShader.Stop(Caster)
	ElseIf IsFrostResist == True
		IsFrostResist = False
		Caster.ModActorValue("FrostResist", -AlterationLevel)
		FrostShader.Stop(Caster)
	ElseIf IsShockResist == True
		IsShockResist = False
		Caster.ModActorValue("ElectricResist", -AlterationLevel)
		ShockShader.Stop(Caster)
	ElseIf IsPoisonResist == True
		IsPoisonResist = False
		Caster.ModActorValue("PoisonResist", -AlterationLevel)
		PoisonShader.Stop(Caster)
	EndIf
EndEvent
