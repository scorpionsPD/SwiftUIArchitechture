//
//  HomeViewModal.swift
//  SwiftUIArchitechture
//
//  Created by Rajlaxmi Shekhawat on 02/09/19.
//  Copyright © 2019 Rajlaxmi Shekhawat. All rights reserved.
//

import Foundation
import SwiftUI
import Combine

class HomeViewModal: ObservableObject {
    
    var articals: [AllArticle] = [] {
        didSet {
            didChange.send(self)
        }
    }
    
    var didChange = PassthroughSubject<HomeViewModal, Never>()
    
    func loadStories(complition: @escaping ([AllArticle]) -> Void)  {
        
        var resource: Resource<HomeStories>?
        
        resource = HomeStories.homeScreenApi(page: 0, category: .homearticles)
        
        Webservice.load(resource: resource) { result in
            
            switch result{
            case .failure:
                complition([])
                break
            case .success(let result):
                complition(result.allArticles)
                break
            }
        }
    }
}
