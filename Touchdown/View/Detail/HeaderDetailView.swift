//
//  HeaderDetailView.swift
//  Touchdown
//
//  Created by Pham Nguyen Phu on 06/04/2023.
//

import SwiftUI

struct HeaderDetailView: View {
    // MARK: - PROPERTY

    // MARK: - BODY

    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            Text("Protecive Gear")
            Text(sampleProduct.name)
                .font(.largeTitle)
                .fontWeight(.black)
        } //: VSTACK
        .foregroundColor(.white)
        
    }
}

struct HeaderDetailView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(.gray)
    }
}
