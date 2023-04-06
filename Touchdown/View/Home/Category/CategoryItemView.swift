//
//  CategoryItemView.swift
//  Touchdown
//
//  Created by Pham Nguyen Phu on 06/04/2023.
//

import SwiftUI

struct CategoryItemView: View {
    // MARK: - PROPERTY

    let category: Category

    // MARK: - BODY

    var body: some View {
        Button {} label: {
            HStack(spacing: 8) {
                Image(category.image)
                    .renderingMode(.template)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 35, height: 35, alignment: .center)
                    .foregroundColor(.gray)
                Text(category.name.uppercased())
                    .fontWeight(.light)
                    .foregroundColor(.gray)
                Spacer()
            }
            .padding()
            .background(.white)
            .cornerRadius(12)
            .background(
                RoundedRectangle(cornerRadius: 12)
                    .stroke(.gray, lineWidth: 1)
            )
        }
    }
}

// MARK: - PREVIEW

struct CategoryItemView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryItemView(category: categories[0])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
