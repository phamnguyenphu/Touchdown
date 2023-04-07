//
//  AddToCartView.swift
//  Touchdown
//
//  Created by Pham Nguyen Phu on 07/04/2023.
//

import SwiftUI

struct AddToCartView: View {
    // MARK: - PROPERTY
    
    // MARK: - BODY
    
    var body: some View {
        Button {} label: {
            Spacer()
            Text("Add to cart".uppercased())
                .font(.system(.title2, design: .rounded))
                .fontWeight(.bold)
                .foregroundColor(.white)
            Spacer()
        }
        .padding()
        .background(
            Color(red: sampleProduct.red, green: sampleProduct.green, blue: sampleProduct.blue)
        )
        .clipShape(Capsule())
    }
}

struct AddToCartView_Previews: PreviewProvider {
    static var previews: some View {
        AddToCartView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
