//
//  RectangleColorView.swift
//  ColorizedAppSwiftUI
//
//  Created by Elena Mikhailova on 14.01.2023.
//

import SwiftUI

struct RectangleColorView: View {
    var color: Color
    var body: some View {
       Rectangle()
            .foregroundColor(color)
            .frame(width: 360, height: 150)
            .cornerRadius(20)
            .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.white, lineWidth: 4))
    
    }
}

struct RectangleColorView_Previews: PreviewProvider {
    static var previews: some View {
        RectangleColorView(color: .black)
    }
}
