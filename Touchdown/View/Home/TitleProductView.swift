//
//  TitleProductView.swift
//  Touchdown
//
//  Created by Pham Nguyen Phu on 06/04/2023.
//

import SwiftUI

struct TitleProductView: View {
    // MARK: - PROPERTY

    let title: String

    // MARK: - BODY

    var body: some View {
        HStack {
            Text(title)
                .font(.largeTitle)
                .fontWeight(.heavy)
            Spacer()
        } //: HSTACK
        .padding(.horizontal)
    }
}

// MARK: - PREVIEW

struct TitleProductView_Previews: PreviewProvider {
    static var previews: some View {
        TitleProductView(title: "Helmets")
    }
}
