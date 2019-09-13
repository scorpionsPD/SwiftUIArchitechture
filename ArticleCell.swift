//
//  ArticleCell.swift
//  SwiftUIArchitechture
//
//  Created by Pradeep Dahiya on 05/09/19.
//  Copyright © 2019 Rajlaxmi Shekhawat. All rights reserved.
//

import SwiftUI

struct ArticleCell: View {
    
    var article: AllArticle
    var body: some View {
        VStack(alignment: .leading){
            CustomImage(imageURL: article.imgFullPath)
            Text(article.articleTitle)
                .foregroundColor(Color.green)
            .lineLimit(nil)
            .multilineTextAlignment(.leading)
        }
        
    }
}

//struct ArticleCell_Previews: PreviewProvider {
//    static var previews: some View {
//        ArticleCell()
//    }
//}
