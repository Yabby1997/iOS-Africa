//
//  CenterModifier.swift
//  Africa
//
//  Created by Seunghun Yang on 2021/03/13.
//

import SwiftUI

struct CenterModifier: ViewModifier {
    func body(content: Content) -> some View {
        HStack {
            Spacer()
            content
            Spacer()
        }
    }
}
