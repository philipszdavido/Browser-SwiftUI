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
                HStack(alignment: .top, spacing: 4) {
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
                EmptyView()

            case .body:
                ForEach(node.children) { child in
                    DOMRendererEngine(node: child)
                }

            case .title:
                EmptyView()

            case .meta:
                EmptyView()

            case .link:
                EmptyView()

            case .style:
                EmptyView()

            case .script:
                EmptyView()

            case .noscript:
                EmptyView()

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

            case .h1, .h2, .h3, .h4, .h5, .h6:
                HTagsView(node: node)

            case .a:
                
                HrefView(node: node)

            case .img:
                ImgView(node: node)

            case .br:
                ForEach(node.children) { child in
                    DOMRendererEngine(node: child)
                }

            case .hr:
                ForEach(node.children) { child in
                    DOMRendererEngine(node: child)
                }

            case .ul:
                VStack(alignment: .leading, spacing: 1) {                    ForEach(node.children) { child in
                        DOMRendererEngine(node: child)
                    }
                }

            case .ol:
                VStack(alignment: .leading, spacing: 1) {
                    HStack {
                        ForEach(node.children) { child in
                            Text("1")
                                .fontWeight(.bold)

                            DOMRendererEngine(node: child)
                        }
                    }
                }

            case .li:
                HStack {
                    ForEach(node.children) { child in
                        Text("•")
                            .fontWeight(.bold)
                        DOMRendererEngine(node: child)
                    }
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
                TableView(node: node)

            case .form:
                ForEach(node.children) { child in
                    DOMRendererEngine(node: child)
                }

            case .input:
                InputView(node: node)

            case .textarea:
                TextAreaView(node: node)

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
                CanvasView(node: node)

            case .video:
                VideoView(node: node)

            case .audio:
                AudioView(node: node)
            case .source:
                EmptyView()
            case .track:
                EmptyView()
                
            case .strong:
                EmptyView()
            case .em:
                EmptyView()
                
            case .b:
                
                ForEach(node.children) { child in
                    DOMRendererEngine(node: child)
                }.bold()
                
            case .i:
                ForEach(node.children) { child in
                    DOMRendererEngine(node: child)
                }.italic()
                
            case .u:
                ForEach(node.children) { child in
                    DOMRendererEngine(node: child)
                }.underline()
                
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
