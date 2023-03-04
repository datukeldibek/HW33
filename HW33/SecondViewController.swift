//
//  SecondViewController.swift
//  HW33
//
//  Created by Jarae on 2/3/23.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var firstname: UITextField!
    @IBOutlet weak var lastname: UITextField!
    @IBOutlet weak var organization: UITextField!
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var yourtitle: UITextField!
    @IBOutlet weak var phone: UITextField!
    
    @IBOutlet weak var submitBtn: UIButton!
    
    private func setupSubView(){
        submitBtn.layer.cornerRadius = 15
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        setupSubView()
        
    }


    @IBAction func submit(_ sender: Any) {
        let vc = TableViewController()
        vc.firstName = firstname?.text ?? "nil i guess"
        vc.lastName = lastname?.text ?? ""
        vc.organ = organization?.text ?? ""
        vc.email = email?.text ?? ""
        vc.titleStr = yourtitle?.text ?? ""
        vc.phoneNum = phone?.text ?? ""
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
