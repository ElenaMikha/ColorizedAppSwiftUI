//
//  ContentView.swift
//  ColorizedAppSwiftUI
//
//  Created by Elena Mikhailova on 14.01.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var redSliderValue = 0.0
    @State private var greenSliderValue = 0.0
    @State private var blueSliderValue = 0.0
    
    var body: some View {
        ZStack {
            Color(.darkGray)
                .ignoresSafeArea()
            VStack (spacing: 20) {
                RectangleColorView(color: .green)
                
                HStack{
                    Text("\(lround(redSliderValue))")
                        .font(.system(size: 25))
                        .foregroundColor(.white)
                    ColorSliderView(value: $redSliderValue)
                        .accentColor(.red)
                    

                    
                    }
                HStack{
                    Text("\(lround(greenSliderValue))")
                        .font(.system(size: 25))
                        .foregroundColor(.white)
                    ColorSliderView(value: $greenSliderValue)
                        .accentColor(.green)
                }
                
                HStack{
                    Text("\(lround(blueSliderValue))")
                        .font(.system(size: 25))
                        .foregroundColor(.white)
                    ColorSliderView(value: $blueSliderValue)
                        .accentColor(.blue)
                }
                Spacer()
            }
            .padding(20)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
struct ColorSliderView: View {
    @Binding var value: Double
    
    var body: some View {
        HStack{
            Slider(value: $value, in: 0...255, step: 1)
        
        }
    }
    
}
