//
//  LoginView.swift
//  Todo List
//
//  Created by Roshan Chaudhari on 2023-05-12.
//

import SwiftUI

struct LoginView: View {
    
    @StateObject var viewModal = LoginViewViewModel()

    var body: some View {
        
        
        NavigationView{
            ZStack{
                //Header
                HeaderView(title: "Todo List", angle1: 45, angle2: 45, color1: .yellow, color2: .black, x1: 500, y1: 0, x2: 0, y2: 0)
                    

                VStack{
                    
                    if !viewModal.Message.isEmpty {
                        Text(viewModal.Message)
                            .foregroundColor(Color.red)
                            .font(.title)
                            .fontDesign(.rounded)
                    }
                    //Login Form
                    VStack(spacing: 20){
                        CustomTextFieldType_1(text: $viewModal.email, width: 350, height: 45, placeHolder: "Email")
                        CustomSecureField_Type1(text: $viewModal.password, width: 350, height: 45, placeHolder: "Pass***d")
                        CustomButtonType_1(title: "Login", background: .blue, width: 350, height: 45, action: {
                            viewModal.login()
                        })
                    }
                    .frame(width: 350, height: 150, alignment: .centerLastTextBaseline)
                   
                    //Creat Account
                    ZStack{
                        
                        HStack(spacing: 80.0){
//                            Button(){
//
//                            }label: {
//                                ZStack{
//                                    RoundedRectangle(cornerRadius: 10)
//                                        .fill(.red)
//                                        .frame(width: 100, height: 50)
//                                    Text("Reset \n Password")
//                                        .foregroundColor(.white)
//                                        .font(.system(size: 15))
//                                }
//                            }
                            CustomButtonType_1(title: "Reset\nPassowrd", background: .black, width: 100, height: 55, action: {
                                //Action
                            })
                            NavigationLink(destination: RegisterView()) {
                                ZStack{
                                    RoundedRectangle(cornerRadius: 10)
                                        .fill(.yellow)
                                        .frame(width: 100, height: 50)

                                    Text("Register \n User")
                                        .foregroundColor(.white)
                                        .bold()
                                        .fontDesign(.rounded)
                                        .font(.system(size: 18))
                                }
//                                CustomButtonType_1(title: "Register", background: .yellow, width: 100, height: 55, action: {
//                                    .RegisterView()
//                                })
                                
                            }
                            
                        }.frame(width: 350)
                        .padding(.top, 50)
                        
                    }.zIndex(-1)
                    
                    
                   Spacer()
                }
                .offset(y: 400)
            }
            
        }
        
        
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
