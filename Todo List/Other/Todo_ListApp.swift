//
//  Todo_ListApp.swift
//  Todo List
//
//  Created by Roshan Chaudhari on 2023-05-07.
//
import FirebaseCore
import SwiftUI

@main
struct Todo_ListApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
