//
//  ExploreDilliApp.swift
//  ExploreDilli
//
//  Created by Anish Hazra on 15/02/25.
//

import SwiftUI

@main
struct ExploreDilliApp: App {
    
    @State private var vm = LocationsViewModel()
    
    var body: some Scene {
        WindowGroup {
            LocationsView()
                .environmentObject(vm)
        }
    }
}
