//
//  LocationActionButton.swift
//  DubDubGrub
//
//  Created by Administrador on 25/10/23.
//

import SwiftUI

struct LocationActionButton: View {
    var backgroundColor: Color
    var imageName: String
    
    var body: some View {
        ZStack {
            Circle()
                .foregroundColor(backgroundColor)
                .frame(width: 50, height: 50)
            Image(systemName: imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 20)
                .foregroundColor(.white)
        }
    }
}

struct LocationActionButton_Previews: PreviewProvider {
    static var previews: some View {
        LocationActionButton(backgroundColor: .brandPrimary, imageName: "location.fill")
    }
}
