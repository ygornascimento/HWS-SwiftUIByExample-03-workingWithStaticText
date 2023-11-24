//
//  HowLetUsersSelectText.swift
//  HWSSwiftUIByExampleChapter03
//
//  Created by Ygor Nascimento on 24/11/23.
//

import SwiftUI

struct HowLetUsersSelectText: View {
    var body: some View {
        VStack(spacing: 50) {
            Text("You can't touch this")
            
            Text("Break it down!")
                
            
            List(0..<15) { index in
                Text("Row \(index)")
            }
        }.textSelection(.enabled)
        

    }
}

#Preview {
    HowLetUsersSelectText()
}
