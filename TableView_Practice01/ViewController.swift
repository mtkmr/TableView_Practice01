//
//  ViewController.swift
//  TableView_Practice01
//
//  Created by Masato Takamura on 2021/01/20.
//

import UIKit

struct User {
    let name: String
    let date: String
    let age: Int
}

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    private var users: [User] = [
        User(name: "A", date: "2021/1/1", age: 21),
        User(name: "B", date: "2021/2/1", age: 22),
        User(name: "C", date: "2021/3/1", age: 23),
        User(name: "D", date: "2021/4/1", age: 24),
        User(name: "E", date: "2021/5/1", age: 25),
        User(name: "F", date: "2021/6/1", age: 26),
        User(name: "G", date: "2021/7/1", age: 27),
        User(name: "H", date: "2021/8/1", age: 28),
        User(name: "I", date: "2021/9/1", age: 29),
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
    }


    @IBAction func changeOrder(_ sender: Any) {
        users.reverse()
        tableView.reloadData()
    }
}

//tableViewにデータを流し込む
extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return users.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "UsetTableViewCell", for: indexPath) as! UserTableViewCell
        let user = users[indexPath.row]
        cell.setupCell(name: user.name, date: user.date, age: user.age)
        return cell
    }
}

extension ViewController: UITableViewDelegate {
    
    
    
}

