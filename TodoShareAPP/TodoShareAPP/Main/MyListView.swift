//
//  MyListView.swift
//  TodoShareAPP
//
//  Created by 시혁 on 2022/11/29.
//

import SwiftUI

struct MyListView: View {
    var body: some View {
        NavigationView{
            VStack{
                Text("List 가 들어 와 야 합니다")
            }
            .navigationBarTitle("Main List 표현 부분 ", displayMode: .inline)
            //.navigationBarItems(leading: <#T##View#>, trailing: <#T##View#>)
        }
    }
}

struct MyListView_Previews: PreviewProvider {
    static var previews: some View {
        MyListView()
    }
}
