//
//  ProfileView.swift
//  DubDubGrub
//
//  Created by Administrador on 23/10/23.
//

import SwiftUI

struct ProfileView: View {
    @State private var bioText = ""
    @State private var totalBioCharacters = 20
    @Environment(\.colorScheme) var colorScheme

    var body: some View {
        VStack {
            ZStack {
                RoundedRectangle(cornerRadius: 8)
                    .frame(height: 100)
                    .foregroundColor(Color(.secondarySystemBackground))
                HStack {
                    ZStack {
                        Image.defaultAvatar
                            .resizable()
                            .scaledToFit()
                            .clipShape(Circle())
                            .frame(height: 70)
                        Image(systemName: "square.and.pencil")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 14, height: 14)
                            .foregroundColor(.white)
                            .offset(y: 26)
                    }
                    VStack(alignment: .leading) {
                        Text("Sean Allen").font(.largeTitle).bold()
                        Text("YouTuber & Indie Dev")
                    }
                    Spacer()
                }.padding()
            }
            .padding(.bottom, 16)
            HStack {
                Text("Bio: ") +
                Text("\(totalBioCharacters)").foregroundColor(totalBioCharacters >= 0 ? .brandPrimary : .red) +
                Text(" characters remain")
                Spacer()
                Button {
                    
                } label: {
                    Label("Check Out", systemImage: "mappin.and.ellipse")
                        .padding(8)
                        .foregroundColor(.white)
                        .background(Color.pink)
                        .cornerRadius(8)
                        .bold()
                }
            }
            TextEditor(text: $bioText)
                .frame(height: 80)
                .padding(10)
                .background(RoundedRectangle(cornerRadius: 8)
                    .stroke(colorScheme == .dark ? Color.white : Color.black, lineWidth: 2))
                .cornerRadius(8)
                .onChange(of: bioText) { newText in
                    totalBioCharacters -= 1
                }
            
            Spacer()
            Button {
                
            } label: {
                Text("Save Profile")
                    .frame(maxWidth: .infinity)
                    .frame(height: 40)
                    .foregroundColor(.white)
                    .background(Color.brandPrimary)
                    .cornerRadius(8)
                    .bold()
                    .padding(16)
            }
        }.padding()
    }
    
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
