//
//  TextLineVIewModel.swift
//  TodoShareAPP
//
//  Created by 시혁 on 2022/12/01.
//

import Foundation
import Combine
class TextLineViewModel : ObservableObject {
    
    @Published var contents: [TodoContent] = [
        TodoContent(content: "", check: false),
        TodoContent(content: "오오징어?", check: false),
        TodoContent(content: "🪐", check: true),
    ]
}
