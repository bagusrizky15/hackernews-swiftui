//
//  ContentView.swift
//  hacker-news-swiftui
//
//  Created by bagus on 20/07/23.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView{
            List(networkManager.posts){post in
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack {
                        VStack {
                            Image(systemName: "hand.thumbsup")
                            Text(String(post.points))
                        }
                        Text(post.title)
                    }
                }
                
            }
            .navigationBarTitle("H4C0R NEWS")
        }
        .onAppear {
            self.networkManager.fetchData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
