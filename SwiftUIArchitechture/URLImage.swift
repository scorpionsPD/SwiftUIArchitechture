//
//  URLImage.swift
//  SwiftUIArchitechture
//
//  Created by Pradeep Dahiya on 05/09/19.
//  Copyright © 2019 Rajlaxmi Shekhawat. All rights reserved.
//

import SwiftUI
import Foundation

struct URLImage: View {
    
    @ObservedObject private var imageLoader = ImageLoader()
    
    var placeholder: Image
    
    init(url: String, placeholder: Image = Image(systemName: "photo")) {
        self.placeholder = placeholder
        self.imageLoader.load(url: url)
    }
    
    var body: some View {
        if let uiImage = self.imageLoader.downloadedImage {
            return Image(uiImage: uiImage)
        } else {
            return placeholder
        }
    }
    
}
