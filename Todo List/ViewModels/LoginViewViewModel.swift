//
//  LoginViewViewModel.swift
//  Todo List
//
//  Created by Roshan Chaudhari on 2023-05-12.
//

import FirebaseAuth
import Foundation


class LoginViewViewModel : ObservableObject{
    @Published var email = ""
    @Published var password = ""
    @Published var Message = ""
    
    init(){}
        func login(){
            guard validate() else{
                return
            }
            Auth.auth().signIn(withEmail: email, password: password)
           

        }
        func validate()->Bool{
            guard !email.trimmingCharacters(in: .whitespaces).isEmpty,
                  !password.trimmingCharacters(in: .whitespaces).isEmpty
            else{
                Message = "Please Enter Credentials"
                return false
            }
            
            guard email.contains("@") && email.contains(".") else{
                Message = "Enter Correct Email" 
                return false
            }
            return true
        }
    
    }
    

