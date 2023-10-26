//
//  LocationDetailView.swift
//  DubDubGrub
//
//  Created by Administrador on 25/10/23.
//

import SwiftUI

struct LocationDetailView: View {
    @Environment(\.presentationMode) var presentationMode
    private let columns: [GridItem] =  [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]
    
    var body: some View {
        VStack(spacing: 16) {
            Image.bannerLogo
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height: 120)
            HStack {
                Label("123 Main Street", systemImage: "mappin.and.ellipse")
                    .font(.caption)
                    .foregroundColor(.secondary)
                Spacer()
            }.padding(.horizontal)
            Text("This is a test description. This is a test description. This is a test description. This is a test description. This is a test description. This is a test description. This is a test description. This is a test description.")
                .lineLimit(3)
                .minimumScaleFactor(0.75)
                .padding(.horizontal)
            ZStack {
                Capsule()
                    .frame(height: 80)
                    .foregroundColor(Color(.secondarySystemBackground))
                HStack(spacing: 20) {
                    Button {
                        
                    } label: {
                        LocationActionButton(backgroundColor: .brandPrimary, imageName: "location.fill")
                    }
                    Button {
                        
                    } label: {
                        LocationActionButton(backgroundColor: .brandPrimary, imageName: "network")
                    }
                    Button {
                        
                    } label: {
                        LocationActionButton(backgroundColor: .brandPrimary, imageName: "phone.fill")
                    }
                    Button {
                        
                    } label: {
                        LocationActionButton(backgroundColor: .pink, imageName: "person.fill.xmark")
                    }
                }
            }.padding()
            VStack {
                Text("Who's Here?")
                    .bold()
                    .font(.title)
                ScrollView {
                    LazyVGrid(columns: columns) {
                        ForEach(1..<10, id: \.self) { index in
                            VStack {
                                AvatarView(size: 60)
                                Text("Name")
                                    .bold()
                                    .lineLimit(1)
                            }
                        }
                    }
                }
            }
        }
        .navigationTitle("Chipotle")
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarBackButtonHidden(true)
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                Button("dismiss") {
                    presentationMode.wrappedValue.dismiss()
                }.foregroundColor(Color.brandPrimary)
            }
        }
    }
}

struct LocationDetailView_Previews: PreviewProvider {
    static var previews: some View {
        LocationDetailView()
    }
}
