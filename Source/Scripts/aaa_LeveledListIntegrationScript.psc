Scriptname aaa_LeveledListIntegrationScript extends Quest  

Int TargetModIndexMallus
Int TargetModIndexiNeed
Int TargetModIndexDandB
Int TargetModIndexLastSeed
GlobalVariable Property HasMallus  Auto  
GlobalVariable Property IsNewGame  Auto  
GlobalVariable Property HasiNeed  Auto  
GlobalVariable Property HasDandB  Auto  
GlobalVariable Property HasLastSeed  Auto  
LeveledItem Property aaa_m7Alt0  Auto  
LeveledItem Property aaa_m7Alt25  Auto  
LeveledItem Property aaa_m7Alt50  Auto  
LeveledItem Property aaa_m7Alt75  Auto  
LeveledItem Property aaa_m7AltRit  Auto  
LeveledItem Property aaa_m7Conj00  Auto  
LeveledItem Property aaa_m7Conj25  Auto  
LeveledItem Property aaa_m7Conj50  Auto  
LeveledItem Property aaa_m7Conj75  Auto  
LeveledItem Property aaa_m7ConjRit  Auto  
LeveledItem Property aaa_m7Dest00  Auto  
LeveledItem Property aaa_m7Dest25  Auto  
LeveledItem Property aaa_m7Dest50  Auto  
LeveledItem Property aaa_m7Dest75  Auto  
LeveledItem Property aaa_m7DestRit  Auto  
LeveledItem Property aaa_m7Illus00  Auto  
LeveledItem Property aaa_m7Illus25  Auto  
LeveledItem Property aaa_m7Illus50  Auto  
LeveledItem Property aaa_m7Illus75  Auto  
LeveledItem Property aaa_m7IllusRit  Auto  
LeveledItem Property aaa_m7Rest00  Auto  
LeveledItem Property aaa_m7Rest25  Auto  
LeveledItem Property aaa_m7Rest50  Auto  
LeveledItem Property aaa_m7Rest75  Auto  
LeveledItem Property aaa_m7RestRit  Auto  
LeveledItem Property Conjuration100  Auto  
LeveledItem Property Destruction50  Auto  
LeveledItem Property Alteration0  Auto  
LeveledItem Property aaa_m7TeleScrolls  Auto  
LeveledItem Property Destruction100  Auto  
LeveledItem Property Illusion75  Auto  
LeveledItem Property Alteration75  Auto  
LeveledItem Property Alteration50  Auto  
LeveledItem Property Destruction75  Auto  
LeveledItem Property Alteration100  Auto  
LeveledItem Property SCROLLS  Auto  
LeveledItem Property Conjuration75  Auto  
LeveledItem Property Conjuration25  Auto  
LeveledItem Property Conjuration0  Auto  
LeveledItem Property Conjuration50  Auto   
LeveledItem Property Restoration100  Auto  
LeveledItem Property RitAlt  Auto  
LeveledItem Property RitConj  Auto  
LeveledItem Property RitDest  Auto  
LeveledItem Property RitRest  Auto  
LeveledItem Property RitIllus  Auto  
LeveledItem Property Illusion25  Auto  
LeveledItem Property Restoration0  Auto  
LeveledItem Property Restoration25  Auto  
LeveledItem Property Illusion50  Auto  
LeveledItem Property VendorScroll  Auto  
LeveledItem Property Illusion0  Auto  
LeveledItem Property Restoration50  Auto  
LeveledItem Property Restoration75  Auto  
LeveledItem Property Scroll100  Auto  
LeveledItem Property Scrolls25  Auto  
Book Property CreateWater  Auto  
LeveledItem Property Alteration25  Auto  
Book Property Clean  Auto  
Book Property SeedCreateWater  Auto  
LeveledItem Property Destruction0  Auto  
LeveledItem Property Destruction25  Auto  

Event OnInit()
	Utility.Wait(5.0)
	TargetModIndexMallus = Game.GetModByName("MallusWildMageFollower.esp")
	TargetModIndexiNeed = Game.GetModByName("iNeed.esp")
	TargetModIndexDandB = Game.GetModByName("Dirt and Blood - Dynamic Visuals.esp")
	TargetModIndexLastSeed = Game.GetModByName("LastSeed.esp")
	Debug.Notification("Maleficus has invaded the leveled lists!")
	Alteration0.AddForm(aaa_m7Alt0, 1, 1)
	Alteration25.AddForm(aaa_m7Alt25, 1, 1)
	Alteration50.AddForm(aaa_m7Alt50, 1, 1)
	Alteration75.AddForm(aaa_m7Alt75, 1, 1)
	RitAlt.AddForm(aaa_m7AltRit, 1, 1)
	Conjuration0.AddForm(aaa_m7Conj00, 1, 1)
	Conjuration25.AddForm(aaa_m7Conj25, 1, 1)
	Conjuration50.AddForm(aaa_m7Conj50, 1, 1)
	Conjuration75.AddForm(aaa_m7Conj75, 1, 1)
	RitConj.AddForm(aaa_m7ConjRit, 1, 1)
	Destruction0.AddForm(aaa_m7Dest00, 1, 1)
	Destruction25.AddForm(aaa_m7Dest25, 1, 1)
	Destruction50.AddForm(aaa_m7Dest50, 1, 1)
	Destruction75.AddForm(aaa_m7Dest75, 1, 1)
	RitDest.AddForm(aaa_m7DestRit, 1, 1)
	Illusion0.AddForm(aaa_m7Illus00, 1, 1)
	Illusion25.AddForm(aaa_m7Illus25, 1, 1)
	Illusion50.AddForm(aaa_m7Illus50, 1, 1)
	Illusion75.AddForm(aaa_m7Illus75, 1, 1)
	RitIllus.AddForm(aaa_m7IllusRit, 1, 1)
	Restoration0.AddForm(aaa_m7Rest00, 1, 1)
	Restoration25.AddForm(aaa_m7Rest25, 1, 1)
	Restoration50.AddForm(aaa_m7Rest50, 1, 1)
	Restoration75.AddForm(aaa_m7Rest75, 1, 1)
	RitRest.AddForm(aaa_m7RestRit, 1, 1)
	SCROLLS.AddForm(aaa_m7TeleScrolls, 1, 1)
	;iNeed block
	If TargetModIndexiNeed != 255
		HasiNeed.SetValue(1)
		Alteration25.AddForm(CreateWater, 1, 1)
	EndIf
	;Dirt and Blood block
	If TargetModIndexDandB != 255
		HasDandB.SetValue(1)
		Alteration50.AddForm(Clean, 1, 1)
	EndIf
 	;Last Seed block
	If TargetModIndexLastSeed != 255
		HasLastSeed.SetValue(1)
		Alteration25.AddForm(SeedCreateWater, 1, 1)
	EndIf
 EndEvent