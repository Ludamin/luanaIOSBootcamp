//
//  ViewController.swift
//  DesafioNavigationTurma351BF
//
//  Created by Luana Mattana Damin on 19/09/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tappedShowScreen02Button(_ sender: UIButton) {
        let tela02 = UIStoryboard(name: "Tela02ViewController", bundle: nil).instantiateViewController(withIdentifier: "Tela02ViewController") as? Tela02ViewController
        
        navigationController?.pushViewController(tela02 ?? UIViewController(), animated: true)
    }
    
}

