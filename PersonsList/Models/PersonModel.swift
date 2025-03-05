//
//  PersonModel.swift
//  PersonsList
//
//  Created by Denis Lachikhin on 04.03.2025.
//

struct Person {
    let name: String
    let surname: String
    let phoneNumber: String
    let email: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func setPersons(from data: DataStore) -> [Person] {
        var randomNames = data.names.shuffled()
        var randomSurnames = data.surnames.shuffled()
        var randomPhoneNumbers = data.phoneNumbers.shuffled()
        var randomEmails = data.emails.shuffled()
        var persons: [Person] = []
        
        for _ in 1...data.getSmallestArrayCount() {
            let person = Person(
                name: randomNames.removeLast(),
                surname: randomSurnames.removeLast(),
                phoneNumber: randomPhoneNumbers.removeLast(),
                email: randomEmails.removeLast()
            )
            persons.append(person)
        }
        return persons
    }
}
