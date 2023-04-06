//
//  ProductDetailView.swift
//  Touchdown
//
//  Created by Pham Nguyen Phu on 06/04/2023.
//

import SwiftUI

struct ProductDetailView: View {
    // MARK: - PROPERTY
    
    // MARK: - BODY
    
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            // NAVIGATION BAR
            NavigationBarDetailView()
                .padding()
            // HEADER
            HeaderDetailView()
                .padding(.horizontal)
            // DETAIL TOP PART
            TopPartDetailView()
                .padding(.horizontal)
                .zIndex(1.0)
            
            // DETAIL BOTTOM PART
            VStack(alignment: .center, spacing: 0) {
                // RATINGS + SIZES
                
                // DESCRIPTION
                ScrollView(.vertical, showsIndicators: false) {
                    Text(sampleProduct.description)
                        .font(.system(.body, design: .rounded))
                        .multilineTextAlignment(.leading)
                        .foregroundColor(.gray)
                        .lineSpacing(2)
                } //: SCROLLVIEW
                
                // QUANTITY + FAVOURITE
                
                // ADD TO CART
                
                Spacer()
            } //: VSTACK
            .frame(maxWidth: .infinity)
            .padding(.horizontal)
            .background(
                Color.white
                    .clipShape(CustomShape())
                    .padding(.top, -105)
            )
        } //: VSTACk
        .background(
            Color(red: sampleProduct.red, green: sampleProduct.green, blue: sampleProduct.blue)
        )
        .zIndex(0.0)
        .ignoresSafeArea(.all, edges: .bottom)
    }
}

// MARK: - PREVIEW

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView()
    }
}
