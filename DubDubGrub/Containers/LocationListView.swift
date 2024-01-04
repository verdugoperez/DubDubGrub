//
//  LocationListView.swift
//  DubDubGrub
//
//  Created by Administrador on 23/10/23.
//

import SwiftUI

struct LocationListView: View {
    @State private var showingSheet = false
    @StateObject var viewModel = LocationListViewModel()

    var body: some View {
        ZStack {
            if viewModel.isLoading {
                LoadingView()
            }
            
            List(viewModel.locations, rowContent: { location in
                    NavigationLink {
                        LocationDetailView(street: location.street, description: location.description, bannerImageName: "\(location.imageName ?? "")-banner", websiteURL: location.website, name: location.name)
                    } label: {
                        SpotView(locationName: location.name, imageName: "\(location.imageName ?? "")-square")
                    }.listRowSeparator(.hidden)
                    .listRowInsets(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 16))
                    Divider()
                }).onAppear(perform: {
                    Task {
                        await viewModel.getAppetizers()
                    }
                }).listStyle(.plain)
        }
    }
}

struct LocationListView_Previews: PreviewProvider {
    static var previews: some View {
        LocationListView()
    }
}
