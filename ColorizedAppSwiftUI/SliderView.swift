//
//  SliderView.swift
//  ColorizedAppSwiftUI
//
//  Created by Elena Mikhailova on 14.01.2023.
//

import SwiftUI

struct SliderView: View {
    @State private var sliderValue = 0.5
    var textColor: Color
    
    
    var body: some View {
        HStack(spacing: 20) {
            Text("\(lround(sliderValue))")
                .font(.largeTitle)
            
            Slider(value: $sliderValue, in: 0...255, step: 1)
            }
        .padding(20)
    }
}
struct SliderView_Previews: PreviewProvider {
    static var previews: some View {
        SliderView(textColor: .green)
    }
}
