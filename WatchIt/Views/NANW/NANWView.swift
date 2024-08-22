//
//  NANWView.swift
//  WatchIt
//
//  Created by Enes Sarı on 8/20/24.
//

import SwiftUI

struct NANWView: View {
    var body: some View {
        VStack(spacing: -10) {
            
            HStack(spacing: 25) {
                Text("New And Noteworthy")
                    .font(.title)
                    .fontWeight(.semibold)
                
                NavigationLink(destination: NANWShowAll()) {
                    Text("Show All")
                }
            }
            
            HStack {
                NANWSlider()
            }
            Spacer()
        }
    }
}

#Preview {
    NANWView()
}
