//
//  WTWShowAll.swift
//  WatchIt
//
//  Created by Enes Sarı on 8/19/24.
//

import SwiftUI

struct WTWShowAll: View {
    
    @State private var films: [Film] = []
    
    let column = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    LazyVGrid(columns: column, spacing: 5) {
                        ForEach(films) { film in
                            Image(film.image)
                                .resizable()
                                .frame(width: 160, height: 110)
                                .aspectRatio(contentMode: .fit)
                                .cornerRadius(15)
                                .shadow(color: Color("gradientGray"),
                                        radius: 4, x: 1, y:1)
                        }
                        .padding(.bottom, 20)
                    }
                    .padding(.top, 20)
                }
                .navigationTitle("What to Watch")
                .onAppear {
                    if let loadedFilms = JSONManager.loadData() {
                        films = loadedFilms
                    }
                }
            }
        }
        .padding(.bottom, 100)
    }
}

#Preview {
    WTWShowAll()
}
