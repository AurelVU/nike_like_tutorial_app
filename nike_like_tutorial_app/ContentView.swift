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
                    Image("home").renderingMode(.template)
                    Text("Home")
                }
                ProductPageView()
                .tabItem {
                    Image("search").renderingMode(.template)
                    Text("Shop")
                }
                ProductPageView()
                .tabItem {
                    Image("like").renderingMode(.template)
                    Text("Favorites")
                }
                ProductPageView()
                .tabItem {
                    Image("basket").renderingMode(.template)
                    Text("Bag")
                    
                }
                ProductPageView()
                .tabItem {
                    Image("profile").renderingMode(.template)
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
