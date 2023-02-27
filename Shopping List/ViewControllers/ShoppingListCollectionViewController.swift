//
//  ShoppingListCollectionViewController.swift
//  Shopping List
//
//  Created by Diante Lewis-Jolley on 2/25/23.
//  Copyright © 2023 BloomTech. All rights reserved.
//

import UIKit



class ShoppingListCollectionViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    
    
    
    
    
    @IBOutlet weak var itemCollectionView: UICollectionView!
    
    
    let shoppingListController = ShoppingListContrller()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        itemCollectionView.delegate = self
        itemCollectionView.dataSource = self
         
        
       
     

        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        itemCollectionView.reloadData()
    }

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    
        
        
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return shoppingListController.shoppingItems.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: .itemCellID, for: indexPath) as? ItemCollectionViewCell else { fatalError("Error creating item collection Cell ")}
        cell.item = shoppingListController.shoppingItems[indexPath.row]
        
        
    
        
    
        return cell
    }

    // MARK: UICollectionViewDataSource

  


    

}
