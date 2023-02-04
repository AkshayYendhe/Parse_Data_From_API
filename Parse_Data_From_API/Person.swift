//
//  Person.swift
//  Parse_Data_From_API
//
//  Created by Akshay Yendhe on 04/02/23.
//

import Foundation

struct Person : Decodable {
    
    let firstName : String
    let lastName : String
    let gender : String
    let age : Int
    
    init(firstName: String, lastName: String, gender: String, age: Int) {
        self.firstName = ""
        self.lastName = ""
        self.gender = ""
        self.age = 0
    }
}

