//
//  File.swift
//  Module 4 Book App X version
//
//  Created by X on 6/24/21.
//

import Foundation

class dataServices{
    static func getConnection() -> [Books] {
        
        // Get a url path to the json file
        let pathString = Bundle.main.path(forResource: "Data", ofType: "json")
        
        // Check if pathString is not nil, otherwise...
        guard pathString != nil else {
            return [Books]()
        }
        
        
        // Create a url object
        let url = URL(fileURLWithPath: pathString!)
        
        do {
            // Create a data object
            let data = try Data(contentsOf: url)
            
            // Decode the data with a JSON decoder
            let decoder = JSONDecoder()
            
            do {
                
                let booksData = try decoder.decode([Books].self, from: data)
                
                /*
                // Add the unique IDs
                for r in booksData {
                    r.id = UUID()
                    
                    // Add unique IDs to recipe ingredients
                    for i in r.ingredients {
                        i.id = UUID()
                    }
                }
                */
                // Return the recipes
                return booksData
            }
            catch {
                // error with parsing json
                print(error)
            }
        }
        catch {
            // error with getting data
            print(error)
        }
        
        return [Books]()
    }
}
