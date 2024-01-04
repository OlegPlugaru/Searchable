//
//  PopupMenuView.swift
//  Searchable
//
//  Created by Oleg Plugaru on 04.01.2024.
//

import SwiftUI

struct PopupMenuView: View {
    
    @State var buttonTitle = "Sort"
    
    var body: some View {
        Menu("\(buttonTitle)".uppercased()) {
            Button("Abc", action: { sortAlphabetically() })
            Button("Recent", action: { sortByRecent() })
            Button("Rating", action: { sortByRating() })
        }
        .frame(width: 70, height: 16)
        .padding()
        .foregroundStyle(
            .linearGradient(colors: [.purple, .red], startPoint: .topLeading, endPoint: .bottomTrailing)
        )
        .font(.headline)
        .background(.white)
        .clipShape(RoundedRectangle(cornerRadius: 10))
        .shadow(color: Color.black.opacity(0.3), radius: 4, x: 2, y: 2)
    }
    
    func sortAlphabetically() {
        self.buttonTitle = "Abc"
    }
    
    func sortByRecent() {
        self.buttonTitle = "Recent"
    }
    
    func sortByRating() {
        self.buttonTitle = "Rating"
    }
}

#Preview {
    PopupMenuView()
}
