//
//  LocationListView.swift
//  DubDubGrub
//
//  Created by Administrador on 23/10/23.
//

import SwiftUI

struct LocationListView: View {
    var body: some View {
        NavigationStack {
            List(0..<21, rowContent: { index in
                NavigationLink {
                    Text("Location detail \(index)")
                } label: {
                SpotView()
                }.listRowSeparator(.hidden)
                .listRowInsets(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 16))
                Divider()
            }).listStyle(.plain).navigationTitle("Grub Spots")
        }
    }
}

struct LocationListView_Previews: PreviewProvider {
    static var previews: some View {
        LocationListView()
    }
}
