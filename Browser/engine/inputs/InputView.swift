//
//  InputView.swift
//  Browser
//
//  Created by Chidume Nnamdi on 10/07/2025.
//

import SwiftUI
import HTMLParser

struct InputView: View {
    
    let node: Node

    var body: some View {
        
        if case let .element(data) = node.nodeType {
            
            let attributes = data.attributes
            
            let placeholder = attributes["placeholder"] ?? ""
            
            TextField(placeholder, text: .constant(""))
        }
    }
}

#Preview {
    InputView(node: Node(
        children: [
            Node(children: [], nodeType: .text("Hello, Swift DOM!"))
        ],
        nodeType: .element(ElementData(tagName: .input, attributes: ["placeholder":"enter here..."]))
    )
    )
}
