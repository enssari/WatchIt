//
//  WTW.swift
//  WatchIt
//
//  Created by Enes Sarı on 8/19/24.
//

import SwiftUI

struct WTWView: View {
    var body: some View {
        VStack {
            HStack(spacing: 105) {
                Text("What To Watch")
                    .font(.title)
                    .fontWeight(.semibold)
                
                NavigationLink(destination: WTWShowAll()) {
                    Text("Show All")
                }
            }
            
            FilmSlider()
        }
        
    }
}

#Preview {
    WTWView()
}
