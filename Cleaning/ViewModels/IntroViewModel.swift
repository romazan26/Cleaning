//
//  IntroViewModel.swift
//  Tiger2
//
//  Created by Роман on 03.12.2024.
//

struct User: Codable {
    var name: String
    var email: String
    var findAboutAs: String
    var ofner: String
    var time: String
    var budget: String
    var room: Int
    
}

import SwiftUI

final class IntroViewModel: ObservableObject {
    @Published var name: String = ""
    @Published var email: String = ""
    @Published var findAboutAs: String = ""
    @Published var ofner: String = ""
    @Published var time: String = ""
    @Published var budget: String = ""
    @Published var room: String = "0"
    
    @Published  var isPresented = false
    @Published var pageIndex = 0
    
    
    @Published var user: User? {
           didSet {
               saveUser()
           }
       }
    
    @AppStorage("isFirstLaunch") private var isFirstLaunch: Bool?
    
    
    func nextPage() {
        pageIndex += 1
        if pageIndex > 5 {
            isPresented = true
            if isFirstLaunch ?? true{
                isFirstLaunch = false
            }
        }
    }
    
    //MARK: - User Default
       private func saveUser() {
           guard let user = user else { return }
           
           if let encodedUser = try? JSONEncoder().encode(user) {
               UserDefaults.standard.set(encodedUser, forKey: "user")
           }
       }
       
        func loadUser() {
           if let savedUserData = UserDefaults.standard.data(forKey: "user"),
              let decodedUser = try? JSONDecoder().decode(User.self, from: savedUserData) {
               user = decodedUser
               name = user?.name ?? ""
               email = user?.email ?? ""
               findAboutAs = user?.findAboutAs ?? ""
               ofner = user?.ofner ?? ""
               time = user?.time ?? ""
               budget = user?.budget ?? ""
               room = String(user?.room ?? 0)
           }
       }
       
    func updateUser() {
        user = User(name: name, email: email, findAboutAs: findAboutAs, ofner: ofner, time: time, budget: budget, room: Int(room) ?? 0)
    }
}
