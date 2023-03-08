//
//  BatteryPlugin.swift
//  App
//
//  Created by Ivin Antony on 09/03/23.
//

import Foundation
import Capacitor
import UIKit
import SwiftUI
import Capacitor

@objc(BatteryPlugin)
public class BatteryPlugin: CAPPlugin {

    
    public override func load()  {
        UIDevice.current.isBatteryMonitoringEnabled = true
        
        print("Battery load:")
  
    }
    @objc func batteryLevelDidChange(notification: Notification){
        print("Battery level changed: \(Int(UIDevice.current.batteryLevel * 100))")

        self.bridge?.triggerJSEvent(eventName: "batteryChange", target: "window", data: "{ 'dataKey': 'dataValue' }")
        self.notifyListeners("batteryChange", data: ["dataKey": "dataValue" ])
    }
    @objc func batteryStateDidChange(notification: Notification){
        print("Battery state changed: \(UIDevice.current.batteryState)")
        
        self.bridge?.triggerJSEvent(eventName: "batteryChange", target: "window", data: "{ 'dataKey': 'dataValue' }")
        self.notifyListeners("batteryChange", data: ["dataKey": "dataValue" ])
    
    }
  
    @objc func onBatteryChange(_ call: CAPPluginCall) {
        print("onBatteryChange")
        call.keepAlive = true
        UIDevice.current.isBatteryMonitoringEnabled = true
        
        
        NotificationCenter.default.addObserver(self, selector: #selector(batteryLevelDidChange(notification:)), name: UIDevice.batteryLevelDidChangeNotification, object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(batteryStateDidChange(notification:)), name: UIDevice.batteryStateDidChangeNotification, object: nil)

    }


 
   @objc func getBatteryLevel(_ call: CAPPluginCall) {
       call.keepAlive = true
           call.resolve(["batteryLevel In getBatteryLevel":  (UIDevice.current.batteryLevel * 100)])
    
        }


    
 
}
        
    
    
    
        
     
   
   
  

