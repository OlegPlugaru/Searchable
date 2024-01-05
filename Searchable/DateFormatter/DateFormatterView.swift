//
//  DateFormatterView.swift
//  Searchable
//
//  Created by Oleg Plugaru on 05.01.2024.
//

import SwiftUI

struct DateFormatterView: View {
    
    @State var dateString = ""
    
    var body: some View {
        VStack {
            Text("Welcome vack!")
                .font(.system(size: 32, weight: .bold, design: .rounded))
            Text("Today is \(dateString)")
        }
        .onAppear {
            dateString = Date.now.formatted(.dateTime.weekday(.wide).month(.wide).day(.twoDigits).year().hour().minute())
        }
    }
}

#Preview {
    DateFormatterView()
}
