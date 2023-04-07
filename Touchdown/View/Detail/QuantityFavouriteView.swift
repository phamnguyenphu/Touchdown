//
//  QuantityFavouriteView.swift
//  Touchdown
//
//  Created by Pham Nguyen Phu on 07/04/2023.
//

import SwiftUI

struct QuantityFavouriteView: View {
    // MARK: - PROPERTY

    @State private var counter: Int = 0

    // MARK: - BODY

    var body: some View {
        HStack(alignment: .center, spacing: 6) {
            Button {
                if counter > 0 {
                    counter -= 1
                }
            } label: {
                Image(systemName: "minus.circle")
            }

            Text("\(counter)")
                .fontWeight(.semibold)
                .frame(minWidth: 36)

            Button {
                if counter < 100 {
                    counter += 1
                }
            } label: {
                Image(systemName: "plus.circle")
            }

            Spacer()

            Button {} label: {
                Image(systemName: "heart.circle")
                    .foregroundColor(.pink)
            }
        } //: HSTACK
        .font(.system(.title, design: .rounded))
        .foregroundColor(.black)
        .imageScale(.large)
    }
}

struct QuantityFavouriteView_Previews: PreviewProvider {
    static var previews: some View {
        QuantityFavouriteView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
