//
//  ContentView.swift
//  H4XOR News
//
//  Created by Minjae Lee on 2021/09/16.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List(posts) { post in
                Text(post.title)
            }
            .navigationTitle("H4XOR NEWS")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Post: Identifiable {
    // Identifiable은 id로 order를 고려하기 위해 사용
    let id: String
    let title: String
}

let posts = [
    Post(id: "1", title: "Hello1"),
    Post(id: "2", title: "Hello2"),
    Post(id: "3", title: "Hello3"),
]
