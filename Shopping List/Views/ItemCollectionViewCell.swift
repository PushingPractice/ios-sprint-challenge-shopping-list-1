//
//  ItemCollectionViewCell.swift
//  Shopping List
//
//  Created by Diante Lewis-Jolley on 2/25/23.
//  Copyright © 2023 BloomTech. All rights reserved.
//

import UIKit

class ItemCollectionViewCell: UICollectionViewCell {
    
    
    @IBOutlet weak var itemImageView: UIImageView!
    
    
    @IBOutlet weak var itemLabel: UILabel!
    
    @IBOutlet weak var itemHasBeenAddedButton: UIButton!
    
    var item: ShoppingItem? {
        didSet {
            updateViews()
        }
    }
    
    private func updateViews() {
        
        guard let shoppingItem = item else { return }
        
        itemLabel.text = shoppingItem.name
        itemImageView.image = UIImage(named: shoppingItem.name)
        
        
        
    }
    
}
