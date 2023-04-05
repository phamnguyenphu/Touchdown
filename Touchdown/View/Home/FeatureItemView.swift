//
//  FeatureItemView.swift
//  Touchdown
//
//  Created by Pham Nguyen Phu on 05/04/2023.
//

import SwiftUI

struct FeatureItemView: View {
    // MARK: - PROPERTY

    let player: Player

    // MARK: - BODY

    var body: some View {
        Image(player.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
            .padding(.horizontal)
    }
}

// MARK: - PREVIEW

struct FeatureItemView_Previews: PreviewProvider {
    static var previews: some View {
        FeatureItemView(player: players[0])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
