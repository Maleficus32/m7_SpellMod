Scriptname aaa_SummonAleScript extends ObjectReference  

Potion Property Ale  Auto  
Objectreference SummonedAle
EffectShader Property SummonyShader  Auto  

Event OnLoad()
	SummonedAle = Self.PlaceAtMe(Ale)
	SummonedAle.SetActorOwner(Game.GetPlayer().GetActorBase())
	SummonyShader.Play(SummonedAle, 5)
	Self.Disable()
	Self.Delete()
EndEvent