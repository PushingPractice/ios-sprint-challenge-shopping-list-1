//
//  ShoppingListController.swift
//  Shopping List
//
//  Created by Diante Lewis-Jolley on 2/25/23.
//  Copyright © 2023 BloomTech. All rights reserved.
//

import Foundation

class ShoppingListContrller{
    
    
    init() {
        
        if UserDefaults.standard.bool(forKey: .itemKey) != true {
            createShoppingList()
        } else {
            loadFromPersistentStore()
            
        }
        
    }
    
    let itemNames = ["Apple", "Grapes", "Milk", "Muffin", "Popcorn", "Soda", "Strawberries"]
    
    var shoppingItems: [ShoppingItem] = []
    
    var addedItems: [ShoppingItem] {
        
        return shoppingItems.filter{$0.hasBeenAdded == true}
        
    }
    
    var nonAddedItems: [ShoppingItem] {
        
        return shoppingItems.filter{$0.hasBeenAdded == false}
    }
    
    var shoppingListURL: URL? {
        
        let fileManager = FileManager.default
        guard let documentDirectories = fileManager.urls(for: .documentDirectory, in: .userDomainMask).first else { return nil }

        let finalDestination = documentDirectories.appendingPathComponent("ShoppingList.plist")
        return finalDestination    }
    
    
    func createShoppingList() {
        for item in itemNames {
            shoppingItems.append(ShoppingItem(name: item))
            UserDefaults.standard.set("ItemUserDefault", forKey: .itemKey)
            saveToPersistentStore()
        }
    }
    
    func toggleShoppingItemAdded(for shoppingItem: ShoppingItem) {
        
        guard let index = shoppingItems.firstIndex(of: shoppingItem) else { return }
        
        var updatedShoppingItem = shoppingItems[index]
        
        updatedShoppingItem.hasBeenAdded.toggle()
        
                saveToPersistentStore()
    }
    
    
    
    private func saveToPersistentStore() {
        
        guard let url = shoppingListURL else { return }
        
        do {
            let encoder = PropertyListEncoder()
            let items = try encoder.encode(shoppingItems)
            try items.write(to: url)
            
        } catch {
            
            print("Error saving items \(error)")
        }
    }
    
    private func loadFromPersistentStore() {
        
        guard let shoppingListURL = shoppingListURL else { return }
        
        do {
            
            let itemPlist = try Data(contentsOf: shoppingListURL)
            let decoder = PropertyListDecoder()
            let decodedItens = try decoder.decode([ShoppingItem].self, from: itemPlist)
            self.shoppingItems = decodedItens
            
        } catch {
            print("Error decoding items from plist \(error)")
            
        }
        
    }
    

    
    
    
}
