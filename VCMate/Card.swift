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
    var companyName : String
    var person : String
    
    init(frontImage: UIImageView, companyName: String, person: String) {
        self.frontImage = frontImage
        self.companyName = companyName
        self.person = person
    }
}
