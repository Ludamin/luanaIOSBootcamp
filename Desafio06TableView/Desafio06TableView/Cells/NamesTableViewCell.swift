//
//  NamesTableViewCell.swift
//  Desafio06TableView
//
//  Created by Luana Mattana Damin on 25/09/23.
//

import UIKit

class NamesTableViewCell: UITableViewCell {

    @IBOutlet weak var nameImageView: UIImageView!
    
    @IBOutlet weak var firstNameLabel: UILabel!
    
    @IBOutlet weak var lastNameLabel: UILabel!
    
    static let identifier: String = "NamesTableViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: self.identifier, bundle: nil)
    }

    // Esse é um metodo de ciclo de vida da celula como se fosse o viewDidLoad
    override func awakeFromNib() {
        super.awakeFromNib()
        configElements()
        nameImageView.image = UIImage(named: "luana")
    }
    
    func configElements() {
        firstNameLabel.font = UIFont.systemFont(ofSize: 15, weight: .bold)
        lastNameLabel.font = UIFont.systemFont(ofSize: 15, weight: .bold)
    }
    
    func setupCell(names: Names) {
        firstNameLabel.text = names.firstName
        lastNameLabel.text = names.lastName
        nameImageView.image = names.imageName
    }
}

