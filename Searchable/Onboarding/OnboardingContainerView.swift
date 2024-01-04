//
//  OnboardingView.swift
//  Searchable
//
//  Created by Oleg Plugaru on 04.01.2024.
//

import SwiftUI

struct OnboardingContainerView: View {
    var body: some View {
        TabView {
            ForEach(features)  { feature in
                OnboardingContentView(feature: feature)
            }
        }
        .tabViewStyle(.page)
        .ignoresSafeArea()
    }
}

#Preview {
    OnboardingContainerView()
}
