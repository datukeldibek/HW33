//
//  ViewController.swift
//  HW33
//
//  Created by Jarae on 28/2/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var subView: UIView!
    @IBOutlet weak var signinBtn: UIButton!
    @IBOutlet weak var forgotpasswordBtn: UIButton!
    
    
    //activityIndicator.startAnimating()
    
    private func setupSubView(){
        subView.layer.cornerRadius = 15
        signinBtn.layer.cornerRadius = 15
        forgotpasswordBtn.layer.cornerRadius = 15
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        setupSubView()
    }

    @IBAction func signIn(_ sender: Any) {
        let vc = SecondViewController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
}

