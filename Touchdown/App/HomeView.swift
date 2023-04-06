//
//  ContentView.swift
//  Touchdown
//
//  Created by Pham Nguyen Phu on 05/04/2023.
//

import SwiftUI

struct HomeView: View {
    // MARK: - PROPERTY

    // MARK: - BODY

    var body: some View {
        VStack {
            NavigationBarView()
                .background(.white)
                .shadow(color: .black.opacity(0.05), radius: 5, x: 0, y: 5)
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 10) {
                    FeaturedTabView()

                    CategoryGridView()

                    TitleView(title: "Helmets")

                    ProductGridView()

                    TitleView(title: "Brands")

                    BrandGridView()

                    FooterView()
                }
            }
        } //: VSTACK
        .background(colorBackground)
    }
}

// MARK: - PREVIEW

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}