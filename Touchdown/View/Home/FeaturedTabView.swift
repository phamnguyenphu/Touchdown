//
//  FeaturedTabView.swift
//  Touchdown
//
//  Created by Pham Nguyen Phu on 05/04/2023.
//

import SwiftUI

struct FeaturedTabView: View {
    var body: some View {
        TabView {
            ForEach(players) { item in
                FeatureItemView(player: item)
            }
        } //: TABVIEW
        .tabViewStyle(.page(indexDisplayMode: .always))
        .frame(height: UIScreen.main.bounds.width / 1.6)
        .shadow(color: .black.opacity(0.2), radius: 5, x: 0, y: 5)
    }
}

struct FeaturedTabView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedTabView()
            .previewLayout(.sizeThatFits)
            .background(colorBackground)
    }
}
