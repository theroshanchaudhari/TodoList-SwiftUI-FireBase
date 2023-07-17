//
//  ContentView.swift
//  Todo List
//
//  Created by Roshan Chaudhari on 2023-05-07.
//

import SwiftUI

struct MainView: View {
    @StateObject var viewModal = MainViewViewModal()
    
    var body: some View {
        if viewModal.isSignedIn, !viewModal.currentUserID.isEmpty {
            accountBuilder
        }
        else{
            LoginView()
        }
    }
    @ViewBuilder
    var accountBuilder : some View{
        TabView{
            ToDoListView(userId: viewModal.currentUserID)
                .tabItem{
                    Label("Home", systemImage: "house")
                }
            ProfileView()
                .tabItem{
                    Label("Profile", systemImage: "person.circle")
                }
        }
        
    }
    
    struct MainView_Previews: PreviewProvider {
        static var previews: some View {
            MainView()
        }
      }
}
