//
//  TableView.swift
//  Browser
//
//  Created by Chidume Nnamdi on 10/07/2025.
//

import SwiftUI
import HTMLParser

struct TableView: View {
    
    let node: Node

    var body: some View {
        EmptyView()
//    case .thead:
//        ForEach(node.children) { child in
//            DOMRendererEngine(node: child)
//        }
//
//    case .tbody:
//        ForEach(node.children) { child in
//            DOMRendererEngine(node: child)
//        }
//
//    case .tfoot:
//        ForEach(node.children) { child in
//            DOMRendererEngine(node: child)
//        }
//
//    case .tr:
//        ForEach(node.children) { child in
//            DOMRendererEngine(node: child)
//        }
//
//    case .th:
//        ForEach(node.children) { child in
//            DOMRendererEngine(node: child)
//        }
//
//    case .td:
//        ForEach(node.children) { child in
//            DOMRendererEngine(node: child)
//        }
    }
}

#Preview {
    TableView(node: Node(
        children: [
            Node(children: [], nodeType: .text("Hello, Swift DOM!"))
        ],
        nodeType:
                .element(
                    ElementData(
                        tagName: .table,
                        attributes: ["placeholder":"enter here..."]
                    )
                )
    ))
}
