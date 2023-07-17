//
//  ToDoListItemView.swift
//  Todo List
//
//  Created by Roshan Chaudhari on 2023-05-12.
//

import SwiftUI

struct ToDoListItemView: View {
    @StateObject var viewModel = ToDoListItemViewModel()
    let item: ToDoListItem
    var body: some View {
        HStack{
            VStack(alignment: .leading){
                Text(item.title)
                    .font(.system(size: 20))
                Text("\(Date(timeIntervalSince1970 : item.dueDate).formatted(date: .abbreviated, time: .shortened))")
                    .font(.system(size: 15))
                    .foregroundColor(Color(.secondaryLabel))
            }
            Spacer()
            
            Button(action: {
                viewModel.toggleIsDone(item: item)
            }, label: {
                if item.isDone {
                    Image(systemName: "checkmark" )
                        .foregroundColor(.green)
                        .fontWeight(.heavy)
                        .fontDesign(.rounded)
                }
                else{ 
                    Image(systemName: "circle")
                        .foregroundColor(.yellow)
                        .fontWeight(.heavy)
                        .fontDesign(.rounded)
                }
                
            })
        }
    }
}
 
struct ToDoListItemView_Previews: PreviewProvider {
    static var previews: some View {
        ToDoListItemView(item: .init(id: "123", title: "Get Milk", dueDate: Date().timeIntervalSince1970, createdDate: Date().timeIntervalSince1970, isDone: true) )
    }
}
