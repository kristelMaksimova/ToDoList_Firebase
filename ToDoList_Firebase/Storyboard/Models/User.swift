//
//  User.swift
//  ToDoList_Firebase
//
//  Created by Kristi on 01.07.2022.
//

import Foundation
import Firebase

struct User {
    
    let uid: String
    let email: String
    
    init (user: User) {
        self.uid = user.uid
        self.email = user.email
    }


}
