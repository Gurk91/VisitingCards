//
//  NewCardViewController.swift
//  VCMate
//
//  Created by Gurkarn Goindi on 16/Jan/20.
//  Copyright © 2020 Gurkarn Goindi. All rights reserved.
//

import UIKit

class NewCardViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate {

    
    @IBOutlet weak var companyName: UITextField!
    @IBOutlet weak var personName: UITextField!
    
    @IBOutlet weak var frontImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func importFront(_ sender: Any) {
        let imageF = UIImagePickerController()
        imageF.delegate = self
        imageF.sourceType = UIImagePickerController.SourceType.photoLibrary //choose Camera if you want user to take picture and import
        imageF.allowsEditing = false
        
        self.present(imageF, animated: true){
            //TBC after it is complete
        }
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let imageF = info[UIImagePickerController.InfoKey.originalImage] as? UIImage
        {
            if frontImage != nil {
                frontImage.image = imageF
                
                
            } else {
                print("no front work")
            }
            
        } else {
            //option error message
        }

        self.dismiss(animated: true, completion: nil)
        
    }
    
    
    @IBAction func createCard(_ sender: Any) {
        print("pressed")
        let name = personName.text!
        let company = companyName.text!
        print(name)
        print(company)
        let front = frontImage
        let newCard = Card(frontImage: front!, companyName: company, person: name)
        masterCards.append(newCard)
        print("completed")
    }
    

}
