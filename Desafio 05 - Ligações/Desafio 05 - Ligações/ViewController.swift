//
//  ViewController.swift
//  Desafio 05 - Ligações
//
//  Created by Luana Mattana Damin on 10/09/23.

//Crie uma tela de login, fazendo toda parte de constraints. Em seguida,fazer as ligações dos elementos e fazer as configurações de auto layout tudo via código


import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var logoLabel: UILabel!
    
    @IBOutlet weak var usernameLabel: UILabel!
    
    @IBOutlet weak var usernameTextField: UITextField!
    
    @IBOutlet weak var passwordLabel: UILabel!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var forgotPasswordButton: UIButton!
    
    @IBOutlet weak var enterFilledButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configElements()

    }

    func configElements() {
        logoLabel.text = "BackFront"
        logoLabel.backgroundColor = .magenta
        logoLabel.font = .boldSystemFont(ofSize: 32)
        usernameLabel.text = "Usuário:"
        usernameTextField.placeholder = "Digite o username"
        passwordLabel.text = "Senha:"
        passwordTextField.placeholder = "Digite a senha"
        forgotPasswordButton.setTitle("Esqueci a Senha", for: .normal)
        forgotPasswordButton.tintColor = .magenta
        enterFilledButton.setTitle("Enter", for: .normal)
        enterFilledButton.tintColor = .magenta
        
    }
}

