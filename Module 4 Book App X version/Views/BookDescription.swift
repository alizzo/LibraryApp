//
//  BookDescription.swift
//  Module 4 Book App X version
//
//  Created by X on 6/27/21.
//
import SwiftUI

struct BookDescription: View {
    //@ObservedObject var model = BooksModel()
    @EnvironmentObject var model:BooksModel
    @State private  var page = 0
    var book: Books
    
    var body: some View {
        TabView(selection: $page){
            ForEach(book.content.indices){ index in
                Text(book.content[index])
                
            }
        }.tabViewStyle(PageTabViewStyle())
    }
}

struct BookDescription_Previews: PreviewProvider {
    static var previews: some View {
        
        //let model = BooksModel()
        BookDescription(book: Books())
            .environmentObject(BooksModel())
    }
}
