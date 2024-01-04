//
//  OnboardingItemView.swift
//  DubDubGrub
//
//  Created by Manuel Alejandro Verdugo Pérez on 03/01/24.
//

import SwiftUI

struct OnboardingItemView: View {
    var title: String
    var subTitle: String
    var imageName: String
    
    var body: some View {
        HStack {
            Image(systemName: imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 50, height: 50)
                .padding(.trailing, 16)
                .foregroundColor(.brandPrimary)
             
            VStack(alignment: .leading) {
                Text(title).foregroundColor(.white).padding(.bottom, 2)
                Text(subTitle).foregroundColor(.gray).font(.system(size: 14))
            }
            
        }
    }
}

#Preview {
    OnboardingItemView(title: "Restaurant locations", subTitle: "Find places to dine around the convention center", imageName: "building")
}
