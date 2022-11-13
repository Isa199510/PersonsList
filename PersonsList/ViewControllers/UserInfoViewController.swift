//
//  UserInfoViewController.swift
//  PersonsList
//
//  Created by Иса on 13.11.2022.
//

import UIKit

class UserInfoViewController: UIViewController {
    
    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var person: Person!

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = person.lastname
        phoneLabel.text = "Phone: \(person.phone)"
        emailLabel.text = "Email: \(person.email)"
    }
}
