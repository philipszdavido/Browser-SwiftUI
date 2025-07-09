//
//  ContentView.swift
//  Browser
//
//  Created by Chidume Nnamdi on 09/07/2025.
//

import SwiftUI
import HTMLParser

struct ContentView: View {
    var body: some View {
        NavigationSplitView {
        } detail: {
            ScrollView {
                DOMRenderer(nodes: HTMLParser().start(html: thisHtml))
            }
            .toolbar {
                ToolbarItem(placement: .navigation) {
                    HStack {
                        TextField("Enter website name...", text: .constant(""))
                    }
                }
                
                ToolbarItem(placement: .automatic) {
                }
            }
        }
    }
}


#Preview {
    ContentView()
        .modelContainer(for: Item.self, inMemory: true)
}
