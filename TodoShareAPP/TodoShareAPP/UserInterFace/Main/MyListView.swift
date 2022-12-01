//
//  MyListView.swift
//  TodoShareAPP
//
//  Created by 시혁 on 2022/11/29.
//

    /** 고정된 리스트 를 보여주는 곳
    ScrollView 로 List 만 을 나타낼 것
    Title 은 ScrollView X
    CheckBox 로 체크가 가능한 리스트 ( 체크 를 했을 때 어떻게 자동으로 Data에 반영하지?
            
    **/
import SwiftUI

struct MyListView: View {
    /// 데이터
    
    
   
    
    var body: some View {
        
        NavigationView{
            VStack(alignment: .center){
               HeaderView()
                Spacer()
                ScrollView{
                    Text("asd")
                    Text("asd")
                    Text("asd")
                    Text("asd")
                }
                
            }//title hiden
            
            .navigationBarItems(
                trailing: NavigationLink(
                destination: WriteTodoView(),
                label: {
                Image(systemName: "square.and.pencil")
                    .imageScale(.large)
                    //.font(.system(size: 20))
                    
                    }
                )
            ) // BarItemLine
            .navigationBarItems(trailing: NavigationLink(
                destination: ListContentView(),
                label: {
                    Image(systemName: "checklist")
                        .imageScale(.large)
                       // .font(.system(size: 20))
                        
                    }
                )
            )// BarItemLine
        } //NavigationViewLine
    }
}

struct MyListView_Previews: PreviewProvider {
    static var previews: some View {
        MyListView()
    }
}
