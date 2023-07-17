//
//  ToDoListItemViewModel.swift
//  Todo List
//
//  Created by Roshan Chaudhari on 2023-05-12.
//
import FirebaseAuth
import FirebaseFirestore
import Foundation
// Todolist each item viewModel
class ToDoListItemViewModel : ObservableObject{
    init(){
        
    }
    
    func toggleIsDone(item: ToDoListItem){
        var itemCopy = item
        itemCopy.setDone(!item.isDone)
        
        guard let uid = Auth.auth().currentUser?.uid else{
            return
        }
        
        let db = Firestore.firestore()
        db.collection("users")
            .document(uid)
            .collection("todos")
            .document(itemCopy.id)
            .setData(itemCopy.asDictionary())
    }
}
