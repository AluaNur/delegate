//
//  ViewController.swift
//  delegate
//
//  Created by Alua Nurakhanova on 31.01.2024.
//

import UIKit

class ViewController: UIViewController, SelectCategoryProtocol {
   
    @IBOutlet weak var categoryButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func openModalView(_ sender: Any) {
        let modalView = storyboard?.instantiateViewController(withIdentifier: "ModalViewController") as! ModalViewController
        
        modalView.modalPresentationStyle = .overCurrentContext
        modalView.categoryArray = ["Food", "Clothing", "Electronics", "Other"]
        
        modalView.delegate = self 
        
        present(modalView, animated: true, completion: nil)
    }
    func setCategory(_category: String) {
        categoryButton.setTitle( _category, for: .normal)
    }
    
}

