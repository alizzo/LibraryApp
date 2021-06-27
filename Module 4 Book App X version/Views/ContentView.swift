//
//  ContentView.swift
//  Module 4 Book App X version
//
//  Created by X on 6/24/21.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var model = BooksModel()
    
    var body: some View {
        NavigationView {
            List(model.books) { r in
                Text(r.title)
                
            }
       
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
