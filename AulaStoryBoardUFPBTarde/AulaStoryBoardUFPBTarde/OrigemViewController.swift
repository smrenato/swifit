//
//  OrigemViewController.swift
//  AulaStoryBoardUFPBTarde
//
//  Created by student on 17/10/22.
//

import UIKit

class OrigemViewController: UIViewController {

    
    
    @IBOutlet weak var corOrigem: UITextField!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "novaCor" {
            if let novaView = segue.destination as? DestinoViewController{
                novaView.corOrigem = corOrigem.text
            }
        }
        
        
        
    }
   
}
