//
//  ContentView.swift
//  Labex6
//
//  Created by Kevin Lapointe on 2025-02-06.
//

import SwiftUI

struct ContentView: View {

    @State private var outputValue: Int = 0
    @State private var stepValue: Int = 1
    
    var body: some View {
        
            VStack {
                Image("calculator")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height:100)
                Text("\(outputValue)")
                    .font(.largeTitle)
                    .padding()
                
                HStack{
                    Button("Reset", action: {
                        outputValue = 0
                    }).buttonStyle(.bordered)
                    
                    Button("Step", action: {
                        stepValue = (stepValue == 1) ? 2 : 1
                    }).buttonStyle(.bordered)
                    
                    Button("Subtract", action: {
                        outputValue -= stepValue
                    }).buttonStyle(.bordered)
                    
                    Button("Add", action: {
                        outputValue += stepValue
                    }).buttonStyle(.bordered)
                }
            }
        }
    }


#Preview {
    ContentView()
}
