//
//  HowToShowTextAndAnIconSideBySideUsingLabel.swift
//  HWSSwiftUIByExampleChapter03
//
//  Created by Ygor Nascimento on 23/11/23.
//

import SwiftUI

struct HowToShowTextAndAnIconSideBySideUsingLabel: View {
    var body: some View {
        Label("Your Account", systemImage: "folder.circle")
        
        Label("Welcome to the app", image: "ygor")
        
        Label("Your account", systemImage: "person.crop.circle")
            .font(.title)
        
        VStack {
            Label("Text Only", systemImage: "heart")
                .font(.title)
                .labelStyle(.titleOnly)
            Label("Icon Only", systemImage: "star")
                .font(.title)
                .labelStyle(.iconOnly)
            Label("Both", systemImage: "paperplane")
                .font(.title)
                .labelStyle(.titleAndIcon)
            
            Label {
                Text("Ygor Nascimento")
                    .foregroundColor(.primary)
                    .font(.largeTitle)
                    .padding()
                    .background(.gray.opacity(0.2))
                    .clipShape(Capsule())
            } icon: {
                 RoundedRectangle(cornerRadius: 10)
                    .fill(.blue)
                    .frame(width: 64, height: 64)
            }
        }
    }
}

#Preview {
    HowToShowTextAndAnIconSideBySideUsingLabel()
}
