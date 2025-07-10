//
//  ImgView.swift
//  Browser
//
//  Created by Chidume Nnamdi on 10/07/2025.
//

import SwiftUI
import HTMLParser

struct ImgView: View {
    var node: Node;
    
    var body: some View {
        if case let .element(data) = node.nodeType {
            AsyncImage(url: URL(string: data.attributes["src"]!)) { phase in
                switch phase {
                case .empty:
                    ProgressView()
                case .success(let image):
                    image
                        .resizable()
                        .scaledToFit()
                        .frame(width: 200, height: 200)
                case .failure(let error):
                    Text("Failed: \(error.localizedDescription)")
                @unknown default:
                    EmptyView()
                }
            }

        }
            
    }
}

#Preview {
    ImgView(
        node: Node(
            children: [],
            nodeType: .element(ElementData(tagName: .img, attributes: [
                "src": "https://avatars.githubusercontent.com/u/25048922?v=4"
            ]))
        )
    ).frame(width: 500.0, height: 200.0)
}
