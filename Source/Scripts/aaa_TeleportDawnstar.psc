Scriptname aaa_TeleportDawnstar extends ActiveMagicEffect  

ObjectReference Property TeleportAnchor  Auto  
Actor Target
ObjectReference Property DawnstarMapMarkerREF  Auto  
Faction Property Bounty  Auto  

 Event OnEffectStart(Actor akTarget, Actor akCaster)
   Target = GetTargetActor()
   Int CrimeGold = Bounty.GetCrimeGold()
   If CrimeGold >= 1000
     Debug.MessageBox("Access to this teleportation anchor has been cut off until you clear your bounty.")
   ElseIf DawnstarMapMarkerRef.CanFastTravelToMarker() == 0
     Debug.MessageBox("Access to this teleportation anchor is only granted upon first visit to the city")
   else
     Target.MoveTo(TeleportAnchor)
   EndIf
 EndEvent
