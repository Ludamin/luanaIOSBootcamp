//
//  FruitsTableViewCell.swift
//  Desafio06FrutasTableView
//
//  Created by Luana Mattana Damin on 26/09/23.
//

import UIKit

class FruitsTableViewCell: UITableViewCell {

    @IBOutlet weak var FruitsTableViewCell: UIView!
    
    @IBOutlet weak var fruitLabel: UILabel!
    
    @IBOutlet weak var fruitImage: UIImageView!
    
    static let identifier: String = "FruitsTableViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: self.identifier, bundle: nil)
    }

    // Esse é um metodo de ciclo de vida da celula como se fosse o viewDidLoad
    override func awakeFromNib() {
        super.awakeFromNib()
        configElements()
        fruitImage.image = UIImage(named: "uva")
    }
    
    func configElements() {
        fruitLabel.font = UIFont.systemFont(ofSize: 18, weight: .bold)
    }
    
    func setupCell(fruits: Fruits) {
        fruitLabel.text = fruits.fruitName
        fruitImage.image = fruits.imageFruit
    }
}
