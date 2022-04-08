//
//  LoginPresenter.swift
//  Demo app
//
//  Created by Jay Shah on 07/04/22.
//

import Foundation



protocol PresenterView: AnyObject {
  func updateLoginUI()
}
class LoginPresenter{
//  weak var presenterView:PresenterView?
  var email:String?
  var password:String?
//
//  init(view:PresenterView){
//      self.presenterView = view
//  }
    //UserRegister(email: textFieldEmail.text ?? "No Email Found", password: textFieldPassword.text ?? "No Password Found")
    func submitButtonClicked(tempEmail:String,tempPassword:String, completion: PresenterView){
      let user = LoginModelWithApi(email: tempEmail ?? "No Email Found", password: tempPassword ?? "No Password Found")
      guard let url = URL(string: "https://reqres.in/api/login") else {
          print("Error: cannot create URL")
          return
      }
      
      guard let data = try? JSONEncoder().encode(user) else {
          print("Error: Trying to convert model to JSON data")
          return
      }
      var urlRequest = URLRequest(url: url)
      urlRequest.httpMethod = "POST"
      urlRequest.addValue("application/json", forHTTPHeaderField: "Content-Type")
      urlRequest.addValue("application/json", forHTTPHeaderField: "Accept")
      urlRequest.httpBody = data
      let datatask = URLSession.shared.dataTask(with: urlRequest) { data ,urlNewResponse ,error in
          if let error = error {
              print("Error: \(error.localizedDescription)")
          }
          guard let responseData = data else{
              return
          }
          do{
              let json = try JSONSerialization.jsonObject(with: responseData, options: [])
          }catch let error{
              print("Error while Serialization\(error.localizedDescription)")
          }
          do {
              guard let jsonObject = try JSONSerialization.jsonObject(with: responseData) as? [String: Any] else {
                  print("Error: Cannot convert data to JSON object")
                  return
              }
              guard let prettyJsonData = try? JSONSerialization.data(withJSONObject: jsonObject, options: .prettyPrinted) else {
                  print("Error: Cannot convert JSON object to Pretty JSON data")
                  return
              }
              guard let prettyPrintedJson = String(data: prettyJsonData, encoding: .utf8) else {
                  print("Error: Couldn't print JSON in String")
                  return
              }
              
              print(prettyPrintedJson)
          } catch {
              print("Error: Trying to convert JSON data to string")
              return
          }
          if let responseCode = urlNewResponse as? HTTPURLResponse{
              if responseCode.statusCode == 200{
                  completion.updateLoginUI()            }
              
          }
      }
      datatask.resume()
  }
  }

