//
//  DDGProfile.swift
//  DubDubGrub
//
//  Created by Manuel Alejandro Verdugo Pérez on 03/01/24.
//

import Foundation

struct DDGProfile: Codable {
    let firstName: String
    let lastName: String
    let companyName: String
    let bio: String
    let isCheckedIn: Bool
}
