//
//  DataController.swift
//  TodoShareAPP
//
//  Created by 시혁 on 2022/12/08.
//
import CoreData
import Foundation

class DataController : ObservableObject{
    let container = NSPersistentContainer(name: "TodoData")
    
    init() {
        container.loadPersistentStores { description, error in
            if let error = error {
                print("Core Data failed to load: \(error.localizedDescription)")
            }
        }
    }
}
