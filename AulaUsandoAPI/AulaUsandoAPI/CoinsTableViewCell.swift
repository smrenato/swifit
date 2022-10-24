//
//  CoinsTableViewCell.swift
//  AulaUsandoAPI
//
//  Created by student on 24/10/22.
//

import UIKit

class CoinsTableViewCell: UITableViewCell {

    
    
    @IBOutlet weak var coinsNome: UILabel!
    
    @IBOutlet weak var coinsRank: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
