//
//  HrefView.swift
//  Browser
//
//  Created by Chidume Nnamdi on 10/07/2025.
//

import SwiftUI
import HTMLParser

struct HrefView: View {
    
    let node: Node
    
    var body: some View {
        if case let .element(data) = node.nodeType {
            
            let attributes = data.attributes;
            
            let url = getHRef(attributes)
            
            Link(destination: url) {
                ForEach(node.children) { child in
                    DOMRendererEngine(node: child)
                }
            }
        }
    }
    
    
    func getHRef(_ attributes: [String: String]) -> URL {
        URL(string: attributes["href"] ?? "") ?? URL(string: "about:blank")!
    }
    
    
}

#Preview {
    HrefView(
        node: Node(
            children: [
                Node(children: [], nodeType: .text("Hello, Swift DOM!"))
            ],
            nodeType: .element(ElementData(tagName: .a, attributes: [:]))
        )
    )
}
