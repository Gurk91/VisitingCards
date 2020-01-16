//
//  CardCell.swift
//  VCMate
//
//  Created by Gurkarn Goindi on 15/Jan/20.
//  Copyright © 2020 Gurkarn Goindi. All rights reserved.
//

import UIKit

class CardCell: UITableViewCell {

    @IBOutlet weak var CardNameLabel: UILabel!
    
    func setCard(card: Card){
        CardNameLabel.text = card.person
    }
    
}
