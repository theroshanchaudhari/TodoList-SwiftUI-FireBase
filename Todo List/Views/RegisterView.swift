//
//  RegisterView.swift
//  Todo List
//
//  Created by Roshan Chaudhari on 2023-05-12.
//

import SwiftUI

struct RegisterView: View {
    
    @StateObject var viewModal = RegisterViewViewModel()

    var body: some View {
        ZStack{
            HeaderView(title: "Register \nAccount", angle1: 45, angle2: 45, color1: Color.green, color2: Color.red, x1: 500, y1:0, x2: 0, y2: 0)
                .offset(y: -5)
            VStack(spacing: 20){
                                
                CustomTextFieldType_1(text: $viewModal.name, width: 350, height: 45, placeHolder: "Name")
                CustomTextFieldType_1(text: $viewModal.email, width: 350, height: 45, placeHolder: "Email")
                CustomSecureField_Type1(text: $viewModal.password, width: 350, height: 45, placeHolder: "Pass***d")
                CustomButtonType_1(title: "Create Account", background: .blue, width: 350, height: 45){
                    viewModal.register()
                }
                .offset(y: 50)
            }
            .frame(width: 350)
            .offset(y: 150)
            Spacer()
        }
    }
}
				
struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
