//
//  WatckitNotificationsApp.swift
//  WatckitNotifications Watch App
//
//  Created by Doruk Arslan on 11.12.2022.
//

import SwiftUI

@main
struct WatckitNotifications_Watch_AppApp: App {
    @WKApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
 
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
