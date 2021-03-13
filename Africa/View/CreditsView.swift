//
//  CreditsView.swift
//  Africa
//
//  Created by Seunghun Yang on 2021/03/13.
//

import SwiftUI

struct CreditsView: View {
    var body: some View {
        VStack {
            Image("compass")
                .resizable()
                .scaledToFit()
                .frame(width: 128, height: 128)
            
            Text( """
                Copyright © Seunghun Yang
                All right reserved
                Better Apps, Less code
                """)
                .font(.footnote)
                .multilineTextAlignment(.center)
        } //: VSTACK
        .padding()
        .opacity(0.4)
    }
}

struct CreditsView_Previews: PreviewProvider {
    static var previews: some View {
        CreditsView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
