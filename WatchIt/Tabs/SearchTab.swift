//
//  Search.swift
//  WatchIt
//
//  Created by Enes Sarı on 8/17/24.
//

import SwiftUI

struct SearchTab: View {
    
    @State private var films: [Film] = []
    @State private var searchText: String = ""
    
    var filteredFilms: [Film] {
        if searchText.isEmpty {
            return films
        } else {
            return films.filter { $0.name.localizedCaseInsensitiveContains(searchText) }
        }
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            NavigationView {
                List(filteredFilms) { film in
                    HStack(spacing: 30) {
                        Image(film.image)
                            .resizable()
                            .frame(width: 150, height: 100)
                            .cornerRadius(15)
                        
                        VStack(alignment: .leading, spacing: 5) {
                            Text(film.category)
                                .font(.system(size: 20))
                                .tracking(1.2)
                            
                            Text("Film")
                                .font(.system(size: 15))
                                .foregroundColor(.secondary)
                        }
                    }
                }
                .navigationTitle("Search")
                .searchable(text: $searchText, prompt: "Shows, Films and Much More")
                .padding()
            }
        }
        .onAppear {
            if let loadedFilms = JSONManager.loadData() {
                films = loadedFilms
            }
        }
        .padding(.bottom, 20)
    }
}

#Preview {
    SearchTab()
}
