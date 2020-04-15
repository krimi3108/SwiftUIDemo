//
//  URLSessionEx.swift
//  SwiftUIDemo
//
//  Created by Kritika Middha on 14/04/20.
//  Copyright © 2020 Ranosys. All rights reserved.
//

import SwiftUI
struct Response: Codable {
    var results: [Result]
}

struct  Result: Codable {
    var trackId: Int
    var trackName: String
    var collectionName: String
}

struct URLSessionEx: View {
    
    @State var results = [Result]()
    
    var body: some View {
        List(results, id: \.trackId) { item in
            VStack(alignment: .leading) {
                Text("\(item.trackName)")
                    .font(.headline)
                
                Text("\(item.collectionName)")
            }
        }
    .onAppear(perform: getPlaylist)
    }
    
    func getPlaylist() {
        
        guard  let url = URL(string: "https://itunes.apple.com/search?term=talyor+swift&entity=song") else {
            print("No valid URL")
            return
        }
        
        let request = URLRequest(url: url)
        URLSession.shared.dataTask(with: request) { data, response, error in
            guard let receivedData = data else {
                print(error?.localizedDescription ?? "")
                return
            }
            
            if let response = try? JSONDecoder().decode(Response.self, from: receivedData) {
                DispatchQueue.main.async {
                    self.results = response.results
                    return
                }
            }
        }.resume()
        
    }
}

struct URLSessionEx_Previews: PreviewProvider {
    static var previews: some View {
        URLSessionEx()
    }
}
