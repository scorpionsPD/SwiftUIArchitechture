//
//  CustomImage.swift
//  SwiftUIArchitechture
//
//  Created by Pradeep Dahiya on 06/09/19.
//  Copyright © 2019 Rajlaxmi Shekhawat. All rights reserved.
//

import SwiftUI

struct CustomImage: View {
    
    var imageURL:String?
    
    @State var downloadedImage: UIImage?
    
    func loadImage() {
        downloadImage(from: URL(string: imageURL!)!) { (image) in
            self.downloadedImage = image
        }
    }
    
    var body: some View {
        Image(uiImage: downloadedImage ?? #imageLiteral(resourceName: "IMG"))
        .resizable()
           // .frame(width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.width*2/3, alignment: .leading)
//        .clipShape(Circle())
        .cornerRadius(10)
            .aspectRatio(3/2, contentMode: .fit)
        .onAppear(perform: loadImage)
    }
}

struct CustomImage_Previews: PreviewProvider {
    static var previews: some View {
        CustomImage(imageURL: "https://images.app.goo.gl/X3VyMPvxbarL9nqt5")
    }
}
