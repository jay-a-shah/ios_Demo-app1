//
//  LoginViewModel.swift
//  Demo app
//
//  Created by Jay Shah on 08/04/22.
//

import Foundation

class LoginViewModel: NSObject{
    
    var onValidationError: ((String)-> Void)?
    var onLoginSuccess: (()->Void)?
    func validateData(email: String,password: String,fname: String, lname: String){
        if email.isEmpty {
            onValidationError?("Email is Empty")
        } else if password.isEmpty {
            onValidationError?("Password is Empty")
        } else if fname.isEmpty {
            onValidationError?("First Name is Empty")
        } else if lname.isEmpty {
            onValidationError?("Last Name is Empty")
        } else {
            performLogin(email: email,password: password,fname: fname, lname: lname)
        }
    }
    func performLogin(email: String,password: String,fname: String, lname: String){
        onLoginSuccess?()
    }
}
