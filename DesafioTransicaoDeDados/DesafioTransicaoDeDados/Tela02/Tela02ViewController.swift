//
//  Tela02ViewController.swift
//  DesafioTransicaoDeDados
//
//  Created by Luana Mattana Damin on 19/09/23.
//

import UIKit

class Tela02ViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var lastNameLabel: UILabel!
    
    var name: String = ""
    var lastName: String = ""
    
    init?(coder: NSCoder, name: String, lastName: String) {
        self.name = name
        self.lastName = lastName
        super.init(coder: coder)
    }
   
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = name
        lastNameLabel.text = lastName
    }

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

