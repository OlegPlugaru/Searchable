//
//  OnboardingContentView.swift
//  Searchable
//
//  Created by Oleg Plugaru on 04.01.2024.
//

import SwiftUI


let features = [
    Feature(title: "Start saving today", subtytle: "Find new ways to save money based on subscripitons, bills, and more.", image: "work"),
    Feature(title: "Automate investing", subtytle: "Open investment aaccounts that work while you sleep", image: "laptop"),
    Feature(title: "Analyze expenses", subtytle: "Use our analytics platform to see where you can save", image: "glasses")
]

struct OnboardingContentView: View {
    @AppStorage("isOnboarding") var isOnboarding: Bool?
    var feature: Feature
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.white, Color.gray.opacity(0.5)]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
            VStack {
                Spacer()
                Image(feature.image)
                    .resizable()
                    .scaledToFit()
                Spacer()
                VStack(spacing: 20) {
                    Text(feature.title)
                        .font(.system(size: 24, weight: .bold))
                    
                    Text(feature.subtytle)
                        .font(.caption)
                }
                .padding()
                Spacer()
                Button {
                    isOnboarding = false
                } label: {
                    Text("Start")
                        .foregroundStyle(Color.black)
                        .padding()
                        .background(
                            Capsule().stroke(Color.black)
                                .frame(width: 100)
                        )
                }
                Spacer()
            }
        }
    }
}

#Preview {
    OnboardingContentView(feature: features[0])
}
