//
//  BatteryPlugin.swift
//  App
//
//  Created by Ivin Antony on 06/03/23.
//
#import <Foundation/Foundation.h>
#import <Capacitor/Capacitor.h>

CAP_PLUGIN(BatteryPlugin, "BatteryPlugin",
//           CAP_PLUGIN_METHOD(onBatteryChange, CAPPluginReturnCallback);
           CAP_PLUGIN_METHOD(getBatteryLevel, CAPPluginReturnPromise);
)
//CAP_PLUGIN(MyPlugin, "MyPlugin",
//           CAP_PLUGIN_METHOD(getBatteryLevel, CAPPluginReturnPromise);
//           CAP_PLUGIN_METHOD(startBatteryMonitoring, CAPPluginReturnCallback);
//           CAP_PLUGIN_METHOD(stopBatteryMonitoring, CAPPluginReturnPromise);
//)

    
    
        
     
   
   
  
