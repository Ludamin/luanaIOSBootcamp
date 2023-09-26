//
//  ViewController.swift
//  Desafio06TableView
//
//  Created by Luana Mattana Damin on 25/09/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var list: [Names] = [Names(firstName: "Luana", lastName: "Damin", imageName: UIImage(named: "luana") ?? UIImage()), Names(firstName: "Douglas", lastName: "Stefan", imageName: UIImage(named: "douglas") ?? UIImage()), Names(firstName: "Neiva", lastName: "Damin", imageName: UIImage(named: "neiva") ?? UIImage()), Names(firstName: "Roberto", lastName: "Damin", imageName: UIImage(named: "roberto") ?? UIImage()), Names(firstName: "Marcelo", lastName: "Damin", imageName: UIImage(named: "cello") ?? UIImage()), Names(firstName: "Wiliam", lastName: "Damin", imageName: UIImage(named: "didi") ?? UIImage()), Names(firstName: "Miriam", lastName: "Canali", imageName: UIImage(named: "miri") ?? UIImage()), Names(firstName: "Nathália", lastName: "Damin", imageName: UIImage(named: "nathi") ?? UIImage())]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        configViewTable()
        // Do any additional setup after loading the view.
    }

    func configViewTable() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(NamesTableViewCell.nib(), forCellReuseIdentifier: NamesTableViewCell.identifier)
    }
    
}


extension ViewController: UITableViewDelegate {
    
}

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: NamesTableViewCell.identifier, for: indexPath) as? NamesTableViewCell
        cell?.setupCell(names: list[indexPath.row])
        return cell ?? UITableViewCell()
    }
    
}
