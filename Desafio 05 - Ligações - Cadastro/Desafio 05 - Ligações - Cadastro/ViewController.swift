//
//  ViewController.swift
//  Desafio 05 - Ligações - Cadastro
//
//  Created by Luana Mattana Damin on 10/09/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var logoLabel: UILabel!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var emailLabel: UILabel!
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordLabel: UILabel!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var registerFilledButton: UIButton!
    
    @IBOutlet weak var malaImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configElements()
    }

func configElements() {
    
logoLabel.text = "BackFront"
logoLabel.backgroundColor = .magenta
logoLabel.font = .boldSystemFont(ofSize: 32)
    
nameLabel.text = "Nome:"
nameTextField.placeholder = "Digite o nome"

emailLabel.text = "E-mail:"
emailTextField.placeholder = "Digite o E-mail"
    
passwordLabel.text = "Senha:"
passwordTextField.placeholder = "Digite a senha"
    
registerFilledButton.setTitle("Cadastrar", for: .normal)
registerFilledButton.tintColor = .magenta

    malaImageView.image = UIImage(systemName: "trash")
    malaImageView.tintColor = .magenta
    
//    malaImageView.image = UIImage(named: "RJ")
}
}
