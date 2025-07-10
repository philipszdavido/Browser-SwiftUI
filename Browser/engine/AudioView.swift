//
//  AudioView.swift
//  Browser
//
//  Created by Chidume Nnamdi on 10/07/2025.
//

import SwiftUI
import HTMLParser

struct AudioView: View {
    
    let node: Node

    var body: some View {
        HStack {
            Image(systemName: "play.fill")
                .foregroundStyle(.gray)
            
            Text("0:00").foregroundStyle(.black)
            Text("/").foregroundStyle(.black)
            Text("0:00").foregroundStyle(.black)
            
            Rectangle()
                .fill(.gray)
                .frame(width: 100.0, height: 2.0)
            
            Image(systemName: "speaker.wave.2.fill")
                .foregroundStyle(.gray)

            Image(systemName: "ellipsis")
                .foregroundStyle(.gray)

        }
        .frame(width: 300.0, height: 54.0)
        .background(.white)
        .cornerRadius(20.0)
    }
}

#Preview {
    AudioView(
node: Node(
        children: [
            Node(children: [], nodeType: .text("Hello, Swift DOM!"))
        ],
        nodeType:
                .element(
                    ElementData(
                        tagName: .audio,
                        attributes: ["placeholder":"enter here..."]
                    )
                )
    )
    ).frame(width: 600.0, height: 100.0)
}
