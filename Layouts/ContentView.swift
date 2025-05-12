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
            Spacer()
            Text(message)
                .font(.largeTitle)
                .fontWeight(.black)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.center)
                .foregroundStyle(Color("C-Blue"))
                .padding()
                .frame(height: 150)
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
            Spacer()
            HStack {
                Button("Awesome"){
                    message = "You are Awesome!!"
                }
                Spacer()
                Button("Great"){
                    message = "You are Great!"
                }
            }
            .buttonStyle(.borderedProminent)
            .tint(.cGrean)
        }
        .padding()
        .background(
            Gradient(colors: [.teal, .indigo])
        )
        
    }
}

#Preview {
    ContentView()
}
