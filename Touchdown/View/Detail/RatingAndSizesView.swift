//
//  RatingAndSizesView.swift
//  Touchdown
//
//  Created by Pham Nguyen Phu on 07/04/2023.
//

import SwiftUI

struct RatingAndSizesView: View {
    // MARK: - PROPERTY

    // MARK: - BODY

    var body: some View {
        HStack {
            // RATINGS
            VStack(alignment: .leading, spacing: 3) {
                Text("Ratings")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(colorGray)
                HStack(alignment: .center, spacing: 5) {
                    ForEach(1 ... 5, id: \.self) { _ in
                        Button {} label: {
                            Image(systemName: "star.fill")
                                .frame(width: 28, height: 28)
                                .foregroundColor(.white)
                                .background(colorGray)
                                .cornerRadius(5)
                        }
                    }
                }
            } //: VSTACK

            Spacer()

            // SIZES

            VStack(alignment: .trailing, spacing: 3) {
                Text("Sizes")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(colorGray)
                HStack(alignment: .center, spacing: 6) {
                    ForEach(sizes, id: \.self) { item in
                        Button {} label: {
                            Text(item)
                                .font(.footnote)
                                .fontWeight(.heavy)
                                .foregroundColor(colorGray)
                                .frame(width: 28, height: 28, alignment: .center)
                                .background(.white)
                                .cornerRadius(5)
                                .background(
                                    RoundedRectangle(cornerRadius: 5)
                                        .stroke(colorGray, lineWidth: 2)
                                )
                        }
                    }
                }
            } //: VSTACK
        } //: HSTACk
    }
}

struct RatingAndSizesView_Previews: PreviewProvider {
    static var previews: some View {
        RatingAndSizesView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
