//
//  ViewController.swift
//  Ligações - revisão aula
//
//  Created by Luana Mattana Damin on 10/09/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var lastNameLabel: UILabel!
    
    @IBOutlet weak var changeButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        configElements()
    }

    @IBAction func tappedChangeButton(_ sender: UIButton) {
        nameLabel.text = "Douglas"
        nameLabel.backgroundColor = .yellow
        lastNameLabel.text = "Stefan"
        lastNameLabel.backgroundColor = .orange
    }
    
    func configElements() {
        nameLabel.text = "Luana"
        lastNameLabel.text = "Damin"
        changeButton.setTitle("Trocar nomes", for: .normal)
    }
    
}

