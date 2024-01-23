//
//  ColorRowView.swift
//  ColorFromHTML
//
//  Created by MIKHAIL ZHACHKO on 22.01.24.
//

import SwiftUI

struct ColorRowView: View {
    
    let rectangleColors: Array<Color>
    let lowerIndex: Int
    let upperIndex: Int
    
    let dim: CGFloat
    let radius: CGFloat
    var body: some View {
        GridRow{
            ForEach(lowerIndex..<upperIndex, id: \.self) { item in
                RectColor(color: rectangleColors[item], dim: dim, radius: radius)
            }
        }
    }
}

#Preview {
    ColorRowView(rectangleColors: [.red, .blue, .accentColor], lowerIndex: 0, upperIndex: 3, dim: 75, radius: 15)
}
