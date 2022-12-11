//
//  AppDelegate.swift
//  WatckitNotifications Watch App
//
//  Created by Doruk Arslan on 11.12.2022.
//

import Foundation
import WatchKit
import UserNotifications


class AppDelegate: NSObject, WKApplicationDelegate {

    
    func applicationDidFinishLaunching() {
               print("Bitti")
       }

      func applicationDidBecomeActive() {
         print("Did become active ??")
      }

}
extension AppDelegate : UNUserNotificationCenterDelegate{
    
    /** Handle notification when the app is in background */
    func userNotificationCenter(_ center: UNUserNotificationCenter, didReceive response:
    UNNotificationResponse, withCompletionHandler completionHandler: @escaping () -> Void) {
  
        // handle the notification here.
    }
    
    /** Handle notification when the app is in foreground */
    func userNotificationCenter(_ center: UNUserNotificationCenter,
             willPresent notification: UNNotification,
             withCompletionHandler completionHandler:
                @escaping (UNNotificationPresentationOptions) -> Void) {
       
        // handle the notification here..
    }
}
