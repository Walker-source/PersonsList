//
//  PersonListViewController.swift
//  PersonsList
//
//  Created by Denis Lachikhin on 04.03.2025.
//

import UIKit

final class PersonListViewController: UITableViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }

}

extension PersonListViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        5
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(
            withIdentifier: "personCell",
            for: indexPath
        )
        cell.textLabel?.text = "Cell"
        return cell
    }
}
