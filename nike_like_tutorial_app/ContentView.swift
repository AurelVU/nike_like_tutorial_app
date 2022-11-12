//
//  ContentView.swift
//  nike_like_tutorial_app
//
//  Created by Владимир Ушаков on 11.11.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
                ProductPageView()
                .tabItem {
                    Image("home")
                    Text("Home")
                }
                ProductPageView()
                .tabItem {
                    Image("search")
                    Text("Shop")
                }
                ProductPageView()
                .tabItem {
                    Image("like")
                    Text("Favorites")
                }
                ProductPageView()
                .tabItem {
                    Image("basket")
                    Text("Bag")
                    
                }
                ProductPageView()
                .tabItem {
                    Image("profile")
                    Text("Profile")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
