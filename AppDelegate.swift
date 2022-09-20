//
//  AppDelegate.swift
//  Kami
//
//  Created by Kamila Young on 19/09/2022.
//

import Foundation
import VungleSDK

//Initialize SDK, if implemented this will get called once SDK finished initialisation
func start(withAppId appID: String) throws {
}
//once initiliazed the following callback method is called
func vungleSDKDidInitialize() {
}
var sdk:VungleSDK = VungleSDK.shared()
// Attach
func sdk.delegate = <yourDelegateInstance> as VungleSDKDelegate
// Detach
sdk.delegate = nil
//The following method is called when the SDK is about to play a video ad
func vungleWillShowAd(forPlacementID placementID: String?) {
}
//The following method is called when the SDK has just begun to play a video ad
func vungleDidShowAd(forPlacementID placementID: String?) {
}
//The following method is called when the SDK is about to close an ad
func vungleWillCloseAd(forPlacementID placementID: String) {
}
//The following method is called when the SDK has closed an ad
func vungleDidCloseAd(forPlacementID placementID: String) {
}
//The following method is called when the SDK has changed ad availability status.
func vungleAdPlayabilityUpdate(_ isAdPlayable: Bool, placementID: String?, error: Error?) {
}
//The following method is called when the user clicks the Vungle ad
func vungleTrackClick(forPlacementID placementID: String?) {
}
//The following method is called when the user taps the Vungle ad which will cause them to leave the current application
func vungleWillLeaveApplication(forPlacementID placementID: String?) {
}
//The following method is called when the user should be rewarded for watching a Rewarded Video ad.
func vungleRewardUser(forPlacementID placementID: String?) {
}
//The following method is called when the SDK fails to initialize.
func vungleSDKFailedToInitializeWithError(_ error: Error?) {
}
//The following method is called when the ad is first rendered on device
func vungleAdViewed(forPlacement placementID: String?) {
}
//to load an ad
func loadPlacement(withID placementID: String?) throws {
    
    var sdk:VungleSDK = VungleSDK.shared()
    do {
        try sdk?.loadPlacement(withID: <INTERST-3362874>)
    } catch let error as NSError {
        print("Unable to load placement with reference ID :\(<Your_PlacementID>), Error: \(error)")
        return
    }
}
// Once the SDK finishes caching an ad for a placement, the following callback method is called:
func vungleAdPlayabilityUpdate(_ isAdPlayable: Bool, placementID: String?, error: Error?) {
}
//After you make sure that an ad is ready for a placement, you can play the ad with the following method:
func playAd(_ controller: UIViewController?, options: [AnyHashable : Any]?, placementID: String?) throws {
    var sdk:VungleSDK = VungleSDK.shared()
    do {
        try sdk.playAd(self, options: nil, placementID: "INTERST-3362874")
    } catch let error as NSError {
        print("Error encountered playing ad: + \(error)");
    }
}
}
