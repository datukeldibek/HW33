//
//  InfoViewController.swift
//  HW33
//
//  Created by Jarae on 3/3/23.
//

import UIKit

class InfoViewController: UIViewController {

    @IBOutlet weak var firstName: UILabel!
    @IBOutlet weak var lastName: UILabel!
    @IBOutlet weak var organization: UILabel!
    @IBOutlet weak var email: UILabel!
    @IBOutlet weak var number: UILabel!
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var imageV: UIImageView!
    
    var firstname: String = ""
    var lastname: String = ""
    var org: String = ""
    var mail: String = ""
    var t: String = ""
    var num: String = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        firstName.text = firstname
        lastName.text = lastname
        organization.text = org
        email.text = mail
        titleLbl.text = t
        number.text = num
    }

}
