//
//  ViewController.swift
//  DesafioIMC
//
//  Created by student on 13/10/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var peso: UITextField!
    @IBOutlet weak var atura: UITextField!
    @IBOutlet weak var resultado: UILabel!
   
 
    

    @IBAction func calculaIMC(_ sender: Any) {
        
        var imc:Float = 0
        
        var peso = Float(peso.text ?? "0") ?? 0
        var altura = (Float(atura.text ?? "0") ?? 0) / 100
        
        imc = peso / (altura * altura)
        
        resultado.text = "IMC : \(round( imc))"
        
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

