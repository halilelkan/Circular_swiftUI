//
//  Circular.swift
//  CircularSwiftUI
//
//  Created by halil ibrahim Elkan on 10.12.2023.
//

import SwiftUI

struct Circular: View {
    
    let lineWidth : CGFloat
    let backgroundColor : Color
    let foregroundColor : Color
    let percentage : Double
    
    var body: some View {
        GeometryReader{ geometry in
            ZStack{
                CircularShape()
                    .stroke(style: StrokeStyle(lineWidth: lineWidth))
                    .fill(backgroundColor)
                CircularShape(percent: percentage)
                    .stroke(style: StrokeStyle(lineWidth: lineWidth))
                    .fill(foregroundColor)
            }
            .animation(.easeIn(duration: 1), value: percentage)
            .padding(lineWidth/2)
        }
    }
}

#Preview {
    Circular(lineWidth: 30, backgroundColor: .gray, foregroundColor: .black, percentage: 50)
}
