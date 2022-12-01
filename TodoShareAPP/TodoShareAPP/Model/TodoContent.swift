//
//  TodoContent.swift
//  TodoShareAPP
//
//  Created by 시혁 on 2022/12/01.
//

import Foundation
import SwiftUI
struct TodoContent: Identifiable {
    
    let id = UUID()
    let date = Date()
    var content: String
    var check: Bool = false
    
    
}
