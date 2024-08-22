//
//  NANWShowAll.swift
//  WatchIt
//
//  Created by Enes Sarı on 8/21/24.
//

import SwiftUI

struct NANWShowAll: View {
    
    @State private var nanwfilms: [Film] = []
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns) {
                    ForEach(nanwfilms) { film in
                        VStack(alignment: .leading) {
                            Image(film.image)
                                .resizable()
                                .scaledToFit()
                                .frame(width: UIScreen.main.bounds.width / 2 - 30, height: 100)
                            
                            VStack(alignment: .leading) {
                                Text(film.category)
                                    .font(.system(size: 10, weight: .bold))
                                    .tracking(1.5)
                                    .foregroundColor(.secondary)
                                
                                Text(film.name)
                                    .font(.system(size: 21, weight: .semibold))
                                
                                Text(film.description)
                                    .font(.system(size: 14, weight: .medium))
                                    .foregroundColor(.secondary)
                                    .lineSpacing(1.5)
                                    .frame(maxHeight: .infinity, alignment: .top)
                            }
                            .frame(width: 190,height: 160)
                        }
                    }
                    .padding(.top, 10)
                }
            }
            .navigationTitle("New and Noteworthy")
            .onAppear {
                if let loadedFilms = JSONManager.loadData() {
                    nanwfilms = Array(loadedFilms[7...])
                }
            }
        }
    }
}

#Preview {
    NANWShowAll()
}
