//
//  CardList.swift
//  VCMate
//
//  Created by Gurkarn Goindi on 15/Jan/20.
//  Copyright © 2020 Gurkarn Goindi. All rights reserved.
//

import UIKit

class CardList: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    var cards = masterCards

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
    }
}

extension CardList: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cards.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let carrd = cards[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "cardCell") as! CardCell
        
        cell.setCard(card: carrd)
        
        return cell
    }
}
