//
//  PostsViewModel.swift
//  PostsApp
//
//  Created by Naveen Ramachandrappa on 7/31/23.
//

import Foundation
import Combine
import SwiftUI

class PostsViewModel: ObservableObject {
    
    let urlString = "https://jsonplaceholder.typicode.com/posts"
    
    @Published var posts: [ModelElement] = []
    var task: AnyCancellable?
    
    func getPosts() {
        task = URLSession.shared.dataTaskPublisher(for: URL(string: urlString)!)
            .map { $0.data }
            .decode(type: [ModelElement].self, decoder: JSONDecoder())
            .sink(receiveCompletion: { completion in
                switch completion {
                case .finished:
                    break
                case .failure(let error):
                    print("Error fetching data : \(error)")
                }
            }, receiveValue: { [unowned self] response in
                self.posts = response
            })
    }
    
}
