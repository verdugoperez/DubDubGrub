//
//  SpotView.swift
//  DubDubGrub
//
//  Created by Administrador on 25/10/23.
//

import SwiftUI

struct SpotView: View {
    var body: some View {
        HStack {
            Image.darkLogo
                .resizable()
                .scaledToFit()
                .frame(height: 80)
                .clipShape(Circle())
                .padding(.trailing, 5)
            VStack(alignment: .leading) {
                Text("Test location name")
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
        SpotView()
    }
}
