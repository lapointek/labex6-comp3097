//
//  ContentView.swift
//  Labex6
//
//  Created by Kevin Lapointe on 2025-02-06.
//

import SwiftUI

struct ContentView: View {
    
    @State private var outputVal: Int = 0
    @State private var stepVal: Int = 1
    
    var body: some View {
        ZStack{
            Color(.systemGray6)
            
            
            VStack {
                Image("calculator")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height:100)
                Text("\(outputVal)")
                    .font(.largeTitle)
                    .padding()
                
                HStack{
                    Button("Reset", action: {
                        outputVal = 0
                    }).buttonStyle(.bordered)
                        .tint(Color.blue)
                    
                    Button("Step", action: {
                        stepVal = (stepVal == 1) ? 2 : 1
                    }).buttonStyle(.bordered)
                        .tint(Color.blue)
                    
                    Button("Subtract", action: {
                        outputVal -= stepVal
                    }).buttonStyle(.bordered)
                        .tint(Color.blue)
                    
                    Button("Add", action: {
                        outputVal += stepVal
                    }).buttonStyle(.bordered)
                        .tint(Color.blue)
                }
            }
        }
    }
}


#Preview {
    ContentView()
}
