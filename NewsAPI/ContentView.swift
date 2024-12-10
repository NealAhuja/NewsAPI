//
//  ContentView.swift
//  NewsAPI
//
//  Created by Neal Ahuja (student LM) on 12/9/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            
        }
        task {
            let url = URL(string: "https://newsapi.org/v2/everything?q=apple&from=2024-12-08&to=2024-12-08&sortBy=popularity&apiKey=fea0b318b4904bcaa01b5f166ad7e990")!

               let (data, _) = try! await URLSession.shared.data(from: url)

               print(String(decoding: data, as: UTF8.self))
        }
        .padding()
       
    }
}

#Preview {
    ContentView()
}
