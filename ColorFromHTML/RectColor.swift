//
//  RectColor.swift
//  ColorFromHTML
//
//  Created by MIKHAIL ZHACHKO on 22.01.24.
//

import SwiftUI

struct RectColor: View {
    let color: Color
    let dim: CGFloat
    let radius: CGFloat
    
    var body: some View {
        RoundedRectangle(cornerRadius: radius)
            .fill(color)
            .frame(width: dim, height: dim)
            .overlay(
                RoundedRectangle(cornerRadius: radius)
                    .stroke(Color.blackCustom, lineWidth: 1.0)
            )
    }
}

#Preview {
    RectColor(color: .crimson, dim: 50, radius: 15)
}
