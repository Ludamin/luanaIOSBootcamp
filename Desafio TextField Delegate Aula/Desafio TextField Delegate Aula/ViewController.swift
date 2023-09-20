//
//  ViewController.swift
//  Desafio TextField Delegate Aula
//
//  Created by Luana Mattana Damin on 12/09/23.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var adressTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var RegisterFilledButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        configElements()
    }
    
    @IBAction func registerTappedFilledButton(_ sender: UIButton) {
    }
    
    func configElements() {
        nameTextField.placeholder = "Digite nome:"
        nameTextField.keyboardType = .emailAddress
        nameTextField.delegate = self
      
        
        adressTextField.placeholder = "Digite seu endereço:"
        adressTextField.delegate = self
    
        passwordTextField.placeholder = "Digite sua senha:"
        passwordTextField.delegate = self
        
        
        RegisterFilledButton.isEnabled = false
    }
    
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        //        textField.layer.borderColor = UIColor.blue.cgColor
        textField.layer.borderWidth = 2
       
        
        if nameTextField.hasText && adressTextField.hasText && passwordTextField.hasText {
            RegisterFilledButton.isEnabled = true
        } else {
            RegisterFilledButton.isEnabled = false
            print("Cadastro realizado com sucesso")
        }
        
        if textField.hasText {
            textField.layer.borderColor = UIColor.lightGray.cgColor
        } else {
            textField.layer.borderColor = UIColor.red.cgColor
        }
        
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print("Cadastro realizado com sucesso", textField.self)
        textField.resignFirstResponder()
        return true
    }
}


