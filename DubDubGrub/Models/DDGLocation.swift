//
//  DDGLocation.swift
//  DubDubGrub
//
//  Created by Manuel Alejandro Verdugo Pérez on 03/01/24.
//

import Foundation

struct DDGLocation: Codable, Identifiable {
    var id: UUID?
    let name: String
    let description: String
    let street: String
    let latitude: Double
    let longitude: Double
    let website: String
    let phoneNumber: String
    let imageName: String?
}

