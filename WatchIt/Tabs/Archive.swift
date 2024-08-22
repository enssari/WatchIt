//
//  Archive.swift
//  WatchIt
//
//  Created by Enes Sarı on 8/17/24.
//

import SwiftUI

struct Archive: View {
    
    var archive: Array? = []
    var isArchiveEmpty: Bool = true
    
    var body: some View {
        NavigationView {
            VStack {
                if let archivedFilms = archive {
                    VStack {
                        Text("Your Archive is Empty.")
                    }
                }
            }
        }
    }
}

#Preview {
    Archive()
}
