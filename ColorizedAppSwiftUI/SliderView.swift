//
//  SliderView.swift
//  ColorizedAppSwiftUI
//
//  Created by Elena Mikhailova on 14.01.2023.
//

//import SwiftUI
//
//struct SliderView: View {
//    @State var sliderValue: Double
//   var value: Double
//    
//    
//    var body: some View {
//        HStack(spacing: 20) {
//            Text("\(lround(value))")
//                .font(.system(size: 25))
//                .foregroundColor(.white)
//            Slider(value: $value, in: 0...255, step: 1)
//        
//            }
//        .padding(20)
//    }
//}
//struct SliderView_Previews: PreviewProvider {
//    static var previews: some View {
//        SliderView(sliderValue: 0.0, value: 0.0 )
//    }
//}
//
////struct ColorSliderView: View {
//    @Binding var value: Double
//
//    var body: some View {
//        HStack {
//            Slider(value: $value, in: 0...255, step: 1)
//
//        }
//    }
//
//}
