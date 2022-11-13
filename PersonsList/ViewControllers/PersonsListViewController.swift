//
//  PersonsListViewController.swift
//  PersonsList
//
//  Created by Иса on 13.11.2022.
//

import UIKit

class PersonsListViewController: UITableViewController {

    var personsList: [Person]!

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        personsList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "personListIdentiferOne", for: indexPath)
        let person = personsList[indexPath.row]
        var content = cell.defaultContentConfiguration()
        
        content.text = "\(person.lastname)"
        cell.contentConfiguration = content
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let person = personsList[indexPath.row]
        performSegue(withIdentifier: "showPersonInfo", sender: person)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let personListVC = segue.destination as? UserInfoViewController else { return }
        personListVC.person = sender as? Person
    }
}
