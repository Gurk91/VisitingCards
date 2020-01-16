//
//  Card.swift
//  VCMate
//
//  Created by Gurkarn Goindi on 9/Jan/20.
//  Copyright © 2020 Gurkarn Goindi. All rights reserved.
//

import Foundation
import UIKit

class Card {
    var frontImage : UIImageView
    var rearImage : UIImageView
    var companyName : String
    var person : String
    
    init(frontImage: UIImageView, rearImage: UIImageView, companyName: String, person: String) {
        self.frontImage = frontImage
        self.rearImage = rearImage
        self.companyName = companyName
        self.person = person
    }
}
