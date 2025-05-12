//
//  ContentView.swift
//  Layouts
//
//  Created by Shailendra Nain on 5/11/25.
//

import SwiftUI

struct ContentView: View {
    @State private var message = "A quick brown fox jumps over the lazy dog."
    var body: some View {
        VStack {
            Text(message)
                .font(.largeTitle)
                .fontWeight(.black)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.center)
                .foregroundStyle(.orange)
                .padding()
                .frame(width: 350, height: 150)
            
            HStack {
                Button("Awesome"){
                    message = "You are Awesome!!"
                }
                Button("Great"){
                    message = "You are Great!"
                }
            }
            .buttonStyle(.borderedProminent)
        }
        .padding()
        
    }
}

#Preview {
    ContentView()
}
