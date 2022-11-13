//
//  PersonsList.swift
//  PersonsList
//
//  Created by Иса on 13.11.2022.
//

import Foundation

struct Person {
    let name: String
    let surname: String
    let phone: String
    let email: String
    var lastname: String {
        "\(name) \(surname)"
    }
}

class DataStore {
    var names = ["Тимур", "Николай", "Александр", "Артем", "Рустам", "Ренат", "Иван"]
    var surnames = ["Иванов", "Соколов", "Морозов", "Егоров", "Кузнецов", "Антонов", "Ермолов"]
    var phones = [
        "8754689841",
        "4798574932",
        "5432464543",
        "4526462424",
        "4526656555",
        "2454545456",
        "4325454547"
    ]
    var emails = [
        "mailOne@mail.ru",
        "mailTwo@mail.ru",
        "mailThree@mail.ru",
        "mailFour@mail.ru",
        "mailFive@mail.ru",
        "fmailSix@list.ru",
        "mailSeven@gmail.com"
    ]
}


extension Person {
    static func getPersonList() -> [Person]{
        var persons = [Person]()
        let dataStore = DataStore()

        for _ in 0..<dataStore.names.count {
            let randomName = dataStore.names.randomElement()
            let randomSurname = dataStore.surnames.randomElement()
            let randomPhone = dataStore.phones.randomElement()
            let randomEmail = dataStore.emails.randomElement()
            
            let indexRemoveName = dataStore.names.firstIndex(of: randomName!)
            let indexRemoveSurname = dataStore.surnames.firstIndex(of: randomSurname!)
            let indexRemovePhone = dataStore.phones.firstIndex(of: randomPhone!)
            let indexRemoveEmail = dataStore.emails.firstIndex(of: randomEmail!)

            let removeName = dataStore.names.remove(at: indexRemoveName!)
            let removeSurname = dataStore.surnames.remove(at: indexRemoveSurname!)
            let removePhone = dataStore.phones.remove(at: indexRemovePhone!)
            let removeEmail = dataStore.emails.remove(at: indexRemoveEmail!)
            
            persons.append(Person(
                name: removeName,
                surname: removeSurname,
                phone: removePhone,
                email: removeEmail
                )
            )
        }
        return persons
    }
}
