//
//  CarsTableViewCell.swift
//  DesafioTableView
//
//  Created by Luana Mattana Damin on 21/09/23.
//

import UIKit

class CarsTableViewCell: UITableViewCell {

    @IBOutlet weak var carsImageView: UIImageView!
    
    @IBOutlet weak var carsLabel: UILabel!
    
    
    static let identifier: String = "CarsTableViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: self.identifier, bundle: nil)
    }

    // Esse é um metodo de ciclo de vida da celula como se fosse o viewDidLoad
    override func awakeFromNib() {
        super.awakeFromNib()
        configElements()
        carsImageView.image = UIImage(named: "kia")
    }
    
    func configElements() {
        carsLabel.font = UIFont.systemFont(ofSize: 16, weight: .bold)
    }
    
    func setupCell(cars: Cars) {
        carsLabel.text = cars.carName
        carsImageView.image = cars.imageName
    }
}
