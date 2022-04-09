//
//  ContentView.swift
//  Demo
//
//  Created by 李旭 on 2022/4/9.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("vstack item 1")
            Spacer()
            Text("vstack item 2")
            Divider()
                .background(Color.black)
            Text("vstack item 3")
            HStack {
                Text("Item 1")
              
                Text("item 2")
            
                Text("h stack item 3")
            }.background(Color.red)
                .frame(
                    maxWidth: .infinity,
                    maxHeight: .infinity,
                    alignment: .topLeading
                )
            ZStack {
                Text("zstack item 1")
                    .padding()
                    .background(Color.green)
                    .opacity(0.8)
                Text("zstack item 2")
                    .padding()
                    .background(Color.green)
                    .offset(x:80, y: -400)
                
            }
        }.background(Color.blue)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
