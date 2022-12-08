//
//  DataController.swift
//  TodoShareAPP
//
//  Created by 시혁 on 2022/12/08.
//
import CoreData
import Foundation

class DataController : ObservableObject{
    /// 장치에 저장되는 영구 데이터 저장소
    let container = NSPersistentContainer(name: "TodoDataModel")
    
    init() {
        container.loadPersistentStores { description, error in
            if let error = error {
                print("Core Data failed to load: \(error.localizedDescription)")
            }
        }
    }
}
