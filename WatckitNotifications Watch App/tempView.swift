//
//  tempView.swift
//  WatckitNotifications Watch App
//
//  Created by Doruk Arslan on 11.12.2022.
//

import SwiftUI

struct tempView: View {
    var body: some View {
        NavigationLink {
            secondTempView()
        }
    label: {
        Text("First Temp View")
    }
    }
}

struct tempView_Previews: PreviewProvider {
    static var previews: some View {
        tempView()
    }
}
