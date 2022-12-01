//
//  TextLineView.swift
//  TodoShareAPP
//
//  Created by 시혁 on 2022/12/01.
//

import SwiftUI

struct TextLineView: View {
    @State private var text : String = ""
    
    @Binding var contents: TodoContent
    var body: some View {
        //MARK: VIEW
        ZStack{
            HStack{
                Button(action: {toggleCheckState()}, label: {
                    /// content 에 check 가 true 이면 체크 표시 false 이면 노체크 표시
                    if contents.check == true {
                        ZStack{
                        RoundedRectangle(cornerRadius:8)
                            .fill(Color.white)
                            .frame(width: 31, height: 30)
                            .shadow(color: Color.primary.opacity(0.14), radius: 3, x:2, y:5)
                        Image(systemName: "checkmark")
                            .fontWeight(.bold)
                            .foregroundColor(.orange).opacity(0.7)
                            }
                    }else{
                        RoundedRectangle(cornerRadius:8).fill(Color.white).frame(width: 31, height: 30)
                          .shadow(color: Color.primary.opacity(0.14), radius: 3, x:2, y:5)
                        }
                    }//Label
                ).padding(.leading)
                /// content 에 check 가 true 이면 밑줄라인
                if contents.check == true {
                    TextField("이곳에 할 일을 적어주세요. ", text: $contents.content)
                        .strikethrough()
                        .frame(alignment: .center)
                        .padding(.leading,10)
                }else{
                    TextField("이곳에 할 일을 적어주세요. ", text: $contents.content)
                        .frame(alignment: .center)
                        .padding(.leading,10)
                }

            }            
        }.padding(.top, 20)
            .padding(.leading, 22)
        //ZSTAKC
    }
    func toggleCheckState(){
        contents.check.toggle()
        }
    }

//struct TextLineView_Previews: PreviewProvider {
//    static var previews: some View {
//        TextLineView()
//    }
//}
