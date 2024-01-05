//
//  Person.swift
//  Searchable
//
//  Created by Oleg Plugaru on 05.01.2024.
//

import SwiftUI

struct Person: Identifiable {
    var id = UUID()
    var name: String
    var email: String
    var phoneNumber: String
}
