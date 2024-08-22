//
//  NANWSlider.swift
//  WatchIt
//
//  Created by Enes Sarı on 8/20/24.
//

import SwiftUI

struct NANWSlider: View {
    
    @State private var nanwfilms: [Film] = []
    
    var body: some View {
        VStack() {
            TabView {
                ForEach(nanwfilms) {film in
                    VStack(spacing: -10) {
                        Image(film.image)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 360, height: 280)
                            .cornerRadius(30)
                        
                        VStack(alignment: .leading) {
                            Text(film.category)
                                .font(.system(size: 16, weight: .semibold, design: .default))
                                .foregroundColor(.secondary)
                                .textCase(/*@START_MENU_TOKEN@*/.uppercase/*@END_MENU_TOKEN@*/)
                                .tracking(1.5)
                                .padding(.horizontal)
                            
                            Text(film.name)
                                .font(.system(size: 27, weight: .light, design: .default))
                                .padding(.horizontal)
                            
                            Text(film.description)
                                .fontWeight(.medium)
                                .foregroundColor(.secondary)
                                .padding(.horizontal)
                                .padding(.top, 0.3)
                        }
                        .padding(.horizontal)
                    }
                }
            }
            .frame(height: 440)
            .cornerRadius(20)
            .shadow(color: Color("gradientGray"),
                    radius: 3, x: 2, y: 2)
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            .padding(.bottom, 40)
        }
        .onAppear {
            if let loadedData = JSONManager.loadData() {
                if loadedData.count > 7 {
                    nanwfilms = Array(loadedData[7...])
                }
            }
        }
    }
}

#Preview {
    NANWSlider()
}
