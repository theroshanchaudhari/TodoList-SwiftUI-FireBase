//
//  ToDoListView.swift
//  Todo List
//
//  Created by Roshan Chaudhari on 2023-05-12.
//

import SwiftUI
import FirebaseFirestoreSwift

struct ToDoListView: View {
    @StateObject var viewModel : ToDoListViewViewModel
    @FirestoreQuery var items: [ToDoListItem]
    
        init(userId: String){
        self._items = FirestoreQuery(collectionPath: "users/\(userId)/todos")
        
        self._viewModel = StateObject(wrappedValue: ToDoListViewViewModel(userId: userId))
    }
     
    
    var body: some View {
        NavigationView{
            VStack{
                List(items){ item in
                    ToDoListItemView(item: item)
                        .swipeActions{
                            Button("Delete") {
                                print("Delete swipped")
                                    viewModel.delete(id: item.id)
                                
                            }
                            .tint(.red)
                        }
                }
                .listStyle(PlainListStyle())
                
            }
            .navigationTitle("Todo List")
            .toolbar{						
                Button{
                       viewModel.showingNewItemView = true
                    
                } label :{
                    Image(systemName: "plus")
                        .foregroundColor(Color.green)
                        .fontDesign(.rounded)
                        .fontWeight(.heavy)
                        .fontWidth(.expanded)
                }
            }
            .sheet(isPresented: $viewModel.showingNewItemView, content: {
                NewItemView(showingNewItemView: $viewModel.showingNewItemView)
            })
        }
    }
}

struct ToDoListView_Previews: PreviewProvider {
    static var previews: some View {
        ToDoListView(userId:"")
    }
}
 
 
