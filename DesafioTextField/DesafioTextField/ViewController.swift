//
//  ViewController.swift
//  DesafioTextField
//
//  Created by Luana Mattana Damin on 05/09/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var yourNameTextField: UITextField!
    
    @IBOutlet weak var yourLastNameTextField: UITextField!
    
    @IBOutlet weak var completeNameButton: UIButton!
    
    @IBOutlet weak var fullNameLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tappedCompleteNameButton(_ sender: UIButton) {
        
        var name = yourNameTextField.text ?? ""
        var lastName = yourLastNameTextField.text ?? ""
        
        fullNameLabel.text = "\(name) \(lastName)"
        
    }
    
}

// Toda nova tela herda de UIViewController
//// UIViewController serve para controlar/observar todo o life cycle da tela.
//
//// Ordem para tela:
//
//// Ligações
//// Variaveis / Constantes
//// Construtores (init)
//// Metodos de live cycle
//// Demais metodos
//
//class ViewController: UIViewController {
//
//    @IBOutlet weak var nameLabel: UILabel!
//
//    @IBOutlet weak var changeButton: UIButton!
//
//    @IBOutlet weak var lastNameLabel: UILabel!
//
//
// // o ciclo de vida 'viewDidLoad' ele é disparado automaticamente quando a nossa tela é carregada já obtendo todas as informações sobre os elementos que o nosso CORPO(arquivo storyboard) contem.
//
//    // Utilizamos o viewDidLoad para fazer oque?
//
//    // Configurações iniciais da sua tela
//    // Configurar elementos (Cor, fonte, texto, alinhamento, etc...)
//    // Realizar chamadas da api iniciais para a tela
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        configElements()
//    }
//
//
//    // Ligações @IBAction sempre são utilizadas depois dos metodos de live cycle que servem para disparar como o proprio nome diz uma action.
//
//    @IBAction func tappedChangeButton(_ sender: UIButton) {
//        nameLabel.text = "Douglas"
//        nameLabel.backgroundColor = .green
//        lastNameLabel.text = "Stefan"
//        lastNameLabel.backgroundColor = .orange
//    }
//
//    func configElements() {
//        nameLabel.text = "Luana"
//        nameLabel.backgroundColor = .clear
//        lastNameLabel.text = "Damin"
//        changeButton.setTitle("Trocar os nomes", for: .normal)
//    }
//
//
//
//
//
//}
//
