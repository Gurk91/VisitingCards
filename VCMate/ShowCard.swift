//
//  ShowCard.swift
//  VCMate
//
//  Created by Gurkarn Goindi on 16/Jan/20.
//  Copyright © 2020 Gurkarn Goindi. All rights reserved.
//

import UIKit

class ShowCard: UIViewController {

    
    @IBOutlet weak var cardImage: UIImageView!
    @IBOutlet weak var companyName: UILabel!
    @IBOutlet weak var personName: UILabel!
    
    var card: Card?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUI()
    }
    
    func setUI() {
        cardImage.image = card?.frontImage.image
        companyName.text = card?.companyName
        personName.text = card?.person
    }
    

}
