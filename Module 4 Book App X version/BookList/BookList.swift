//
//  Module_4_Book_App_X_versionApp.swift
//  Module 4 Book App X version
//
//  Created by X on 6/24/21.
//

import SwiftUI

@main
struct BookList: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(BooksModel())
        }
    }
}
