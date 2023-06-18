//
//  MainViewViewModel.swift
//  Todo List
//
//  Created by Roshan Chaudhari on 2023-05-12.
//
import FirebaseAuth
import Foundation

class MainViewViewModal : ObservableObject{
    
    @Published var currentUserID : String = ""
    private var handler : AuthStateDidChangeListenerHandle?
    
    init(){
        self.handler = Auth.auth().addStateDidChangeListener{[weak self] _, user in
            DispatchQueue.main.async {
                self?.currentUserID = user?.uid ?? ""
            }
        }
    }
    public var isSignedIn : Bool{
        return Auth.auth().currentUser != nil
    }
}
