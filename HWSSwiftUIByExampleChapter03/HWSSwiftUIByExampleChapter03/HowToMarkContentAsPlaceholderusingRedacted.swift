//
//  HowToMarkContentAsPlaceholderusingRedacted.swift
//  HWSSwiftUIByExampleChapter03
//
//  Created by Ygor Nascimento on 24/11/23.
//

import SwiftUI

struct HowToMarkContentAsPlaceholderusingRedacted: View {
    var body: some View {
        Text("This is placeholder text")
            .font(.title)
            .redacted(reason: .placeholder)
        
        VStack {
            Text("This is a placeholder text")
            Text("And so is this")
        }
        .font(.title)
        .redacted(reason: .placeholder)
    }
}

#Preview {
    HowToMarkContentAsPlaceholderusingRedacted()
}
