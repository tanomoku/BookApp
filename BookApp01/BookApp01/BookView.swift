//
//  BookView.swift
//  BookApp01
//
//  Created by kubota caoru on 2021/09/12.
//

import SwiftUI

struct BookView: View {
    let book: Book
    
    var body: some View {
        HStack {
            Text(book.title)
            Spacer()
            Text("\(book.price)")
        }.padding()
    }
}

struct BookView_Previews: PreviewProvider {
    static var previews: some View {
        BookView(book: Book(id: 0, title: "Swift詳細読本", price: 1000))
    }
}
