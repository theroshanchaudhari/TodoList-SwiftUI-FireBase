//
//  CustomSecureField_Type1.swift
//  Todo List
//
//  Created by Roshan Chaudhari on 2023-05-25.
//

import SwiftUI

struct CustomSecureField_Type1: View {
    @Binding var text: String
    let width: CGFloat
    let height: CGFloat
    let placeHolder: String
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 10)
                .fill(.gray)
                .opacity(0.2)
            SecureField(placeHolder, text: $text)
                .textFieldStyle(PlainTextFieldStyle())
                .font(.system(.title2))
                .fontDesign(.rounded)
                .autocorrectionDisabled(true)
                .autocapitalization(.none)
                .frame(width: 325)
                
                

        }.frame(width: width, height: height)
    }
}

struct CustomSecureField_Type1_Previews: PreviewProvider {
    static var previews: some View {
        @State var password = ""
        CustomSecureField_Type1(text: $password, width: 350, height: 45, placeHolder: "*********")
    }
}
