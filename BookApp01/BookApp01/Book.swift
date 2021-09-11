//
//  Book.swift
//  BookApp01
//
//  Created by kubota caoru on 2021/09/12.
//

import UIKit

class Book: NSObject, Identifiable {
    let id: Int
    let title: String
    let price: Int
    
    init(id: Int, title: String, price: Int) {
        self.id = id
        self.title = title
        self.price = price
    }
}
