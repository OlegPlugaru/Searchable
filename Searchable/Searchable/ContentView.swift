//
//  ContentView.swift
//  Searchable
//
//  Created by Oleg Plugaru on 04.01.2024.
//

import SwiftUI

struct ContentView: View {
    @State var searchingFor = ""
    let cities = ["Columbus", "Cleveland", "Cindy", "Bellaire", "Athens"]
    var body: some View {
        NavigationView {
            List {
                ForEach(results, id: \.self) { city in
                    NavigationLink(destination: Text(city)) {
                        Text(city)
                    }
                }
            }
            .searchable(text: $searchingFor)
            .navigationTitle("Ohio Cities")
        }
    }
    
    var results: [String] {
        if searchingFor.isEmpty {
            return cities
        } else {
            return cities.filter { $0.contains(searchingFor) }
        }
    }
}

#Preview {
    ContentView()
}
