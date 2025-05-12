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
        GeometryReader(content: { geometry in
            VStack {
                Spacer()
                Text(message)
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.center)
                    .foregroundStyle(Color("CGreen"))
                    .padding()
                    .frame(height: 150)
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                Spacer()
                Rectangle()
                    .fill(.cGreen)
                    .frame(width: geometry.size.width * 2/3, height: 1)
                    .padding()
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
                .tint(.cGreen)
            }
            .padding()
            .background(
                Gradient(colors: [.teal, .indigo])
            )
        })
        
    }
}

#Preview {
    ContentView()
}
