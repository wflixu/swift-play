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
            
            Image("BingWallpaper-2").resizable()
                .aspectRatio(contentMode: .fit)
            
            
            Image("BingWallpaper-3").resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width:300, height: 200)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.blue, lineWidth: 6))
                .shadow(radius: 10)
            
            Image(uiImage: getImageFromUIImage(image: "BingWallpaper-4"))
                
                .resizable()
                .frame(width: 200, height: 200)
                .aspectRatio(contentMode: .fit)
            
        }
    }
    
    func getImageFromUIImage(image: String) -> UIImage {
        guard let img = UIImage(named: image) else {
            fatalError("Unable to load image")
        }
        return img
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
