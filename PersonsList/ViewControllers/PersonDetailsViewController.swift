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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
