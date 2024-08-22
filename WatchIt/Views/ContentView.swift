//
//  ContentView.swift
//  WatchIt
//
//  Created by Enes Sarı on 8/17/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            NavigationView {
                TabView {
                    WatchNow()
                        .tabItem {
                            Text("Watch Now")
                            
                            Image(systemName: "play.square.fill")
                        }
                    
                    Archive()
                        .tabItem {
                            Text("Archive")
                            
                            Image(systemName: "archivebox")
                        }
                    
                    SearchTab()
                        .tabItem {
                            Text("Search")
                            
                            Image(systemName: "magnifyingglass")
                        }
                }
                .accentColor(.orange)
            }
        }
    }
}

#Preview {
    ContentView()
}
