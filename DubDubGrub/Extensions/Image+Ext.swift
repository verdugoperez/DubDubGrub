//
//  Image+Ext.swift
//  DubDubGrub
//
//  Created by Administrador on 23/10/23.
//

import SwiftUI

extension Image {
    static let mapLogo = Image("ddg-map-logo")
    static let defaultAvatar = Image("default-avatar")
    static let darkLogo = Image("default-square-asset")
    static let bannerLogo = Image("default-banner-asset")
    
    func avatarStylesModifier() -> some View {
        self
            .resizable()
            .scaledToFit()
            .frame(height: 80)
            .clipShape(Circle())
            .padding(.trailing, 5)
    }
}
