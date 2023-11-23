//
//  HowToAddSpacingBetweenLettersInText.swift
//  HWSSwiftUIByExampleChapter03
//
//  Created by Ygor Nascimento on 23/11/23.
//

import SwiftUI

struct HowToAddSpacingBetweenLettersInText: View {
    @State private var amount = 50.0
    
    var body: some View {
        VStack {
            Text("ffi")
                .font(.custom("AmericanTypewriter", size: 72))
                .kerning(amount)
            
            Text("ffi")
                .font(.custom("AmericanTypewriter", size: 72))
                .tracking(amount)
            
            Slider(value: $amount, in: 0...100) {
                Text("Adjust the amoutn of spacing")
            }
        }
    }
}

#Preview {
    HowToAddSpacingBetweenLettersInText()
}
