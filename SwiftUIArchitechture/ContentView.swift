//
//  ContentView.swift
//  SwiftUIArchitechture
//
//  Created by Rajlaxmi Shekhawat on 30/08/19.
//  Copyright © 2019 Rajlaxmi Shekhawat. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    
    @State var homeStories: [AllArticle]?
    @EnvironmentObject var viewModel: HomeViewModal
    
    var body: some View {
        NavigationView{
           return List() {
            if homeStories?.count ?? 0 > 0 {
                ForEach(homeStories!){ story in
                    NavigationLink(destination: DetailView(navigatedObject: story)) {
                        ArticleCell(article: story)
                    }
                }
            }
        }.onAppear(perform: loadHomeArticles)
            .navigationBarTitle("Stories")
            .padding()
            
        }
    }
    
    func loadHomeArticles() {

        viewModel.loadStories { (articles) in
            self.homeStories = articles
           
        }
    }
}

#if Development
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
