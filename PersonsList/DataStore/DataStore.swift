//
//  DataStore.swift
//  PersonsList
//
//  Created by Denis Lachikhin on 04.03.2025.
//

final class DataStore {
    let names: [String] = [
        "Alice",
        "Mari",
        "Josh",
        "Mark",
        "Marcel",
        "Natali",
        "Elsa",
        "Piter",
        "Aria",
        "Andrew"
    ]
    let surnames: [String] = [
        "Parker",
        "Clark",
        "Smith",
        "Shmidt",
        "Karlo",
        "Jons",
        "Chantladze",
        "Chochua",
        "Dvali",
        "Pit"
    ]
    let phoneNumbers: [String] = [
        "+79063452233",
        "+79025228232",
        "+79068974431",
        "+79058655995",
        "+79069931847",
        "+79033277331",
        "+79069066969",
        "+79024064646",
        "+79053042219",
        "+79893559925"
    ]
    let emails: [String] = [
        "hrust@gmail.com",
        "kiska995@yandex.ru",
        "pussy.cat@icloud.com",
        "fatboy@gmail.com",
        "freshboy.may@gmail.com",
        "killzone45@icloud.com",
        "eatmeout.princes@icloud.com",
        "fatboy.slim@yandex.ru",
        "pretty.dickenson@gmail.com",
        "rushka.mashka@mail.ru"
    ]
    
    func getSmallestArrayCount() -> Int {
        var arrayCounts: [Int] = []
        
        arrayCounts.append(names.count)
        arrayCounts.append(surnames.count)
        arrayCounts.append(phoneNumbers.count)
        arrayCounts.append(emails.count)
        
        arrayCounts.sort(by: <)
        
        return arrayCounts.first ?? 1
    }
}
