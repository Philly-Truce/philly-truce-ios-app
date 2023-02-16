//
//  YouTubeVideo.swift
//  PhillyTruce
//
//  Created by Daveed Balcher on 2/4/23.
//

import SwiftUI
import WebKit

struct YouTubeVideo: UIViewRepresentable {
    let videoID: String

    func makeUIView(context: Context) -> WKWebView {
        let webConfiguration = WKWebViewConfiguration()
        let webView = WKWebView(frame: .zero, configuration: webConfiguration)
        let videoURL = URL(string: "https://www.youtube.com/embed/\(videoID)?&playsinline=1&autoplay=1&loop=1")!
        let request = URLRequest(url: videoURL)
        webView.load(request)
        return webView
    }

    func updateUIView(_ uiView: WKWebView, context: Context) { }
}
