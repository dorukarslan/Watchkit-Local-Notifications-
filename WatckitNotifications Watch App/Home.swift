//
//  Home.swift
//  WatckitNotifications Watch App
//
//  Created by Doruk Arslan on 11.12.2022.
//

import SwiftUI
import UserNotifications

let notiName = "Test notification"
let pub = NotificationCenter.default.publisher(
                   for: Notification.Name(notiName))

struct Home: View {
   
    @State private var toShowAlert : Bool = false
    @State private var alertController: Bool = false

    @State private var navLinkActive = false

    
    var body: some View {
        
            NavigationStack {
                VStack {
                  
                    Button {
                       NotificationHandler.shared.addNotification(
                        id : notiName,
                        title:"Navigation Reached" , subtitle: "Test navigation")
                 } label : {
                     Text("Send Notification")
                 }
                    Spacer()
                    NavigationLink{
                        tempView()
                    }label: {
                        Text("Direct navigation")
                    
                }
                }.onAppear(
                    perform: {NotificationHandler.shared.requestPermission( onDeny: {
                        self.toShowAlert.toggle()
                    })}
                )
                .onReceive(pub){ data in
                     // execute other methods when the
                     // Combine publisher with the specified
                     // name received
                     if let content = (data.object as? UNNotificationContent){
                         print("title:\(content.title), subtitle:\(content.subtitle)")
                        alertController = true
                     }
                }
                .alert(isPresented : $alertController){

                     Alert(title: Text("Local notification test"),
                     message: Text("Working like charm"),
                           primaryButton: .default(Text("Navigate to NewView")) {
                                    navLinkActive = true
                                         
                                       },
                           
                     secondaryButton: .cancel())
            }
                .navigationDestination(isPresented: $navLinkActive) {

                       secondTempView()

                     }
            }
        
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
