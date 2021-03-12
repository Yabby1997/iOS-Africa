//
//  VideoModel.swift
//  Africa
//
//  Created by Seunghun Yang on 2021/03/12.
//

import Foundation

struct Video: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    
    // Computed Property
    var thumbnail: String {
        return "video-\(id)"
    }
}
