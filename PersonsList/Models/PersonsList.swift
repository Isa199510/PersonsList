//
//  PersonsList.swift
//  PersonsList
//
//  Created by Иса on 13.11.2022.

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
    var mails = [
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
        
        dataStore.names.shuffle()
        dataStore.surnames.shuffle()
        dataStore.phones.shuffle()
        dataStore.mails.shuffle()
        
        for item in 0..<dataStore.names.count {
            persons.append(Person(
                name: dataStore.names[item],
                surname: dataStore.surnames[item],
                phone: dataStore.phones[item],
                email: dataStore.mails[item]
                )
            )
        }
        return persons
    }
}


