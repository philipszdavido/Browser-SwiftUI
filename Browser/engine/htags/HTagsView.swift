//
//  HTagsView.swift
//  Browser
//
//  Created by Chidume Nnamdi on 10/07/2025.
//

import SwiftUI
import HTMLParser

struct HTagsView: View {
    let node: Node
    var body: some View {

        if case let .element(data) = node.nodeType {
            HStack {
                ForEach(node.children) { child in
                    DOMRendererEngine(node: child)
                }
            }.font(font(tag: data.tagName))
            
        }
    }
    
    func font(tag: HTMLTagName) -> Font {
        
        if tag == .h1 {
            return .largeTitle
        }
        
        if tag == .h2 {
            return .title
        }
        
        if tag == .h3 {
            return .title2
        }
        
        if tag == .h4 {
            return .title3
        }
        
        if tag == .h5 {
            return .headline
        }
        
        if tag == .h6 {
            return .subheadline
        }
        
        return .body
        
    }
}

#Preview {
    HTagsView(
        node: Node(
            children: [
                Node(children: [], nodeType: .text("Hello, Swift DOM!"))
            ],
            nodeType: .element(ElementData(tagName: .h4, attributes: [:]))
        )
    ).frame(width: 200.0, height: 200.0)
}
