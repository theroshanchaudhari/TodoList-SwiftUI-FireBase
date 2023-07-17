//
//  NewItemViewViewModel.swift
//  Todo List
//
//  Created by Roshan Chaudhari on 2023-05-12.
//
import FirebaseAuth
import FirebaseFirestore
import Foundation
class NewItemViewViewModel : ObservableObject{
    @Published var title = ""
    @Published var dueDate = Date()
    @Published var showingAlert = false
    
    init(){}
    
    func save(){
        guard canSave else {
            return
        }
        // Get Current UID
        guard let uID = Auth.auth().currentUser?.uid else{
            return
        }
        
        // Create Model
        let newID = UUID().uuidString
        let newItem = ToDoListItem(
            id: newID,
            title: title,
            dueDate: dueDate.timeIntervalSince1970,
            createdDate: Date().timeIntervalSince1970,
            isDone: false)
        
        // Save Model
        let db = Firestore.firestore()
        
        db.collection("users")
            .document(uID)
            .collection("todos")
            .document(newID)
            .setData(newItem.asDictionary()) { error in
                if let error = error {
                    print("Failed to save item:", error.localizedDescription)
                } else {
                    print("Item saved successfully")
                    print("save function \(newID)")
                }
            }
        
         
    }
    var canSave : Bool {
        guard !title.trimmingCharacters(in: .whitespaces).isEmpty else{
            return false
        }
        guard dueDate >= Date().addingTimeInterval(-86400) else{
            return false
        }
        return true
    }
}
