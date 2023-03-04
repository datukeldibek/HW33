//
//  TableViewController.swift
//  HW33
//
//  Created by Jarae on 2/3/23.
//

import UIKit

class TableViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    public var firstName: String?
    public var lastName: String?
    public var organ: String?
    public var email: String?
    public var titleStr: String?
    public var phoneNum: String?
    
    public  var users: [User] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initData()
        
        tableView.dataSource = self
        tableView.delegate = self
        //for обычный tableView
        //tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellID)
        
        //for custom tableView
        tableView.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "cell")
        
    }
    
    private func initData() {

        let that = User(name: firstName!, title: titleStr!)
        users.append(that)
        
        //users.append(User(name: "Bektur", image: "star"))
        //users.append(User(name: name!, image: "star"))
    }
}
extension TableViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        users.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //let cell = UITableViewCell(style: .value1, reuseIdentifier: "cell")
        
        //let cell = tableView.dequeueReusableCell(withIdentifier: cellID
        //cell?.textLabel?.text = "cell: \(indexPath.row)"
        //return cell ?? UITableViewCell()
        
        //custom tableview
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! TableViewCell
        cell.initUI(image: "star", name: users[indexPath.row].name, title: users[indexPath.row].title)
        return cell
    }
}
extension TableViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        90
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let infoVC = InfoViewController()
        infoVC.firstname = firstName!
        infoVC.lastname = lastName!
        infoVC.org = organ!
        infoVC.mail = email!
        infoVC.t = titleStr!
        infoVC.num = phoneNum!
        self.navigationController?.pushViewController(infoVC, animated: true)
    }
    
}
struct User {
    var name: String
    var title: String
}
