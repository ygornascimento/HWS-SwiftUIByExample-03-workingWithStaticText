//
//  HowToMarkContentAsPrivateUsingPrivacySensitive.swift
//  HWSSwiftUIByExampleChapter03
//
//  Created by Ygor Nascimento on 24/11/23.
//

import SwiftUI

struct HowToMarkContentAsPrivateUsingPrivacySensitive: View {
    @Environment(\.redactionReasons) var redactionReasons
    
    var body: some View {
        VStack {
            Text("Card Number")
                .font(.headline)
            
            Text("1234 5678 9012 3456")
                .privacySensitive()
        }
        
        VStack {
            Text("Card Number")
                .font(.headline)
            
            if redactionReasons.contains(.privacy) {
                Text("[HIDDEN]")
            } else {
                Text("1234 5678 9012 3456")
                    .privacySensitive(true)
            }
            

        }
    }
}

#Preview {
    HowToMarkContentAsPrivateUsingPrivacySensitive()
}
