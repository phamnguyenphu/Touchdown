//
//  ProductGridView.swift
//  Touchdown
//
//  Created by Pham Nguyen Phu on 06/04/2023.
//

import SwiftUI

struct ProductGridView: View {
    // MARK: - PROPERTY

    @EnvironmentObject var shop: Shop

    // MARK: - BODY

    var body: some View {
        LazyVGrid(columns: gridLayout, spacing: 15) {
            ForEach(products) { item in
                ProductItemView(product: item)
                    .onTapGesture {
                        withAnimation(.easeIn) {
                            shop.showingProduct = true
                            shop.selectedProduct = item
                        }
                    }
            } //: LOOP
        } //: LAZYVGRID
        .padding()
    }
}

// MARK: - PREVIEW

struct ProductGridView_Previews: PreviewProvider {
    static var previews: some View {
        ProductGridView()
            .environmentObject(Shop())
    }
}
