//
//  ContentViewModel.swift
//  BookApp01
//
//  Created by kubota caoru on 2021/09/12.
//

import UIKit
import Combine

class ContentViewModel: NSObject, ObservableObject {
    @Published var books: [Book] = []
    
    func fetch() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) { [weak self] in
            self?.books = [
                Book(id: 0, title: "Swift詳細読本", price: 1000),
                Book(id: 1, title: "Swiftビギナーズ", price: 800)
            ]
        }
    }
}
