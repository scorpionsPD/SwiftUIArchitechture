// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let homeStories = try? newJSONDecoder().decode(HomeStories.self, from: jsonData)

import Foundation
import SwiftUI

// MARK: - HomeStories
struct HomeStories: Codable {
    
    let totalPages: Int
    let topArticles: [Article]
    let trendingArticles: TrendingArticles
    let allArticles: [AllArticle]

    enum CodingKeys: String, CodingKey {
        case totalPages = "total_pages"
        case topArticles = "top_articles"
        case trendingArticles = "trending_articles"
        case allArticles = "all_articles"
    }
}

// MARK: - AllArticle
struct AllArticle: Codable {
    let articleID, articleTitle, externalURL, articleSummary: String
    let articleSlug, articlePublish: String
    let hasVideo, webView: Int
    let imgFullPath: String
    let authors: [Author]
    let categoryDetails: CategoryDetails

    enum CodingKeys: String, CodingKey {
        case articleID = "article_id"
        case articleTitle = "article_title"
        case externalURL = "external_url"
        case articleSummary = "article_summary"
        case articleSlug = "article_slug"
        case articlePublish = "article_publish"
        case hasVideo = "has_video"
        case webView = "web_view"
        case imgFullPath = "img_full_path"
        case authors
        case categoryDetails = "category_details"
    }
}

// MARK: - Author
struct Author: Codable {
    let authorID, authorName, authorSlug, authorImage: String
    let authorDescription: String

    enum CodingKeys: String, CodingKey {
        case authorID = "author_id"
        case authorName = "author_name"
        case authorSlug = "author_slug"
        case authorImage = "author_image"
        case authorDescription = "author_description"
    }
}

// MARK: - CategoryDetails
struct CategoryDetails: Codable {
    let categoryID, catDisplayName, categorySlug: String
    let itemIcon, activeItemIcon: String
    let itemWebview: Int

    enum CodingKeys: String, CodingKey {
        case categoryID = "category_id"
        case catDisplayName = "cat_display_name"
        case categorySlug = "category_slug"
        case itemIcon = "item_icon"
        case activeItemIcon = "active_item_icon"
        case itemWebview = "item_webview"
    }
}

// MARK: - Article
struct Article: Codable {
    let storyTitle: String
    let storyURL: String
    let storyImage, storyArticleID, storyCreated: String
    let webView: Int
    let articleBody: String?
    let imgFullPath: String
    let articlePublish: String
    let authors: [Author]
    let categoryDetails: CategoryDetails

    enum CodingKeys: String, CodingKey {
        case storyTitle = "story_title"
        case storyURL = "story_url"
        case storyImage = "story_image"
        case storyArticleID = "story_article_id"
        case storyCreated = "story_created"
        case webView = "web_view"
        case articleBody = "article_body"
        case imgFullPath = "img_full_path"
        case articlePublish = "article_publish"
        case authors
        case categoryDetails = "category_details"
    }
}

// MARK: - TrendingArticles
struct TrendingArticles: Codable {
    let articles: [Article]
    let sectionTitle: String

    enum CodingKeys: String, CodingKey {
        case articles
        case sectionTitle = "section_title"
    }
}



extension HomeStories{
    
    static func homeScreenApi (page: Int, category: Category) -> Resource<HomeStories>{
        
        let urlAsString = "\(ConfigEndPoints.serverURL!)"+"endpointv142/"+"\(category)"+"/page/\(page)"+"/format/json"
        
        return Resource(url: urlAsString, method: .get) { data in
            do{
                let homeData = try JSONDecoder().decode(HomeStories.self, from: data)
                return homeData
            }
            catch {
                print(error)
                return nil
            }
        }
    }
}


extension Article{
    var image: UIImage {
        var img:UIImage = #imageLiteral(resourceName: "IMG")
        downloadImage(from: URL(string: self.imgFullPath)!) { (image) in
            img = image!
        }
        return img
    }
    
    func getImage(complition: @escaping (UIImage) -> ())  {
        downloadImage(from: URL(string: self.imgFullPath)!) { (image) in
            complition(image!)
        }
    }
}


extension Article:Identifiable{
    var id:Int{
        return Int(storyArticleID) ?? 0
    }
}

extension AllArticle:Identifiable{
   var id:Int{
        return Int(articleID) ?? 0
    }
}
