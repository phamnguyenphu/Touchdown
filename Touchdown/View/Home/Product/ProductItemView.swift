//
//  ProductItemView.swift
//  Touchdown
//
//  Created by Pham Nguyen Phu on 06/04/2023.
//

import SwiftUI

struct ProductItemView: View {
    // MARK: - PROPERTY

    let product: Product

    // MARK: - BODY

    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            ZStack {
                Image(product.image)
                    .resizable()
                    .scaledToFit()
                    .padding(10)
            } //: ZSTACK
            .background(
                Color(red: product.red, green: product.green, blue: product.blue)
            )
            .cornerRadius(12)

            Text(product.name)
                .font(.title3)
                .fontWeight(.black)

            Text(product.formattedPrice)
                .font(.title3)
                .fontWeight(.semibold)
                .foregroundColor(.gray)
        } //: VSTACK
    }
}

// MARK: - PREVIEW

struct ProductItemView_Previews: PreviewProvider {
    static var previews: some View {
        ProductItemView(product: products[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
