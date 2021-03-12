//
//  AnimalModel.swift
//  Africa
//
//  Created by Seunghun Yang on 2021/03/12.
//

import SwiftUI

struct Animal: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    let description: String
    let link: String
    let image: String
    let gallery: [String]
    let fact: [String]
}
