//
//  ContentView.swift
//  Demo
//
//  Created by 李旭 on 2022/4/9.
//

import SwiftUI

struct ContentView: View {
    @State var password = "1234"
    @State var someText = "inital text"
    
    var body: some View {
        VStack {
            
            Text("hello world")
                .fontWeight(.medium)
            SecureField("enter password", text: $password)
                .padding()
            
            Text("pass word enterd:\(password)")
                .italic()
            
            TextField("enter some text", text: $someText)
            
            Text(":\(someText)")
                .font(.largeTitle)
                .underline()
            Text("Changing text color and maker it bold")
                .foregroundColor( Color.blue)
                .bold()
            
            Text("Use kerning to change space between lines of text")
                .kerning(7)
            
            Text("Changing baseline offset").baselineOffset(100)
            
            Text("Striekthroth").strikethrough()
            
            Text("This is a multiline text implemented in swiftui ,the trailing modifier was added to text . this text also implements multiple modifiers")
                .background(Color.yellow)
                .multilineTextAlignment(.trailing)
                .lineSpacing(10)
            
            // test count item
            
//            Text("count 1")
//            Text("count 1")
//            Text("count 1")
            
        
                
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
