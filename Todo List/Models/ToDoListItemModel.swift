//
//  ToDoListItemModel.swift
//  Todo List
//
//  Created by Roshan Chaudhari on 2023-05-12.
//

import Foundation


struct ToDoListItem : Codable, Identifiable{
    let id: String
    let title : String
    let dueDate : TimeInterval
    let createdDate : TimeInterval
    var isDone : Bool
    
    mutating func setDone(_ state: Bool){
        isDone = state
    }
    
}
