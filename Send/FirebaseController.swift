//
//  FirebaseController.swift
//  Send
//
//  Created by Jordan Nelson on 3/4/16.
//  Copyright © 2016 Jordan Nelson. All rights reserved.
//

import Foundation
import Firebase

class FirebaseController {
    
    static let rootRef = Firebase(url: "sendiosapp.firebaseIO.com")
    static let messageRef = rootRef.childByAppendingPath("Messages")
    static let threadsRef = rootRef.childByAppendingPath("Threads")
    static let usersRef = rootRef.childByAppendingPath("Users")
}
