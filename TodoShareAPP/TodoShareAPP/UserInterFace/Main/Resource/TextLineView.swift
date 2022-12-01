//
//  TextLineView.swift
//  TodoShareAPP
//
//  Created by 시혁 on 2022/12/01.
//

import SwiftUI

struct TextLineView: View {
    @State private var text : String = ""
    
    
    var body: some View {
        //MARK: VIEW
        ZStack{
            HStack{
                Button(action: {}, label: {
                    // todoLists[i].checked == true
                    //?
                    ZStack{ // checker
                        RoundedRectangle(cornerRadius:8).fill(Color.white).frame(width: 31, height: 30)
                            .shadow(color: Color.primary.opacity(0.14), radius: 3, x:2, y:5)
                        Image(systemName: "checkmark")
                            .fontWeight(.bold)
                            .foregroundColor(.orange).opacity(0.7)
                            }
                    //:
//                    RoundedRectangle(cornerRadius:8).fill(Color.white).frame(width: 31, height: 30)
//                        .shadow(color: Color.primary.opacity(0.14), radius: 3, x:2, y:5)
//
                        }
                ).padding(.leading)
               
                
                TextField("이곳에 할 일을 적어주세요. ", text: $text)
                    .frame(alignment: .center)
                    .padding(.leading,10)
                
                
            }            
        }.padding(.top, 20)
            .padding(.leading, 22)
        //ZSTAKC
    }
    func toggleCheckState(_ i: Int){
        
    }
}

struct TextLineView_Previews: PreviewProvider {
    static var previews: some View {
        TextLineView()
    }
}
