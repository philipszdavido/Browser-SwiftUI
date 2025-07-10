//
//  DOMRenderer.swift
//  Browser
//
//  Created by Chidume Nnamdi on 09/07/2025.
//

import SwiftUI
import HTMLParser

var thisHtml = """
<html>
  <head>
    <meta charset="UTF-8" />
    <script src="script.js"></script>
    <link rel="stylesheet" type="text/css" href="styles.css" />
    <!-- <link rel="stylesheet" type="text/css" href="styles.css"> -->
  </head>
  <body>
  
    <a href="https://pinterest.com/pin/create/button/?url=https::%2Fgoogle.com&media=https://firebasestorage.googleapis.com/v0/b/chidume-local-dev.appspot.com/o/QqPcvz32KBXeg10On5kZNSwy0WD2%2FDdrsrBIMkracYIA5auSd%2Fthumbnail%2Fthumb_prefix_02126cbcC4trNQ2yFG3rmlV5epSz.jpg?alt=media&token=c8e9a9d8-aeda-4211-a074-d3299522c23d&description=Test%20Springg%20jbjb">Pin on Pinterest</a>
    
    <!-- <a id="pin" href="https://pinterest.com/pin/create/button/?url=https://google.com
    &media=https://images.pexels.com/photos/1563356/pexels-photo-1563356.jpeg?auto=compress&cs=tinysrgb&w=260&h=750&dpr=2&description=Test%20Springg%20jbjb">Pin </a> -->
    <a id="pin" >Pin </a>

  </body>
</html>

""";
struct DOMRenderer: View {
    
    let nodes: [Node]
    
    var body: some View {
        
        ScrollView { 
            ForEach(nodes, id: \.id) { node in
                
                DOMRendererEngine(node: node)
            }
        }
    }
    
}

#Preview {
    HStack {
        TextEditor(text: .constant(thisHtml))
            .frame(width: 250.0)
        ScrollView {
            DOMRenderer(nodes: HTMLParser().start(html: thisHtml))
        }.frame(width: 300.0)
    }
}
