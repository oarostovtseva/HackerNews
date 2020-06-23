//
//  ContentView.swift
//  HackerNews
//
//  Created by Olena Rostovtseva on 23.06.2020.
//  Copyright © 2020 orost. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var networkManager = NetworkManager()

    var body: some View {
        NavigationView {
            List(networkManager.posts) { postItem in
                PostItemView(post: postItem)
            }.navigationBarTitle("H4XOR NEWS")
        }.onAppear {
            self.networkManager.fetchData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
