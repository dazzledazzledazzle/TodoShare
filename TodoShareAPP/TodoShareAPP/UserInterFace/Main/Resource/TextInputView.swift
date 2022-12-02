//
//  TextInputView.swift
//  TodoShareAPP
//
//  Created by 시혁 on 2022/12/02.
//

import SwiftUI

struct TextInputView: View {
    @State private var input : String = ""
    //var todoList = [TodoContent]()
    /// content 배열 을 받아서 추가 하기 위함
    @Binding var contents : [TodoContent]
    
    var body: some View {
        
            HStack(spacing: 5){
                //Image(systemName: "square.and.pencil")
                Text("🔥")
                    .font(.title)
                    
                TextField("이 곳에 할일을 적어주세요.   ", text: $input, onCommit:{
                    appendList()
                }).underline()
                    .font(.headline)
            }.padding(.leading, 60)
            .padding(.trailing, 40)
        
    }
    func appendList(){
        let addList = TodoContent(content: input)
        contents.append(addList)
        input = ""
    }
}

//struct TextInputView_Previews: PreviewProvider {
//    static var previews: some View {
//        TextInputView()
//    }
//}
