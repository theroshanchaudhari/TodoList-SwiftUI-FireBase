//
//  ToDoListViewViewModel.swift
//  Todo List
//
//  Created by Roshan Chaudhari on 2023-05-12.
//
import FirebaseAuth
import Foundation
import FirebaseFirestore
import FirebaseFirestoreSwift
// ViewModel for list of items view
// Primary tab
class ToDoListViewViewModel : ObservableObject{
    @Published var showingNewItemView = false
    
    private let userID: String
    

    
    init(userId: String){
        self.userID = userId
    }
    
    
    func delete(id: String) {
        
        let db = Firestore.firestore()

        db.collection("users")
            .document(userID)
            .collection("todos")
            .document(id)
            .delete { error in
                if let error = error {
                    print("Failed to delete item:", error.localizedDescription)
                } else {
                    print("Item deleted successfully")
                    print("delete function \(id)")
                }
            }
    }

    }
