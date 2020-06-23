//
//  PostItemView.swift
//  HackerNews
//
//  Created by Olena Rostovtseva on 23.06.2020.
//  Copyright © 2020 orost. All rights reserved.
//

import SwiftUI

struct PostItemView: View {
    let post: Post
    var body: some View {
        NavigationLink(destination: DetailView(url: post.url)) {
            HStack {
                Text(String(post.points))
                Text(post.title)
            }
        }
    }
}

struct PostItemView_Previews: PreviewProvider {
    static var previews: some View {
        PostItemView(post: Post(objectID: "1", title: "Hello", points: 100, url: "http://www.google.com"))
            .padding()
            .previewLayout(.sizeThatFits)
    }
}
