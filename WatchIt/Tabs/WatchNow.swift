//
//  Watch Now.swift
//  WatchIt
//
//  Created by Enes Sarı on 8/17/24.
//

import SwiftUI

struct WatchNow: View {
        
    var body: some View {
        NavigationView {
            ZStack {
                LinearGradient(gradient: Gradient(colors: [.black, Color("gradientGray")]), startPoint: .top, endPoint: .bottom)
                
                ScrollView {
                    VStack() {
                        HStack(spacing: 120) {
                            Text("Watch Now")
                                .font(.system(size: 40))
                                .fontWeight(.bold)
                            
                            NavigationLink(destination: ProfileScreen()) {
                                Image(systemName: "person.circle.fill")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 40, height: 40)
                            }
                        }
                        WTWView()
                            .padding(.top, 20)
                        
                        NANWView()
                    }
                    .padding(.top, 10)
                    .accentColor(Color("PrimaryColor"))
                }
            }
        }
    }
}



#Preview {
    WatchNow()
}
