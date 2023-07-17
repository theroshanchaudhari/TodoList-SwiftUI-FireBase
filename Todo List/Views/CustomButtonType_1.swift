//
//  ButtonType_1.swift
//  Todo List
//
//  Created by Roshan Chaudhari on 2023-05-24.
//

import SwiftUI

struct CustomButtonType_1: View {
    
    let title : String
    let background : Color
    let width: CGFloat
    let height: CGFloat
    let action : () -> Void
    var body: some View {
        Button{
            action()
        }label: {
            ZStack{
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(background)
                    .frame(width: width, height:height)
                Text(title)
                    .foregroundColor(.white)
                    .fontDesign(.rounded)
                    .font(.system(size: 18))
                    .bold()
                    
            }
           
        }
    }
}

struct ButtonType_1_Previews: PreviewProvider {
    static var previews: some View {
        CustomButtonType_1(title: "Button", background: .red, width: 350, height: 45) {
        //Action
        }
        
    }
}
