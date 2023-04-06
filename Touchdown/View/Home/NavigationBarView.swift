//
//  NavigationBarView.swift
//  Touchdown
//
//  Created by Pham Nguyen Phu on 05/04/2023.
//

import SwiftUI

struct NavigationBarView: View {
    // MARK: - PROPERTY

    @State private var isAnimating: Bool = false

    // MARK: - BODY

    var body: some View {
        HStack {
            Button {
                print("search")
            } label: {
                Image(systemName: "magnifyingglass")
                    .font(.title)
                    .foregroundColor(.black)
            }

            Spacer()

            LogoView()
                .opacity(isAnimating ? 1 : 0)
                .offset(y: isAnimating ? 0 : -25)
                .onAppear {
                    withAnimation(.easeOut(duration: 0.75)) {
                        isAnimating = true
                    }
                }

            Spacer()

            Button {
                print("cart")
            } label: {
                ZStack {
                    Image(systemName: "cart")
                        .font(.title)
                        .foregroundColor(.black)
                    Circle()
                        .fill(.red)
                        .frame(width: 14, height: 14, alignment: .center)
                        .offset(x: 13, y: -10)
                }
            }
        } //: HSTACK
        .padding()
    }
}

// MARK: - PREVIEW

struct NavigationBarView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
