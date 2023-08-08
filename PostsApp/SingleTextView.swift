//
//  SingleTextView.swift
//  PostsApp
//
//  Created by Naveen Ramachandrappa on 7/31/23.
//

import SwiftUI

struct SingleTextView: View {
    
    private var title: String
    
    init(title: String) {
        self.title = title
    }
    
    var body: some View {
        Text(title)
    }
}

struct SingleTextView_Previews: PreviewProvider {
    static var previews: some View {
        SingleTextView(title: "World")
    }
}
