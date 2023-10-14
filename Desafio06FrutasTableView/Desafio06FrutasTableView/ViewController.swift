//
//  ViewController.swift
//  Desafio06FrutasTableView
//
//  Created by Luana Mattana Damin on 26/09/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var fruitsTableView: UITableView!
    
    var list: [Fruits] = [Fruits(fruitName: "Melância", imageFruit: UIImage(named: "melancia") ?? UIImage()), Fruits(fruitName: "Abacaxi", imageFruit: UIImage(named: "abacaxi") ?? UIImage()), Fruits(fruitName: "Uva", imageFruit: UIImage(named: "uva") ?? UIImage()), Fruits(fruitName: "Manga", imageFruit: UIImage(named: "manga") ?? UIImage())]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configTableView()
        
    }
    
    func configTableView() {
        fruitsTableView.delegate = self
        fruitsTableView.dataSource = self
        fruitsTableView.register(FruitsTableViewCell.nib(), forCellReuseIdentifier: FruitsTableViewCell.identifier)
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
        let cell = fruitsTableView.dequeueReusableCell(withIdentifier: FruitsTableViewCell.identifier, for: indexPath) as? FruitsTableViewCell
        cell?.setupCell(fruits: list[indexPath.row])
        return cell ?? UITableViewCell()
    }
    
}


