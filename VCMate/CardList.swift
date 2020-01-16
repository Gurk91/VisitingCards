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
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "MasterToDetail"{
            let destination = segue.destination as! ShowCard
            destination.card = sender as? Card
        }
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
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let card = cards[indexPath.row]
        performSegue(withIdentifier: "MasterToDetail", sender: card)
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            print("Deleted")
            
            self.cards.remove(at: indexPath.row)
            print("removed from cards")
            masterCards.remove(at: indexPath.row)
            print("removed from master")
            self.tableView.deleteRows(at: [indexPath], with: .automatic)
            print("del complete")
        }
    }
}
