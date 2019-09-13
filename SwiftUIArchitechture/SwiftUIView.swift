//
//  SwiftUIView.swift
//  SwiftUIArchitechture
//
//  Created by Pradeep Dahiya on 04/09/19.
//  Copyright © 2019 Rajlaxmi Shekhawat. All rights reserved.
//

import SwiftUI

struct DetailView: View {
    
    var navigatedObject:AllArticle?
    @State var downloadedImage:UIImage?
    
    func loadImage() {
        downloadImage(from: URL(string: navigatedObject!.imgFullPath)!) { (image) in
            self.downloadedImage = image
        }
    }

    var body: some View {
        VStack{
            CustomImage(imageURL: navigatedObject?.imgFullPath)
//            WebView(request: URLRequest(url: URL(string: navigatedObject!.externalURL)!))
//            }.navigationBarTitle("Detail Story")
//            .onAppear(perform: loadImage)
            
            Text("\(navigatedObject!.articleSummary)")
            Spacer()
            .navigationBarTitle("Detail View")
            .padding()
    }
}
}

//struct DetailView_Previews: PreviewProvider {
//    static var previews: some View {
//        DetailView()
//    }
//}
