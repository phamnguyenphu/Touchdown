//
//  BrandGridView.swift
//  Touchdown
//
//  Created by Pham Nguyen Phu on 06/04/2023.
//

import SwiftUI

struct BrandGridView: View {
    // MARK: - PROPERTY

    // MARK: - BODY

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: gridLayout, spacing: columnSpacing) {
                ForEach(brands) { item in
                    BrandItemView(brand: item)
                } //: LOOP
            } //: GRID
            .frame(height: 200)
            .padding()
        } //: SCROLL VIEW
    }
}

// MARK: - PREVIEW

struct BrandGridView_Previews: PreviewProvider {
    static var previews: some View {
        BrandGridView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
