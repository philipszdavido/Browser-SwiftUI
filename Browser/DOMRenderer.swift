//
//  DOMRenderer.swift
//  Browser
//
//  Created by Chidume Nnamdi on 09/07/2025.
//

import SwiftUI
import HTMLParser

struct DOMRenderer: View {
    
    let nodes: [ElementNode]
    
    var body: some View {
        
        NavigationSplitView {

        } detail: {
            ForEach(nodes, id: \.id) { node in
                
                DOMEngineRenderer(node: node)
                Spacer()
            }
        }
    }
    
    @ViewBuilder
    func render(node: ElementNode) -> some View {
        
        switch node.name {
        case "div":
            HStack {
                Text("")
            }
            
        case "h1":
            let h1Node = node as! Element
            ForEach(h1Node.children, id: \.id) { h1node in
                //render(node: h1Node)
            }.font(.largeTitle)
            
        default:
            Text("\(node.name)")
        }
    }
}

#Preview {
    DOMRenderer(nodes: HTMLParser().start(html: """
    <button type="submit">Submit</button>
"""))
}

struct DOMEngineRenderer: View {
    let node: ElementNode

    var body: some View {
        
        switch node.name {
            
        case "div":
            VStack(alignment: .leading) {
                ForEach((node as! Element).children, id: \.id) { child in
                    DOMEngineRenderer(node: child)
                }
            }

        case "span":
            Text(node.name)
                .font(.body)

        case "button":
            Button((node as! Element).children[0].name) {
                print("Button clicked: \(node.id)")
            }

        case "unknown":
            EmptyView()
            
        default:
            Text("\(node.name)")
        }
    }
}
