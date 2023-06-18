//
//  RegisterViewViewModel.swift
//  Todo List
//
//  Created by Roshan Chaudhari on 2023-05-12.
//

import FirebaseFirestore
import FirebaseAuth
import Foundation


class RegisterViewViewModel : ObservableObject{
    @Published var name =  ""
    @Published var email =  ""
    @Published var password  =  ""
    @Published var message = ""

    init() {
        
    }
    func register(){
        guard validate() else{
            return
        }
        Auth.auth().createUser(withEmail: email, password: password) {[weak self]
            result, error in

            guard let userId = result?.user.uid else{
                return
            }
            self?.insertUserRecord(id: userId)

        }
       
    }
    private func insertUserRecord(id: String){
        let newUser = User(
            id: id,
            name: name,
            email: email,
            joinDate: Date().timeIntervalSince1970   )
        print("user built")
        let db = Firestore.firestore()
        db.collection("users")
            .document(id)
            .setData(newUser.asDictionary() )
    }
    private func validate()->Bool{
        guard !name.trimmingCharacters(in: .whitespaces).isEmpty,
              !email.trimmingCharacters(in: .whitespaces).isEmpty,
              !password.trimmingCharacters(in: .whitespaces).isEmpty else {
            return false
        }
        guard email.contains("@") && email.contains(".")else {
            message = "Enter valid email "
            return false
        }
        guard password.count >=  6 else{
            message = "Enter Password consisting  more than 6 Characters"
            return false
        }
        print("Validated\n")
        return true
    }
}
