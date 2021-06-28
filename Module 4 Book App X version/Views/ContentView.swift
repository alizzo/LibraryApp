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
            GeometryReader { geo in
                VStack(alignment: .center){
                    Text("Library")
                    ScrollView{
                        ForEach(0..<model.books.count) { r in
                            
                            NavigationLink(
                                destination: BookDescription(),
                                label: {
                                    ZStack{
                                        //Rectangle()
                                         //   .foregroundColor(.clear)
                                        Image(model.books[r].image)
                                            .resizable()
                                            .aspectRatio(contentMode: .fill)
                                            .clipped()
                                     
                                    //Text(r.title)
                                    }
                                }
                                )
                                    
                        }
                    }
                }
            }
        }.environmentObject(BooksModel())
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
