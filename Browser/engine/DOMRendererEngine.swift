//
//  DOMRendererEngine.swift
//  Browser
//
//  Created by Chidume Nnamdi on 09/07/2025.
//

import SwiftUI
import HTMLParser

struct DOMRendererEngine: View {
    let node: Node

    var body: some View {
        switch node.nodeType {
        case .text(let content):
            Text(content)

        case .element(let data):
            switch data.tagName {
            case .div:
                VStack(alignment: .leading) {
                    ForEach(node.children) { child in
                        DOMRendererEngine(node: child)
                    }
                }
                
            case .span:
                HStack {
                    ForEach(node.children) { child in
                        DOMRendererEngine(node: child)
                    }
                }
                
            case .button:
                Button(action: {}) {
                    ForEach(node.children) { child in
                        DOMRendererEngine(node: child)
                    }
                }
                
            case .p:
                VStack(alignment: .leading, spacing: 4) {
                    ForEach(node.children) { child in
                        DOMRendererEngine(node: child)
                    }
                }
                .padding(.vertical, 4)
                
            case .html:
                ForEach(node.children) { child in
                    DOMRendererEngine(node: child)
                }

            case .head:
                ForEach(node.children) { child in
                    DOMRendererEngine(node: child)
                }

            case .body:
                ForEach(node.children) { child in
                    DOMRendererEngine(node: child)
                }

            case .title:
                ForEach(node.children) { child in
                    DOMRendererEngine(node: child)
                }

            case .meta:
                ForEach(node.children) { child in
                    DOMRendererEngine(node: child)
                }

            case .link:
                ForEach(node.children) { child in
                    DOMRendererEngine(node: child)
                }

            case .style:
                ForEach(node.children) { child in
                    DOMRendererEngine(node: child)
                }

            case .script:
                ForEach(node.children) { child in
                    DOMRendererEngine(node: child)
                }

            case .noscript:
                ForEach(node.children) { child in
                    DOMRendererEngine(node: child)
                }

            case .header:
                ForEach(node.children) { child in
                    DOMRendererEngine(node: child)
                }

            case .nav:
                ForEach(node.children) { child in
                    DOMRendererEngine(node: child)
                }

            case .main:
                ForEach(node.children) { child in
                    DOMRendererEngine(node: child)
                }

            case .section:
                ForEach(node.children) { child in
                    DOMRendererEngine(node: child)
                }

            case .article:
                ForEach(node.children) { child in
                    DOMRendererEngine(node: child)
                }

            case .aside:
                ForEach(node.children) { child in
                    DOMRendererEngine(node: child)
                }

            case .footer:
                ForEach(node.children) { child in
                    DOMRendererEngine(node: child)
                }

            case .h1:
                ForEach(node.children) { child in
                    DOMRendererEngine(node: child)
                }

            case .h2:
                ForEach(node.children) { child in
                    DOMRendererEngine(node: child)
                }

            case .h3:
                ForEach(node.children) { child in
                    DOMRendererEngine(node: child)
                }

            case .h4:
                ForEach(node.children) { child in
                    DOMRendererEngine(node: child)
                }

            case .h5:
                ForEach(node.children) { child in
                    DOMRendererEngine(node: child)
                }

            case .h6:
                ForEach(node.children) { child in
                    DOMRendererEngine(node: child)
                }

            case .a:
                ForEach(node.children) { child in
                    DOMRendererEngine(node: child)
                }

            case .img:
                ForEach(node.children) { child in
                    DOMRendererEngine(node: child)
                }

            case .br:
                ForEach(node.children) { child in
                    DOMRendererEngine(node: child)
                }

            case .hr:
                ForEach(node.children) { child in
                    DOMRendererEngine(node: child)
                }

            case .ul:
                ForEach(node.children) { child in
                    DOMRendererEngine(node: child)
                }

            case .ol:
                ForEach(node.children) { child in
                    DOMRendererEngine(node: child)
                }

            case .li:
                ForEach(node.children) { child in
                    DOMRendererEngine(node: child)
                }

            case .dl:
                ForEach(node.children) { child in
                    DOMRendererEngine(node: child)
                }

            case .dt:
                ForEach(node.children) { child in
                    DOMRendererEngine(node: child)
                }

            case .dd:
                ForEach(node.children) { child in
                    DOMRendererEngine(node: child)
                }

            case .table:
                ForEach(node.children) { child in
                    DOMRendererEngine(node: child)
                }

            case .thead:
                ForEach(node.children) { child in
                    DOMRendererEngine(node: child)
                }

            case .tbody:
                ForEach(node.children) { child in
                    DOMRendererEngine(node: child)
                }

            case .tfoot:
                ForEach(node.children) { child in
                    DOMRendererEngine(node: child)
                }

            case .tr:
                ForEach(node.children) { child in
                    DOMRendererEngine(node: child)
                }

            case .th:
                ForEach(node.children) { child in
                    DOMRendererEngine(node: child)
                }

            case .td:
                ForEach(node.children) { child in
                    DOMRendererEngine(node: child)
                }

            case .form:
                ForEach(node.children) { child in
                    DOMRendererEngine(node: child)
                }

            case .input:
                ForEach(node.children) { child in
                    DOMRendererEngine(node: child)
                }

            case .textarea:
                ForEach(node.children) { child in
                    DOMRendererEngine(node: child)
                }

            case .select:
                ForEach(node.children) { child in
                    DOMRendererEngine(node: child)
                }

            case .option:
                ForEach(node.children) { child in
                    DOMRendererEngine(node: child)
                }

            case .label:
                ForEach(node.children) { child in
                    DOMRendererEngine(node: child)
                }

            case .iframe:
                EmptyView()
            case .canvas:
                EmptyView()
            case .video:
                EmptyView()
            case .audio:
                EmptyView()
            case .source:
                EmptyView()
            case .track:
                EmptyView()
            case .strong:
                EmptyView()
            case .em:
                EmptyView()
            case .b:
                EmptyView()
            case .i:
                EmptyView()
            case .u:
                EmptyView()
            case .small:
                EmptyView()
            case .sub:
                EmptyView()
            case .sup:
                EmptyView()
            case .mark:
                EmptyView()
            case .code:
                EmptyView()
            case .pre:
                EmptyView()
            case .blockquote:
                EmptyView()
            case .figure:
                EmptyView()
            case .figcaption:
                EmptyView()
            case .details:
                EmptyView()
            case .summary:
                EmptyView()
            case .time:
                EmptyView()
            case .meter:
                EmptyView()
            case .progress:
                EmptyView()
            case .unknown:
                EmptyView()
                
            default:
                VStack {
                    ForEach(node.children) { child in
                        DOMRendererEngine(node: child)
                    }
                }
                
            }
        }
    }
}

struct Preview: View {
    
    let paragraph: Node = Node(
        children: [
            Node(children: [], nodeType: .text("Hello, Swift DOM!"))
        ],
        nodeType: .element(
            ElementData(
                tagName: .p,
                attributes: ["class": "greeting"]
            )
        )
    )

    var body: some View {
        DOMRendererEngine(node: paragraph)
    }
}

#Preview {
    Preview()
}
