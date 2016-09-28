//
//  Cart.swift
//  swift-shopping-cart
//
//  Created by James Campagno on 9/26/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

class Cart {
    
    var items = [Item]()
    
    func totalPriceInCents() -> Int {
        var totalCost = 0
        for value in items {
            totalCost += value.priceInCents
        }
        return totalCost
    }
    
    func add(item:Item) {
        items.append(item)
    }

    func remove(item:Item) {
        
        items.remove(at: items.index(of: item)!)
    }

    func items(withName:String) -> [Item] {
        var newArray:[Item] = []
        for i in items {
            if i.name == withName {
                newArray.append(i)
            }
        }
        return newArray
    }
    
    func items(withMinPrice:Int) -> [Item] {
        var newArray:[Item] = []
        for i in items {
            if i.priceInCents >= withMinPrice {
                newArray.append(i)
            }
        }
        return newArray
    }
    
    func items(withMaxPrice:Int) ->[Item] {
        var newArray:[Item] = []
        for i in items {
            if i.priceInCents <= withMaxPrice {
                newArray.append(i)
            }
        }
        return newArray
    }
    

    
}
