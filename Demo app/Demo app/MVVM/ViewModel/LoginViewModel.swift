//
//  LoginViewModel.swift
//  Demo app
//
//  Created by Jay Shah on 08/04/22.
//

import Foundation

class LoginViewModel: NSObject{
    
    var onValidationError: ((String)-> Void)?
    func validateData(email: String,password: String,fname: String, lname: String){
        if email.isEmpty{
            onValidationError?("Email is Empty")
        }else if password.isEmpty {
            onValidationError?("Password is Empty")
        }else if fname.isEmpty {
            onValidationError?("First Name")
        }
    }
}
