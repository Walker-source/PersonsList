//
//  PersonDetailsViewController.swift
//  PersonsList
//
//  Created by Denis Lachikhin on 05.03.2025.
//

import UIKit

final class PersonDetailsViewController: UIViewController {
    // MARK: - Private IB Outlets
    @IBOutlet private var phoneNumberLabel: UILabel!
    @IBOutlet private var emailLabel: UILabel!
    
    // MARK: - Public Properties
    var person: Person!
    
    // MARK: - View Life Cycles
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = person.fullName
        phoneNumberLabel.text = person.phoneNumber
        emailLabel.text = person.email
    }
}
