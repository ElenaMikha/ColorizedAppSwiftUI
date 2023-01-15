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
    
    private func setColor() {
        RectangleColorView (color: Color(red: redSliderValue, green: greenSliderValue, blue: blueSliderValue))
    }
    
    var body: some View {
        ZStack {
            Color(.darkGray)
                .ignoresSafeArea()
            VStack (spacing: 20) {
                RectangleColorView(color: .green)
                
                ColorSliderView(value: $redSliderValue)
                    .accentColor(.red)
                
                ColorSliderView(value: $greenSliderValue)
                    .accentColor(.green)
                
                ColorSliderView(value: $blueSliderValue)
                    .accentColor(.blue)
                
                Spacer()
                    .padding(30)
            }
            .padding(30)
            
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
        HStack (spacing: 20) {
            Text("\(lround(value))")
                .font(.system(size: 25))
                .foregroundColor(.white)
            
            Slider(value: $value, in: 0...255, step: 1)
            
        }
    }
    
}

struct ColorView: View {
    @Binding var color: Color
    
}
