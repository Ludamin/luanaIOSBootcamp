//
//  ViewController.swift
//  TextField2
//
//  Created by Luana Mattana Damin on 12/09/23.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configElements()
    }
    
    
    
    @IBAction func loginButton(_ sender: UIButton) {
    }
    
    func configElements() {
        emailTextField.placeholder = "Digite seu email"
        emailTextField.keyboardType = .emailAddress
        emailTextField.delegate = self
        
        passwordTextField.placeholder = "Digite sua senha"
        passwordTextField.delegate = self
    }
    
    //este metodo é disparado sempre que clica no teclado
    func textFieldDidBeginEditing(_ textField: UITextField) {
        print("textFieldDidBeginEditing")
        textField.layer.borderWidth = 1
        textField.layer.borderColor = UIColor.blue.cgColor
    }
    
    //este metodo é disparado quando o teclado some
    //O DidEnd sempre é utilizado para realizar validações
    //não recomendamos criar validações no shouldReturn
    func textFieldDidEndEditing(_ textField: UITextField) {
        textField.layer.borderWidth = 0
        print("textFieldEndEditing")
    }
    
    //este metodo sempre é disparado quando clicamos no botão retorno
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print("textFieldShouldReturn", textField.self)
        textField.resignFirstResponder()
        return true
    }
    }
