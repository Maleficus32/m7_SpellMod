Scriptname aaa_MiningToolsUpdateScript extends Quest  

FormList Property mineOreToolsList  Auto  
SPELL Property ArcanePickaxe  Auto  

Event OnInit()
	Utility.Wait(6.0)
	mineOreToolsList.AddForm(ArcanePickaxe)
EndEvent