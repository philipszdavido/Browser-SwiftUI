//
//  CanvasView.swift
//  Browser
//
//  Created by Chidume Nnamdi on 10/07/2025.
//

import SwiftUI
import HTMLParser

struct CanvasView: View {
    
    let node: Node

    var body: some View {
        if case let .element(data) = node.nodeType {
            Canvas { ctx, size in
                
            }
        }
    }
}

#Preview {
    CanvasView(
node: Node(
        children: [
            Node(children: [], nodeType: .text("Hello, Swift DOM!"))
        ],
        nodeType:
                .element(
                    ElementData(
                        tagName: .canvas,
                        attributes: ["placeholder":"enter here..."]
                    )
                )
    )
)
}
