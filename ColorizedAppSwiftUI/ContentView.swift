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
            Color(.systemIndigo)
                .ignoresSafeArea()
            VStack (spacing: 20) {
                RectangleColorView(red: redSliderValue, green: greenSliderValue, blue: blueSliderValue)
                ColorSliderView(value: $redSliderValue, sliderColor: .red)
                ColorSliderView(value: $greenSliderValue, sliderColor: .green)
                ColorSliderView(value: $blueSliderValue, sliderColor: .blue)
                
                Spacer()
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
    let sliderColor: Color
    
    var body: some View {
        HStack (spacing: 20) {
            Text("\(lround(value))")
                .font(.system(size: 25))
                .foregroundColor(.white)
            
            Slider(value: $value, in: 0...255, step: 1)
                .accentColor(sliderColor)
            
        }
    }
}

