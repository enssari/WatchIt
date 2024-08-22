//
//  Watch Now.swift
//  WatchIt
//
//  Created by Enes Sarı on 8/17/24.
//

import SwiftUI

struct WatchNow: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.black, Color("gradientGray")]), startPoint: .top, endPoint: .bottom)
            
            VStack(spacing: 40) {
                HStack(spacing: 155) {
                    Text("Watch Now")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .fontWeight(.semibold)
                    
                    Button {
                        print("Profile Clicked")
                    } label: {
                        Image(systemName: "person.circle.fill")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 40, height: 40)
                    }
                    .accentColor(Color("PrimaryColor"))
                }
                
                HStack(spacing: 80) {
                    Text("What To Watch")
                        .font(.title2)
                        .fontWeight(.semibold)
                    
                    Button {
                        
                    } label: {
                        Text("Show All")
                            .font(.title2)
                    }
                }
                
                .padding()
                Spacer()
            }
        }
    }
}

#Preview {
    WatchNow()
}
