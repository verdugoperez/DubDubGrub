//
//  OnboardingView.swift
//  DubDubGrub
//
//  Created by Manuel Alejandro Verdugo Pérez on 03/01/24.
//

import SwiftUI

struct OnboardingView: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Button {
                    UserDefaults.standard.setValue(1, forKey: "showOnboarding")
                    presentationMode.wrappedValue.dismiss()
                } label: {
                    LocationActionButton(backgroundColor: .brandPrimary, imageName: "xmark").padding(16)
                }
            }
         
            Image.mapLogo
                .resizable()
                .scaledToFit()
                .frame(height: 120)
                .padding(.bottom, 50)
         
            VStack(alignment: .leading, spacing: 16) {
                OnboardingItemView(title: "Restaurant locations", subTitle: "Find places to dine around the convention center", imageName: "building")
                OnboardingItemView(title: "Check in", subTitle: "Let other iOS devs know where you are", imageName: "checkmark.circle.fill")
                OnboardingItemView(title: "Find friends ", subTitle: "See where other iOS devs are and join the party", imageName: "person.2")
            }
            Spacer()
        }.padding(16).background(
            LinearGradient(gradient: Gradient(colors: [.onboardingPrimary, .onboardingSecondary]), startPoint: .topLeading, endPoint: .bottomTrailing)
        ).onDisappear {
            UserDefaults.standard.setValue(1, forKey: "showOnboarding")
        }
    }
}

#Preview {
    OnboardingView()
}
