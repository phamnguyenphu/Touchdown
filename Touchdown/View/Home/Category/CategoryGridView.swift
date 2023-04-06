//
//  CategoryGridView.swift
//  Touchdown
//
//  Created by Pham Nguyen Phu on 06/04/2023.
//

import SwiftUI

struct CategoryGridView: View {
    // MARK: - PROPERTY

    // MARK: - BODY

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: gridLayout, alignment: .center, spacing: columnSpacing, pinnedViews: []) {
                Section {
                    ForEach(categories) { item in
                        CategoryItemView(category: item)
                    } //: LOOP
                } header: {
                    SectionView(rotateClockwise: false)
                } footer: {
                    SectionView(rotateClockwise: true)
                }
            } //: LAZYHGRID
            .frame(height: 140)
            .padding()
        } //: SCROLLVIEW
    }
}

// MARK: - PREVIEW

struct CategoryGridView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryGridView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
