//
//  SpotView.swift
//  DubDubGrub
//
//  Created by Administrador on 25/10/23.
//

import SwiftUI

struct SpotView: View {
    var locationName: String
    var imageName: String?
    
    var body: some View {
        HStack {
            if let image = imageName {
                Image(image).avatarStylesModifier()
            } else {
                Image.darkLogo.avatarStylesModifier()
            }
            
            VStack(alignment: .leading) {
                Text(locationName)
                    .font(.title2)
                    .fontWeight(.semibold)
                    .lineLimit(1)
                    .minimumScaleFactor(0.75)
                HStack {
                    ForEach(0..<5) { indexTwo in
                        AvatarView(size: 35)
                    }
                }
            }
            
        }    }
}

struct SpotView_Previews: PreviewProvider {
    static var previews: some View {
        SpotView(locationName: "Test location")
    }
}
