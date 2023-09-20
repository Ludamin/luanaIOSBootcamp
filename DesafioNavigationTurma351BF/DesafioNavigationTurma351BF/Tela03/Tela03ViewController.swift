//
//  Tela03ViewController.swift
//  DesafioNavigationTurma351BF
//
//  Created by Luana Mattana Damin on 19/09/23.
//

import UIKit

class Tela03ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func tappedBackButton(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
    
    @IBAction func tappedBackRootButton(_ sender: UIButton) {
        navigationController?.popToRootViewController(animated: true)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
