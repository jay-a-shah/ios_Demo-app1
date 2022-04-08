//
//  LoginModelWithApi.swift
//  Demo app
//
//  Created by Jay Shah on 08/04/22.
//

import Foundation
class LoginModelWithApi:Codable{
    public var email:String?
    public var password:String?
      
    init(email:String?, password:String?) {
        self.email = email
        self.password = password
    }
}
