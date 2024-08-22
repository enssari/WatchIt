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
                                .frame(width: 330, height: 180)
                                .aspectRatio(contentMode: .fit)
                                .cornerRadius(20)
                                .shadow(color: Color("gradientGray"),
                                        radius: 3, x: 2, y: 2)
                                .padding()
                        }
                    }
                }
                .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            }
        }
        .padding(.bottom, 300)
        .onAppear {
            if let loadedFilms = JSONManager.loadData() {
                films = loadedFilms
            }
        }
        .ignoresSafeArea()
    }
}
#Preview {
    FilmSlider()
}
