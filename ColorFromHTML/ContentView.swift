//
//  ContentView.swift
//  ColorFromHTML
//
//  Created by MIKHAIL ZHACHKO on 22.01.24.
//

import SwiftUI

struct ContentView: View {
    
    @State var rectangleColors: Array<Color> = mainColorList
    
    @State var textColor: Color = .ivory
    @State var bgButtonColor: Color = .mediumPurple
    
    var body: some View {
        VStack {
            Spacer()
            Grid(){
                ColorRowView(rectangleColors: rectangleColors, lowerIndex: 0, upperIndex: 3, dim: 75, radius: 15)
                ColorRowView(rectangleColors: rectangleColors, lowerIndex: 3, upperIndex: 6, dim: 75, radius: 15)
                ColorRowView(rectangleColors: rectangleColors, lowerIndex: 6, upperIndex: 9, dim: 75, radius: 15)
            }
            Spacer()
            Button(
                action: {
                    rectangleColors = Color.randomColorsN(n: rectangleColors.count)
                }, label: {
                Text("Random Colours")
                        .foregroundStyle(textColor)
                        .padding()
                        .background(
                            RoundedRectangle(cornerRadius: 15)
                                .fill(bgButtonColor)
                        )
            })
        }
        .padding()
        
    }
}

#Preview {
    ContentView()
}
