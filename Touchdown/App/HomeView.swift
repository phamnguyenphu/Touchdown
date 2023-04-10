//
//  ContentView.swift
//  Touchdown
//
//  Created by Pham Nguyen Phu on 05/04/2023.
//

import SwiftUI

struct HomeView: View {
    // MARK: - PROPERTY

    @EnvironmentObject var shop: Shop

    // MARK: - BODY

    var body: some View {
        if shop.showingProduct == false && shop.selectedProduct == nil {
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
        else {
            ProductDetailView()
        }
    }
}

// MARK: - PREVIEW

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environmentObject(Shop())
    }
}
