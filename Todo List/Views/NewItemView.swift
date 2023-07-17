//
//  NewItemView.swift
//  Todo List
//
//  Created by Roshan Chaudhari on 2023-05-12.
//

import SwiftUI

struct NewItemView: View {
    @StateObject var viewModel = NewItemViewViewModel()
    @Binding var showingNewItemView : Bool
    var body: some View {
        VStack{
            Text("New Item")
                .font(.system(.largeTitle) )
                .padding(.top, 40)
            Form{
                // Title
                TextField  ("Title", text: $viewModel.title)
                    .textFieldStyle(DefaultTextFieldStyle())
                
                //Date Picker
                DatePicker("Due Date", selection: $viewModel.dueDate)
                    .datePickerStyle(GraphicalDatePickerStyle())
                
                //Button
                CustomButtonType_1(title: "Save", background: .yellow, width: 325, height: 50, action: {
                    if viewModel.canSave{
                        viewModel.save()
                        showingNewItemView = false
                    }
                    else{
                        viewModel.showingAlert = true
                    }
                 
                } )
                .frame(alignment: .center)
                .padding(3)
            }
            .alert(isPresented: $viewModel.showingAlert, content: {
                Alert(title: Text("Error"), message: Text("Kindly choose today's or future date "))
            })
        }
    }
}

struct NewItemView_Previews: PreviewProvider {
    static var previews: some View {
        NewItemView(showingNewItemView: Binding(get: {
            return true
        }, set: { _ in
             
        }))
    }
}
