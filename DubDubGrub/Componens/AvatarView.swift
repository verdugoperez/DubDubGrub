//
//  AvatarView.swift
//  DubDubGrub
//
//  Created by Administrador on 25/10/23.
//

import SwiftUI

struct AvatarView: View {
    var size: CGFloat
    var body: some View {
        Image.defaultAvatar
            .resizable()
            .scaledToFit()
            .frame(height: size)
            .clipShape(Circle())
    }
}

struct AvatarView_Previews: PreviewProvider {
    static var previews: some View {
        AvatarView(size: 35)
    }
}
