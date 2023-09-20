//
//  Tela02ViewController.swift
//  NavegacaoRevisao
//
//  Created by Luana Mattana Damin on 19/09/23.
//

import UIKit

class Tela02ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func tappedBackButton(_ sender: UIButton) {

    //Modal:
    //        dismiss(animated: true)
    
    //Navigation:
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func tappedShowScreen03Button(_ sender: UIButton) {
        let tela03 = UIStoryboard(name: "Tela03ViewController", bundle: nil).instantiateViewController(withIdentifier: "Tela03ViewController") as? Tela03ViewController
        

        //Modal:
        //        tela03?.modalPresentationStyle = .fullScreen
        //        present(tela03 ?? UIViewController(), animated: true)
                
        //Navigation:
                navigationController?.pushViewController(tela03 ?? UIViewController(), animated: true)
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
