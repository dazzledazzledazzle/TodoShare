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
        TodoContent(content: "일벌은 오늘도 ", check: false),
        TodoContent(content: "노예다...", check: false),
        TodoContent(content: "🐝 위~이~~이~~~이~~~~잉", check: true),
    ]
}
