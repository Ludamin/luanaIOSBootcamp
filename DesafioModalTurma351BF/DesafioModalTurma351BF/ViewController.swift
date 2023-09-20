//
//  ViewController.swift
//  DesafioModalTurma351BF
//
//  Created by Luana Mattana Damin on 19/09/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tappedFullScreenButton(_ sender: UIButton) {
        let tela02 = UIStoryboard(name: "Tela02ViewController", bundle: nil).instantiateViewController(withIdentifier: "Tela02ViewController") as? Tela02ViewController
        tela02?.modalPresentationStyle = .fullScreen
        present(tela02 ?? UIViewController(), animated: true)
        
    }
    
    @IBAction func tappedDefaultButton(_ sender: UIButton) {
        let tela02 = UIStoryboard(name: "Tela02ViewController", bundle: nil).instantiateViewController(withIdentifier: "Tela02ViewController") as? Tela02ViewController
        present(tela02 ?? UIViewController(), animated: true)
        
    }
    
}

