//
//  OrderDetailViewController.swift
//  Shopping List
//
//  Created by Diante Lewis-Jolley on 2/25/23.
//  Copyright © 2023 BloomTech. All rights reserved.
//

import UIKit

class OrderDetailViewController: UIViewController {
    
    
    @IBOutlet weak var orderLabel: UILabel!
    
    @IBOutlet weak var nameTextField: UITextField!
    
    
    @IBOutlet weak var addressTextField: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    
    
    @IBAction func sendOrderButtonHasBeenTapped(_ sender: Any) {
    }
    

}
