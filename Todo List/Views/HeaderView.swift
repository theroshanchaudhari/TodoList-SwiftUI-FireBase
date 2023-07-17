//
//  HeaderView.swift
//  Todo List
//
//  Created by Roshan Chaudhari on 2023-05-13.
//

import SwiftUI

struct HeaderView: View {
    
    let title:String
    let angle1: Double
    let angle2: Double
    let color1: Color
    let color2: Color
    let (x1, y1): (Double,Double)
    let (x2, y2): (Double, Double)
    var body: some View {
        
        ZStack{
            RoundedRectangle(cornerRadius: 0)
                .foregroundColor(color1)
                .rotationEffect(Angle.degrees(angle1))
                .position(x:x1, y:y1)
            RoundedRectangle(cornerRadius: 0)
                .foregroundColor(color2)
                .rotationEffect(Angle.degrees(angle2))
                .position(x:x2, y:y2)
            VStack{
                Text(title)
                    .font(.system(size: 50))
                    .bold()
                    .fontDesign(.rounded)
                    
                    .foregroundColor(Color.black)

            }
           
        }
        .frame(width: UIScreen.main.bounds.width * 3,
                height: 300)
        .offset(y: -330)
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(title: "Title", angle1: 45, angle2: 45, color1: Color.yellow, color2: Color.black, x1: 500, y1: 0, x2: 0, y2: 0)
    }
}
