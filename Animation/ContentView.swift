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


    var body: some View {
            HStack(spacing: 0) {
                ForEach(0..<letters.count) { num in
                    Text(String(self.letters[num]))
                        .padding(5)
                        .font(.title)
                        .background(self.enabled ? Color.blue : Color.red)
                        .offset(self.dragAmount)
                        .animation(Animation.default.delay(Double(num) / 20))
                }
            }
            .gesture(
                DragGesture()
                    .onChanged { self.dragAmount = $0.translation }
                    .onEnded { _ in
                        self.dragAmount = .zero
                        self.enabled.toggle()
                    }
            )
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
