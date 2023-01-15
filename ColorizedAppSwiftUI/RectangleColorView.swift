//
//  RectangleColorView.swift
//  ColorizedAppSwiftUI
//
//  Created by Elena Mikhailova on 14.01.2023.
//

import SwiftUI

struct RectangleColorView: View {
    
    let red: Double
    let green: Double
    let blue: Double
    
    var body: some View {
        Color(red: red / 255, green: green / 255, blue: blue / 255)
            .frame(width: 360, height: 150)
            .cornerRadius(20)
            .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.white, lineWidth: 4))
    
    }
}

struct RectangleColorView_Previews: PreviewProvider {
    static var previews: some View {
        RectangleColorView(red: 20, green: 100, blue: 10)
    }
}
