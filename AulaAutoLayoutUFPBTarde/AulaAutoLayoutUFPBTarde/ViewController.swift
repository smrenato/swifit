//
//  ViewController.swift
//  AulaAutoLayoutUFPBTarde
//
//  Created by student on 13/10/22.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var dadoOrigemTextField: UITextField!
    
    @IBOutlet weak var dadosDestinoLabel: UILabel!
    
    @IBOutlet weak var dadoImagem: UIImageView!
    
    @IBAction func eviarDado(_ sender: Any) {
        dadosDestinoLabel.text = dadoOrigemTextField.text
        dadoOrigemTextField.text = ""
        dadoImagem.image = UIImage(named: "libra")
        
        
    }
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

