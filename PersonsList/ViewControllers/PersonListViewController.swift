//
//  PersonListViewController.swift
//  PersonsList
//
//  Created by Denis Lachikhin on 04.03.2025.
//

import UIKit

final class PersonListViewController: UITableViewController {
    // MARK: - Private Properties
    private let personsList = Person.setPersons(from: DataStore())
    // MARK: - View Life Cycles
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let personDetailsVC = segue.destination as? PersonDetailsViewController
        
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        personDetailsVC?.person = personsList[indexPath.row]
    }
}

// MARK: - UITableViewDataSource
extension PersonListViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        personsList.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(
            withIdentifier: "personCell",
            for: indexPath
        )
        let person = personsList[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        content.text = person.fullName
        
        cell.contentConfiguration = content
        
        return cell
    }
}

 
