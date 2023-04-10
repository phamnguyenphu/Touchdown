//
//  NavigationBarDetailView.swift
//  Touchdown
//
//  Created by Pham Nguyen Phu on 06/04/2023.
//

import SwiftUI

struct NavigationBarDetailView: View {
    // MARK: - PROPERTY

    @EnvironmentObject var shop: Shop

    // MARK: - BODY

    var body: some View {
        HStack {
            Button {
                feedback.impactOccurred()
                withAnimation(.easeIn) {
                    shop.showingProduct = false
                    shop.selectedProduct = nil
                }
            } label: {
                Image(systemName: "chevron.left")
                    .font(.title)
                    .foregroundColor(.white)
            }

            Spacer()

            Button {} label: {
                Image(systemName: "cart")
                    .font(.title)
                    .foregroundColor(.white)
            }
        } //: HSTACK
    }
}

struct NavigationBarDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarDetailView()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()
            .background(.gray)
    }
}
