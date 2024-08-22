//
//  WTW.swift
//  WatchIt
//
//  Created by Enes Sarı on 8/19/24.
//

import SwiftUI

struct WTW: View {
    var body: some View {
        VStack {
            HStack(spacing: 80) {
                Text("What To Watch")
                    .font(.title2)
                    .fontWeight(.semibold)
                
                NavigationLink(destination: WTWShowAll()) {
                    Text("Show All")
                }
            }
            
            FilmSlider()
        }
        .padding()
        Spacer()
    }
}

#Preview {
    WTW()
}
