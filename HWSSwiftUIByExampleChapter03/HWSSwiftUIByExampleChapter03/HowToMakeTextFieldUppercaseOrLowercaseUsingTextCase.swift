//
//  HowToMakeTextFieldUppercaseOrLowercaseUsingTextCase.swift
//  HWSSwiftUIByExampleChapter03
//
//  Created by Ygor Nascimento on 23/11/23.
//

import SwiftUI

struct HowToMakeTextFieldUppercaseOrLowercaseUsingTextCase: View {
    @State private var name = "Paul"
    
    var body: some View {
        TextField("Shout your name at me", text: $name)
            .textFieldStyle(.roundedBorder)
            .textCase(.uppercase)
            .padding(.horizontal)
    }
}

#Preview {
    HowToMakeTextFieldUppercaseOrLowercaseUsingTextCase()
}
