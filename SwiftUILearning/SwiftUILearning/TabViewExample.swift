//
//  TabViewExample.swift
//  SwiftUILearning
//
//  Created by Roma Patel on 18/11/22.
//

import SwiftUI

struct TabViewExample: View {
    var body: some View {
        TabView {
            ScrollViewExample()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                    
                }
            DNSplashView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Search")
                }
            
            ListExample()
                .tabItem {
                    Image(systemName: "photo.fill")
                    Text("Photo")
                }
            Text("Message View")
                .tabItem {
                    Image(systemName: "envelope.fill")
                    Text("Message")
                }
            Text("Profile View")
                .tabItem {
                    Image(systemName: "person.crop.circle.fill")
                    Text("Profile")
                }
        }
    }
}

struct TabViewExample_Previews: PreviewProvider {
    static var previews: some View {
        TabViewExample()
    }
}
