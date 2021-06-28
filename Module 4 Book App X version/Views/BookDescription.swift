//
//  BookDescription.swift
//  Module 4 Book App X version
//
//  Created by X on 6/27/21.
//
import SwiftUI

struct BookDescription: View {
    //@ObservedObject var model = BooksModel()
    @EnvironmentObject var model2:BooksModel
    
    var body: some View {
        VStack{
            Text(model2.books[0].title)
        }
    }
}
struct BookDescription_Previews: PreviewProvider {
    static var previews: some View {
        BookDescription()
    }
}
