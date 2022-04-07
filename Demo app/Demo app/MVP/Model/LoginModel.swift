//
//  LoginModel.swift
//  Demo app
//
//  Created by Jay Shah on 07/04/22.
//

import Foundation
class LoginModel{
     var email: String?
     var firstName: String?
     var lastName: String?
     var password: String?
    var gender: String?
      
    init(email: String?, password: String?,firstName: String?,lastName: String?,gender: String?) {
        self.email = email
        self.password = password
        self.firstName = firstName
        self.lastName = lastName
        self.gender = gender
    }
}
