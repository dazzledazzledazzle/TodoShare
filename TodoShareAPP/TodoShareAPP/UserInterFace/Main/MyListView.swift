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
    
    @ObservedObject var textLineViewModel = TextLineViewModel()
   
    
    var body: some View {
        
        NavigationView{
            VStack(alignment: .center){
                /// 상단 날짜 표시
               HeaderView()
                Spacer()
                TextInputView(contents: $textLineViewModel.contents)
                ScrollView{
                    /// 입력란
                    LazyVStack{
                        ForEach(0..<textLineViewModel.contents.count, id: \.self){i in
                            TextLineView(contents: $textLineViewModel.contents[i])
                        }

                    }
                    
                }
                
            }//title hiden
            /// Bar Item
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

        } //NavigationViewLine
        //.onAppear()
    }
}

struct MyListView_Previews: PreviewProvider {
    static var previews: some View {
        MyListView()
    }
}
