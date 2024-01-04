//
//  SearchableApp.swift
//  Searchable
//
//  Created by Oleg Plugaru on 04.01.2024.
//

import SwiftUI

@main
struct SearchableApp: App {
    
    @AppStorage("isOnboarding") var isOnboarding = true
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnboardingContainerView()
            } else {
                GlassmorphismView()
            }
        }
    }
}
