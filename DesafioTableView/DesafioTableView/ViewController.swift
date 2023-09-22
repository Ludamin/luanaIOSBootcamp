//
//  ViewController.swift
//  DesafioTableView
//
//  Created by Luana Mattana Damin on 21/09/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    
    var list: [Cars] = [Cars(carName: "BMW", imageName: UIImage(named: "bmw") ?? UIImage()), Cars(carName: "Citroen", imageName: UIImage(named: "citroen") ?? UIImage() ), Cars(carName: "Honda", imageName: UIImage(named: "honda") ?? UIImage()), Cars(carName: "Kia", imageName: UIImage(named: "kia") ?? UIImage()), Cars(carName: "Renault", imageName: UIImage(named: "renault") ?? UIImage())]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configTableView()
        
    }
    
    func configTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(CarsTableViewCell.nib(), forCellReuseIdentifier: CarsTableViewCell.identifier)
    }
    
    
}

extension ViewController: UITableViewDelegate {
    
    
}


extension ViewController: UITableViewDataSource {
    
    // Número de linhas por sessão
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    
    // Método responsavel por popular (dar vida) a celula (parte de visualização)
    // Este metodo disparar a quantidade de vezes informado no numberOfRowsInSection. Então se caso informei 10 vezes, o cellForRowAt será
    // disparado 10 vezes, pois ele precisar criar as 10 celulas.
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CarsTableViewCell.identifier, for: indexPath) as? CarsTableViewCell
        cell?.setupCell(cars: list[indexPath.row])
        return cell ?? UITableViewCell()
    }
    
}

