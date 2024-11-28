Scriptname aaa_WinterholdTeleport extends ActiveMagicEffect  

ObjectReference Property TeleportAnchor  Auto  
Quest Property MG01  Auto  
Actor Target

 Event OnEffectStart(Actor akTarget, Actor akCaster)
   Target = GetTargetActor()
   int CrimeGold = Bounty.GetCrimeGold()
   if CrimeGold >= 1000 && MG08.GetStage() < 200
     Debug.MessageBox("Access to this teleportation anchor has been cut off until you clear your bounty")
   elseif MGRejoinQuest.GetStage() >= 5 && MGRejoinQuest.GetStage() < 200
     Debug.MessageBox("Access to this teleportation anchor has been cut off until your suspension is lifted")
   elseif MG05.GetStage() >= 10 && MG08.GetStage() < 200
     Debug.MessageBox("Unable to reach this teleportation anchor due to unforeseen arcane interference")
   elseif (MG01.GetStageDone(30))
     Target.MoveTo(TeleportAnchor)
   else
     Debug.MessageBox("Only members of the College of Winterhold are permitted to utilize this teleportation anchor")
   endif
 EndEvent
Quest Property MG05  Auto  
Quest Property MG08  Auto  
Quest Property MGRejoinQuest  Auto  
Faction Property Bounty  Auto  
