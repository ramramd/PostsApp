//
//  ContentView.swift
//  PostsApp
//
//  Created by Naveen Ramachandrappa on 7/31/23.
//

import SwiftUI
import Combine

struct ContentView: View {
    
    @ObservedObject var vm = PostsViewModel()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(vm.posts, id:  \.self) { post in
                    NavigationLink(destination: DetailsView(objectData: post)) {
                        SingleTextView(title: post.title)
                    }
                }
            }.onAppear(){
                vm.getPosts()
            }.navigationTitle("Posts")
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
