//
//  MainViewModel.swift
//  Tiger2
//
//  Created by Роман on 03.12.2024.
//
import Foundation
import UIKit
import PhotosUI
import CoreData

final class MainViewModel: ObservableObject {
    @Published var simpleOrderType: TypeOrder = .carpet
    @Published var simpleCleaningMaterial: TypeMaterial = .Flock

    @Published var simpleCopyCount: Int = 1
    
    @Published var chooseImages: UIImage = UIImage(resource: .imageSofa1)
    @Published var simpleImages: [UIImage] = []
    
    @Published var isPresentPhotoLibrary: Bool = false
    
    @Published var orders: [Order] = []
    
    let manager = CoreDataManager.instance
    
    var config: PHPickerConfiguration {
        var config = PHPickerConfiguration(photoLibrary: .shared())
        config.filter = .images
        config.selectionLimit = 1
        return config
    }
    
    //MARK: - User propertyes
    @Published var user: User? {
           didSet {
               saveUser()
           }
       }
    @Published var name = ""
    @Published var email = ""
    @Published var findAboutAs: String = ""
    @Published var ofner: String = ""
    @Published var time: String = ""
    @Published var budget: String = ""
    @Published var room: String = "0"
    
      
    init(){
        getOrder()
        loadUser()
    }
    
    
    func addNewPhoto(){
        if chooseImages != UIImage(resource: .imageSofa1) {
            simpleImages.append(chooseImages)
        }
        isPresentPhotoLibrary = true
    }
    
    //MARK: - Core Data function
    
    func deleteOrder(_ order: Order){
        manager.context.delete(order)
        saveOrder()
    }
    
    func addOrder(){
        let order = Order(context: manager.context)
        order.name = String("Order \(orders.count + 1)")
        order.type = simpleOrderType.name
        order.material = simpleCleaningMaterial.rawValue
        order.cleaningItem = Int16(simpleCopyCount)
        order.date = Date()
        saveOrder()
        clearOrder()
    }
    
    func clearOrder(){
        simpleImages.removeAll()
        simpleOrderType = .carpet
        simpleCleaningMaterial = .Flock
        simpleCopyCount = 1
        chooseImages = UIImage(resource: .imageSofa1)
    }
    
    func saveOrder(){
        orders.removeAll()
        manager.save()
        getOrder()
    }
    
    func getOrder(){
        let request = NSFetchRequest<Order>(entityName: "Order")
        do{
            orders = try manager.context.fetch(request)
        }catch let error{
            print("Error fetching orders: \(error)")
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
