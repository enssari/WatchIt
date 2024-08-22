//
//  FilmSlider.swift
//  WatchIt
//
//  Created by Enes Sarı on 8/19/24.
//

import SwiftUI

struct FilmSlider: View {
    
    @State private var films: [Film] = []
    
    var body: some View {
        HStack {
            if films.isEmpty {
                Text("loading...")
            } else {
                TabView {
                    ForEach(films) { film in
                        VStack {
                            Image(film.image)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 330, height: 280)
                                .cornerRadius(30)
                        }
                    }
                }
                .frame(height: 250)
                .shadow(color: Color("gradientGray"),
                        radius: 3, x: 2, y: 2)
                .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            }
        }
        .onAppear {
            if let loadedFilms = JSONManager.loadData() {
                films = Array(loadedFilms[...6])
            }
        }
        .ignoresSafeArea()
    }
}
#Preview {
    FilmSlider()
}
