//
//  AppTabView.swift
//  DubDubGrub
//
//  Created by Administrador on 23/10/23.
//

import SwiftUI

struct AppTabView: View {
    var body: some View {
        TabView {
            LocationMapView().tabItem {
                Label("Map", systemImage: "map")
            }
            LocationListView().tabItem {
                Label("Locations", systemImage: "building")
            }
            ProfileView().tabItem {
                Label("Profile", systemImage: "person")
            }
        }.tint(Color.brandPrimary)
    }
}

struct AppTabView_Previews: PreviewProvider {
    static var previews: some View {
        AppTabView()
    }
}
