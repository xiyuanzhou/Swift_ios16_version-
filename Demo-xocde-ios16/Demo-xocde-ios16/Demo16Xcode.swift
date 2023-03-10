//
//  ContentView.swift
//  Demo-xocde-ios16
//
//  Created by Lucas on 1/3/23.
//

import SwiftUI

struct Demo16Xcode: View {
    var body: some View {
        VStack {
            Image(systemName: "gamecontroller.fill")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Image(systemName: "globe.central.south.asia")
                .aspectRatio(contentMode: .fit)
                .imageScale(.large)
                .foregroundColor(.accentColor)
            
            Text("成功hello world 12").font(.title).fontWeight(.black).foregroundColor(Color.green)
                .background(Color.black)
                .cornerRadius(15)
                .shadow(color: Color.black.opacity(5), radius: 10,x:5,y:6)
                .padding()
            
            Text("Happy Coding").font(.title)
                .fontWeight(.bold)
                .foregroundColor(.red)
            Text("傻逼").font(.title)
                .foregroundColor(.red)
                .fontWeight(.bold)
            Text("傻逼").font(.title)
                .fontWeight(.bold)
                .foregroundColor(.blue)
            Text("傻逼").font(.title)
                .fontWeight(.bold)
                .foregroundColor(.blue)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Demo16Xcode()
    }
}
