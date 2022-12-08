//
//  ContentView.swift
//  TodoShareAPP
//
//  Created by 시혁 on 2022/11/29.
//

import SwiftUI

struct ContentView: View {
    /// get 요청 
    @FetchRequest(sortDescriptors: [] ) var TodoData: FetchedResults<TodoData>
    
    private enum Tabs {
        case home, share, myPage
    }
    
    @State private var seletedTab: Tabs = .home
    
    // MARK: Body
    var body: some View {
        TabView(selection: $seletedTab) {
            Group{
                home
            }
        }
    }
}

private extension ContentView {
    // MARK: View
    
    var home: some View{
        MyListView()
            .tag(Tabs.home)
            .tabItem {
                Text("Home")
                Image(systemName: "house.fill")
            }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
