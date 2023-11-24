//
//  HowToRenderMarkdownContentinText.swift
//  HWSSwiftUIByExampleChapter03
//
//  Created by Ygor Nascimento on 24/11/23.
//

import SwiftUI

struct HowToRenderMarkdownContentinText: View {
    var body: some View {
        VStack {
            Text("This is regular text.")
            Text("This is **bold** text, this is *italic* text, and this is ***bold, italic*** text.")
            Text("~~A strickethrough example~~")
            Text("`Monospaced works too`")
            Text("Visit Apple: [click here](https://apple.com)")
        }
    }
}

#Preview {
    HowToRenderMarkdownContentinText()
}
