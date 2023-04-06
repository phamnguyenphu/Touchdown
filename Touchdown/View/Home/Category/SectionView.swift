//
//  SectionView.swift
//  Touchdown
//
//  Created by Pham Nguyen Phu on 06/04/2023.
//

import SwiftUI

struct SectionView: View {
    // MARK: - PROPERTY

    @State var rotateClockwise: Bool

    // MARK: - BODY

    var body: some View {
        VStack(alignment: .center) {
            Spacer()

            Text("Category".uppercased())
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .rotationEffect(.degrees(rotateClockwise ? 90 : -90))

            Spacer()
        } //: VSTACK
        .background(colorGray)
        .cornerRadius(12)
    }
}

// MARK: - PREVIEW

struct SectionView_Previews: PreviewProvider {
    static var previews: some View {
        SectionView(rotateClockwise: false)
            .previewLayout(.fixed(width: 120, height: 240))
            .padding()
            .background(colorBackground)
    }
}
