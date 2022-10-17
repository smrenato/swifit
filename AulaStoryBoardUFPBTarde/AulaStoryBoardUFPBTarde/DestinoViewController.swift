//
//  DestinoViewController.swift
//  AulaStoryBoardUFPBTarde
//
//  Created by student on 17/10/22.
//

import UIKit

class DestinoViewController: UIViewController {
    var corOrigem: String?
    
    @IBOutlet weak var corDestinoLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        corDestinoLabel.text = corOrigem
        if corOrigem != nil {
            switch corOrigem!.lowercased() {
            case "azul":
                self.view.backgroundColor = UIColor.blue
            case "rosa":
                self.view.backgroundColor = UIColor.magenta
            case "roxo":
                self.view.backgroundColor = UIColor.purple
                
            default:
                self.view.backgroundColor = UIColor.black
            }
        }
        
        
    }

}
