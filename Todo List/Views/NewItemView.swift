//
//  NewItemView.swift
//  Todo List
//
//  Created by Roshan Chaudhari on 2023-05-12.
//

import SwiftUI

struct NewItemView: View {
    @StateObject var viewModel = NewItemViewViewModel()
    var body: some View {
        VStack{
            Text("New Item")
                .font(.custom("Applespice", size: 20)  )
            Form{
                // Title
                TextField  ("Title", text: $viewModel.title)
                    .textFieldStyle(DefaultTextFieldStyle())
                
                //Date Picker
                DatePicker("Due Date", selection: $viewModel.dueDate)
                    .datePickerStyle(GraphicalDatePickerStyle())
                
                //Button
                CustomButtonType_1(title: "Save", background: .yellow, width: 325, height: 50, action: {
                   //Action
                } )
                .frame(alignment: .center)
            }
        }
    }
}

struct NewItemView_Previews: PreviewProvider {
    static var previews: some View {
        NewItemView()
    }
}
