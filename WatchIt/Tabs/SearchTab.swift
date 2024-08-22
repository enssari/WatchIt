//
//  Search.swift
//  WatchIt
//
//  Created by Enes Sarı on 8/17/24.
//

import SwiftUI

struct SearchTab: View {
    
    @State private var searchText: String = ""
    
    var body: some View {
        VStack(alignment: .leading) {
            NavigationStack {
                List {
                    
                }
                .navigationTitle("Search")
                .searchable(text: $searchText, prompt: "Shows, Films and Much More")
                .padding()
            }
        }
        .padding(.bottom, 20)
    }
}

#Preview {
    SearchTab()
}
