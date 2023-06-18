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
                
            }
            .navigationTitle("Profile")
            
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
