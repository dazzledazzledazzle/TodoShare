//
//  ContentView.swift
//  TodoShareAPP
//
//  Created by 시혁 on 2022/11/29.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            MyListView()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
