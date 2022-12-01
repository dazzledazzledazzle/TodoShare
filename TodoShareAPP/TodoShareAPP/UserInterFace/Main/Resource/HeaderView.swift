//
//  HeaderView.swift
//  TodoShareAPP
//
//  Created by 시혁 on 2022/12/01.
//

import SwiftUI

struct HeaderView: View {
    var today = Date()
    static let dateFormat: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "YYYY년 M월 d일"
        //formatter.dateStyle = .long
        return formatter
 }()
    var body: some View {
        HStack {
            ZStack{
                RoundedRectangle(cornerRadius: 30).fill(Color.clear).frame(width: 320, height: 40)
                HStack{
                    
                    Text("🔥  \(today, formatter: HeaderView.dateFormat)")
                        .fontWeight(.semibold)
                        .foregroundColor(Color.brown)
                        .font(.largeTitle)
                }
                
            }
            
        }.frame(height: 50)
            .background(Color.primary.colorInvert())
            .cornerRadius(6)
            .shadow(color: Color.primary.opacity(0.14), radius: 2, x:5, y:4)

    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
