Scriptname aaa_TeleportRiften extends ActiveMagicEffect  

ObjectReference Property TeleportAnchor  Auto  
Actor Target
Faction Property Bounty  Auto  
ObjectReference Property RiftenMapMarkerREF  Auto  

 Event OnEffectStart(Actor akTarget, Actor akCaster)
   Int CrimeGold = Bounty.GetCrimeGold()
   If CrimeGold >= 1000
     Debug.MessageBox("Access to this teleportation anchor has been cut off until you clear your bounty.")
   ElseIf RiftenMapMarkerRef.CanFastTravelToMarker() == 0
     Debug.MessageBox("Access to this teleportation anchor is only granted upon first visit to the city")
   else
     Target = GetTargetActor()
     Target.MoveTo(RiftenMapMarkerRef)
   EndIf
 EndEvent