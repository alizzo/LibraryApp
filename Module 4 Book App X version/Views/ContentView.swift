//
//  ContentView.swift
//  Module 4 Book App X version
//
//  Created by X on 6/24/21.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var model: BooksModel
    
    var body: some View {
        NavigationView {
            GeometryReader { geo in
                VStack(alignment: .center){
                    Text("Library")
                    ScrollView{
                        LazyVStack{
                        ForEach(model.books)  { book in
                            
                            NavigationLink(
                                destination: BookDescription(),
                                label: {
                                    ZStack{
                                        Rectangle()
                                            .foregroundColor(.white)
                                            .cornerRadius(10)
                                            .shadow(color: .gray, radius: 5, x: -5, y: 5)
                                        Text(book.title)
                                     
                                    }
                                }
                                )
                        }
                        }
                    }
                }
            }
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(BooksModel())
    }
}
