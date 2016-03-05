//
//  User.swift
//  Send
//
//  Created by Jordan Nelson on 3/4/16.
//  Copyright © 2016 Jordan Nelson. All rights reserved.
//

import Foundation
import Firebase

class User {
    
    private let kEmail = "Email"
    private let kName = "Name"
    
    let uID: String
    let email: String
    let fullName: String
    
    init(email:String, fullName:String, uID: String) {
        self.uID = uID
        self.email = email
        self.fullName = fullName
    }
    
    init?(snapshot:FDataSnapshot) {
        guard let email = snapshot.value[kEmail] as? String,
            let name = snapshot.value[kName] as? String else {
                self.email = ""
                self.fullName = ""
                self.uID = ""
                return
        }
        self.uID = snapshot.key
        self.fullName = name
        self.email = email
    }
}

extension User: Equatable {}

func == (lhs: User, rhs: User) -> Bool {
    return lhs.uID == rhs.uID
}