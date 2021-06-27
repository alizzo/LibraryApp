//
//  Books.swift
//  Module 4 Book App X version
//
//  Created by X on 6/26/21.
//

import Foundation

class Books: Identifiable, Decodable {
    
    //var id:UUID?
    var title:String
    var author: String
    var isFavourite: Bool
    var currentPage: Int
    var id : Int
    var content: [String]
    
}
