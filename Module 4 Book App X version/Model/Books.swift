//
//  Books.swift
//  Module 4 Book App X version
//
//  Created by X on 6/26/21.
//

import Foundation

class Books: Identifiable, Decodable {
    
    //var id:UUID?
    var id = 1
    var title = "Title"
    var author = "Author"
    var content = ["I am a test book."]
    var isFavourite = false
    var rating = 2
    var currentPage = 0
  
  
    
}
