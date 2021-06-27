//
//  BooksModel.swift
//  Module 4 Book App X version
//
//  Created by X on 6/26/21.
//

import Foundation

class BooksModel: ObservableObject{
    @Published var books = [Books]()
    init() {
        
        // Create an instance of data service and get the data
        self.books = dataServices.getConnection()
    }
}
