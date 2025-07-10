//
//  TextAreaView.swift
//  Browser
//
//  Created by Chidume Nnamdi on 10/07/2025.
//

import SwiftUI
import HTMLParser

struct TextAreaView: View {
    
    let node: Node
    
    @State var text = ""
    
    var body: some View {
        
        if case let .element(data) = node.nodeType {
            
            let attributes = data.attributes
            
            ZStack(alignment: .topLeading) {

                if text.isEmpty {
                    Text("Enter your message here...")
                        .foregroundColor(.gray)
                        .padding(.horizontal, 5)
                        .padding(.vertical, 8)
                }
                
                TextEditor(text: $text)
                    .padding(4)
            }
            .frame(height: 120)
            .overlay(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(Color.gray.opacity(0.4), lineWidth: 1)
            )
            .padding()
        }
    }
}

#Preview {
    TextAreaView(node: Node(
        children: [
            Node(children: [], nodeType: .text("Hello, Swift DOM!"))
        ],
        nodeType: .element(ElementData(tagName: .textarea, attributes: [:]))
    )
    )
}
