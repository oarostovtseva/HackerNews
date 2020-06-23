//
//  WebView.swift
//  HackerNews
//
//  Created by Olena Rostovtseva on 23.06.2020.
//  Copyright © 2020 orost. All rights reserved.
//

import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
    let urlString: String?
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }

    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeString = urlString {
            if let url = URL(string: safeString) {
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
    }
}
