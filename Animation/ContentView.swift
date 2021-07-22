//
//  ContentView.swift
//  Animation
//
//  Created by Ibukunoluwa Soyebo on 20/05/2021.
//

import SwiftUI

struct ContentView: View {
    
    @State private var enabled = false
    let letters = Array("Hello SwiftUI")


    @State private var animationAmount = 0.0
    @State private var dragAmount = CGSize.zero

    @State private var isShowingRed = false
    
    

    var body: some View {
        VStack {
            Button("Tap Me") {
                withAnimation {
                    self.isShowingRed.toggle()
                }
            }

            if isShowingRed{
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 200, height: 200)
            }
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
