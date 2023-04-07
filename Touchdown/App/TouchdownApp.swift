//
//  TouchdownApp.swift
//  Touchdown
//
//  Created by Pham Nguyen Phu on 05/04/2023.
//

import SwiftUI

@main
struct TouchdownApp: App {
    var body: some Scene {
        WindowGroup {
            HomeView()
                .environmentObject(Shop())
        }
    }
}
