//
//  HowToCostumizetheWayLinksAreOpened.swift
//  HWSSwiftUIByExampleChapter03
//
//  Created by Ygor Nascimento on 24/11/23.
//

import SwiftUI

struct HowToCostumizetheWayLinksAreOpened: View {
    var body: some View {
        VStack {
            Link("Visit Apple", destination: URL(string: "https://apple.com")!)
            Text("[Visit Apple](https://apple.com)")
        }
        .environment(\.openURL, OpenURLAction(handler: handleURL))
    }
    
    func handleURL(_ url:URL) -> OpenURLAction.Result {
        print("Handle\(url) somehow")
        return .handled
    }
}

#Preview {
    HowToCostumizetheWayLinksAreOpened()
}
