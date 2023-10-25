//
//  LocationDetailView.swift
//  DubDubGrub
//
//  Created by Administrador on 25/10/23.
//

import SwiftUI

struct LocationDetailView: View {
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        Text("Location Detail")
            .navigationTitle("Chipotle")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarBackButtonHidden(true)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("dismiss") {
                        presentationMode.wrappedValue.dismiss()
                    }
                }
            }
    }
}

struct LocationDetailView_Previews: PreviewProvider {
    static var previews: some View {
        LocationDetailView()
    }
}
