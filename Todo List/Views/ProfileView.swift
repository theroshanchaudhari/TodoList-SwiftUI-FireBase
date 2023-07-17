//
//  ProfileView.swift
//  Todo List
//
//  Created by Roshan Chaudhari on 2023-05-12.
//

import SwiftUI

struct ProfileView: View {
    
    @StateObject var viewModel = ProfileViewViewModel()
    var body: some View {
        NavigationView{
            VStack{
                
                if let user = viewModel.user {
                    profile(user: user)
                }
                else {
                    Text("loading user...")
                }
            }
            .navigationTitle("Profile")
            
        }
        .onAppear{
            viewModel.fetchUser()
        }
    }
    
    @ViewBuilder
    func profile(user : User) -> some View{
        Image(systemName: "person.circle")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .foregroundColor(Color.blue)
            .frame(width: 125, height: 125)
        
        // Info: Name, Email, Member Since
        HStack{
            Text("Name : ")
            Text(user.name)
        
            
        }
        HStack{
            Text("Email : ")
            Text(user.email)
        }
        HStack{
            Text("Member Since :")
            Text("\(Date(timeIntervalSince1970: user.joinDate).formatted(date: .abbreviated, time: .shortened))")
        }
        
        //Signout
        CustomButtonType_1(title: "Sign Out", background: .red, width:325 , height: 50, action: {
            viewModel.logout()
        })

    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
