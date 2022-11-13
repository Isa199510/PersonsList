//
//  PersonsListTwoViewController.swift
//  PersonsList
//
//  Created by Иса on 13.11.2022.
//

import UIKit

class PersonsListTwoViewController: UITableViewController {

    var personsList: [Person]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 43.5
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        personsList.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return personsList[section].lastname
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personListIdentiferTwo", for: indexPath)
  
        let textResult = indexPath.row == 0 ? personsList[indexPath.section].phone : personsList[indexPath.section].email
        let imageResult = indexPath.row == 0 ? UIImage(named: "phone") : UIImage(named: "mail")
        var content = cell.defaultContentConfiguration()
        
        content.text = "\(textResult)"
        content.image = imageResult
        cell.contentConfiguration = content
        
        return cell
    }
}
