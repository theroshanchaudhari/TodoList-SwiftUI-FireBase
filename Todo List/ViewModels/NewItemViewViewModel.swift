//
//  NewItemViewViewModel.swift
//  Todo List
//
//  Created by Roshan Chaudhari on 2023-05-12.
//

import Foundation
class NewItemViewViewModel : ObservableObject{
    @Published var title = ""
    @Published var dueDate = Date()
    init(){}
    
    func save(){
         
    }
}
