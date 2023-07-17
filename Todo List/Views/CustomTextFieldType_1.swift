//
//  CustomTextFieldType_1.swift
//  Todo List
//
//  Created by Roshan Chaudhari on 2023-05-25.
//

import SwiftUI

struct CustomTextFieldType_1: View {
    @Binding var text: String
    let width: CGFloat
    let height: CGFloat
    let placeHolder: String
    
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 10)
                .fill(.gray)
                .opacity(0.2)
            TextField(placeHolder, text: $text)
                .textFieldStyle(PlainTextFieldStyle())
                .font(.system(size: 20))
                .fontDesign(.rounded)
                .frame(width: 325)
            
        }
        .frame(width: width, height: height)
    }
    
    struct CustomTextFieldType_1_Previews: PreviewProvider {
        static var previews: some View {
            @State var email = ""
            CustomTextFieldType_1(text: $email, width: 350, height: 45, placeHolder: "Email")
        }
    }
}
