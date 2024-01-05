//
//  PersonViewModel.swift
//  Searchable
//
//  Created by Oleg Plugaru on 05.01.2024.
//

import SwiftUI

class PersonViewModel: ObservableObject {
    @Published var people: [Person] = []
    
    init() {
        addPeople()
    }
    
    func addPeople() {
        people = peopleData
    }
    
    func shuffleOrder() {
        people.shuffle()
    }
    
    func reverseOrder() {
        people.reverse()
    }
    
    func removeFirstPerson() {
        people.removeFirst()
    }
    
    func removeLastPerson() {
        people.removeLast()
    }
}

let peopleData = [
    Person(name: "John Snow", email: "john@email.com", phoneNumber: "5555-555-555"),
    Person(name: "Robert Baratheon", email: "robert@email.com", phoneNumber: "5555-555-555"),
    Person(name: "Cersei Lannistar", email: "cersei@email.com", phoneNumber: "5555-555-555"),
    Person(name: "Daenarys Targaryen", email: "daenarys@email.com", phoneNumber: "5555-555-555"),
    Person(name: "Samwell Tarly", email: "samwell@email.com", phoneNumber: "5555-555-555")
]
