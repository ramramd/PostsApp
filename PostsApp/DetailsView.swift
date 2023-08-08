//
//  DetailsView.swift
//  PostsApp
//
//  Created by Naveen Ramachandrappa on 7/31/23.
//

import SwiftUI

struct DetailsView: View {
    
    var objectData: ModelElement
    
    init(objectData: ModelElement) {
        self.objectData = objectData
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(objectData.title).padding()
            Text(objectData.body).padding()
            Spacer()
        }
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView(objectData: ModelElement(userID: 1, id: 0, title: "message title", body: "I like swiftUI"))
    }
}
