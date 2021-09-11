//
//  ContentView.swift
//  BookApp01
//
//  Created by kubota caoru on 2021/09/12.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel = ContentViewModel()
    
    var body: some View {
        VStack {
            if viewModel.books.isEmpty {
                Text("Now Loading...")
            } else {
                ForEach(viewModel.books) { book in
                    BookView(book: book)
                }
            }
        }.onAppear(perform: {
            viewModel.fetch()
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
