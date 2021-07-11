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
                    ScrollView{
                        LazyVStack(alignment: .leading, spacing: 30){
                        ForEach(model.books)  { book in
                            
                            NavigationLink(destination: BookDescription(book : book)){
                                    ZStack{
                                        Rectangle()
                                            .foregroundColor(.white)
                                            .cornerRadius(10)
                                            .shadow(color: .gray, radius: 5, x: -5, y: 5)
                                        VStack{
                                            Text(book.title).bold()
                                        
                                        Text(book.author)
                                            .italic()
                                        
                                        Image("cover\(book.id)")
                                            .resizable()
                                            .scaledToFit()
                                            
                                        }.padding().accentColor(.black)
                                     
                                    }  .padding([.leading, .trailing], 20)
                                }
                                
                        }
                        }
                    }.navigationTitle("My Library")
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
