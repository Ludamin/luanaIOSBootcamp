//
//  ViewController.swift
//  NavegacaoRevisao
//
//  Created by Luana Mattana Damin on 18/09/23.
//

import UIKit

class Tela01ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tappedShowScreen02(_ sender: UIButton) {
        let tela02 = UIStoryboard(name: "Tela02ViewController", bundle: nil).instantiateViewController(withIdentifier: "Tela02ViewController") as? Tela02ViewController

//Modal:
//        tela02?.modalPresentationStyle = .fullScreen
//        present(tela02 ?? UIViewController(), animated: true)
        
//Navigation:
        navigationController?.pushViewController(tela02 ?? UIViewController(), animated: true)
    }
    
}

