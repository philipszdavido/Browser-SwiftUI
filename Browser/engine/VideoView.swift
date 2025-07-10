//
//  VideoView.swift
//  Browser
//
//  Created by Chidume Nnamdi on 10/07/2025.
//

import SwiftUI
import HTMLParser
import AVKit

struct VideoView: View {
    
    let node: Node

    var body: some View {
        
        if case let .element(data) = node.nodeType {
            
            let attributes = data.attributes
            
            let src = attributes["src"]
            
            if let src = src {
                
                let videoURL = URL(string: src)
                
                if let videoURL = videoURL {
                    
                    VideoPlayerView(videoURL: videoURL)
                    
                }
                
            } else {
                
                ForEach(node.children as [Node]) { child in
                    
                    switch child.nodeType {
                    case .text(let content):
                        Text(content)
                        
                    case .element(let data):
                        switch data.tagName {
                        case .source:
                            
                            let attributes = data.attributes
                            
                            let src = attributes["src"]
                            
                            if let src = src {
                                
                                let videoURL = URL(string: src)
                                
                                if let videoURL = videoURL {
                                    
                                    VideoPlayerView(videoURL: videoURL)
                                    
                                }
                            }

                        default:
                            EmptyView()
                        }
                    }

                }
            }
        }
        
    }
    
    func url() {
        
    }
}

struct VideoPlayerView: View {
    
    let videoURL: URL;
    
    var body: some View {
        VideoPlayer(player: AVPlayer(url: videoURL))
            .frame(width: 320, height: 240)
            .cornerRadius(8)
            .onAppear {
                AVPlayer(url: videoURL).play()
            }

    }
}

#Preview {
    VideoView(
node: Node(
        children: [
            Node(children: [], nodeType: .text("Hello, Swift DOM!"))
        ],
        nodeType:
                .element(
                    ElementData(
                        tagName: .video,
                        attributes: ["src":"http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4"]
                    )
                )
    )
)
}
