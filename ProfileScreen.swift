//
//  ProfileScreen.swift
//  WatchIt
//
//  Created by Enes Sarı on 8/22/24.
//

import SwiftUI

struct ProfileScreen: View {
    var body: some View {
        VStack {
            Text("Profile")
                .font(.system(size: 40))
                .fontWeight(.bold)
                .tracking(1.5)
            
            VStack(spacing: 100) {
                NavigationLink(destination: ContentView()) {
                    HStack(spacing: 120) {
                        VStack(alignment: .leading) {
                            Text("Enes Sarı")
                                .font(.title2)
                                .fontWeight(.semibold)
                                .foregroundColor(.white)
                            
                            Text("terdodios@gmail.com")
                                .foregroundColor(.secondary)
                        }
                        
                        Image(systemName: "chevron.right")
                    }
                    .frame(width: 350, height: 70)
                    .background(Color("gradientGray"))
                    .cornerRadius(15)
                }
                
                VStack(spacing: 20) {
                    NavigationLink(destination: ContentView()) {
                        Text("Manage Subscriptions")
                            .font(.title3)
                            .fontWeight(.medium)
                            .padding(.trailing, 100)
                            .foregroundColor(.blue)
                            .padding(.top, 20)
                    }
                    Divider()
                    NavigationLink(destination: ContentView()) {
                        Text("Use Gift Card or Code")
                            .font(.title3)
                            .fontWeight(.medium)
                            .padding(.trailing, 100)
                            .foregroundColor(.blue)
                    }
                    Divider()
                    NavigationLink(destination: ContentView()) {
                        Text("Add Funds to Account")
                            .font(.title3)
                            .fontWeight(.medium)
                            .padding(.trailing, 100)
                            .foregroundColor(.blue)
                    }
                    Divider()
                }
                .frame(width: 350)
                .background(Color("gradientGray"))
                .cornerRadius(15)
            }
            .padding(.top, 25)
            
            NavigationLink(destination: ContentView()) {
                Text("Log Out")
                    .font(.title3)
                    .fontWeight(.medium)
                    .padding(.trailing, 210)
                    .foregroundColor(.red)
            }
            .frame(width: 350, height: 70)
            .background(Color("gradientGray"))
            .cornerRadius(15)
            .padding(.top, 20)
        }
        Spacer()
    }
}

#Preview {
    ProfileScreen()
}
