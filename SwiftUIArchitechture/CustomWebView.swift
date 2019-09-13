//
//  CustomWebView.swift
//  SwiftUIArchitechture
//
//  Created by Pradeep Dahiya on 05/09/19.
//  Copyright © 2019 Rajlaxmi Shekhawat. All rights reserved.
//

import SwiftUI

import WebKit
  
struct WebView : UIViewRepresentable {
      
    let request: URLRequest
      
    func makeUIView(context: Context) -> WKWebView  {
        return WKWebView()
    }
      
    func updateUIView(_ uiView: WKWebView, context: Context) {
        uiView.load(request)
    }
} 
