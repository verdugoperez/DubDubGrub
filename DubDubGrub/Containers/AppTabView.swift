//
//  AppTabView.swift
//  DubDubGrub
//
//  Created by Administrador on 23/10/23.
//

import SwiftUI

struct AppTabView: View {
    @State private var showOnboarding =  UserDefaults.standard.integer(forKey: "showOnboarding") == 0 ? true : false

    
    var body: some View {
        TabView {
            LocationMapView().tabItem {
                Label("Map", systemImage: "map")
            }.sheet(isPresented: $showOnboarding) {
                OnboardingView()
            }
            NavigationStack {
                LocationListView().navigationTitle("Grub Spots")
            }.tabItem {
                Label("Locations", systemImage: "building")
            }
            NavigationStack {
                ProfileView().navigationTitle("Profile")
            }.tabItem {
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
