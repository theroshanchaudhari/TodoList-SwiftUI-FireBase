//
//  ToDoListView.swift
//  Todo List
//
//  Created by Roshan Chaudhari on 2023-05-12.
//

import SwiftUI

struct ToDoListView: View {
    @StateObject var viewModel = ToDoListViewViewModel()
    private var userID : String
    init(userID : String){
        self.userID = userID
    }
    
    var body: some View {
        NavigationView{
            VStack{
                
            }
            .navigationTitle("Todo List")
            .toolbar{						
                Button{
                    //Action
                    
                } label :{
                    Image(systemName: "plus")
                        .foregroundColor(Color.green)
                }
            }
        }
    }
}

struct ToDoListView_Previews: PreviewProvider {
    static var previews: some View {
        ToDoListView(userID: "")
    }
}
